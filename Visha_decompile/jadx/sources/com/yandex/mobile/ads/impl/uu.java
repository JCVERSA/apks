package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

public final class uu implements jg2 {
    private final List<ew0> a;
    private final List<mi0> b;
    private final List<l62> c;
    private final xu d;
    private final String e;
    private final sz1 f;
    private final String g;
    private final int h;
    private final String i;

    public static final class a {
        private final ArrayList a = new ArrayList();
        private final ArrayList b = new ArrayList();
        private final ArrayList c = new ArrayList();
        private xu d;
        private String e;
        private sz1 f;
        private String g;
        private int h;
        private String i;

        public final a a(List list) {
            ArrayList arrayList = this.b;
            if (list == null) {
                list = defpackage.y71.k();
            }
            arrayList.addAll(list);
            return this;
        }

        public final a b(List list) {
            ArrayList arrayList = this.a;
            if (list == null) {
                list = defpackage.y71.k();
            }
            arrayList.addAll(list);
            return this;
        }

        public final a c(List<l62> list) {
            ArrayList arrayList = this.c;
            if (list == null) {
                list = defpackage.y71.k();
            }
            arrayList.addAll(list);
            return this;
        }

        public final void a(l62 l62Var) {
            y45.j(l62Var, "trackingEvent");
            this.c.add(l62Var);
        }

        public final a b(String str) {
            this.e = str;
            return this;
        }

        public final a c(String str) {
            this.g = str;
            return this;
        }

        public final a a(String str) {
            this.i = str;
            return this;
        }

        public final void a(xu xuVar) {
            y45.j(xuVar, "creativeExtensions");
            this.d = xuVar;
        }

        public final a a(int i) {
            this.h = i;
            return this;
        }

        public final a a(sz1 sz1Var) {
            this.f = sz1Var;
            return this;
        }

        public final uu a() {
            return new uu(this.a, this.b, this.c, this.d, this.e, this.f, this.g, this.h, this.i);
        }
    }

    public uu(ArrayList arrayList, ArrayList arrayList2, ArrayList arrayList3, xu xuVar, String str, sz1 sz1Var, String str2, int i, String str3) {
        y45.j(arrayList, "mediaFiles");
        y45.j(arrayList2, "icons");
        y45.j(arrayList3, "trackingEventsList");
        this.a = arrayList;
        this.b = arrayList2;
        this.c = arrayList3;
        this.d = xuVar;
        this.e = str;
        this.f = sz1Var;
        this.g = str2;
        this.h = i;
        this.i = str3;
    }

    @Override
    public final Map<String, List<String>> a() {
        List<l62> list = this.c;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (l62 l62Var : list) {
            String strA = l62Var.a();
            Object arrayList = linkedHashMap.get(strA);
            if (arrayList == null) {
                arrayList = new ArrayList();
                linkedHashMap.put(strA, arrayList);
            }
            ((List) arrayList).add(l62Var.c());
        }
        return linkedHashMap;
    }

    public final String b() {
        return this.i;
    }

    public final String c() {
        return this.e;
    }

    public final xu d() {
        return this.d;
    }

    public final int e() {
        return this.h;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof uu)) {
            return false;
        }
        uu uuVar = (uu) obj;
        return y45.e(this.a, uuVar.a) && y45.e(this.b, uuVar.b) && y45.e(this.c, uuVar.c) && y45.e(this.d, uuVar.d) && y45.e(this.e, uuVar.e) && y45.e(this.f, uuVar.f) && y45.e(this.g, uuVar.g) && this.h == uuVar.h && y45.e(this.i, uuVar.i);
    }

    public final List<mi0> f() {
        return this.b;
    }

    public final String g() {
        return this.g;
    }

    public final List<ew0> h() {
        return this.a;
    }

    public final int hashCode() {
        int iA = aa.a(this.c, aa.a(this.b, this.a.hashCode() * 31, 31), 31);
        xu xuVar = this.d;
        int iHashCode = (iA + (xuVar == null ? 0 : xuVar.hashCode())) * 31;
        String str = this.e;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        sz1 sz1Var = this.f;
        int iHashCode3 = (iHashCode2 + (sz1Var == null ? 0 : sz1Var.hashCode())) * 31;
        String str2 = this.g;
        int iA2 = dy1.a(this.h, (iHashCode3 + (str2 == null ? 0 : str2.hashCode())) * 31, 31);
        String str3 = this.i;
        return iA2 + (str3 != null ? str3.hashCode() : 0);
    }

    public final sz1 i() {
        return this.f;
    }

    public final List<l62> j() {
        return this.c;
    }

    public final String toString() {
        return "Creative(mediaFiles=" + this.a + ", icons=" + this.b + ", trackingEventsList=" + this.c + ", creativeExtensions=" + this.d + ", clickThroughUrl=" + this.e + ", skipOffset=" + this.f + ", id=" + this.g + ", durationMillis=" + this.h + ", adParameters=" + this.i + ")";
    }
}
