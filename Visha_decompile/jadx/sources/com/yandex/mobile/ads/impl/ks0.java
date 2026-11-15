package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.view.ViewGroup;
import defpackage.y45;
import java.lang.ref.WeakReference;
import java.util.List;

public final class ks0 {
    private final oi2 a;
    private final fm0 b;

    public static final class a implements jt {
        private final b a;
        private final WeakReference<ViewGroup> b;
        private final WeakReference<List<xb2>> c;

        public a(ViewGroup viewGroup, List<xb2> list, b bVar) {
            y45.j(viewGroup, "viewGroup");
            y45.j(list, "friendlyOverlays");
            y45.j(bVar, "instreamAdLoadListener");
            this.a = bVar;
            this.b = new WeakReference<>(viewGroup);
            this.c = new WeakReference<>(list);
        }

        @Override
        public final void a(et etVar) {
            y45.j(etVar, "instreamAd");
            ViewGroup viewGroup = this.b.get();
            List<xb2> listK = this.c.get();
            if (listK == null) {
                listK = defpackage.y71.k();
            }
            if (viewGroup != null) {
                this.a.a(viewGroup, listK, etVar);
            } else {
                this.a.a("Ad was received but there's no view group to display it");
            }
        }

        @Override
        public final void onInstreamAdFailedToLoad(String str) {
            y45.j(str, "reason");
            this.a.a(str);
        }
    }

    public interface b {
        void a(ViewGroup viewGroup, List<xb2> list, et etVar);

        void a(String str);
    }

    public ks0(Context context, bv1 bv1Var, oi2 oi2Var, fm0 fm0Var) {
        y45.j(context, "context");
        y45.j(bv1Var, "sdkEnvironmentModule");
        y45.j(oi2Var, "vmapRequestConfig");
        y45.j(fm0Var, "instreamAdLoadingController");
        this.a = oi2Var;
        this.b = fm0Var;
    }

    public final void a() {
        this.b.a((jt) null);
    }

    public final void a(ViewGroup viewGroup, List<xb2> list, b bVar) {
        y45.j(viewGroup, "adViewGroup");
        y45.j(list, "friendlyOverlays");
        y45.j(bVar, "loadListener");
        a aVar = new a(viewGroup, list, bVar);
        fm0 fm0Var = this.b;
        fm0Var.a(aVar);
        fm0Var.a(this.a);
    }
}
