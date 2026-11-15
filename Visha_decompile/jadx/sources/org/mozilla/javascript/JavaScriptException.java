package org.mozilla.javascript;

import com.lzy.okgo.model.Progress;

public class JavaScriptException extends RhinoException {
    private static final long serialVersionUID = -7666130513694669293L;
    private Object value;

    @Deprecated
    public JavaScriptException(Object obj) {
        this(obj, "", 0);
    }

    @Override
    public String details() {
        Object obj = this.value;
        if (obj == null) {
            return "null";
        }
        if (obj instanceof NativeError) {
            return obj.toString();
        }
        try {
            return ScriptRuntime.toString(obj);
        } catch (RuntimeException unused) {
            Object obj2 = this.value;
            return obj2 instanceof Scriptable ? ScriptRuntime.defaultObjectToString((Scriptable) obj2) : obj2.toString();
        }
    }

    @Deprecated
    public int getLineNumber() {
        return lineNumber();
    }

    @Deprecated
    public String getSourceName() {
        return sourceName();
    }

    public Object getValue() {
        return this.value;
    }

    public JavaScriptException(Object obj, String str, int i) {
        recordErrorOrigin(str, i, null, 0);
        this.value = obj;
        if ((obj instanceof NativeError) && Context.getContext().hasFeature(10)) {
            NativeError nativeError = (NativeError) obj;
            if (!nativeError.has(Progress.FILE_NAME, nativeError)) {
                nativeError.put(Progress.FILE_NAME, nativeError, str);
            }
            if (!nativeError.has("lineNumber", nativeError)) {
                nativeError.put("lineNumber", nativeError, Integer.valueOf(i));
            }
            nativeError.setStackProvider(this);
        }
    }
}
