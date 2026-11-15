package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.List;
import java.util.Objects;
import javax.net.ssl.SSLSocket;
import org.mozilla.javascript.ES6Iterator;

public final class rr {
    public static final rr e;
    public static final rr f;
    private final boolean a;
    private final boolean b;
    private final String[] c;
    private final String[] d;

    static {
        po poVar = po.r;
        po poVar2 = po.s;
        po poVar3 = po.t;
        po poVar4 = po.l;
        po poVar5 = po.n;
        po poVar6 = po.m;
        po poVar7 = po.o;
        po poVar8 = po.q;
        po poVar9 = po.p;
        po[] poVarArr = {poVar, poVar2, poVar3, poVar4, poVar5, poVar6, poVar7, poVar8, poVar9, po.j, po.k, po.h, po.i, po.f, po.g, po.e};
        a aVarA = new a(true).a((po[]) Arrays.copyOf(new po[]{poVar, poVar2, poVar3, poVar4, poVar5, poVar6, poVar7, poVar8, poVar9}, 9));
        q52 q52Var = q52.d;
        q52 q52Var2 = q52.e;
        aVarA.a(q52Var, q52Var2).b().a();
        e = new a(true).a((po[]) Arrays.copyOf(poVarArr, 16)).a(q52Var, q52Var2).b().a();
        new a(true).a((po[]) Arrays.copyOf(poVarArr, 16)).a(q52Var, q52Var2, q52.f, q52.g).b().a();
        f = new a(false).a();
    }

