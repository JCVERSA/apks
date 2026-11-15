package com.yandex.mobile.ads.impl;

import defpackage.y45;

public final class w5 {
    private final r9 a;
    private final p5 b;
    private final vi1 c;
    private final zi1 d;

    public interface a {
        void a();
    }

    /* JADX WARN: Enum visitor error
    jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v1 com.yandex.mobile.ads.impl.w5$b[], still in use, count: 1, list:
      (r0v1 com.yandex.mobile.ads.impl.w5$b[]) from 0x001a: INVOKE (r0v1 com.yandex.mobile.ads.impl.w5$b[]) STATIC call: kotlin.enums.a.a(java.lang.Enum[]):db3 A[MD:(java.lang.Enum[]):db3 (m)]
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

    public w5(p9 p9Var, ti1 ti1Var) {
        this(p9Var, ti1Var, p9Var.b(), p9Var.c(), ti1Var.d(), ti1Var.e());
    }

    public final void a(v4 v4Var, b bVar, a aVar) {
        y45.j(v4Var, "adInfo");
        y45.j(bVar, "adDiscardType");
        y45.j(aVar, "adDiscardListener");
        int iA = v4Var.a();
        int iB = v4Var.b();
        com.google.android.exoplayer2.source.ads.a aVarA = this.b.a();
        if (aVarA.g(iA, iB)) {
            return;
        }
        if (b.c == bVar) {
            int i = aVarA.d(iA).c;
            while (iB < i) {
                if (!aVarA.g(iA, iB)) {
                    aVarA = aVarA.p(iA, iB).l(0L);
                    y45.g(aVarA);
                }
                iB++;
            }
        } else if (!aVarA.g(iA, iB)) {
            aVarA = aVarA.p(iA, iB).l(0L);
            y45.g(aVarA);
        }
        this.b.a(aVarA);
        this.d.b();
        aVar.a();
        if (this.c.c()) {
            return;
        }
        this.a.a((cj1) null);
    }

    public w5(p9 p9Var, ti1 ti1Var, r9 r9Var, p5 p5Var, vi1 vi1Var, zi1 zi1Var) {
        y45.j(p9Var, "adStateDataController");
        y45.j(ti1Var, "playerStateController");
        y45.j(r9Var, "adStateHolder");
        y45.j(p5Var, "adPlaybackStateController");
        y45.j(vi1Var, "playerStateHolder");
        y45.j(zi1Var, "playerVolumeController");
        this.a = r9Var;
        this.b = p5Var;
        this.c = vi1Var;
        this.d = zi1Var;
    }
}
