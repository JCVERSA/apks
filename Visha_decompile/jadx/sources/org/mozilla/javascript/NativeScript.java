package org.mozilla.javascript;

import com.transsion.audiotagger.tag.id3.framebody.FrameBodyTXXX;
import defpackage.f12;

class NativeScript extends BaseFunction {
    public static final Object b = FrameBodyTXXX.SCRIPT;
    private static final long serialVersionUID = -6795101161980121700L;
    private Script script;

    public NativeScript(Script script) {
        this.script = script;
    }

    public static Script b(Context context, String str) {
        int[] iArr = {0};
        String sourcePositionFromStack = Context.getSourcePositionFromStack(iArr);
        if (sourcePositionFromStack == null) {
            iArr[0] = 1;
            sourcePositionFromStack = "<Script object>";
        }
        return context.compileString(str, null, f12.a(context.getErrorReporter()), sourcePositionFromStack, iArr[0], null);
    }

    public static NativeScript c(Scriptable scriptable, IdFunctionObject idFunctionObject) {
        if (scriptable instanceof NativeScript) {
            return (NativeScript) scriptable;
        }
        throw IdScriptableObject.incompatibleCallError(idFunctionObject);
    }

    public static void init(Scriptable scriptable, boolean z) {
        new NativeScript(null).exportAsJSClass(4, scriptable, z);
    }

    @Override
    public Object call(Context context, Scriptable scriptable, Scriptable scriptable2, Object[] objArr) {
        Script script = this.script;
        return script != null ? script.exec(context, scriptable) : Undefined.instance;
    }

    @Override
    public Scriptable construct(Context context, Scriptable scriptable, Object[] objArr) {
        throw Context.reportRuntimeError0("msg.script.is.not.constructor");
    }

    @Override
    public String decompile(int i, int i2) {
        Object obj = this.script;
        return obj instanceof NativeFunction ? ((NativeFunction) obj).decompile(i, i2) : super.decompile(i, i2);
    }

    @Override
    public Object execIdCall(IdFunctionObject idFunctionObject, Context context, Scriptable scriptable, Scriptable scriptable2, Object[] objArr) {
        if (!idFunctionObject.hasTag(b)) {
            return super.execIdCall(idFunctionObject, context, scriptable, scriptable2, objArr);
        }
        int iMethodId = idFunctionObject.methodId();
        if (iMethodId == 1) {
            NativeScript nativeScript = new NativeScript(b(context, objArr.length != 0 ? ScriptRuntime.toString(objArr[0]) : ""));
            ScriptRuntime.setObjectProtoAndParent(nativeScript, scriptable);
            return nativeScript;
        }
        if (iMethodId == 2) {
            Script script = c(scriptable2, idFunctionObject).script;
            return script == null ? "" : context.decompileScript(script, 0);
        }
        if (iMethodId != 3) {
            if (iMethodId != 4) {
                throw new IllegalArgumentException(String.valueOf(iMethodId));
            }
            throw Context.reportRuntimeError1("msg.cant.call.indirect", "exec");
        }
        NativeScript nativeScriptC = c(scriptable2, idFunctionObject);
        nativeScriptC.script = b(context, ScriptRuntime.toString(objArr, 0));
        return nativeScriptC;
    }

    @Override
    public int findPrototypeId(String str) {
        String str2;
        int length = str.length();
        int i = 4;
        if (length == 4) {
            str2 = "exec";
        } else if (length == 11) {
            str2 = "constructor";
            i = 1;
        } else if (length == 7) {
            str2 = "compile";
            i = 3;
        } else if (length != 8) {
            str2 = null;
            i = 0;
        } else {
            str2 = "toString";
            i = 2;
        }
        if (str2 == null || str2 == str || str2.equals(str)) {
            return i;
        }
        return 0;
    }

    @Override
    public int getArity() {
        return 0;
    }

    @Override
    public String getClassName() {
        return FrameBodyTXXX.SCRIPT;
    }

    @Override
    public int getLength() {
        return 0;
    }

    @Override
    public void initPrototypeId(int i) {
        String str;
        int i2;
        String str2;
        if (i != 1) {
            i2 = 0;
            if (i == 2) {
                str2 = "toString";
            } else if (i == 3) {
                str = "compile";
            } else {
                if (i != 4) {
                    throw new IllegalArgumentException(String.valueOf(i));
                }
                str2 = "exec";
            }
            initPrototypeMethod(b, i, str2, i2);
        }
        str = "constructor";
        i2 = 1;
        str2 = str;
        initPrototypeMethod(b, i, str2, i2);
    }
}
