package org.mozilla.javascript;

import com.lzy.okgo.model.Progress;
import java.io.Serializable;
import java.lang.reflect.Method;

final class NativeError extends IdScriptableObject {
    public static final int DEFAULT_STACK_LIMIT = -1;
    public static final Object b = "Error";
    public static final Method c;
    public static final Method d;
    private static final long serialVersionUID = -5338413581437645187L;
    private RhinoException stackProvider;

    static {
        try {
            c = NativeError.class.getMethod("getStackDelegated", Scriptable.class);
            d = NativeError.class.getMethod("setStackDelegated", Scriptable.class, Object.class);
        } catch (NoSuchMethodException e) {
            throw new RuntimeException(e);
        }
    }

    public static void c(Context context, Scriptable scriptable, Object[] objArr) {
        Object obj;
        ScriptableObject scriptableObject = (ScriptableObject) ScriptRuntime.toObjectOrNull(context, objArr[0], scriptable);
        Scriptable scriptable2 = objArr.length > 1 ? (Function) ScriptRuntime.toObjectOrNull(context, objArr[1], scriptable) : null;
        NativeError nativeError = (NativeError) context.newObject(scriptable, "Error");
        nativeError.setStackProvider(new EvaluatorException("[object Object]"));
        if (scriptable2 != null && (obj = scriptable2.get("name", scriptable2)) != null && !Undefined.instance.equals(obj)) {
            nativeError.associateValue("_stackHide", Context.toString(obj));
        }
        scriptableObject.defineProperty("stack", nativeError, c, d, 0);
    }

    public static String f(Context context, Scriptable scriptable, Scriptable scriptable2) {
        int int32;
        Object property = ScriptableObject.getProperty(scriptable2, "name");
        Object property2 = ScriptableObject.getProperty(scriptable2, "message");
        Object property3 = ScriptableObject.getProperty(scriptable2, Progress.FILE_NAME);
        Object property4 = ScriptableObject.getProperty(scriptable2, "lineNumber");
        StringBuilder sb = new StringBuilder();
        sb.append("(new ");
        Object obj = Scriptable.NOT_FOUND;
        if (property == obj) {
            property = Undefined.instance;
        }
        sb.append(ScriptRuntime.toString(property));
        sb.append("(");
        if (property2 != obj || property3 != obj || property4 != obj) {
            if (property2 == obj) {
                property2 = "";
            }
            sb.append(ScriptRuntime.uneval(context, scriptable, property2));
            if (property3 != obj || property4 != obj) {
                sb.append(", ");
                if (property3 == obj) {
                    property3 = "";
                }
                sb.append(ScriptRuntime.uneval(context, scriptable, property3));
                if (property4 != obj && (int32 = ScriptRuntime.toInt32(property4)) != 0) {
                    sb.append(", ");
                    sb.append(ScriptRuntime.toString(int32));
                }
            }
        }
        sb.append("))");
        return sb.toString();
    }

    public static void init(Scriptable scriptable, boolean z) {
        NativeError nativeError = new NativeError();
        ScriptableObject.putProperty(nativeError, "name", "Error");
        ScriptableObject.putProperty(nativeError, "message", "");
        ScriptableObject.putProperty(nativeError, Progress.FILE_NAME, "");
        ScriptableObject.putProperty((Scriptable) nativeError, "lineNumber", (Object) 0);
        nativeError.setAttributes("name", 2);
        nativeError.setAttributes("message", 2);
        nativeError.exportAsJSClass(3, scriptable, z);
        NativeCallSite.init(nativeError, z);
    }

    public static Object js_toString(Scriptable scriptable) {
        Object property = ScriptableObject.getProperty(scriptable, "name");
        Object obj = Scriptable.NOT_FOUND;
        String string = (property == obj || property == Undefined.instance) ? "Error" : ScriptRuntime.toString(property);
        Object property2 = ScriptableObject.getProperty(scriptable, "message");
        String string2 = (property2 == obj || property2 == Undefined.instance) ? "" : ScriptRuntime.toString(property2);
        if (string.toString().length() == 0) {
            return string2;
        }
        if (string2.toString().length() == 0) {
            return string;
        }
        return string + ": " + string2;
    }

