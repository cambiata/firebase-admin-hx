package functions;

@:native('functions')
@:jsRequire('firebase-functions')
extern class Functions {

    static public var https: Https;

    static public var database: Database;

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
    public function onCreate(handler:Event -> Void):CloudFunction;
    public function onDelete(handler:Event -> Void):CloudFunction;
    public function onUpdate(handler:Event -> Void):CloudFunction;
    public function onWrite(handler:Event -> Void):CloudFunction;
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