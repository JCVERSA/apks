package com.yandex.mobile.ads.impl;

import androidx.media3.common.AdPlaybackState;
import defpackage.y45;

public final class x5 {
    private final q9 a;
    private final o5 b;
    private final ui1 c;
    private final yi1 d;

    public interface a {
        void a();
    }

    /* JADX WARN: Enum visitor error
    jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v1 com.yandex.mobile.ads.impl.x5$b[], still in use, count: 1, list:
      (r0v1 com.yandex.mobile.ads.impl.x5$b[]) from 0x001a: INVOKE (r0v1 com.yandex.mobile.ads.impl.x5$b[]) STATIC call: kotlin.enums.a.a(java.lang.Enum[]):db3 A[MD:(java.lang.Enum[]):db3 (m)]
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
    public static final class b {
        b,
        c;

        static {
            kotlin.enums.a.a(bVarArr);
        }

        private b() {
            super(str, i);
        }

        public static b valueOf(String str) {
            return (b) Enum.valueOf(b.class, str);
        }

        public static b[] values() {
            return (b[]) d.clone();
        }
    }

    public x5(o9 o9Var, si1 si1Var) {
        this(o9Var, si1Var, o9Var.b(), o9Var.c(), si1Var.d(), si1Var.e());
    }

    public final void a(u4 u4Var, b bVar, a aVar) {
        y45.j(u4Var, "adInfo");
        y45.j(bVar, "adDiscardType");
        y45.j(aVar, "adDiscardListener");
        int iA = u4Var.a();
        int iB = u4Var.b();
        AdPlaybackState adPlaybackStateA = this.b.a();
        if (adPlaybackStateA.isAdInErrorState(iA, iB)) {
            return;
        }
        if (b.c == bVar) {
            int i = adPlaybackStateA.getAdGroup(iA).count;
            while (iB < i) {
                if (!adPlaybackStateA.isAdInErrorState(iA, iB)) {
                    adPlaybackStateA = adPlaybackStateA.withSkippedAd(iA, iB).withAdResumePositionUs(0L);
                    y45.g(adPlaybackStateA);
                }
                iB++;
            }
        } else if (!adPlaybackStateA.isAdInErrorState(iA, iB)) {
            adPlaybackStateA = adPlaybackStateA.withSkippedAd(iA, iB).withAdResumePositionUs(0L);
            y45.g(adPlaybackStateA);
        }
        this.b.a(adPlaybackStateA);
        this.d.b();
        aVar.a();
        if (this.c.c()) {
            return;
        }
        this.a.a((bj1) null);
    }

    public x5(o9 o9Var, si1 si1Var, q9 q9Var, o5 o5Var, ui1 ui1Var, yi1 yi1Var) {
        y45.j(o9Var, "adStateDataController");
        y45.j(si1Var, "playerStateController");
        y45.j(q9Var, "adStateHolder");
        y45.j(o5Var, "adPlaybackStateController");
        y45.j(ui1Var, "playerStateHolder");
        y45.j(yi1Var, "playerVolumeController");
        this.a = q9Var;
        this.b = o5Var;
        this.c = ui1Var;
        this.d = yi1Var;
    }
}
