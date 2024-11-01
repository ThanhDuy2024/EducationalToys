import {
    Routes,
    BrowserRouter as Router,
    Route,
    // Navigate,
} from 'react-router-dom'
import Layout from './layouts/Layout'

import Home from "./pages/Home/Home";
import '@fortawesome/fontawesome-free/css/all.min.css';

import SearchList from './components/SearchList/SearchList'


import { AboutUs } from './components/AboutUs/AboutUs'
import ToysDetailsPage from './components/ToysDetail/ToysDetailsPage';

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
                    path="/aboutUs"
                    element={
                        <Layout>
                            <AboutUs />
                        </Layout>
                    }
                />
                <Route path="/toydetail/1" element={
          <ToysDetailsPage/>}/>
                      
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
    );

}

export default App
