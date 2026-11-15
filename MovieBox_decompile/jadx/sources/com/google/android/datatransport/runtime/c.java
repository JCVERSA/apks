package com.google.android.datatransport.runtime;

final class c extends n {

    private final o f23708a;

    private final String f23709b;

    private final t8.d f23710c;

    private final t8.g f23711d;

    private final t8.c f23712e;

    static final class b extends n.a {

        private o f23713a;

        private String f23714b;

        private t8.d f23715c;

        private t8.g f23716d;

        private t8.c f23717e;

        b() {
        }

        @Override
        public n a() {
            String str = "";
            if (this.f23713a == null) {
                str = " transportContext";
            }
            if (this.f23714b == null) {
                str = str + " transportName";
            }
            if (this.f23715c == null) {
                str = str + " event";
            }
            if (this.f23716d == null) {
                str = str + " transformer";
            }
            if (this.f23717e == null) {
                str = str + " encoding";
            }
            if (str.isEmpty()) {
                return new c(this.f23713a, this.f23714b, this.f23715c, this.f23716d, this.f23717e);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override
        n.a b(t8.c cVar) {
            if (cVar == null) {
                throw new NullPointerException("Null encoding");
            }
            this.f23717e = cVar;
            return this;
        }

        @Override
        n.a c(t8.d dVar) {
            if (dVar == null) {
                throw new NullPointerException("Null event");
            }
            this.f23715c = dVar;
            return this;
        }

        @Override
        n.a d(t8.g gVar) {
            if (gVar == null) {
                throw new NullPointerException("Null transformer");
            }
            this.f23716d = gVar;
            return this;
        }

        @Override
        public n.a e(o oVar) {
            if (oVar == null) {
                throw new NullPointerException("Null transportContext");
            }
            this.f23713a = oVar;
            return this;
        }

        @Override
        public n.a f(String str) {
            if (str == null) {
                throw new NullPointerException("Null transportName");
            }
            this.f23714b = str;
            return this;
        }
    }

    @Override
    public t8.c b() {
        return this.f23712e;
    }

    @Override
    t8.d c() {
        return this.f23710c;
    }

    @Override
    t8.g e() {
        return this.f23711d;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof n)) {
            return false;
        }
        n nVar = (n) obj;
        return this.f23708a.equals(nVar.f()) && this.f23709b.equals(nVar.g()) && this.f23710c.equals(nVar.c()) && this.f23711d.equals(nVar.e()) && this.f23712e.equals(nVar.b());
    }

    @Override
    public o f() {
        return this.f23708a;
    }

    @Override
    public String g() {
        return this.f23709b;
    }

    public int hashCode() {
        return ((((((((this.f23708a.hashCode() ^ 1000003) * 1000003) ^ this.f23709b.hashCode()) * 1000003) ^ this.f23710c.hashCode()) * 1000003) ^ this.f23711d.hashCode()) * 1000003) ^ this.f23712e.hashCode();
    }

    public String toString() {
        return "SendRequest{transportContext=" + this.f23708a + ", transportName=" + this.f23709b + ", event=" + this.f23710c + ", transformer=" + this.f23711d + ", encoding=" + this.f23712e + "}";
    }

    private c(o oVar, String str, t8.d dVar, t8.g gVar, t8.c cVar) {
        this.f23708a = oVar;
        this.f23709b = str;
        this.f23710c = dVar;
        this.f23711d = gVar;
        this.f23712e = cVar;
    }
}
