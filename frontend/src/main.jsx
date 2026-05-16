import React from 'react'
import ReactDOM from 'react-dom/client'
import App from './App.jsx'
import Creator from './creator/Creator.jsx'
import Blog from './blog/Blog.jsx'
import './index.css'
import { BrowserRouter, Routes, Route } from 'react-router-dom';

ReactDOM.createRoot(document.getElementById('root')).render(
  <React.StrictMode>
    <BrowserRouter>
      <Routes>
        <Route path="/" element={<App />} />
        <Route path="/creator" element={<Creator />} />
        <Route path="/blog/*" element={<Blog />} />
      </Routes>
    </BrowserRouter>
  </React.StrictMode>,
)
