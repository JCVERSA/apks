package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicInteger;

public final class yl0 {
    private final vl0 a;

    public interface a {
        void a(ArrayList arrayList);
    }

    public yl0(bv1 bv1Var, fc2 fc2Var) {
        y45.j(bv1Var, "sdkEnvironmentModule");
        y45.j(fc2Var, "videoAdLoader");
        this.a = new vl0(bv1Var, fc2Var);
    }

    public final void a(Context context, ArrayList arrayList, a aVar) {
        y45.j(context, "context");
        y45.j(arrayList, "adBreaks");
        y45.j(aVar, "instreamAdBreaksLoadListener");
        b bVar = new b(aVar, new AtomicInteger(arrayList.size()));
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            this.a.a(context, (p2) it.next(), bVar);
        }
    }

    public static final class b implements dq1<gt> {
        private final a a;
        private final AtomicInteger b;
        private final ArrayList c;

        public b(a aVar, AtomicInteger atomicInteger) {
            y45.j(aVar, "instreamAdBreaksLoadListener");
            y45.j(atomicInteger, "instreamAdCounter");
            this.a = aVar;
            this.b = atomicInteger;
            this.c = new ArrayList();
        }

        @Override
        public final void a(sb2 sb2Var) {
            y45.j(sb2Var, "error");
            if (this.b.decrementAndGet() == 0) {
                this.a.a(this.c);
            }
        }

        @Override
        public final void a(gt gtVar) {
            gt gtVar2 = gtVar;
            y45.j(gtVar2, "coreInstreamAdBreak");
            this.c.add(gtVar2);
            if (this.b.decrementAndGet() == 0) {
                this.a.a(this.c);
            }
        }
    }
}
