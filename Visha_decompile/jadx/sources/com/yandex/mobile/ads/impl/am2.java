package com.yandex.mobile.ads.impl;

import com.yandex.mobile.ads.instream.InstreamAd;
import com.yandex.mobile.ads.instream.InstreamAdBreak;
import defpackage.y45;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class am2 implements InstreamAd {
    private final et a;

    public am2(et etVar) {
        y45.j(etVar, "coreInstreamAd");
        this.a = etVar;
    }

    public final et a() {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof am2) && y45.e(this.a, ((am2) obj).a);
    }

    @Override
    public final List<InstreamAdBreak> getAdBreaks() {
        List<gt> listA = this.a.a();
        ArrayList arrayList = new ArrayList(defpackage.z71.v(listA, 10));
        Iterator<T> it = listA.iterator();
        while (it.hasNext()) {
            arrayList.add(new bm2((gt) it.next()));
        }
        return arrayList;
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return "YandexInstreamAd(coreInstreamAd=" + this.a + ")";
    }
}
