package defpackage;

import freemarker.template.utility.NullArgumentException;

public abstract class ufa {

    public static final class a extends ufa {
        public static final a a = new a();

        public a() {
            super();
        }

        @Override
        public Object c() {
            return null;
        }

        @Override
        public String d() {
            return null;
        }

        @Override
        public boolean e() {
            return false;
        }
    }

    public static final class b extends ufa {
        public final String a;
        public final Object b;

        @Override
        public Object c() {
            return this.b;
        }

        @Override
        public String d() {
            return this.a;
        }

        @Override
        public boolean e() {
            return true;
        }

        public b(String str, Object obj) {
            super();
            NullArgumentException.check("templateName", str);
            NullArgumentException.check("templateSource", obj);
            if (obj instanceof ufa) {
                throw new IllegalArgumentException();
            }
            this.a = str;
            this.b = obj;
        }
    }

    public static ufa a() {
        return a.a;
    }

    public static ufa b(String str, Object obj) {
        return obj != null ? new b(str, obj) : a();
    }

    public abstract Object c();

    public abstract String d();

    public abstract boolean e();

    public ufa() {
    }
}