    public static NativeError make(Context context, Scriptable scriptable, IdFunctionObject idFunctionObject, Object[] objArr) {
        Scriptable scriptable2 = (Scriptable) idFunctionObject.get("prototype", idFunctionObject);
        NativeError nativeError = new NativeError();
        nativeError.setPrototype(scriptable2);
        nativeError.setParentScope(scriptable);
        int length = objArr.length;
        if (length >= 1) {
            Object obj = objArr[0];
            if (obj != Undefined.instance) {
                ScriptableObject.putProperty(nativeError, "message", ScriptRuntime.toString(obj));
            }
            if (length >= 2) {
                ScriptableObject.putProperty(nativeError, Progress.FILE_NAME, objArr[1]);
                if (length >= 3) {
                    ScriptableObject.putProperty(nativeError, "lineNumber", Integer.valueOf(ScriptRuntime.toInt32(objArr[2])));
                }
            }
        }
        return nativeError;
    }

    public final Object b(Function function, ScriptStackElement[] scriptStackElementArr) {
        Context currentContext = Context.getCurrentContext();
        Object[] objArr = new Object[scriptStackElementArr.length];
        for (int i = 0; i < scriptStackElementArr.length; i++) {
            NativeCallSite nativeCallSite = (NativeCallSite) currentContext.newObject(this, "CallSite");
            nativeCallSite.setElement(scriptStackElementArr[i]);
            objArr[i] = nativeCallSite;
        }
        return function.call(currentContext, function, this, new Object[]{this, currentContext.newArray(this, objArr)});
    }

    @Override
    public Object execIdCall(IdFunctionObject idFunctionObject, Context context, Scriptable scriptable, Scriptable scriptable2, Object[] objArr) {
        if (!idFunctionObject.hasTag(b)) {
            return super.execIdCall(idFunctionObject, context, scriptable, scriptable2, objArr);
        }
        int iMethodId = idFunctionObject.methodId();
        if (iMethodId == -1) {
            c(context, scriptable2, objArr);
            return Undefined.instance;
        }
        if (iMethodId == 1) {
            return make(context, scriptable, idFunctionObject, objArr);
        }
        if (iMethodId == 2) {
            return js_toString(scriptable2);
        }
        if (iMethodId == 3) {
            return f(context, scriptable, scriptable2);
        }
        throw new IllegalArgumentException(String.valueOf(iMethodId));
    }

