package defpackage;

import com.grack.nanojson.JsonArray;
import com.grack.nanojson.JsonObject;
import com.grack.nanojson.JsonWriterException;
import java.util.Stack;

public final class aa5 {
    public Stack a;
    public Object b;

    public aa5(Object obj) {
        Stack stack = new Stack();
        this.a = stack;
        this.b = obj;
        stack.push(obj);
    }

    public aa5 a(String str) {
        JsonArray jsonArray = new JsonArray();
        g(str, jsonArray);
        this.a.push(jsonArray);
        return this;
    }

    public Object b() {
        return this.b;
    }

    public aa5 c() {
        if (this.a.size() == 1) {
            throw new JsonWriterException("Cannot end the root object or array");
        }
        this.a.pop();
        return this;
    }

    public final JsonObject d() {
        try {
            return (JsonObject) this.a.peek();
        } catch (ClassCastException unused) {
            throw new JsonWriterException("Attempted to write a keyed value to a JsonArray");
        }
    }

    public aa5 e(String str) {
        JsonObject jsonObject = new JsonObject();
        g(str, jsonObject);
        this.a.push(jsonObject);
        return this;
    }

    public aa5 f(String str, int i) {
        return g(str, Integer.valueOf(i));
    }

    public aa5 g(String str, Object obj) {
        d().put(str, obj);
        return this;
    }

    public aa5 h(String str, String str2) {
        return g(str, str2);
    }

    public aa5 i(String str, boolean z) {
        return g(str, Boolean.valueOf(z));
    }
}
