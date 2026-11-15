package org.mozilla.javascript;

import androidx.media3.exoplayer.rtsp.SessionDescription;
import java.lang.reflect.Array;

public class NativeJavaArray extends NativeJavaObject implements SymbolScriptable {
    private static final long serialVersionUID = -924022554283675333L;
    Object array;
    Class<?> cls;
    int length;

    public NativeJavaArray(Scriptable scriptable, Object obj) {
        super(scriptable, null, ScriptRuntime.ObjectClass);
        Class<?> cls = obj.getClass();
        if (!cls.isArray()) {
            throw new RuntimeException("Array expected");
        }
        this.array = obj;
        this.length = Array.getLength(obj);
        this.cls = cls.getComponentType();
    }

    public static NativeJavaArray wrap(Scriptable scriptable, Object obj) {
        return new NativeJavaArray(scriptable, obj);
    }

    @Override
    public void delete(Symbol symbol) {
    }

    @Override
    public Object get(String str, Scriptable scriptable) {
        if (str.equals(SessionDescription.ATTR_LENGTH)) {
            return Integer.valueOf(this.length);
        }
        Object obj = super.get(str, scriptable);
        if (obj != Scriptable.NOT_FOUND || ScriptableObject.hasProperty(getPrototype(), str)) {
            return obj;
        }
        throw Context.reportRuntimeError2("msg.java.member.not.found", this.array.getClass().getName(), str);
    }

    @Override
    public String getClassName() {
        return "JavaArray";
    }

    @Override
    public Object getDefaultValue(Class<?> cls) {
        if (cls == null || cls == ScriptRuntime.StringClass) {
            return this.array.toString();
        }
        if (cls == ScriptRuntime.BooleanClass) {
            return Boolean.TRUE;
        }
        return cls == ScriptRuntime.NumberClass ? ScriptRuntime.NaNobj : this;
    }

    @Override
    public Object[] getIds() {
        int i = this.length;
        Object[] objArr = new Object[i];
        while (true) {
            i--;
            if (i < 0) {
                return objArr;
            }
            objArr[i] = Integer.valueOf(i);
        }
    }

    @Override
    public Scriptable getPrototype() {
        if (this.prototype == null) {
            this.prototype = ScriptableObject.getArrayPrototype(getParentScope());
        }
        return this.prototype;
    }

    @Override
    public boolean has(String str, Scriptable scriptable) {
        return str.equals(SessionDescription.ATTR_LENGTH) || super.has(str, scriptable);
    }

    @Override
    public boolean hasInstance(Scriptable scriptable) {
        if (!(scriptable instanceof Wrapper)) {
            return false;
        }
        return this.cls.isInstance(((Wrapper) scriptable).unwrap());
    }

    @Override
    public void put(String str, Scriptable scriptable, Object obj) {
        if (!str.equals(SessionDescription.ATTR_LENGTH)) {
            throw Context.reportRuntimeError1("msg.java.array.member.not.found", str);
        }
    }

    @Override
    public Object unwrap() {
        return this.array;
    }

    @Override
    public boolean has(int i, Scriptable scriptable) {
        return i >= 0 && i < this.length;
    }

    @Override
    public boolean has(Symbol symbol, Scriptable scriptable) {
        return SymbolKey.IS_CONCAT_SPREADABLE.equals(symbol);
    }

    @Override
    public void put(int i, Scriptable scriptable, Object obj) {
        if (i >= 0 && i < this.length) {
            Array.set(this.array, i, Context.jsToJava(obj, this.cls));
            return;
        }
        throw Context.reportRuntimeError2("msg.java.array.index.out.of.bounds", String.valueOf(i), String.valueOf(this.length - 1));
    }

    @Override
    public Object get(int i, Scriptable scriptable) {
        if (i >= 0 && i < this.length) {
            Context context = Context.getContext();
            return context.getWrapFactory().wrap(context, this, Array.get(this.array, i), this.cls);
        }
        return Undefined.instance;
    }

    @Override
    public Object get(Symbol symbol, Scriptable scriptable) {
        if (SymbolKey.IS_CONCAT_SPREADABLE.equals(symbol)) {
            return Boolean.TRUE;
        }
        return Scriptable.NOT_FOUND;
    }
}