    @Override
    public void fillConstructorProperties(IdFunctionObject idFunctionObject) {
        addIdFunctionProperty(idFunctionObject, b, -1, "captureStackTrace", 2);
        ProtoProps protoProps = new ProtoProps();
        associateValue("_ErrorPrototypeProps", protoProps);
        idFunctionObject.defineProperty("stackTraceLimit", protoProps, ProtoProps.GET_STACK_LIMIT, ProtoProps.SET_STACK_LIMIT, 0);
        idFunctionObject.defineProperty("prepareStackTrace", protoProps, ProtoProps.GET_PREPARE_STACK, ProtoProps.SET_PREPARE_STACK, 0);
        super.fillConstructorProperties(idFunctionObject);
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0025  */
    @Override
    public int findPrototypeId(String str) {
        String str2;
        int i;
        int length = str.length();
        if (length == 8) {
            i = 3;
            char cCharAt = str.charAt(3);
            if (cCharAt == 'o') {
                str2 = "toSource";
            } else if (cCharAt == 't') {
                str2 = "toString";
                i = 2;
            } else {
                str2 = null;
                i = 0;
            }
        } else if (length == 11) {
            str2 = "constructor";
            i = 1;
        } else {
            str2 = null;
            i = 0;
        }
        if (str2 == null || str2 == str || str2.equals(str)) {
            return i;
        }
        return 0;
    }

    @Override
    public String getClassName() {
        return "Error";
    }

    public Object getStackDelegated(Scriptable scriptable) {
        int stackTraceLimit;
        Function prepareStackTrace;
        if (this.stackProvider == null) {
            return Scriptable.NOT_FOUND;
        }
        ProtoProps protoProps = (ProtoProps) ((NativeError) getPrototype()).getAssociatedValue("_ErrorPrototypeProps");
        if (protoProps != null) {
            stackTraceLimit = protoProps.getStackTraceLimit();
            prepareStackTrace = protoProps.getPrepareStackTrace();
        } else {
            stackTraceLimit = -1;
            prepareStackTrace = null;
        }
        ScriptStackElement[] scriptStack = this.stackProvider.getScriptStack(stackTraceLimit, (String) getAssociatedValue("_stackHide"));
        Object stackTrace = prepareStackTrace == null ? RhinoException.formatStackTrace(scriptStack, this.stackProvider.details()) : b(prepareStackTrace, scriptStack);
        setStackDelegated(scriptable, stackTrace);
        return stackTrace;
    }

    @Override
    public void initPrototypeId(int i) {
        int i2;
        String str;
        if (i != 1) {
            i2 = 0;
            if (i == 2) {
                str = "toString";
            } else {
                if (i != 3) {
                    throw new IllegalArgumentException(String.valueOf(i));
                }
                str = "toSource";
            }
        } else {
            i2 = 1;
            str = "constructor";
        }
        initPrototypeMethod(b, i, str, i2);
    }

    public void setStackDelegated(Scriptable scriptable, Object obj) {
        scriptable.delete("stack");
        this.stackProvider = null;
        scriptable.put("stack", scriptable, obj);
    }

    public void setStackProvider(RhinoException rhinoException) {
        if (this.stackProvider == null) {
            this.stackProvider = rhinoException;
            defineProperty("stack", this, c, d, 2);
        }
    }

    public String toString() {
        Object objJs_toString = js_toString(this);
        return objJs_toString instanceof String ? (String) objJs_toString : super.toString();
    }

    public static final class ProtoProps implements Serializable {
        static final Method GET_PREPARE_STACK;
        static final Method GET_STACK_LIMIT;
        static final String KEY = "_ErrorPrototypeProps";
        static final Method SET_PREPARE_STACK;
        static final Method SET_STACK_LIMIT;
        private static final long serialVersionUID = 1907180507775337939L;
        private Function prepareStackTrace;
        private int stackTraceLimit;

        static {
            try {
                GET_STACK_LIMIT = ProtoProps.class.getMethod("getStackTraceLimit", Scriptable.class);
                SET_STACK_LIMIT = ProtoProps.class.getMethod("setStackTraceLimit", Scriptable.class, Object.class);
                GET_PREPARE_STACK = ProtoProps.class.getMethod("getPrepareStackTrace", Scriptable.class);
                SET_PREPARE_STACK = ProtoProps.class.getMethod("setPrepareStackTrace", Scriptable.class, Object.class);
            } catch (NoSuchMethodException e) {
                throw new RuntimeException(e);
            }
        }

        private ProtoProps() {
            this.stackTraceLimit = -1;
        }

        public Object getPrepareStackTrace(Scriptable scriptable) {
            Function prepareStackTrace = getPrepareStackTrace();
            return prepareStackTrace == null ? Undefined.instance : prepareStackTrace;
        }

        public Object getStackTraceLimit(Scriptable scriptable) {
            int i = this.stackTraceLimit;
            return i >= 0 ? Integer.valueOf(i) : Double.valueOf(Double.POSITIVE_INFINITY);
        }

        public void setPrepareStackTrace(Scriptable scriptable, Object obj) {
            if (obj == null || Undefined.instance.equals(obj)) {
                this.prepareStackTrace = null;
            } else if (obj instanceof Function) {
                this.prepareStackTrace = (Function) obj;
            }
        }

        public void setStackTraceLimit(Scriptable scriptable, Object obj) {
            double number = Context.toNumber(obj);
            if (Double.isNaN(number) || Double.isInfinite(number)) {
                this.stackTraceLimit = -1;
            } else {
                this.stackTraceLimit = (int) number;
            }
        }

        public Function getPrepareStackTrace() {
            return this.prepareStackTrace;
        }

        public int getStackTraceLimit() {
            return this.stackTraceLimit;
        }
    }
}
