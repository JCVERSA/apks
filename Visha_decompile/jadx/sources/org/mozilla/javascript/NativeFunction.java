package org.mozilla.javascript;

import org.mozilla.javascript.debug.DebuggableScript;

public abstract class NativeFunction extends BaseFunction {
    private static final long serialVersionUID = 8713897114082216401L;

    @Override
    public final String decompile(int i, int i2) {
        String encodedSource = getEncodedSource();
        if (encodedSource == null) {
            return super.decompile(i, i2);
        }
        UintMap uintMap = new UintMap(1);
        uintMap.put(1, i);
        return Decompiler.decompile(encodedSource, i2, uintMap);
    }

    @Override
    public int getArity() {
        return getParamCount();
    }

    public DebuggableScript getDebuggableView() {
        return null;
    }

    public String getEncodedSource() {
        return null;
    }

    public abstract int getLanguageVersion();

    @Override
    public int getLength() {
        NativeCall nativeCallFindFunctionActivation;
        int paramCount = getParamCount();
        return (getLanguageVersion() == 120 && (nativeCallFindFunctionActivation = ScriptRuntime.findFunctionActivation(Context.getContext(), this)) != null) ? nativeCallFindFunctionActivation.originalArgs.length : paramCount;
    }

    public abstract int getParamAndVarCount();

    public abstract int getParamCount();

    public boolean getParamOrVarConst(int i) {
        return false;
    }

    public abstract String getParamOrVarName(int i);

    public final void initScriptFunction(Context context, Scriptable scriptable) {
        initScriptFunction(context, scriptable, isGeneratorFunction());
    }

    @Deprecated
    public String jsGet_name() {
        return getFunctionName();
    }

    public Object resumeGenerator(Context context, Scriptable scriptable, int i, Object obj, Object obj2) {
        throw new EvaluatorException("resumeGenerator() not implemented");
    }

    public final void initScriptFunction(Context context, Scriptable scriptable, boolean z) {
        ScriptRuntime.setFunctionProtoAndParent(this, scriptable, z);
    }
}
