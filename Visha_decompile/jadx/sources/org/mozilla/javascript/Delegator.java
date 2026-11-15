package org.mozilla.javascript;

public class Delegator implements Function, SymbolScriptable {
    protected Scriptable obj;

    public Delegator() {
        this.obj = null;
    }

    @Override
    public Object call(Context context, Scriptable scriptable, Scriptable scriptable2, Object[] objArr) {
        return ((Function) getDelegee()).call(context, scriptable, scriptable2, objArr);
    }

    @Override
    public Scriptable construct(Context context, Scriptable scriptable, Object[] objArr) {
        Scriptable delegee = getDelegee();
        if (delegee != null) {
            return ((Function) delegee).construct(context, scriptable, objArr);
        }
        Delegator delegatorNewInstance = newInstance();
        delegatorNewInstance.setDelegee(objArr.length == 0 ? new NativeObject() : ScriptRuntime.toObject(context, scriptable, objArr[0]));
        return delegatorNewInstance;
    }

    @Override
    public void delete(String str) {
        getDelegee().delete(str);
    }

    @Override
    public Object get(String str, Scriptable scriptable) {
        return getDelegee().get(str, scriptable);
    }

    @Override
    public String getClassName() {
        return getDelegee().getClassName();
    }

    @Override
    public Object getDefaultValue(Class<?> cls) {
        return (cls == null || cls == ScriptRuntime.ScriptableClass || cls == ScriptRuntime.FunctionClass) ? this : getDelegee().getDefaultValue(cls);
    }

    public Scriptable getDelegee() {
        return this.obj;
    }

    @Override
    public Object[] getIds() {
        return getDelegee().getIds();
    }

    @Override
    public Scriptable getParentScope() {
        return getDelegee().getParentScope();
    }

    @Override
    public Scriptable getPrototype() {
        return getDelegee().getPrototype();
    }

    @Override
    public boolean has(String str, Scriptable scriptable) {
        return getDelegee().has(str, scriptable);
    }

    @Override
    public boolean hasInstance(Scriptable scriptable) {
        return getDelegee().hasInstance(scriptable);
    }

    public Delegator newInstance() {
        try {
            return (Delegator) getClass().newInstance();
        } catch (Exception e) {
            throw Context.throwAsScriptRuntimeEx(e);
        }
    }

    @Override
    public void put(String str, Scriptable scriptable, Object obj) {
        getDelegee().put(str, scriptable, obj);
    }

    public void setDelegee(Scriptable scriptable) {
        this.obj = scriptable;
    }

    @Override
    public void setParentScope(Scriptable scriptable) {
        getDelegee().setParentScope(scriptable);
    }

    @Override
    public void setPrototype(Scriptable scriptable) {
        getDelegee().setPrototype(scriptable);
    }

    @Override
    public void delete(Symbol symbol) {
        Scriptable delegee = getDelegee();
        if (delegee instanceof SymbolScriptable) {
            ((SymbolScriptable) delegee).delete(symbol);
        }
    }

    @Override
    public Object get(Symbol symbol, Scriptable scriptable) {
        Scriptable delegee = getDelegee();
        return delegee instanceof SymbolScriptable ? ((SymbolScriptable) delegee).get(symbol, scriptable) : Scriptable.NOT_FOUND;
    }

    @Override
    public boolean has(Symbol symbol, Scriptable scriptable) {
        Scriptable delegee = getDelegee();
        if (delegee instanceof SymbolScriptable) {
            return ((SymbolScriptable) delegee).has(symbol, scriptable);
        }
        return false;
    }

    @Override
    public void put(Symbol symbol, Scriptable scriptable, Object obj) {
        Scriptable delegee = getDelegee();
        if (delegee instanceof SymbolScriptable) {
            ((SymbolScriptable) delegee).put(symbol, scriptable, obj);
        }
    }

    public Delegator(Scriptable scriptable) {
        this.obj = scriptable;
    }

    @Override
    public void delete(int i) {
        getDelegee().delete(i);
    }

    @Override
    public boolean has(int i, Scriptable scriptable) {
        return getDelegee().has(i, scriptable);
    }

    @Override
    public void put(int i, Scriptable scriptable, Object obj) {
        getDelegee().put(i, scriptable, obj);
    }

    @Override
    public Object get(int i, Scriptable scriptable) {
        return getDelegee().get(i, scriptable);
    }
}
