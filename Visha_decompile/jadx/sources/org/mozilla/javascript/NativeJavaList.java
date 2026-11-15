package org.mozilla.javascript;

import androidx.media3.exoplayer.rtsp.SessionDescription;
import java.util.List;

public class NativeJavaList extends NativeJavaObject {
    static final boolean $assertionsDisabled = false;
    private List<Object> list;

    public NativeJavaList(Scriptable scriptable, Object obj) {
        super(scriptable, obj, obj.getClass());
        this.list = (List) obj;
    }

    private boolean isWithValidIndex(int i) {
        return i >= 0 && i < this.list.size();
    }

    @Override
    public Object get(String str, Scriptable scriptable) {
        return SessionDescription.ATTR_LENGTH.equals(str) ? Integer.valueOf(this.list.size()) : super.get(str, scriptable);
    }

    @Override
    public String getClassName() {
        return "JavaList";
    }

    @Override
    public Object[] getIds() {
        List list = (List) this.javaObject;
        Object[] objArr = new Object[list.size()];
        int size = list.size();
        while (true) {
            size--;
            if (size < 0) {
                return objArr;
            }
            objArr[size] = Integer.valueOf(size);
        }
    }

    @Override
    public boolean has(String str, Scriptable scriptable) {
        if (str.equals(SessionDescription.ATTR_LENGTH)) {
            return true;
        }
        return super.has(str, scriptable);
    }

    @Override
    public void put(int i, Scriptable scriptable, Object obj) {
        if (isWithValidIndex(i)) {
            this.list.set(i, Context.jsToJava(obj, Object.class));
        } else {
            super.put(i, scriptable, obj);
        }
    }

    @Override
    public boolean has(int i, Scriptable scriptable) {
        if (isWithValidIndex(i)) {
            return true;
        }
        return super.has(i, scriptable);
    }

    @Override
    public Object get(int i, Scriptable scriptable) {
        if (isWithValidIndex(i)) {
            Context context = Context.getContext();
            Object obj = this.list.get(i);
            return context.getWrapFactory().wrap(context, this, obj, obj.getClass());
        }
        return Undefined.instance;
    }

    @Override
    public boolean has(Symbol symbol, Scriptable scriptable) {
        if (SymbolKey.IS_CONCAT_SPREADABLE.equals(symbol)) {
            return true;
        }
        return super.has(symbol, scriptable);
    }

    @Override
    public Object get(Symbol symbol, Scriptable scriptable) {
        if (SymbolKey.IS_CONCAT_SPREADABLE.equals(symbol)) {
            return Boolean.TRUE;
        }
        return super.get(symbol, scriptable);
    }
}
