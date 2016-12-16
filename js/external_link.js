(function() {
  var links = document.links;
  for (var i = 0, length = links.length; i < length; i++) {
    if (links[i].hostname != window.location.hostname) {
      links[i].target = '_blank';
      links[i].className += ' external';
    }
  }
})();
