package com.yandex.mobile.ads.impl;

import android.content.Context;
import com.facebook.ads.AdSDKNotificationListener;
import defpackage.y45;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

public final class mb2 implements jg2 {
    private final boolean a;
    private final List<uu> b;
    private final Map<String, List<String>> c;
    private final ub2 d;
    private final String e;
    private final String f;
    private final String g;
    private final String h;
    private final String i;
    private final zh2 j;
    private final Integer k;
    private final String l;
    private final uk2 m;
    private final List<wa2> n;
    private final Map<String, List<String>> o;

    public static final class a {
        private final boolean a;
        private final rd2 b;
        private uk2 c;
        private String d;
        private String e;
        private String f;
        private String g;
        private String h;
        private zh2 i;
        private Integer j;
        private String k;
        private final ArrayList l;
        private final ArrayList m;
        private final LinkedHashMap n;
        private ub2 o;

        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        public a(Context context, boolean z) {
            this(z, new rd2(context));
            y45.j(context, "context");
        }

        public final a a(List list) {
            ArrayList arrayList = this.m;
            if (list == null) {
                list = defpackage.y71.k();
            }
            arrayList.addAll(list);
            return this;
        }

        public final void b(String str) {
            y45.j(str, AdSDKNotificationListener.IMPRESSION_EVENT);
            LinkedHashMap linkedHashMap = this.n;
            Object arrayList = linkedHashMap.get(AdSDKNotificationListener.IMPRESSION_EVENT);
            if (arrayList == null) {
                arrayList = new ArrayList();
                linkedHashMap.put(AdSDKNotificationListener.IMPRESSION_EVENT, arrayList);
            }
            ((List) arrayList).add(str);
        }

        public final a c(String str) {
            this.d = str;
            return this;
        }

        public final a d(String str) {
            this.e = str;
            return this;
        }

        public final a e(String str) {
            this.f = str;
            return this;
        }

        public final a f(String str) {
            this.k = str;
            return this;
        }

        public final a g(String str) {
            this.g = str;
            return this;
        }

        public final a h(String str) {
            this.h = str;
            return this;
        }

        public final a a(ArrayList arrayList) {
            this.l.addAll(arrayList);
            return this;
        }

        private a(boolean z, rd2 rd2Var) {
            this.a = z;
            this.b = rd2Var;
            this.l = new ArrayList();
            this.m = new ArrayList();
            kotlin.collections.a.l();
            this.n = new LinkedHashMap();
            this.o = new ub2.a().a();
        }

        public final void a(String str) {
            y45.j(str, "error");
            LinkedHashMap linkedHashMap = this.n;
            Object arrayList = linkedHashMap.get("error");
            if (arrayList == null) {
                arrayList = new ArrayList();
                linkedHashMap.put("error", arrayList);
            }
            ((List) arrayList).add(str);
        }

        public final a a(Map<String, ? extends List<String>> map) {
            if (map == null) {
                map = kotlin.collections.a.l();
            }
            for (Map.Entry<String, ? extends List<String>> entry : map.entrySet()) {
                String key = entry.getKey();
                List<String> value = entry.getValue();
                if (value == null) {
                    value = defpackage.y71.k();
                }
                for (String str : defpackage.i81.l0(value)) {
                    LinkedHashMap linkedHashMap = this.n;
                    Object arrayList = linkedHashMap.get(key);
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                        linkedHashMap.put(key, arrayList);
                    }
                    ((List) arrayList).add(str);
                }
            }
            return this;
        }

        public final mb2 a() {
            return new mb2(this.a, this.l, this.n, this.o, this.d, this.e, this.f, this.g, this.h, this.i, this.j, this.k, this.c, this.m, this.b.a(this.n, this.i));
        }

        public final void a(Integer num) {
            this.j = num;
        }

        public final a a(ub2 ub2Var) {
            y45.j(ub2Var, "videoAdExtensions");
            this.o = ub2Var;
            return this;
        }

        public final a a(zh2 zh2Var) {
            y45.j(zh2Var, "viewableImpression");
            this.i = zh2Var;
            return this;
        }

