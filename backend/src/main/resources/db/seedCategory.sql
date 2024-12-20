INSERT INTO categories (name, description, parent_id) VALUES
-- Main Categories
('Educational Toys', 'Toys designed to enhance learning and development.', NULL),
('STEM Toys', 'Toys that focus on Science, Technology, Engineering, and Mathematics.', NULL),
('Art & Craft', 'Toys that encourage creativity and artistic expression.', NULL),
('Outdoor Play', 'Toys designed for outdoor activities and physical development.', NULL),
('Music & Instruments', 'Toys that teach music and rhythm.', NULL),
('Building & Construction', 'Toys for building and construction skills.', NULL),
('Puzzles', 'Puzzles designed to develop problem-solving skills.', NULL),
('Role Play', 'Toys that encourage imaginative play and role-playing.', NULL),
('Board Games', 'Games designed for family and group interaction.', NULL),
('Books', 'Educational books for children.', NULL),
-- STEM Toys Subcategories
('Robotics', 'Toys for learning robotics and coding.', (SELECT id FROM categories WHERE name = 'STEM Toys')),
('Coding Toys', 'Toys that teach coding and programming skills.', (SELECT id FROM categories WHERE name = 'STEM Toys')),
('Science Kits', 'Kits for conducting science experiments.', (SELECT id FROM categories WHERE name = 'STEM Toys')),
('Math Games', 'Games designed to improve mathematical skills.', (SELECT id FROM categories WHERE name = 'STEM Toys')),
('Engineering Kits', 'Kits that encourage engineering concepts and building.', (SELECT id FROM categories WHERE name = 'STEM Toys')),
('Technology Toys', 'Interactive technology-based educational toys.', (SELECT id FROM categories WHERE name = 'STEM Toys')),
-- Art & Craft Subcategories
('Painting & Drawing', 'Toys and supplies for painting and drawing.', (SELECT id FROM categories WHERE name = 'Art & Craft')),
('Craft Kits', 'Kits that include supplies for various arts and crafts.', (SELECT id FROM categories WHERE name = 'Art & Craft')),
('Clay & Sculpting', 'Toys for creating sculptures with clay.', (SELECT id FROM categories WHERE name = 'Art & Craft')),
('Jewelry Making', 'Toys for creating jewelry and fashion accessories.', (SELECT id FROM categories WHERE name = 'Art & Craft')),
('Coloring Books', 'Books designed for coloring and artistic creativity.', (SELECT id FROM categories WHERE name = 'Art & Craft')),
('Sticker Art', 'Toys for creating art with stickers.', (SELECT id FROM categories WHERE name = 'Art & Craft')),
-- Outdoor Play Subcategories
('Sports Equipment', 'Toys designed for outdoor sports activities.', (SELECT id FROM categories WHERE name = 'Outdoor Play')),
('Ride-On Toys', 'Toys for riding and physical development.', (SELECT id FROM categories WHERE name = 'Outdoor Play')),
('Water Toys', 'Toys designed for water play.', (SELECT id FROM categories WHERE name = 'Outdoor Play')),
('Gardening Toys', 'Toys that teach gardening skills.', (SELECT id FROM categories WHERE name = 'Outdoor Play')),
('Climbing Toys', 'Toys designed for climbing and improving motor skills.', (SELECT id FROM categories WHERE name = 'Outdoor Play')),
('Swing Sets', 'Swings and playsets for outdoor fun.', (SELECT id FROM categories WHERE name = 'Outdoor Play')),
-- Music & Instruments Subcategories
('Percussion', 'Toys that focus on percussion instruments like drums.', (SELECT id FROM categories WHERE name = 'Music & Instruments')),
('String Instruments', 'Toys that introduce string instruments like guitars.', (SELECT id FROM categories WHERE name = 'Music & Instruments')),
('Wind Instruments', 'Toys that teach wind instruments like flutes.', (SELECT id FROM categories WHERE name = 'Music & Instruments')),
('Keyboard Instruments', 'Toys like mini keyboards and pianos.', (SELECT id FROM categories WHERE name = 'Music & Instruments')),
('Musical Games', 'Games that focus on rhythm and musical interaction.', (SELECT id FROM categories WHERE name = 'Music & Instruments')),
('Music Kits', 'Complete kits for creating music and learning instruments.', (SELECT id FROM categories WHERE name = 'Music & Instruments')),
-- Building & Construction Subcategories
('Building Blocks', 'Blocks that children can use to build structures.', (SELECT id FROM categories WHERE name = 'Building & Construction')),
('Magnetic Tiles', 'Magnetic building tiles for creating shapes and structures.', (SELECT id FROM categories WHERE name = 'Building & Construction')),
('Wooden Building Sets', 'Wooden toys for constructing various objects.', (SELECT id FROM categories WHERE name = 'Building & Construction')),
('Engineering Construction Kits', 'Construction kits that teach engineering concepts.', (SELECT id FROM categories WHERE name = 'Building & Construction')),
('Creative Building Sets', 'Sets that encourage creative and open-ended construction.', (SELECT id FROM categories WHERE name = 'Building & Construction')),
('Vehicle Construction Kits', 'Kits to build cars, trucks, and other vehicles.', (SELECT id FROM categories WHERE name = 'Building & Construction')),
-- Puzzles Subcategories
('Jigsaw Puzzles', 'Classic jigsaw puzzles for kids of all ages.', (SELECT id FROM categories WHERE name = 'Puzzles')),
('3D Puzzles', 'Puzzles that form 3D structures.', (SELECT id FROM categories WHERE name = 'Puzzles')),
('Puzzle Games', 'Interactive puzzle games to boost problem-solving skills.', (SELECT id FROM categories WHERE name = 'Puzzles')),
('Logic Puzzles', 'Puzzles designed to improve logical thinking.', (SELECT id FROM categories WHERE name = 'Puzzles')),
('Maze Puzzles', 'Puzzles that involve navigating mazes.', (SELECT id FROM categories WHERE name = 'Puzzles')),
('Pattern Puzzles', 'Puzzles that focus on identifying and completing patterns.', (SELECT id FROM categories WHERE name = 'Puzzles')),
-- Role Play Subcategories
('Dollhouses', 'Miniature houses for dolls to encourage imaginative play.', (SELECT id FROM categories WHERE name = 'Role Play')),
('Costumes & Dress Up', 'Costumes for children to dress up and role-play.', (SELECT id FROM categories WHERE name = 'Role Play')),
('Doctor Kits', 'Kits that allow children to role-play as doctors.', (SELECT id FROM categories WHERE name = 'Role Play')),
('Cooking & Kitchen Sets', 'Toys that simulate kitchen and cooking activities.', (SELECT id FROM categories WHERE name = 'Role Play')),
('Tool Sets', 'Toy tools for pretend building and fixing.', (SELECT id FROM categories WHERE name = 'Role Play')),
('Pretend Play Sets', 'Complete pretend play sets for different scenarios.', (SELECT id FROM categories WHERE name = 'Role Play')),
-- Board Games Subcategories
('Classic Board Games', 'Classic board games for families and children.', (SELECT id FROM categories WHERE name = 'Board Games')),
('Strategy Games', 'Board games that focus on strategy and critical thinking.', (SELECT id FROM categories WHERE name = 'Board Games')),
('Card Games', 'Educational card games for children.', (SELECT id FROM categories WHERE name = 'Board Games')),
('Cooperative Games', 'Games that focus on teamwork and cooperation.', (SELECT id FROM categories WHERE name = 'Board Games')),
('Dice Games', 'Games that use dice for learning and interaction.', (SELECT id FROM categories WHERE name = 'Board Games')),
('Educational Board Games', 'Games that combine learning with fun board game play.', (SELECT id FROM categories WHERE name = 'Board Games')),
-- Books Subcategories
('Picture Books', 'Books with vibrant illustrations for young readers.', (SELECT id FROM categories WHERE name = 'Books')),
('Early Learning Books', 'Books designed for preschool learning.', (SELECT id FROM categories WHERE name = 'Books')),
('Science Books', 'Books that introduce basic science concepts.', (SELECT id FROM categories WHERE name = 'Books')),
('Math Books', 'Books focused on improving math skills.', (SELECT id FROM categories WHERE name = 'Books')),
('History Books', 'Books that introduce children to history and historical events.', (SELECT id FROM categories WHERE name = 'Books')),
('Interactive Books', 'Books with interactive elements like flaps and sound.', (SELECT id FROM categories WHERE name = 'Books'));
