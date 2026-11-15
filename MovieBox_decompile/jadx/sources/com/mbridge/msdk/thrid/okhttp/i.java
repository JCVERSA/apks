package com.mbridge.msdk.thrid.okhttp;

import java.util.Arrays;
import java.util.List;
import javax.net.ssl.SSLSocket;

public final class i {

    private static final f[] f37053e;

    private static final f[] f37054f;

    public static final i f37055g;

    public static final i f37056h;

    public static final i f37057i;

    public static final i f37058j;

    final boolean f37059a;

    final boolean f37060b;

    final String[] f37061c;

    final String[] f37062d;

    static {
        f fVar = f.f37014n1;
        f fVar2 = f.f37017o1;
        f fVar3 = f.f37020p1;
        f fVar4 = f.f37023q1;
        f fVar5 = f.f37026r1;
        f fVar6 = f.Z0;
        f fVar7 = f.f36984d1;
        f fVar8 = f.f36975a1;
        f fVar9 = f.f36987e1;
        f fVar10 = f.f37005k1;
        f fVar11 = f.f37002j1;
        f[] fVarArr = {fVar, fVar2, fVar3, fVar4, fVar5, fVar6, fVar7, fVar8, fVar9, fVar10, fVar11};
        f37053e = fVarArr;
        f[] fVarArr2 = {fVar, fVar2, fVar3, fVar4, fVar5, fVar6, fVar7, fVar8, fVar9, fVar10, fVar11, f.K0, f.L0, f.f36998i0, f.f37001j0, f.G, f.K, f.f37003k};
        f37054f = fVarArr2;
        a aVarA = new a(true).a(fVarArr);
        b0 b0Var = b0.TLS_1_3;
        b0 b0Var2 = b0.TLS_1_2;
        f37055g = aVarA.a(b0Var, b0Var2).a(true).a();
        a aVarA2 = new a(true).a(fVarArr2);
        b0 b0Var3 = b0.TLS_1_0;
        f37056h = aVarA2.a(b0Var, b0Var2, b0.TLS_1_1, b0Var3).a(true).a();
        f37057i = new a(true).a(fVarArr2).a(b0Var3).a(true).a();
        f37058j = new a(false).a();
    }

    i(a aVar) {
        this.f37059a = aVar.f37063a;
        this.f37061c = aVar.f37064b;
        this.f37062d = aVar.f37065c;
        this.f37060b = aVar.f37066d;
    }

    public List<f> a() {
        String[] strArr = this.f37061c;
        if (strArr != null) {
            return f.a(strArr);
        }
        return null;
    }

    public boolean b() {
        return this.f37059a;
    }

    public boolean c() {
        return this.f37060b;
    }

