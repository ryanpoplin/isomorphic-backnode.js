window.onload = function() {
  /*test("Another Async Test...", function() {
    pause();
    setTimeout((function() {
      assert(false, "Failing Test...");
      resume();
    }), 1000);
  });
  test("A Sync Test...", function() {
    pause();
    assert(true, "Passing Test...");
    resume();
  });*/
  test('Backbone.js Application Dependencies Testing...', function() {
    var object;
    object = {};
    pause();
    assert($ !== undefined, 'jQuery.js is not undefined...');
    assert($ !== null, 'jQuery.js is not null...');
    assert(_ !== undefined, 'Underscore.js is not undefined...');
    assert(_ !== null, 'Underscore.js is not null...');
    assert(Backbone !== undefined, 'Backbone.js is not undefined...');
    assert(Backbone !== null, 'Backbone.js is not null...');
    _.extend(object, Backbone.Events);
    object.on('show-message', function(msg) {
      $('#main #listing').text(msg);
    });
    object.trigger('show-message', 'Backbone.js App Time...');
    assert($('#main #listing').text() === 'Backbone.js App Time...', 'DOM result was successful...');
    resume();
  });
};