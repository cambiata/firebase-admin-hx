package firebase;

@:native("firebase") extern class Firebase {
	static function __init__():Void {
		#if js
			#if include_firebase haxe.macro.Compiler.includeFile("../firebase.js"); #end
		#end
	}

	public static function app(?name:String):firebase.admin.App;
	public static function apps():Array<firebase.admin.App>;
	public static function initializeApp(options:Dynamic):firebase.admin.App;
	public static function database(?app:firebase.admin.App):firebase.database.Database;
	public static function auth(?app:firebase.admin.App):firebase.auth.Auth;
	public static function storage(?app:firebase.admin.App):firebase.storage.Storage;
	public static function messaging(?app:firebase.admin.App):firebase.messaging.Messaging;
	
}
