package org.mozilla.javascript;

class SpecialRef extends Ref {
    private static final long serialVersionUID = -7521596632456797847L;
    private String name;
    private Scriptable target;
    private int type;

    public SpecialRef(Scriptable scriptable, int i, String str) {
        this.target = scriptable;
        this.type = i;
        this.name = str;
    }

    public static Ref createSpecial(Context context, Scriptable scriptable, Object obj, String str) {
        int i;
        Scriptable objectOrNull = ScriptRuntime.toObjectOrNull(context, obj, scriptable);
        if (objectOrNull == null) {
            throw ScriptRuntime.undefReadError(obj, str);
        }
        if (str.equals("__proto__")) {
            i = 1;
        } else {
            if (!str.equals("__parent__")) {
                throw new IllegalArgumentException(str);
            }
            i = 2;
        }
        if (!context.hasFeature(5)) {
            i = 0;
        }
        return new SpecialRef(objectOrNull, i, str);
    }

    @Override
    public boolean delete(Context context) {
        if (this.type == 0) {
            return ScriptRuntime.deleteObjectElem(this.target, this.name, context);
        }
        return false;
    }

    @Override
    public Object get(Context context) {
        int i = this.type;
        if (i == 0) {
            return ScriptRuntime.getObjectProp(this.target, this.name, context);
        }
        if (i == 1) {
            return this.target.getPrototype();
        }
        if (i == 2) {
            return this.target.getParentScope();
        }
        throw Kit.codeBug();
    }

    @Override
    public boolean has(Context context) {
        if (this.type == 0) {
            return ScriptRuntime.hasObjectElem(this.target, this.name, context);
        }
        return true;
    }

    @Override
    @Deprecated
    public Object set(Context context, Object obj) {
        throw new IllegalStateException();
    }

    @Override
    public Object set(Context context, Scriptable scriptable, Object obj) {
        int i = this.type;
        if (i == 0) {
            return ScriptRuntime.setObjectProp(this.target, this.name, obj, context);
        }
        if (i != 1 && i != 2) {
            throw Kit.codeBug();
        }
        Scriptable objectOrNull = ScriptRuntime.toObjectOrNull(context, obj, scriptable);
        if (objectOrNull != null) {
            Scriptable prototype = objectOrNull;
            do {
                if (prototype == this.target) {
                    throw Context.reportRuntimeError1("msg.cyclic.value", this.name);
                }
                prototype = this.type == 1 ? prototype.getPrototype() : prototype.getParentScope();
            } while (prototype != null);
        }
        if (this.type != 1) {
            this.target.setParentScope(objectOrNull);
        } else if (context.getLanguageVersion() < 200) {
            this.target.setPrototype(objectOrNull);
        } else {
            if ((obj != null && !"object".equals(ScriptRuntime.typeof(obj))) || !"object".equals(ScriptRuntime.typeof(this.target))) {
                return Undefined.instance;
            }
            this.target.setPrototype(objectOrNull);
        }
        return objectOrNull;
    }
}
