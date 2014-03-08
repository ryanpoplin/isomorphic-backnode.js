'use strict';
(function() {
	// OOP JS Conditioning...
	var hackerName, hackerVen, nest, newObj, newObject;
	newObject = new Object();
	newObj = {};
	newObject.name = 'Vredesbyrdann';
	hackerName = newObject.name;
	console.log(hackerName);
	newObj['vendetta'] = 'Master Node.js...';
	hackerVen = newObj['vendetta'];
	console.log(hackerVen);
	nest = {
		eggOne: 'Bad Egg...',
		subNest: {
			name: 'Sub Nest...'
		}
	};
	console.log(nest.subNest.name);
	function avg(x, y) {
		var avg;
		avg = (x + y) / 2;
		return avg;
	}
	console.log(avg());
	console.log(avg(20, 3));
	console.log(avg(20, 3, 3));
	function avgOfArgs() {
		var i, j, sum;
		sum = 0;
		// 'arguments' is special...
		for (i = 0, j = arguments.length; i < j; i += 1) {
			sum += arguments[i];
			console.log(sum);
		}
		console.log(sum);
		return sum / arguments.length;
	}
	console.log(avgOfArgs(20, 21, 22, 23));
	(function() {
		var basicFunc;
		basicFunc = function() {
			var strVal;
			strVal = 'OOP JS...';
			function anotherStr(str) {
				return 'Val is: ' + str;
			}
			console.log(anotherStr(strVal));
		};
		basicFunc();
	}());
	(function() {
		// Redo this with keys also...
		var programmerOne;
		function makeTheProgrammerWith(name, age, alias, vendetta, favLang, favOs) {
			return {
				name: name,
				age: age,
				alias: alias,
				vendetta: vendetta,
				favLang: favLang,
				favOs: favOs
			};
		}
		function fullProgrammerDesc(desc) {
			return 'Full Programmer Description is: ' + '\n' + desc.name + '\n' + desc.age + '\n' + desc.alias + '\n' + desc.vendetta + '\n' + desc.favLang + '\n' + desc.favOs;
		}
		function programmerWithNameAndAge(desc) {
			return 'Programmer Name and Age: ' + '\n' + desc.name + ' ' + desc.age;
		}
		programmerOne = makeTheProgrammerWith('Ryan Poplin', 23, 'Vredesbyrdann', 'Master Node.js', 'JavaScript', 'Linux/Unix');
		console.log(fullProgrammerDesc(programmerOne));
		console.log(programmerWithNameAndAge(programmerOne));
	}());
	(function() {
		
	}());
}());