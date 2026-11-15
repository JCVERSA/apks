package com.facebook.ads.redexgen.core;

import android.os.Handler;
import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;

public final class C8C {
    public final Handler A00;
    public final C8D A01;

    public C8C(Handler handler, C8D c8d) {
        this.A00 = c8d != null ? (Handler) C3M.A01(handler) : null;
        this.A01 = c8d;
    }

    @MetaExoPlayerCustomization(type = {"NEW_METHOD"}, value = "New API")
    public final void A00(final int i) {
        if (this.A00 != null) {
            this.A00.post(new Runnable() {
                @Override
                public final void run() {
                }
            });
        }
    }

    public final void A01(final int i, final long j, final long j2) {
        if (this.A00 != null) {
            this.A00.post(new Runnable() {
                @Override
                public final void run() {
                    this.A03.A02(i, j, j2);
                }
            });
        }
    }

    public final void A02(int i, long j, long j2) {
        ((C8D) AbstractC06244a.A0f(this.A01)).ACY(i, j, j2);
    }

    public final void A03(final long j) {
        if (this.A00 != null) {
            this.A00.post(new Runnable() {
                @Override
                public final void run() {
                    this.A01.A04(j);
                }
            });
        }
    }

    public final void A04(long j) {
        ((C8D) AbstractC06244a.A0f(this.A01)).ACU(j);
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
        ((C8D) AbstractC06244a.A0f(this.A01)).ACS(c2312or);
        ((C8D) AbstractC06244a.A0f(this.A01)).ACT(c2312or, c06595j);
    }

    public final void A07(final C06565g c06565g) {
        c06565g.A02();
        if (this.A00 != null) {
            this.A00.post(new Runnable() {
                @Override
                public final void run() {
                    this.A01.A09(c06565g);
                }
            });
        }
    }

    public final void A08(final C06565g c06565g) {
        if (this.A00 != null) {
            this.A00.post(new Runnable() {
                @Override
                public final void run() {
                    this.A01.A0A(c06565g);
                }
            });
        }
    }

    public final void A09(C06565g c06565g) {
        c06565g.A02();
        ((C8D) AbstractC06244a.A0f(this.A01)).ACQ(c06565g);
    }

    public final void A0A(C06565g c06565g) {
        ((C8D) AbstractC06244a.A0f(this.A01)).ACR(c06565g);
    }

    public final void A0B(final C8F c8f) {
        if (this.A00 != null) {
            this.A00.post(new Runnable() {
                @Override
                public final void run() {
                }
            });
        }
    }

    public final void A0C(final C8F c8f) {
        if (this.A00 != null) {
            this.A00.post(new Runnable() {
                @Override
                public final void run() {
                }
            });
        }
    }

    public final void A0D(final Exception exc) {
        if (this.A00 != null) {
            this.A00.post(new Runnable() {
                @Override
                public final void run() {
                    this.A00.A0E(exc);
                }
            });
        }
    }

    public final void A0E(Exception exc) {
        ((C8D) AbstractC06244a.A0f(this.A01)).ACV(exc);
    }

    @MetaExoPlayerCustomization(type = {"NEW_METHOD"}, value = "New API")
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
        ((C8D) AbstractC06244a.A0f(this.A01)).ACP(str, j, j2);
    }

    public final void A0I(final boolean z) {
        if (this.A00 != null) {
            this.A00.post(new Runnable() {
                @Override
                public final void run() {
                    this.A00.A0J(z);
                }
            });
        }
    }

    public final void A0J(boolean z) {
        ((C8D) AbstractC06244a.A0f(this.A01)).AFF(z);
    }

    @MetaExoPlayerCustomization(type = {"NEW_METHOD"}, value = "New API")
    public final void A0K(final byte[] bArr, final long j) {
        if (this.A00 != null) {
            this.A00.post(new Runnable() {
                @Override
                public final void run() {
                }
            });
        }
    }
}
