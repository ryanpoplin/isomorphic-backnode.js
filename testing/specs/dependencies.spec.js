window.onload = function() {
  
  // var failingDepArg; // Expect to fail...
  
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
  
  test('Application Dependencies Testing...', function() {
    
    var object;
    
    pause();
    
    (function() {
    
      var args, dep, depIndex, i, j;
    
      args = Array.prototype.slice.call(arguments);
    
      for (i = 0, j = args.length; i < j; i += 1) {
    
        dep = args[i];
        depIndex = 1;
        depIndex += i;
    
        assert(dep !== null, 'Dependency ' + depIndex + ' is not null...');
    
        assert(dep !== undefined, 'Dependency ' + depIndex + ' is not undefined...');
      }

    }($, _, Backbone, Backbone.Marionette));
    
    object = {};
    
    _.extend(object, Backbone.Events);
    
    object.on('show-message', function(msg) {
      $('#main #listing').text(msg);
    });
    
    object.trigger('show-message', 'A Backbone App...');
    
    assert($('#main #listing').text() === 'A Backbone App...', 'DOM result was successful...');
    
    resume();
  
  });
};