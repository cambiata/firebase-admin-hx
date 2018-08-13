package functions;

import firebase.database.Reference;
@:native('functions')
@:jsRequire('firebase-functions')
extern class Functions {

    static public var https: Https;

    static public var database: Database;

    static public var auth: Auth;

    static public function config(): Config;
}

@:native('functions.https')
extern class Https {
    public function onRequest(dyn:Dynamic):HttpsFunction;
}

@:native('functions.HttpsFunction')
extern class HttpsFunction {
    
}

@:native('functions.') 
extern class Classname {

}

@:native('functions.database') 
extern class Database {
    public function ref(path:String): RefBuilder;
}



@:native('functions.database.RefBuilder') 
extern class RefBuilder {
    public function onCreate(handler:DataSnapshot -> EventContext -> Void):CloudFunction;
    public function onDelete(handler:DataSnapshot -> EventContext -> Void):CloudFunction;
    public function onUpdate(handler:Change -> EventContext -> Void):CloudFunction;
    public function onWrite(handler:Change -> EventContext -> Void):CloudFunction;
}

@:native('functions.database.DataSnapshot') 
extern class DataSnapshot {
    public var key:String;
    public var ref:Reference;
    public function child(path:String):DataSnapshot;
    public function exists():Bool;
    public function exportVal():Dynamic;
    public function forEach(action:Dynamic):Bool;
    public function getPriority(): Dynamic; // getPriority() returns (string, number, or null)
    public function hasChild(path:String): Bool; //
    public function hasChildren():Bool;
    public function numChildren():Int;
    public function toJSON():Dynamic;
    public function val():Dynamic;
}


@:native('functions.Change') 
extern class Change {
    public var after:DataSnapshot;
    public var before:DataSnapshot;
}

@:native('functions.EventContext') 
extern class EventContext {
    public var params:Dynamic;
    public var resource:String;
    public var timestamp:String;
}



@:native('functions.auth') 
extern class Auth {
    public function user(): UserBuilder;
}

@:native('functions.database.UserBuilder') 
extern class UserBuilder {
    public function onCreate(handler:Event -> Void):CloudFunction;
    public function onDelete(handler:Event -> Void):CloudFunction;
}





@:native('functions.Event') 
extern class Event {
    public var data:Dynamic;
    public var eventId:String;
    public var eventType:String;
    public var params:Dynamic;
    public var resource:String;
    public var timestamp:String;
}

@:native('functions.CloudFunction') 
extern class CloudFunction {

}

@:native('functions.config') 
extern class Config {
    public var firebase: Dynamic;
}