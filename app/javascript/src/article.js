


// If you are using CommonJS modules:
const { Dropzone } = require("dropzone");


$(document).ready(function() {

Dropzone.autoDiscover = false;


let myDropzone = new Dropzone("#my_form");
myDropzone.on("addedfile", file => {
  console.log(`File added: ${file.name}`);
});
});