package com.google.android.datatransport.cct.internal;

final class i extends p {

    private final o f23625a;

    static final class b extends p.a {

        private o f23626a;

        b() {
        }

        @Override
        public p a() {
            return new i(this.f23626a);
        }

        @Override
        public p.a b(o oVar) {
            this.f23626a = oVar;
            return this;
        }
    }

    @Override
    public o b() {
        return this.f23625a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof p)) {
            return false;
        }
        o oVar = this.f23625a;
        o oVarB = ((p) obj).b();
        if (oVar == null) {
            return oVarB == null;
        }
        return oVar.equals(oVarB);
    }

    public int hashCode() {
        o oVar = this.f23625a;
        return (oVar == null ? 0 : oVar.hashCode()) ^ 1000003;
    }

    public String toString() {
        return "ExternalPrivacyContext{prequest=" + this.f23625a + "}";
    }

    private i(o oVar) {
        this.f23625a = oVar;
    }
}
