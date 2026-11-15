package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.util.ArrayList;
import java.util.List;

public final class mw {
    private final String a;
    private final String b;
    private final List<px> c;
    private final String d;
    private final String e;
    private final a f;

    public interface a {

        public static final class C0323a implements a {
            public static final C0323a a = new C0323a();

            private C0323a() {
            }
        }

        public static final class b implements a {
            private final my a;
            private final List<ly> b;

            public b(my myVar, List<ly> list) {
                y45.j(list, "cpmFloors");
                this.a = myVar;
                this.b = list;
            }

            public final List<ly> a() {
                return this.b;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof b)) {
                    return false;
                }
                b bVar = (b) obj;
                return y45.e(this.a, bVar.a) && y45.e(this.b, bVar.b);
            }

            public final int hashCode() {
                my myVar = this.a;
                return this.b.hashCode() + ((myVar == null ? 0 : myVar.hashCode()) * 31);
            }

            public final String toString() {
                return "Waterfall(currency=" + this.a + ", cpmFloors=" + this.b + ")";
            }
        }
    }

    public mw(String str, String str2, ArrayList arrayList, String str3, String str4, a aVar) {
        y45.j(str2, "adapterName");
        y45.j(arrayList, "parameters");
        y45.j(aVar, "type");
        this.a = str;
        this.b = str2;
        this.c = arrayList;
        this.d = str3;
        this.e = str4;
        this.f = aVar;
    }

    public final String a() {
        return this.d;
    }

    public final String b() {
        return this.b;
    }

    public final String c() {
        return this.a;
    }

    public final String d() {
        return this.e;
    }

    public final List<px> e() {
        return this.c;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof mw)) {
            return false;
        }
        mw mwVar = (mw) obj;
        return y45.e(this.a, mwVar.a) && y45.e(this.b, mwVar.b) && y45.e(this.c, mwVar.c) && y45.e(this.d, mwVar.d) && y45.e(this.e, mwVar.e) && y45.e(this.f, mwVar.f);
    }

    public final a f() {
        return this.f;
    }

    public final int hashCode() {
        String str = this.a;
        int iA = aa.a(this.c, v3.a(this.b, (str == null ? 0 : str.hashCode()) * 31, 31), 31);
        String str2 = this.d;
        int iHashCode = (iA + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.e;
        return this.f.hashCode() + ((iHashCode + (str3 != null ? str3.hashCode() : 0)) * 31);
    }

    public final String toString() {
        return "DebugPanelAdUnitMediationAdapterData(logoUrl=" + this.a + ", adapterName=" + this.b + ", parameters=" + this.c + ", adUnitId=" + this.d + ", networkAdUnitIdName=" + this.e + ", type=" + this.f + ")";
    }
}
