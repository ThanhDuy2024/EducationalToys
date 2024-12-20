package com.toyapp.backend.service;

import com.toyapp.backend.dto.category.CategoryDTO;
import com.toyapp.backend.dto.category.CreateCategoryDTO;
import com.toyapp.backend.exception.CustomException;
import com.toyapp.backend.model.Category;
import com.toyapp.backend.repository.CategoryRepository;
import lombok.Getter;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@Getter
@Service
public class CategoryService {

    private final CategoryRepository categoryRepository;
    private final CloudinaryService cloudinaryService;

    public CategoryService( CategoryRepository categoryRepository, CloudinaryService cloudinaryService) {
        this.categoryRepository = categoryRepository;
        this.cloudinaryService = cloudinaryService;
    }

    public List<CategoryDTO> getAllCategories(){
        return categoryRepository.findAll().stream()
                .map(this::convertToDTO)
                .collect(Collectors.toList());
    }

    public Optional<CategoryDTO> getCategoryById(Long id) {
        return categoryRepository.findById(id)
                .map(this::convertToDTO);
    }

    public CategoryDTO createCategory(CreateCategoryDTO createCategoryDTO) {
        if (createCategoryDTO.getName() == null || createCategoryDTO.getName().isEmpty()) {
            throw new CustomException(HttpStatus.BAD_REQUEST, "Category name is required");
        }

        Category category = convertToEntity(createCategoryDTO);
        category = categoryRepository.save(category);
        return convertToDTO(category);
    }

    public Optional<CategoryDTO> updateCategory(Long id, CategoryDTO categoryDTO) {
        if (categoryDTO.getName() == null || categoryDTO.getName().isEmpty()) {
            throw new CustomException(HttpStatus.BAD_REQUEST, "Category name is required");
        }

        if (categoryRepository.existsById(id)) {
            Category category = convertToEntity(categoryDTO);
            category.setId(id);
            category = categoryRepository.save(category);
            return Optional.of(convertToDTO(category));
        }
        return Optional.empty();
    }

    public void deleteCategory(Long id) {
        Optional<Category> category = categoryRepository.findById(id);
        category.ifPresent(value -> cloudinaryService.deleteImage(value.getImage_url()));
        categoryRepository.deleteById(id);
    }
    
    private CategoryDTO convertToDTO(Category category){
        return new CategoryDTO(category.getId(), category.getName(), category.getDescription(), category.getParentId(), category.getImage_url());
    }

    private Category convertToEntity(CreateCategoryDTO createCategoryDTO) {
        return new Category(null, createCategoryDTO.getName(), createCategoryDTO.getDescription(), createCategoryDTO.getParentId(), createCategoryDTO.getImage_url());
    }

    private Category convertToEntity(CategoryDTO categoryDTO) {
        return new Category(categoryDTO.getId(), categoryDTO.getName(), categoryDTO.getDescription(), categoryDTO.getParentId(), categoryDTO.getImage_url());
    }
}