    public List<b0> d() {
        String[] strArr = this.f37062d;
        if (strArr != null) {
            return b0.a(strArr);
        }
        return null;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof i)) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        i iVar = (i) obj;
        boolean z10 = this.f37059a;
        if (z10 != iVar.f37059a) {
            return false;
        }
        return !z10 || (Arrays.equals(this.f37061c, iVar.f37061c) && Arrays.equals(this.f37062d, iVar.f37062d) && this.f37060b == iVar.f37060b);
    }

    public int hashCode() {
        if (this.f37059a) {
            return ((((Arrays.hashCode(this.f37061c) + 527) * 31) + Arrays.hashCode(this.f37062d)) * 31) + (!this.f37060b ? 1 : 0);
        }
        return 17;
    }

    public String toString() {
        if (!this.f37059a) {
            return "ConnectionSpec()";
        }
        return "ConnectionSpec(cipherSuites=" + (this.f37061c != null ? a().toString() : "[all enabled]") + ", tlsVersions=" + (this.f37062d != null ? d().toString() : "[all enabled]") + ", supportsTlsExtensions=" + this.f37060b + ")";
    }

    public static final class a {

        boolean f37063a;

        String[] f37064b;

        String[] f37065c;

        boolean f37066d;

        a(boolean z10) {
            this.f37063a = z10;
        }

        public a a(f... fVarArr) {
            if (!this.f37063a) {
                throw new IllegalStateException("no cipher suites for cleartext connections");
            }
            String[] strArr = new String[fVarArr.length];
            for (int i10 = 0; i10 < fVarArr.length; i10++) {
                strArr[i10] = fVarArr[i10].f37043a;
            }
            return a(strArr);
        }

        public a b(String... strArr) {
            if (!this.f37063a) {
                throw new IllegalStateException("no TLS versions for cleartext connections");
            }
            if (strArr.length == 0) {
                throw new IllegalArgumentException("At least one TLS version is required");
            }
            this.f37065c = (String[]) strArr.clone();
            return this;
        }

        public a(i iVar) {
            this.f37063a = iVar.f37059a;
            this.f37064b = iVar.f37061c;
            this.f37065c = iVar.f37062d;
            this.f37066d = iVar.f37060b;
        }

        public a a(String... strArr) {
            if (this.f37063a) {
                if (strArr.length != 0) {
                    this.f37064b = (String[]) strArr.clone();
                    return this;
                }
                throw new IllegalArgumentException("At least one cipher suite is required");
            }
            throw new IllegalStateException("no cipher suites for cleartext connections");
        }

        public a a(b0... b0VarArr) {
            if (this.f37063a) {
                String[] strArr = new String[b0VarArr.length];
                for (int i10 = 0; i10 < b0VarArr.length; i10++) {
                    strArr[i10] = b0VarArr[i10].f36942a;
                }
                return b(strArr);
            }
            throw new IllegalStateException("no TLS versions for cleartext connections");
        }

        public a a(boolean z10) {
            if (this.f37063a) {
                this.f37066d = z10;
                return this;
            }
            throw new IllegalStateException("no TLS extensions for cleartext connections");
        }

        public i a() {
            return new i(this);
        }
    }

    private i b(SSLSocket sSLSocket, boolean z10) {
        String[] strArrA = this.f37061c != null ? com.mbridge.msdk.thrid.okhttp.internal.c.a(f.f36976b, sSLSocket.getEnabledCipherSuites(), this.f37061c) : sSLSocket.getEnabledCipherSuites();
        String[] strArrA2 = this.f37062d != null ? com.mbridge.msdk.thrid.okhttp.internal.c.a(com.mbridge.msdk.thrid.okhttp.internal.c.f37085q, sSLSocket.getEnabledProtocols(), this.f37062d) : sSLSocket.getEnabledProtocols();
        String[] supportedCipherSuites = sSLSocket.getSupportedCipherSuites();
        int iA = com.mbridge.msdk.thrid.okhttp.internal.c.a(f.f36976b, supportedCipherSuites, "TLS_FALLBACK_SCSV");
        if (z10 && iA != -1) {
            strArrA = com.mbridge.msdk.thrid.okhttp.internal.c.a(strArrA, supportedCipherSuites[iA]);
        }
        return new a(this).a(strArrA).b(strArrA2).a();
    }

    void a(SSLSocket sSLSocket, boolean z10) {
        i iVarB = b(sSLSocket, z10);
        String[] strArr = iVarB.f37062d;
        if (strArr != null) {
            sSLSocket.setEnabledProtocols(strArr);
        }
        String[] strArr2 = iVarB.f37061c;
        if (strArr2 != null) {
            sSLSocket.setEnabledCipherSuites(strArr2);
        }
    }

    public boolean a(SSLSocket sSLSocket) {
        if (!this.f37059a) {
            return false;
        }
        String[] strArr = this.f37062d;
        if (strArr != null && !com.mbridge.msdk.thrid.okhttp.internal.c.b(com.mbridge.msdk.thrid.okhttp.internal.c.f37085q, strArr, sSLSocket.getEnabledProtocols())) {
            return false;
        }
        String[] strArr2 = this.f37061c;
        return strArr2 == null || com.mbridge.msdk.thrid.okhttp.internal.c.b(f.f36976b, strArr2, sSLSocket.getEnabledCipherSuites());
    }
}
