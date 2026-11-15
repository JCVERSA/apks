package defpackage;

import android.net.Uri;
import org.json.JSONArray;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public abstract class acb {
    public static final zbb a = new a();
    public static final zbb b = new e();
    public static final zbb c = new g();
    public static final zbb d = new d();
    public static final zbb e = new h();
    public static final zbb f = new b();
    public static final zbb g = new f();
    public static final zbb h = new c();

    public static final class a implements zbb {
        public final boolean b;

        @Override
        public boolean b(Object obj) {
            y45.j(obj, ES6Iterator.VALUE_PROPERTY);
            return obj instanceof Boolean;
        }

        @Override
        public Boolean a() {
            return Boolean.valueOf(this.b);
        }
    }

    public static final class b implements zbb {
        public final int b = -16777216;

        @Override
        public boolean b(Object obj) {
            y45.j(obj, ES6Iterator.VALUE_PROPERTY);
            return obj instanceof Integer;
        }

        @Override
        public Integer a() {
            return Integer.valueOf(this.b);
        }
    }

    public static final class c implements zbb {
        public final JSONObject b = new JSONObject();

        @Override
        public boolean b(Object obj) {
            y45.j(obj, ES6Iterator.VALUE_PROPERTY);
            return obj instanceof JSONObject;
        }

        @Override
        public JSONObject a() {
            return this.b;
        }
    }

    public static final class d implements zbb {
        public final double b;

        @Override
        public boolean b(Object obj) {
            y45.j(obj, ES6Iterator.VALUE_PROPERTY);
            return obj instanceof Double;
        }

        @Override
        public Double a() {
            return Double.valueOf(this.b);
        }
    }

    public static final class e implements zbb {
        public final long b;

        @Override
        public boolean b(Object obj) {
            y45.j(obj, ES6Iterator.VALUE_PROPERTY);
            return obj instanceof Long;
        }

        @Override
        public Long a() {
            return Long.valueOf(this.b);
        }
    }

    public static final class f implements zbb {
        public final JSONArray b = new JSONArray();

        @Override
        public boolean b(Object obj) {
            y45.j(obj, ES6Iterator.VALUE_PROPERTY);
            return obj instanceof JSONArray;
        }

        @Override
        public JSONArray a() {
            return this.b;
        }
    }

    public static final class g implements zbb {
        public final String b = "";

        @Override
        public boolean b(Object obj) {
            y45.j(obj, ES6Iterator.VALUE_PROPERTY);
            return obj instanceof String;
        }

        @Override
        public String a() {
            return this.b;
        }
    }

    public static final class h implements zbb {
        public final Uri b = Uri.EMPTY;

        @Override
        public boolean b(Object obj) {
            y45.j(obj, ES6Iterator.VALUE_PROPERTY);
            return obj instanceof Uri;
        }

        @Override
        public Uri a() {
            return this.b;
        }
    }
}
