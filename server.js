const express = require('express');
const app = express();
const PORT = 3001;

app.use('/stream', express.static('stream'));

app.listen(PORT, () => {
  console.log(`🚀 HLS stream server running at http://143.198.144.51:${PORT}/stream/index.m3u8`);
});
