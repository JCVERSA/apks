package com.facebook.ads.redexgen.core;

import android.os.Handler;
import android.os.SystemClock;
import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;

public final class C0907Fn {
    public final Handler A00;
    public final InterfaceC0908Fo A01;

    public C0907Fn(Handler handler, InterfaceC0908Fo interfaceC0908Fo) {
        this.A00 = interfaceC0908Fo != null ? (Handler) C3M.A01(handler) : null;
        this.A01 = interfaceC0908Fo;
    }

    public final void A00(final int i, final long j) {
        if (this.A00 != null) {
            this.A00.post(new Runnable() {
                @Override
                public final void run() {
                    this.A02.A02(i, j);
                }
            });
        }
    }

    public final void A01(final int i, final long j) {
        if (this.A00 != null) {
            this.A00.post(new Runnable() {
                @Override
                public final void run() {
                    this.A02.A03(i, j);
                }
            });
        }
    }

    public final void A02(int i, long j) {
        ((InterfaceC0908Fo) AbstractC06244a.A0f(this.A01)).ACr(i, j);
    }

    public final void A03(int i, long j) {
        ((InterfaceC0908Fo) AbstractC06244a.A0f(this.A01)).AD7(i, j);
    }

    @MetaExoPlayerCustomization("New event handler")
    public final void A04(int i, C2312or c2312or) {
        if (this.A01 != null) {
            this.A00.post(new RunnableC0906Fm(this, i, c2312or));
        }
    }

    public final void A05(final C2312or c2312or, final C06595j c06595j) {
        if (this.A00 != null) {
            this.A00.post(new Runnable() {
                @Override
                public final void run() {
                    this.A02.A06(c2312or, c06595j);
                }
            });
        }
    }

    public final void A06(C2312or c2312or, C06595j c06595j) {
        ((InterfaceC0908Fo) AbstractC06244a.A0f(this.A01)).AFk(c2312or);
        ((InterfaceC0908Fo) AbstractC06244a.A0f(this.A01)).AFl(c2312or, c06595j);
    }

    public final void A07(final C2265o4 c2265o4) {
        if (this.A00 != null) {
            this.A00.post(new Runnable() {
                @Override
                public final void run() {
                    this.A01.A08(c2265o4);
                }
            });
        }
    }

    public final void A08(C2265o4 c2265o4) {
        ((InterfaceC0908Fo) AbstractC06244a.A0f(this.A01)).AFr(c2265o4);
    }

    public final void A09(final C06565g c06565g) {
        c06565g.A02();
        if (this.A00 != null) {
            this.A00.post(new Runnable() {
                @Override
                public final void run() {
                    this.A01.A0B(c06565g);
                }
            });
        }
    }

    public final void A0A(final C06565g c06565g) {
        if (this.A00 != null) {
            this.A00.post(new Runnable() {
                @Override
                public final void run() {
                    this.A01.A0C(c06565g);
                }
            });
        }
    }

    public final void A0B(C06565g c06565g) {
        c06565g.A02();
        ((InterfaceC0908Fo) AbstractC06244a.A0f(this.A01)).AFe(c06565g);
    }

    public final void A0C(C06565g c06565g) {
        ((InterfaceC0908Fo) AbstractC06244a.A0f(this.A01)).AFf(c06565g);
    }

    public final void A0D(final Object obj) {
        if (this.A00 != null) {
            final long jElapsedRealtime = SystemClock.elapsedRealtime();
            this.A00.post(new Runnable() {
                @Override
                public final void run() {
                    this.A01.A0E(obj, jElapsedRealtime);
                }
            });
        }
    }

    public final void A0E(Object obj, long j) {
        ((InterfaceC0908Fo) AbstractC06244a.A0f(this.A01)).AEx(obj, j);
    }

    @MetaExoPlayerCustomization("New event handler")
    public final void A0F(final String str) {
        if (this.A00 != null) {
            this.A00.post(new Runnable() {
                @Override
                public final void run() {
                }
            });
        }
    }

    public final void A0G(final String str, final long j, final long j2) {
        if (this.A00 != null) {
            this.A00.post(new Runnable() {
                @Override
                public final void run() {
                    this.A02.A0H(str, j, j2);
                }
            });
        }
    }

    public final void A0H(String str, long j, long j2) {
        ((InterfaceC0908Fo) AbstractC06244a.A0f(this.A01)).AFd(str, j, j2);
    }
}
