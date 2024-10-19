import {
    Routes,
    BrowserRouter as Router,
    Route,
    // Navigate,
} from 'react-router-dom'
import Layout from './layouts/Layout'
// pages
import Home from './pages/Home/Home'
import '@fortawesome/fontawesome-free/css/all.min.css'
import SearchList from './components/SearchList/SearchList'

function App() {
    return (
        <Router>
            <Routes>
                <Route
                    path="/"
                    element={
                        <Layout>
                            <Home />
                        </Layout>
                    }
                />
                <Route
                    path="/search"
                    element={
                        <Layout>
                            <SearchList />
                        </Layout>
                    }
                />
            </Routes>
        </Router>
    )
}

export default App
