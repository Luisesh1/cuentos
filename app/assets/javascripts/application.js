// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

var objImagen = function(){
	var original;
	var background;
	var item;
	var id;
	var status;
	this.setOriginal = function(v){
		this.original=v;
	}
	this.setBackground = function(v){
		this.background=v;
	}
	this.setItem = function(v){
		this.item=v;
	}
	this.setId = function(v){
		this.id=v;
	}
	this.setStaus = function(v){
		this.status=v;
	}
	this.getOriginal = function(){
		return this.original;
	}
	this.getBackground = function(){
		return this.background;
	}
	this.getItem = function(){
		return this.item;
	}
	this.getId = function(){
		return this.id;
	}
	this.getStaus = function(){
		return this.status;
	}	
	this.setAll = function(v1,v2,v3,v4,v5){
		this.original=v1;
		this.background=v2;
		this.item=v3;
		this.id=v4;
		this.status=v5;
	}
};