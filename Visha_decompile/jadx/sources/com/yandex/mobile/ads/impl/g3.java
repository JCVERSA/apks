package com.yandex.mobile.ads.impl;

import defpackage.wn8;
import defpackage.y45;
import java.util.Comparator;

public final class g3 {

    public static final class a implements Comparator<gt> {
        @Override
        public final int compare(gt gtVar, gt gtVar2) {
            gt gtVar3 = gtVar;
            gt gtVar4 = gtVar2;
            y45.j(gtVar3, "first");
            y45.j(gtVar4, "second");
            return (int) wn8.l(gtVar3.b().b() - gtVar4.b().b(), -1L, 1L);
        }
    }
}
