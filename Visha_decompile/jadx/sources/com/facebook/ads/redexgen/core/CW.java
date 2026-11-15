package com.facebook.ads.redexgen.core;

import android.os.Handler;
import androidx.media3.common.C;
import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
import java.io.IOException;
import java.util.concurrent.CopyOnWriteArrayList;

public class CW {
    public final int A00;
    public final C2159mL A01;
    public final long A02;
    public final CopyOnWriteArrayList<CV> A03;

    public CW() {
        this(new CopyOnWriteArrayList(), 0, null, 0L);
    }

    public CW(CopyOnWriteArrayList<CV> copyOnWriteArrayList, int i, C2159mL c2159mL, long j) {
        this.A03 = copyOnWriteArrayList;
        this.A00 = i;
        this.A01 = c2159mL;
        this.A02 = j;
    }

    private long A00(long j) {
        long jA0P = AbstractC06244a.A0P(j);
        if (jA0P == C.TIME_UNSET) {
            return C.TIME_UNSET;
        }
        long mediaTimeMs = this.A02;
        return mediaTimeMs + jA0P;
    }

    @MetaExoPlayerCustomization(type = {"MERGED"}, value = "https://github.com/androidx/media/pull/1768")
    private final void A01(final CE ce, final CG cg, final int i) {
        for (CV cv : this.A03) {
            final CX cx = cv.A01;
            AbstractC06244a.A1B(cv.A00, new Runnable() {
                @Override
                public final void run() {
                }
            });
        }
    }

    public final CW A02(int i, C2159mL c2159mL, long j) {
        return new CW(this.A03, i, c2159mL, j);
    }

    public final void A03(int i, C2312or c2312or, int i2, Object obj, long j) {
        A0C(new CG(1, i, c2312or, i2, obj, A00(j), C.TIME_UNSET));
    }

    public final void A04(Handler handler, CX cx) {
        C3M.A01(handler);
        C3M.A01(cx);
        this.A03.add(new CV(handler, cx));
    }

    public final void A05(CE ce, int i, int i2, C2312or c2312or, int i3, Object obj, long j, long j2) {
        A09(ce, new CG(i, i2, c2312or, i3, obj, A00(j), A00(j2)));
    }

    @MetaExoPlayerCustomization(type = {"MERGED"}, value = "https://github.com/androidx/media/pull/1768")
    public final void A06(CE ce, int i, int i2, C2312or c2312or, int i3, Object obj, long j, long j2, int i4) {
        A01(ce, new CG(i, i2, c2312or, i3, obj, A00(j), A00(j2)), i4);
    }

    public final void A07(CE ce, int i, int i2, C2312or c2312or, int i3, Object obj, long j, long j2, IOException iOException, boolean z) {
        A0A(ce, new CG(i, i2, c2312or, i3, obj, A00(j), A00(j2)), iOException, z);
    }

    public final void A08(@MetaExoPlayerCustomization CE ce, @MetaExoPlayerCustomization int i, int i2, C2312or c2312or, int i3, Object obj, long j, long j2, Object obj2, Object obj3) {
        A0B(ce, new CG(i, i2, c2312or, i3, obj, A00(j), A00(j2)), obj2, obj3);
    }

    public final void A09(final CE ce, final CG cg) {
        for (CV cv : this.A03) {
            final CX listener = cv.A01;
            AbstractC06244a.A1B(cv.A00, new Runnable() {
                @Override
                public final void run() {
                    this.A02.A0E(listener, ce, cg);
                }
            });
        }
    }

    public final void A0A(final CE ce, final CG cg, final IOException iOException, final boolean z) {
        for (CV cv : this.A03) {
            final CX cx = cv.A01;
            AbstractC06244a.A1B(cv.A00, new Runnable() {
                @Override
                public final void run() {
                    this.A02.A0F(cx, ce, cg, iOException, z);
                }
            });
        }
    }

    public final void A0B(@MetaExoPlayerCustomization final CE ce, @MetaExoPlayerCustomization final CG cg, final Object obj, final Object obj2) {
        for (CV cv : this.A03) {
            final CX cx = cv.A01;
            AbstractC06244a.A1B(cv.A00, new Runnable() {
                @Override
                public final void run() {
                    this.A02.A0G(cx, ce, cg, obj, obj2);
                }
            });
        }
    }

    public final void A0C(final CG cg) {
        for (CV cv : this.A03) {
            final CX listener = cv.A01;
            AbstractC06244a.A1B(cv.A00, new Runnable() {
                @Override
                public final void run() {
                    this.A01.A0H(listener, cg);
                }
            });
        }
    }

    public final void A0D(CX cx) {
        for (CV listenerAndHandler : this.A03) {
            if (listenerAndHandler.A01 == cx) {
                this.A03.remove(listenerAndHandler);
            }
        }
    }

    public final void A0E(CX cx, CE ce, CG cg) {
        cx.ADw(this.A00, this.A01, ce, cg);
    }

    public final void A0F(CX cx, CE ce, CG cg, IOException iOException, boolean z) {
        cx.AE1(this.A00, this.A01, ce, cg, iOException, z);
    }

    public final void A0G(CX cx, CE ce, CG cg, Object obj, Object obj2) {
        cx.ADy(this.A00, this.A01, ce, cg, obj, obj2);
    }

    public final void A0H(CX cx, CG cg) {
        cx.AD6(this.A00, this.A01, cg);
    }
}
