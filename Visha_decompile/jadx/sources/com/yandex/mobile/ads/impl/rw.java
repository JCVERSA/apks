package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.util.ArrayList;
import java.util.List;

public final class rw {
    private final String a;
    private final String b;
    private final boolean c;
    private final String d;
    private final String e;
    private final String f;
    private final a g;
    private final List<String> h;

    public interface a {

        public static final class C0328a implements a {
            public static final C0328a a = new C0328a();

            private C0328a() {
            }
        }

        public static final class b implements a {
            private final sz0 a;

            public b() {
                sz0 sz0Var = sz0.INVALID_MEDIATION_ADAPTER_VERSION;
                y45.j(sz0Var, "error");
                this.a = sz0Var;
            }

            public final sz0 a() {
                return this.a;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof b) && this.a == ((b) obj).a;
            }

            public final int hashCode() {
                return this.a.hashCode();
            }

            public final String toString() {
                return "InvalidIntegration(error=" + this.a + ")";
            }
        }

        public static final class c implements a {
            public static final c a = new c();

            private c() {
            }
        }
    }

    public rw(String str, String str2, boolean z, String str3, String str4, String str5, a aVar, ArrayList arrayList) {
        y45.j(str, "name");
        y45.j(aVar, "adapterStatus");
        this.a = str;
        this.b = str2;
        this.c = z;
        this.d = str3;
        this.e = str4;
        this.f = str5;
        this.g = aVar;
        this.h = arrayList;
    }

    public final a a() {
        return this.g;
    }

    public final String b() {
        return this.d;
    }

    public final String c() {
        return this.e;
    }

    public final String d() {
        return this.b;
    }

    public final String e() {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof rw)) {
            return false;
        }
        rw rwVar = (rw) obj;
        return y45.e(this.a, rwVar.a) && y45.e(this.b, rwVar.b) && this.c == rwVar.c && y45.e(this.d, rwVar.d) && y45.e(this.e, rwVar.e) && y45.e(this.f, rwVar.f) && y45.e(this.g, rwVar.g) && y45.e(this.h, rwVar.h);
    }

    public final String f() {
        return this.f;
    }

    public final int hashCode() {
        int iHashCode = this.a.hashCode() * 31;
        String str = this.b;
        int iA = a7.a(this.c, (iHashCode + (str == null ? 0 : str.hashCode())) * 31, 31);
        String str2 = this.d;
        int iHashCode2 = (iA + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.e;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.f;
        int iHashCode4 = (this.g.hashCode() + ((iHashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31)) * 31;
        List<String> list = this.h;
        return iHashCode4 + (list != null ? list.hashCode() : 0);
    }

    public final String toString() {
        return "DebugPanelAdapterData(name=" + this.a + ", logoUrl=" + this.b + ", adapterIntegrationStatus=" + this.c + ", adapterVersion=" + this.d + ", latestAdapterVersion=" + this.e + ", sdkVersion=" + this.f + ", adapterStatus=" + this.g + ", formats=" + this.h + ")";
    }
}
