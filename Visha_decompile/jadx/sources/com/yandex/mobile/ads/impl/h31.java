package com.yandex.mobile.ads.impl;

import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;
import defpackage.af5;
import defpackage.y45;
import defpackage.zfb;

public final class h31 extends yn {
    static final af5[] g = {ta.a(h31.class, "viewPager", "getViewPager()Landroidx/viewpager2/widget/ViewPager2;", 0)};
    private final r31 c;
    private final k31 d;
    private final go1 e;
    private a f;

    /* JADX WARN: Enum visitor error
    jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v1 com.yandex.mobile.ads.impl.h31$a[], still in use, count: 1, list:
      (r0v1 com.yandex.mobile.ads.impl.h31$a[]) from 0x001a: INVOKE (r0v1 com.yandex.mobile.ads.impl.h31$a[]) STATIC call: kotlin.enums.a.a(java.lang.Enum[]):db3 A[MD:(java.lang.Enum[]):db3 (m)]
    	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:164)
    	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:129)
    	at jadx.core.utils.InsnRemover.lambda$unbindInsns$1(InsnRemover.java:101)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
    	at jadx.core.utils.InsnRemover.unbindInsns(InsnRemover.java:100)
    	at jadx.core.utils.InsnRemover.removeAllAndUnbind(InsnRemover.java:257)
    	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:187)
    	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:102)
     */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    public static final class a {
        b,
        c;

        static {
            kotlin.enums.a.a(aVarArr);
        }

        private a() {
            super(str, i);
        }

        public static a valueOf(String str) {
            return (a) Enum.valueOf(a.class, str);
        }

        public static a[] values() {
            return (a[]) d.clone();
        }
    }

    public h31(ViewPager2 viewPager2, r31 r31Var, k31 k31Var) {
        y45.j(viewPager2, "viewPager");
        y45.j(r31Var, "multiBannerSwiper");
        y45.j(k31Var, "multiBannerEventTracker");
        this.c = r31Var;
        this.d = k31Var;
        this.e = ho1.a(viewPager2);
        this.f = a.b;
    }

    @Override
    public final void run() {
        zfb zfbVar;
        ViewPager2 viewPager2 = (ViewPager2) this.e.getValue(this, g[0]);
        if (viewPager2 != null) {
            if (wh2.b(viewPager2) > 0) {
                RecyclerView.Adapter adapter = viewPager2.getAdapter();
                int itemCount = adapter != null ? adapter.getItemCount() : 0;
                if (itemCount != 0) {
                    int currentItem = viewPager2.getCurrentItem();
                    if (currentItem == 0) {
                        this.f = a.b;
                    } else if (currentItem == itemCount - 1) {
                        this.f = a.c;
                    }
                } else {
                    a();
                }
                int iOrdinal = this.f.ordinal();
                if (iOrdinal == 0) {
                    this.c.a();
                } else if (iOrdinal == 1) {
                    this.c.b();
                }
                this.d.a();
            }
            zfbVar = zfb.a;
        } else {
            zfbVar = null;
        }
        if (zfbVar == null) {
            a();
        }
    }
}
