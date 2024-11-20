import { useState } from 'react'

// eslint-disable-next-line react/prop-types
const AddProductModal = ({ isOpen, onClose, onAdd }) => {
    const [name, setName] = useState('')
    const [price, setPrice] = useState('')
    const [stock, setStock] = useState('')
    const [image, setImage] = useState('')
    // eslint-disable-next-line no-unused-vars
    const [imageFile, setImageFile] = useState(null)

    const handleImageUpload = (e) => {
        const file = e.target.files[0]
        if (file) {
            const reader = new FileReader()
            reader.onloadend = () => {
                setImage(reader.result)
                setImageFile(file)
            }
            reader.readAsDataURL(file)
        }
    }

    const handleSubmit = (e) => {
        e.preventDefault()
        const newProduct = {
            id: Date.now(),
            name,
            price: parseFloat(price),
            stock: parseInt(stock),
            image: image || '',
        }
        onAdd(newProduct)
        onClose()
    }

    if (!isOpen) return null

    return (
        <div className="fixed inset-0 flex items-center justify-center ">
            <div className="bg-white p-6 rounded shadow-md w-1/3">
                <h2 className="text-xl font-semibold mb-4 text-gray-900">
                    Add New Product
                </h2>
                <form onSubmit={handleSubmit}>
                    <div className="mb-4">
                        <label className="block text-gray-700">
                            Product Name
                        </label>
                        <input
                            type="text"
                            className="w-full border border-gray-300 rounded px-2 py-1"
                            value={name}
                            onChange={(e) => setName(e.target.value)}
                            required
                        />
                    </div>
                    <div className="mb-4">
                        <label className="block text-gray-700">Price</label>
                        <input
                            type="number"
                            className="w-full border border-gray-300 rounded px-2 py-1"
                            value={price}
                            onChange={(e) => setPrice(e.target.value)}
                            required
                        />
                    </div>
                    <div className="mb-4">
                        <label className="block text-gray-700">Stock</label>
                        <input
                            type="number"
                            className="w-full border border-gray-300 rounded px-2 py-1"
                            value={stock}
                            onChange={(e) => setStock(e.target.value)}
                            required
                        />
                    </div>
                    <div className="mb-4">
                        <label className="block text-gray-700">Image</label>
                        <input
                            type="file"
                            accept="image/*"
                            className="w-full border border-gray-300 rounded px-2 py-1"
                            onChange={handleImageUpload}
                            required
                        />
                        {image && (
                            <img
                                src={image}
                                alt="Preview"
                                className="mt-2 w-full h-32 object-cover rounded"
                            />
                        )}
                    </div>
                    <div className="flex justify-end">
                        <button
                            type="button"
                            className="bg-gray-400 text-white px-4 py-2 rounded mr-2"
                            onClick={onClose}
                        >
                            Cancel
                        </button>
                        <button
                            type="submit"
                            className="bg-blue-600 text-white px-4 py-2 rounded"
                        >
                            Add Product
                        </button>
                    </div>
                </form>
            </div>
        </div>
    )
}

export default AddProductModal
