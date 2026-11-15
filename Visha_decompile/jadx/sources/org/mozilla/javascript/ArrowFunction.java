package org.mozilla.javascript;

public class ArrowFunction extends BaseFunction {
    private static final long serialVersionUID = -7377989503697220633L;
    private final Scriptable boundThis;
    private final Callable targetFunction;

    public ArrowFunction(Context context, Scriptable scriptable, Callable callable, Scriptable scriptable2) {
        this.targetFunction = callable;
        this.boundThis = scriptable2;
        ScriptRuntime.setFunctionProtoAndParent(this, scriptable);
        Object objTypeErrorThrower = ScriptRuntime.typeErrorThrower(context);
        NativeObject nativeObject = new NativeObject();
        nativeObject.put("get", nativeObject, objTypeErrorThrower);
        nativeObject.put("set", nativeObject, objTypeErrorThrower);
        Object obj = Boolean.FALSE;
        nativeObject.put("enumerable", nativeObject, obj);
        nativeObject.put("configurable", nativeObject, obj);
        nativeObject.preventExtensions();
        defineOwnProperty(context, "caller", nativeObject, false);
        defineOwnProperty(context, "arguments", nativeObject, false);
    }

    public static boolean equalObjectGraphs(ArrowFunction arrowFunction, ArrowFunction arrowFunction2, c cVar) {
        return cVar.b(arrowFunction.boundThis, arrowFunction2.boundThis) && cVar.b(arrowFunction.targetFunction, arrowFunction2.targetFunction);
    }

    @Override
    public Object call(Context context, Scriptable scriptable, Scriptable scriptable2, Object[] objArr) {
        Scriptable topCallScope = this.boundThis;
        if (topCallScope == null) {
            topCallScope = ScriptRuntime.getTopCallScope(context);
        }
        return this.targetFunction.call(context, scriptable, topCallScope, objArr);
    }

    @Override
    public Scriptable construct(Context context, Scriptable scriptable, Object[] objArr) {
        throw ScriptRuntime.typeError1("msg.not.ctor", decompile(0, 0));
    }

    @Override
    public String decompile(int i, int i2) {
        Callable callable = this.targetFunction;
        return callable instanceof BaseFunction ? ((BaseFunction) callable).decompile(i, i2) : super.decompile(i, i2);
    }

    @Override
    public int getArity() {
        return getLength();
    }

    @Override
    public int getLength() {
        Callable callable = this.targetFunction;
        if (callable instanceof BaseFunction) {
            return ((BaseFunction) callable).getLength();
        }
        return 0;
    }

    @Override
    public boolean hasInstance(Scriptable scriptable) {
        Callable callable = this.targetFunction;
        if (callable instanceof Function) {
            return ((Function) callable).hasInstance(scriptable);
        }
        throw ScriptRuntime.typeError0("msg.not.ctor");
    }
}
