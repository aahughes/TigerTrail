// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require twitter/bootstrap
//= require fullcalendar/lib/moment.min.js
//= require fullcalendar/fullcalendar.min.js
// require turbolinks
//= require_tree .

$(document).ready(function() {

	// Render calendars in tabs when switching between them
	$('a[data-toggle="tab"]').on('shown.bs.tab', function (e) {
		$('#registeredCalendar').fullCalendar('render');
	    $('#tempCalendar').fullCalendar('render');
	});

	// Render both course schedule calendars, showing all days of the week, with times between 8:00AM and 10:00PM

	$('#registeredCalendar').fullCalendar({
	    events: '/schedules/registeredCoursesJSON.json',
	    defaultView: "agendaWeek",
	    defaultDate: moment(),
	    editable: false,
	    minTime: "08:00:00",
	    maxTime: "22:00:00",
	    allDaySlot: false,
	    columnFormat: 'dddd',
	    header: false,
	    slotDuration: "00:15:00",
	    eventRender: function(event, element){
	    	element.find('.fc-title').append("<br/>" + event.location)
	    },
	    nowIndicator: false,
	    eventTextColor: "black"

	});

	$('#tempCalendar').fullCalendar({
	    events: '/schedules/tempCoursesJSON.json',
	    defaultView: "agendaWeek",
	    defaultDate: moment(),
	    editable: false,
	    minTime: "08:00:00",
	    maxTime: "22:00:00",
	    allDaySlot: false,
	    columnFormat: 'dddd',
	    header: false,
	    slotDuration: "00:15:00",
	    eventRender: function(event, element){
	    	element.find('.fc-title').append("<br/>" + event.location)
	    },
	    nowIndicator: false,
	    eventTextColor: "black"

	});

});

