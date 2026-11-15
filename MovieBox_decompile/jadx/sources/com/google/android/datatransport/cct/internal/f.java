package com.google.android.datatransport.cct.internal;

final class f extends ComplianceData {

    private final p f23615a;

    private final ComplianceData.ProductIdOrigin f23616b;

    static final class b extends ComplianceData.a {

        private p f23617a;

        private ComplianceData.ProductIdOrigin f23618b;

        b() {
        }

        @Override
        public ComplianceData a() {
            return new f(this.f23617a, this.f23618b);
        }

        @Override
        public ComplianceData.a b(p pVar) {
            this.f23617a = pVar;
            return this;
        }

        @Override
        public ComplianceData.a c(ComplianceData.ProductIdOrigin productIdOrigin) {
            this.f23618b = productIdOrigin;
            return this;
        }
    }

    @Override
    public p b() {
        return this.f23615a;
    }

    @Override
    public ComplianceData.ProductIdOrigin c() {
        return this.f23616b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ComplianceData)) {
            return false;
        }
        ComplianceData complianceData = (ComplianceData) obj;
        p pVar = this.f23615a;
        if (pVar != null ? pVar.equals(complianceData.b()) : complianceData.b() == null) {
            ComplianceData.ProductIdOrigin productIdOrigin = this.f23616b;
            if (productIdOrigin == null) {
                if (complianceData.c() == null) {
                    return true;
                }
            } else if (productIdOrigin.equals(complianceData.c())) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        p pVar = this.f23615a;
        int iHashCode = ((pVar == null ? 0 : pVar.hashCode()) ^ 1000003) * 1000003;
        ComplianceData.ProductIdOrigin productIdOrigin = this.f23616b;
        return iHashCode ^ (productIdOrigin != null ? productIdOrigin.hashCode() : 0);
    }

    public String toString() {
        return "ComplianceData{privacyContext=" + this.f23615a + ", productIdOrigin=" + this.f23616b + "}";
    }

    private f(p pVar, ComplianceData.ProductIdOrigin productIdOrigin) {
        this.f23615a = pVar;
        this.f23616b = productIdOrigin;
    }
}
