window._GIPHY = (function() {
    var apiKey = "uBUlpaNTxqxen3Wjc7bnELZys5MnlPFO";
    var _results = null;

    return { //public API
        getApiKey: function() {
            return apiKey;
        },
        getResults: function() {
            return _results;
        },
        setResults: function(results) {
          _results = results
        }
    };
}());

