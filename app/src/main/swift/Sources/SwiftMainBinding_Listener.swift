
import java_swift

/// generated by: genswift.java 'java/lang|java/util|java/sql' 'Sources' '../java' ///

/// interface com.johnholdsworth.swiftbindings.SwiftMainBinding$Listener ///

public protocol SwiftMainBinding_Listener: JavaProtocol {

    /// public abstract void com.johnholdsworth.swiftbindings.SwiftMainBinding$Listener.callSwiftMethod()

    func callSwiftMethod()

}


open class SwiftMainBinding_ListenerForward: JNIObjectForward, SwiftMainBinding_Listener {

    private static var SwiftMainBinding_ListenerJNIClass: jclass?

    /// public abstract void com.johnholdsworth.swiftbindings.SwiftMainBinding$Listener.callSwiftMethod()

    private static var callSwiftMethod_MethodID_2: jmethodID?

    open func callSwiftMethod() {
        var __locals = [jobject]()
        var __args = [jvalue]( repeating: jvalue(), count: 1 )
        JNIMethod.CallVoidMethod( object: javaObject, methodName: "callSwiftMethod", methodSig: "()V", methodCache: &SwiftMainBinding_ListenerForward.callSwiftMethod_MethodID_2, args: &__args, locals: &__locals )
    }


}

private typealias SwiftMainBinding_Listener_callSwiftMethod_0_type = @convention(c) ( _: UnsafeMutablePointer<JNIEnv?>, _: jobject?, _: jlong ) -> ()

private func SwiftMainBinding_Listener_callSwiftMethod_0( _ __env: UnsafeMutablePointer<JNIEnv?>, _ __this: jobject?, _ __swiftObject: jlong ) -> () {
    SwiftMainBinding_ListenerLocal_.swiftObject( jniEnv: __env, javaObject: __this, swiftObject: __swiftObject ).callSwiftMethod( )
}

fileprivate class SwiftMainBinding_ListenerLocal_: JNILocalProxy<SwiftMainBinding_Listener, Any> {

    fileprivate static let _proxyClass: jclass = {
        var natives = [JNINativeMethod]()

        let SwiftMainBinding_Listener_callSwiftMethod_0_thunk: SwiftMainBinding_Listener_callSwiftMethod_0_type = SwiftMainBinding_Listener_callSwiftMethod_0
        natives.append( JNINativeMethod( name: strdup("__callSwiftMethod"), signature: strdup("(J)V"), fnPtr: unsafeBitCast( SwiftMainBinding_Listener_callSwiftMethod_0_thunk, to: UnsafeMutableRawPointer.self ) ) )

        natives.append( JNINativeMethod( name: strdup("__finalize"), signature: strdup("(J)V"), fnPtr: unsafeBitCast( JNIReleasableProxy__finalize_thunk, to: UnsafeMutableRawPointer.self ) ) )

        let clazz = JNI.FindClass( proxyClassName() )
        withUnsafePointer(to: &natives[0]) {
            nativesPtr in
            if JNI.api.RegisterNatives( JNI.env, clazz, nativesPtr, jint(natives.count) ) != jint(JNI_OK) {
                JNI.report( "Unable to register java natives" )
            }
        }

        defer { JNI.DeleteLocalRef( clazz ) }
        return JNI.api.NewGlobalRef( JNI.env, clazz )!
    }()

    override open class func proxyClassName() -> String { return "org/swiftjava/com_johnholdsworth/SwiftMainBinding_ListenerProxy" }
    override open class func proxyClass() -> jclass? { return _proxyClass }

}

extension SwiftMainBinding_Listener {

    public func localJavaObject( _ locals: UnsafeMutablePointer<[jobject]> ) -> jobject? {
        return SwiftMainBinding_ListenerLocal_( owned: self, proto: self ).localJavaObject( locals )
    }

}

open class SwiftMainBinding_ListenerBase: SwiftMainBinding_Listener {

    public init() {}

    /// public abstract void com.johnholdsworth.swiftbindings.SwiftMainBinding$Listener.callSwiftMethod()

    open func callSwiftMethod() /**/ {
    }


}
