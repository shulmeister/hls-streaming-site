const express = require('express');
const path = require('path');

const app = express();
const PORT = 3001;

// Serve the index.html
app.use(express.static(path.join(__dirname, 'public')));

// Serve HLS stream
app.use('/hls', express.static(path.join(__dirname, 'tmp/hls')));

app.listen(PORT, () => {
    console.log(`Server is running on http://localhost:${PORT}`);
});
