package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.util.ArrayList;
import java.util.HashSet;

public final class s40 {

    public static final class a {
        private final String a;
        private final ht.a b;
        private final long c;

        public a(String str, ht.a aVar, long j) {
            y45.j(str, "adBreakType");
            y45.j(aVar, "adBreakPositionType");
            this.a = str;
            this.b = aVar;
            this.c = j;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return y45.e(this.a, aVar.a) && this.b == aVar.b && this.c == aVar.c;
        }

        public final int hashCode() {
            return Long.hashCode(this.c) + ((this.b.hashCode() + (this.a.hashCode() * 31)) * 31);
        }

        public final String toString() {
            return "AdBreakSignature(adBreakType=" + this.a + ", adBreakPositionType=" + this.b + ", adBreakPositionValue=" + this.c + ")";
        }
    }

    public static ArrayList a(ArrayList arrayList) {
        y45.j(arrayList, "adBreaks");
        HashSet hashSet = new HashSet();
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : arrayList) {
            gt gtVar = (gt) obj;
            if (hashSet.add(new a(gtVar.e(), gtVar.b().a(), gtVar.b().b()))) {
                arrayList2.add(obj);
            }
        }
        return arrayList2;
    }
}
