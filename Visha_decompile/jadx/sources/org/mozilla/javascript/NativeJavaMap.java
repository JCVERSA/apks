package org.mozilla.javascript;

import java.util.ArrayList;
import java.util.Map;

public class NativeJavaMap extends NativeJavaObject {
    static final boolean $assertionsDisabled = false;
    private Map<Object, Object> map;

    public NativeJavaMap(Scriptable scriptable, Object obj) {
        super(scriptable, obj, obj.getClass());
        this.map = (Map) obj;
    }

    @Override
    public Object get(String str, Scriptable scriptable) {
        if (!this.map.containsKey(str)) {
            return super.get(str, scriptable);
        }
        Context context = Context.getContext();
        Object obj = this.map.get(str);
        return context.getWrapFactory().wrap(context, this, obj, obj.getClass());
    }

    @Override
    public String getClassName() {
        return "JavaMap";
    }

    @Override
    public Object[] getIds() {
        ArrayList arrayList = new ArrayList(this.map.size());
        for (Object obj : this.map.keySet()) {
            if (obj instanceof Integer) {
                arrayList.add((Integer) obj);
            } else {
                arrayList.add(ScriptRuntime.toString(obj));
            }
        }
        return arrayList.toArray();
    }

    @Override
    public boolean has(String str, Scriptable scriptable) {
        if (this.map.containsKey(str)) {
            return true;
        }
        return super.has(str, scriptable);
    }

    @Override
    public void put(String str, Scriptable scriptable, Object obj) {
        this.map.put(str, Context.jsToJava(obj, Object.class));
    }

    @Override
    public void put(int i, Scriptable scriptable, Object obj) {
        this.map.put(Integer.valueOf(i), Context.jsToJava(obj, Object.class));
    }

    @Override
    public boolean has(int i, Scriptable scriptable) {
        if (this.map.containsKey(Integer.valueOf(i))) {
            return true;
        }
        return super.has(i, scriptable);
    }

    @Override
    public Object get(int i, Scriptable scriptable) {
        if (this.map.containsKey(Integer.valueOf(i))) {
            Context context = Context.getContext();
            Object obj = this.map.get(Integer.valueOf(i));
            return context.getWrapFactory().wrap(context, this, obj, obj.getClass());
        }
        return super.get(i, scriptable);
    }
}
