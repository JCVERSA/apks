package defpackage;

import org.apache.commons.text.StringSubstitutor;

public final class n30 extends dc9 {
    public final a9b a;
    public final String b;
    public final rd3 c;
    public final h7b d;
    public final ka3 e;

    public static final class b extends dc9.a {
        public a9b a;
        public String b;
        public rd3 c;
        public h7b d;
        public ka3 e;

        @Override
        public dc9 a() {
            String str = "";
            if (this.a == null) {
                str = " transportContext";
            }
            if (this.b == null) {
                str = str + " transportName";
            }
            if (this.c == null) {
                str = str + " event";
            }
            if (this.d == null) {
                str = str + " transformer";
            }
            if (this.e == null) {
                str = str + " encoding";
            }
            if (str.isEmpty()) {
                return new n30(this.a, this.b, this.c, this.d, this.e);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override
        public dc9.a b(ka3 ka3Var) {
            if (ka3Var == null) {
                throw new NullPointerException("Null encoding");
            }
            this.e = ka3Var;
            return this;
        }

        @Override
        public dc9.a c(rd3 rd3Var) {
            if (rd3Var == null) {
                throw new NullPointerException("Null event");
            }
            this.c = rd3Var;
            return this;
        }

        @Override
        public dc9.a d(h7b h7bVar) {
            if (h7bVar == null) {
                throw new NullPointerException("Null transformer");
            }
            this.d = h7bVar;
            return this;
        }

        @Override
        public dc9.a e(a9b a9bVar) {
            if (a9bVar == null) {
                throw new NullPointerException("Null transportContext");
            }
            this.a = a9bVar;
            return this;
        }

        @Override
        public dc9.a f(String str) {
            if (str == null) {
                throw new NullPointerException("Null transportName");
            }
            this.b = str;
            return this;
        }
    }

    @Override
    public ka3 b() {
        return this.e;
    }

    @Override
    public rd3 c() {
        return this.c;
    }

    @Override
    public h7b e() {
        return this.d;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof dc9)) {
            return false;
        }
        dc9 dc9Var = (dc9) obj;
        return this.a.equals(dc9Var.f()) && this.b.equals(dc9Var.g()) && this.c.equals(dc9Var.c()) && this.d.equals(dc9Var.e()) && this.e.equals(dc9Var.b());
    }

    @Override
    public a9b f() {
        return this.a;
    }

    @Override
    public String g() {
        return this.b;
    }

    public int hashCode() {
        return this.e.hashCode() ^ ((((((((this.a.hashCode() ^ 1000003) * 1000003) ^ this.b.hashCode()) * 1000003) ^ this.c.hashCode()) * 1000003) ^ this.d.hashCode()) * 1000003);
    }

    public String toString() {
        return "SendRequest{transportContext=" + this.a + ", transportName=" + this.b + ", event=" + this.c + ", transformer=" + this.d + ", encoding=" + this.e + StringSubstitutor.DEFAULT_VAR_END;
    }

    public n30(a9b a9bVar, String str, rd3 rd3Var, h7b h7bVar, ka3 ka3Var) {
        this.a = a9bVar;
        this.b = str;
        this.c = rd3Var;
        this.d = h7bVar;
        this.e = ka3Var;
    }
}
