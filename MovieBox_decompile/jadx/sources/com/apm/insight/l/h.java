package com.apm.insight.l;

import java.io.IOException;
import java.io.Writer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public final class h {

    private Writer f19055a;

    private final List<a> f19056b = new ArrayList();

    /* JADX WARN: $VALUES field not found */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    static final class a {

        public static final a f19057a = new a("EMPTY_ARRAY", 0);

        public static final a f19058b = new a("NONEMPTY_ARRAY", 1);

        public static final a f19059c = new a("EMPTY_OBJECT", 2);

        public static final a f19060d = new a("DANGLING_KEY", 3);

        public static final a f19061e = new a("NONEMPTY_OBJECT", 4);

        public static final a f19062f = new a("NULL", 5);

        private a(String str, int i10) {
            super(str, i10);
        }
    }

    private h(Writer writer) {
        this.f19055a = writer;
    }

    private h a() throws JSONException, IOException {
        return a(a.f19057a, "[");
    }

    private h b() throws JSONException, IOException {
        a aVar = a.f19057a;
        return a("]");
    }

    private h c() throws JSONException, IOException {
        return a(a.f19059c, "{");
    }

    private h d() throws JSONException, IOException {
        a aVar = a.f19057a;
        return a("}");
    }

    private a e() throws JSONException {
        List<a> list = this.f19056b;
        return list.get(list.size() - 1);
    }

    private void f() throws JSONException, IOException {
        if (this.f19056b.isEmpty()) {
            return;
        }
        a aVarE = e();
        if (aVarE == a.f19057a) {
            a(a.f19058b);
            return;
        }
        if (aVarE == a.f19058b) {
            this.f19055a.write(44);
        } else if (aVarE == a.f19060d) {
            this.f19055a.write(":");
            a(a.f19061e);
        } else if (aVarE != a.f19062f) {
            throw new JSONException("Nesting problem");
        }
    }

    public final String toString() {
        return "";
    }

    private h a(a aVar, String str) throws JSONException, IOException {
        f();
        this.f19056b.add(aVar);
        this.f19055a.write(str);
        return this;
    }

    private void b(String str) throws IOException {
        this.f19055a.write("\"");
        int length = str.length();
        for (int i10 = 0; i10 < length; i10++) {
            char cCharAt = str.charAt(i10);
            if (cCharAt == '\f') {
                this.f19055a.write("\\f");
            } else if (cCharAt != '\r') {
                if (cCharAt != '\"' && cCharAt != '/' && cCharAt != '\\') {
                    switch (cCharAt) {
                        case '\b':
                            this.f19055a.write("\\b");
                            continue;
                        case '\t':
                            this.f19055a.write("\\t");
                            continue;
                        case '\n':
                            this.f19055a.write("\\n");
                            continue;
                        default:
                            if (cCharAt <= 31) {
                                this.f19055a.write(String.format("\\u%04x", Integer.valueOf(cCharAt)));
                            }
                            break;
                    }
                } else {
                    this.f19055a.write(92);
                }
                this.f19055a.write(cCharAt);
            } else {
                this.f19055a.write("\\r");
            }
        }
        this.f19055a.write("\"");
    }

    private h c(String str) throws JSONException, IOException {
        a aVarE = e();
        if (aVarE == a.f19061e) {
            this.f19055a.write(44);
        } else if (aVarE != a.f19059c) {
            throw new JSONException("Nesting problem");
        }
        a(a.f19060d);
        b(str);
        return this;
    }

    private h a(String str) throws JSONException, IOException {
        e();
        List<a> list = this.f19056b;
        list.remove(list.size() - 1);
        this.f19055a.write(str);
        return this;
    }

    private void a(a aVar) {
        List<a> list = this.f19056b;
        list.set(list.size() - 1, aVar);
    }

    private h a(Object obj) throws JSONException, IOException {
        if (obj instanceof JSONArray) {
            a((JSONArray) obj);
            return this;
        }
        if (obj instanceof JSONObject) {
            a((JSONObject) obj);
            return this;
        }
        f();
        if (obj != null && obj != JSONObject.NULL) {
            if (obj instanceof Boolean) {
                this.f19055a.write(String.valueOf(obj));
            } else if (obj instanceof Number) {
                this.f19055a.write(JSONObject.numberToString((Number) obj));
            } else {
                b(obj.toString());
            }
        } else {
            this.f19055a.write("null");
        }
        return this;
    }

    public static void a(JSONObject jSONObject, Writer writer) throws Throwable {
        new h(writer).a(jSONObject);
        writer.flush();
    }

    public static void a(JSONArray jSONArray, Writer writer) throws Throwable {
        new h(writer).a(jSONArray);
        writer.flush();
    }

    private void a(JSONObject jSONObject) throws JSONException, IOException {
        c();
        Iterator<String> itKeys = jSONObject.keys();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            c(next).a(jSONObject.get(next));
        }
        d();
    }

    private void a(JSONArray jSONArray) throws JSONException, IOException {
        a();
        for (int i10 = 0; i10 < jSONArray.length(); i10++) {
            a(jSONArray.get(i10));
        }
        b();
    }
}