        public final a a(uk2 uk2Var) {
            this.c = uk2Var;
            return this;
        }
    }

    public mb2(boolean z, ArrayList arrayList, LinkedHashMap linkedHashMap, ub2 ub2Var, String str, String str2, String str3, String str4, String str5, zh2 zh2Var, Integer num, String str6, uk2 uk2Var, ArrayList arrayList2, Map map) {
        y45.j(arrayList, "creatives");
        y45.j(linkedHashMap, "rawTrackingEvents");
        y45.j(ub2Var, "videoAdExtensions");
        y45.j(arrayList2, "adVerifications");
        y45.j(map, "trackingEvents");
        this.a = z;
        this.b = arrayList;
        this.c = linkedHashMap;
        this.d = ub2Var;
        this.e = str;
        this.f = str2;
        this.g = str3;
        this.h = str4;
        this.i = str5;
        this.j = zh2Var;
        this.k = num;
        this.l = str6;
        this.m = uk2Var;
        this.n = arrayList2;
        this.o = map;
    }

    @Override
    public final Map<String, List<String>> a() {
        return this.o;
    }

    public final String b() {
        return this.e;
    }

    public final String c() {
        return this.f;
    }

    public final List<wa2> d() {
        return this.n;
    }

    public final List<uu> e() {
        return this.b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof mb2)) {
            return false;
        }
        mb2 mb2Var = (mb2) obj;
        return this.a == mb2Var.a && y45.e(this.b, mb2Var.b) && y45.e(this.c, mb2Var.c) && y45.e(this.d, mb2Var.d) && y45.e(this.e, mb2Var.e) && y45.e(this.f, mb2Var.f) && y45.e(this.g, mb2Var.g) && y45.e(this.h, mb2Var.h) && y45.e(this.i, mb2Var.i) && y45.e(this.j, mb2Var.j) && y45.e(this.k, mb2Var.k) && y45.e(this.l, mb2Var.l) && y45.e(this.m, mb2Var.m) && y45.e(this.n, mb2Var.n) && y45.e(this.o, mb2Var.o);
    }

    public final String f() {
        return this.g;
    }

    public final String g() {
        return this.l;
    }

    public final Map<String, List<String>> h() {
        return this.c;
    }

    public final int hashCode() {
        int iHashCode = (this.d.hashCode() + ((this.c.hashCode() + aa.a(this.b, Boolean.hashCode(this.a) * 31, 31)) * 31)) * 31;
        String str = this.e;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.f;
        int iHashCode3 = (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.g;
        int iHashCode4 = (iHashCode3 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.h;
        int iHashCode5 = (iHashCode4 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.i;
        int iHashCode6 = (iHashCode5 + (str5 == null ? 0 : str5.hashCode())) * 31;
        zh2 zh2Var = this.j;
        int iHashCode7 = (iHashCode6 + (zh2Var == null ? 0 : zh2Var.hashCode())) * 31;
        Integer num = this.k;
        int iHashCode8 = (iHashCode7 + (num == null ? 0 : num.hashCode())) * 31;
        String str6 = this.l;
        int iHashCode9 = (iHashCode8 + (str6 == null ? 0 : str6.hashCode())) * 31;
        uk2 uk2Var = this.m;
        return this.o.hashCode() + aa.a(this.n, (iHashCode9 + (uk2Var != null ? uk2Var.hashCode() : 0)) * 31, 31);
    }

    public final Integer i() {
        return this.k;
    }

    public final String j() {
        return this.h;
    }

    public final String k() {
        return this.i;
    }

    public final ub2 l() {
        return this.d;
    }

    public final zh2 m() {
        return this.j;
    }

    public final uk2 n() {
        return this.m;
    }

    public final boolean o() {
        return this.a;
    }

    public final String toString() {
        return "VideoAd(isWrapper=" + this.a + ", creatives=" + this.b + ", rawTrackingEvents=" + this.c + ", videoAdExtensions=" + this.d + ", adSystem=" + this.e + ", adTitle=" + this.f + ", description=" + this.g + ", survey=" + this.h + ", vastAdTagUri=" + this.i + ", viewableImpression=" + this.j + ", sequence=" + this.k + ", id=" + this.l + ", wrapperConfiguration=" + this.m + ", adVerifications=" + this.n + ", trackingEvents=" + this.o + ")";
    }
}
