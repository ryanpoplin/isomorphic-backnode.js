(function() {
	var callback, Counter, counter, EventEmitter;
	EventEmitter = require('events').EventEmitter;
	Counter = function(init) {
		this.increment = function() {
			init += 1;
			this.emit('incremented', init);
		};
	};
	Counter.prototype = new EventEmitter();
	counter = new Counter(10);
	callback = function(count) {
		console.log(count);
	};
	counter.addListener('incremented', callback);
	// equal.to('interchangeable')...
	// counter.on('incremented', callback);
	counter.increment();
	counter.increment();
	counter.removeListener('incremented', callback);
	// Will not fire the event for incrementation...
	counter.increment();
}());