    public rr(boolean z, boolean z2, String[] strArr, String[] strArr2) {
        this.a = z;
        this.b = z2;
        this.c = strArr;
        this.d = strArr2;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof rr)) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        boolean z = this.a;
        rr rrVar = (rr) obj;
        if (z != rrVar.a) {
            return false;
        }
        return !z || (Arrays.equals(this.c, rrVar.c) && Arrays.equals(this.d, rrVar.d) && this.b == rrVar.b);
    }

    public final int hashCode() {
        if (!this.a) {
            return 17;
        }
        String[] strArr = this.c;
        int iHashCode = ((strArr != null ? Arrays.hashCode(strArr) : 0) + 527) * 31;
        String[] strArr2 = this.d;
        return ((iHashCode + (strArr2 != null ? Arrays.hashCode(strArr2) : 0)) * 31) + (!this.b ? 1 : 0);
    }

    public final String toString() {
        List listB1;
        if (!this.a) {
            return "ConnectionSpec()";
        }
        String[] strArr = this.c;
        List listB2 = null;
        if (strArr != null) {
            ArrayList arrayList = new ArrayList(strArr.length);
            for (String str : strArr) {
                arrayList.add(po.b.a(str));
            }
            listB1 = defpackage.i81.b1(arrayList);
        } else {
            listB1 = null;
        }
        String string = Objects.toString(listB1, "[all enabled]");
        String[] strArr2 = this.d;
        if (strArr2 != null) {
            ArrayList arrayList2 = new ArrayList(strArr2.length);
            for (String str2 : strArr2) {
                q52.c.getClass();
                arrayList2.add(q52.a.a(str2));
            }
            listB2 = defpackage.i81.b1(arrayList2);
        }
        return "ConnectionSpec(cipherSuites=" + string + ", tlsVersions=" + Objects.toString(listB2, "[all enabled]") + ", supportsTlsExtensions=" + this.b + ")";
    }

    public final void a(SSLSocket sSLSocket, boolean z) {
        String[] enabledCipherSuites;
        String[] enabledProtocols;
        List listB1;
        y45.j(sSLSocket, "sslSocket");
        if (this.c != null) {
            String[] enabledCipherSuites2 = sSLSocket.getEnabledCipherSuites();
            y45.i(enabledCipherSuites2, "getEnabledCipherSuites(...)");
            enabledCipherSuites = g92.b(enabledCipherSuites2, this.c, po.c);
        } else {
            enabledCipherSuites = sSLSocket.getEnabledCipherSuites();
        }
        if (this.d != null) {
            String[] enabledProtocols2 = sSLSocket.getEnabledProtocols();
            y45.i(enabledProtocols2, "getEnabledProtocols(...)");
            enabledProtocols = g92.b(enabledProtocols2, this.d, (Comparator<? super String>) kotlin.comparisons.a.g());
        } else {
            enabledProtocols = sSLSocket.getEnabledProtocols();
        }
        String[] supportedCipherSuites = sSLSocket.getSupportedCipherSuites();
        y45.g(supportedCipherSuites);
        po.a aVar = po.c;
        byte[] bArr = g92.a;
        y45.j(supportedCipherSuites, "<this>");
        y45.j("TLS_FALLBACK_SCSV", ES6Iterator.VALUE_PROPERTY);
        y45.j(aVar, "comparator");
        int length = supportedCipherSuites.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                i = -1;
                break;
            } else if (aVar.compare(supportedCipherSuites[i], "TLS_FALLBACK_SCSV") == 0) {
                break;
            } else {
                i++;
            }
        }
        if (z && i != -1) {
            y45.g(enabledCipherSuites);
            String str = supportedCipherSuites[i];
            y45.i(str, "get(...)");
            y45.j(enabledCipherSuites, "<this>");
            y45.j(str, ES6Iterator.VALUE_PROPERTY);
            Object[] objArrCopyOf = Arrays.copyOf(enabledCipherSuites, enabledCipherSuites.length + 1);
            y45.i(objArrCopyOf, "copyOf(...)");
            enabledCipherSuites = (String[]) objArrCopyOf;
            enabledCipherSuites[defpackage.hi.d0(enabledCipherSuites)] = str;
        }
        a aVar2 = new a(this);
        y45.g(enabledCipherSuites);
        a aVarA = aVar2.a((String[]) Arrays.copyOf(enabledCipherSuites, enabledCipherSuites.length));
        y45.g(enabledProtocols);
        rr rrVarA = aVarA.b((String[]) Arrays.copyOf(enabledProtocols, enabledProtocols.length)).a();
        String[] strArr = rrVarA.d;
        List listB2 = null;
        if (strArr != null) {
            ArrayList arrayList = new ArrayList(strArr.length);
            for (String str2 : strArr) {
                q52.c.getClass();
                arrayList.add(q52.a.a(str2));
            }
            listB1 = defpackage.i81.b1(arrayList);
        } else {
            listB1 = null;
        }
        if (listB1 != null) {
            sSLSocket.setEnabledProtocols(rrVarA.d);
        }
        String[] strArr2 = rrVarA.c;
        if (strArr2 != null) {
            ArrayList arrayList2 = new ArrayList(strArr2.length);
            for (String str3 : strArr2) {
                arrayList2.add(po.b.a(str3));
            }
            listB2 = defpackage.i81.b1(arrayList2);
        }
        if (listB2 != null) {
            sSLSocket.setEnabledCipherSuites(rrVarA.c);
        }
    }

    public final boolean b() {
        return this.b;
    }

    public static final class a {
        private boolean a;
        private String[] b;
        private String[] c;
        private boolean d;

        public a(rr rrVar) {
            y45.j(rrVar, "connectionSpec");
            this.a = rrVar.a();
            this.b = rrVar.c;
            this.c = rrVar.d;
            this.d = rrVar.b();
        }

        public final a a(po... poVarArr) {
            y45.j(poVarArr, "cipherSuites");
            if (!this.a) {
                throw new IllegalArgumentException("no cipher suites for cleartext connections");
            }
            ArrayList arrayList = new ArrayList(poVarArr.length);
            for (po poVar : poVarArr) {
                arrayList.add(poVar.c());
            }
            String[] strArr = (String[]) arrayList.toArray(new String[0]);
            return a((String[]) Arrays.copyOf(strArr, strArr.length));
        }

        public final a b() {
            if (!this.a) {
                throw new IllegalArgumentException("no TLS extensions for cleartext connections");
            }
            this.d = true;
            return this;
        }

        public final a b(String... strArr) {
            y45.j(strArr, "tlsVersions");
            if (this.a) {
                if (!(strArr.length == 0)) {
                    this.c = (String[]) strArr.clone();
                    return this;
                }
                throw new IllegalArgumentException("At least one TLS version is required");
            }
            throw new IllegalArgumentException("no TLS versions for cleartext connections");
        }

        public a(boolean z) {
            this.a = z;
        }

        public final a a(String... strArr) {
            y45.j(strArr, "cipherSuites");
            if (this.a) {
                if (!(strArr.length == 0)) {
                    this.b = (String[]) strArr.clone();
                    return this;
                }
                throw new IllegalArgumentException("At least one cipher suite is required");
            }
            throw new IllegalArgumentException("no cipher suites for cleartext connections");
        }

        public final a a(q52... q52VarArr) {
            y45.j(q52VarArr, "tlsVersions");
            if (this.a) {
                ArrayList arrayList = new ArrayList(q52VarArr.length);
                for (q52 q52Var : q52VarArr) {
                    arrayList.add(q52Var.a());
                }
                String[] strArr = (String[]) arrayList.toArray(new String[0]);
                return b((String[]) Arrays.copyOf(strArr, strArr.length));
            }
            throw new IllegalArgumentException("no TLS versions for cleartext connections");
        }

        public final rr a() {
            return new rr(this.a, this.d, this.b, this.c);
        }
    }

    public final boolean a(SSLSocket sSLSocket) {
        y45.j(sSLSocket, "socket");
        if (!this.a) {
            return false;
        }
        String[] strArr = this.d;
        if (strArr != null && !g92.a(strArr, sSLSocket.getEnabledProtocols(), (Comparator<? super String>) kotlin.comparisons.a.g())) {
            return false;
        }
        String[] strArr2 = this.c;
        return strArr2 == null || g92.a(strArr2, sSLSocket.getEnabledCipherSuites(), po.c);
    }

    public final boolean a() {
        return this.a;
    }
}
