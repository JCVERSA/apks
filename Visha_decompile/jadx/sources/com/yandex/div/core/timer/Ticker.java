package com.yandex.div.core.timer;

import android.os.SystemClock;
import defpackage.c74;
import defpackage.e74;
import defpackage.wc3;
import defpackage.wn8;
import defpackage.y45;
import defpackage.yi5;
import defpackage.zfb;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Ref$LongRef;

public final class Ticker {
    public static final a p = new a(null);
    public final String a;
    public final e74 b;
    public final e74 c;
    public final e74 d;
    public final e74 e;
    public final wc3 f;
    public Long g;
    public Long h;
    public Long i;
    public Long j;
    public State k;
    public long l;
    public long m;
    public long n;
    public final yi5 o;

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lcom/yandex/div/core/timer/Ticker$State;", "", "(Ljava/lang/String;I)V", "STOPPED", "WORKING", "PAUSED", "div_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public enum State {
        STOPPED,
        WORKING,
        PAUSED
    }

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public a() {
        }
    }

    public class b {
        public static final int[] a;

        static {
            int[] iArr = new int[State.values().length];
            try {
                iArr[State.STOPPED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[State.WORKING.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[State.PAUSED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            a = iArr;
        }
    }

    public Ticker(String str, e74 e74Var, e74 e74Var2, e74 e74Var3, e74 e74Var4, wc3 wc3Var) {
        y45.j(str, "name");
        y45.j(e74Var, "onInterrupt");
        y45.j(e74Var2, "onStart");
        y45.j(e74Var3, "onEnd");
        y45.j(e74Var4, "onTick");
        this.a = str;
        this.b = e74Var;
        this.c = e74Var2;
        this.d = e74Var3;
        this.e = e74Var4;
        this.f = wc3Var;
        this.k = State.STOPPED;
        this.m = -1L;
        this.n = -1L;
        this.o = kotlin.b.b(LazyThreadSafetyMode.NONE, new c74() {
            @Override
            public final FixedRateScheduler invoke() {
                return new FixedRateScheduler();
            }
        });
    }

    public static void A(Ticker ticker, long j, long j2, c74 c74Var, int i, Object obj) {
        ticker.z(j, (i & 2) != 0 ? j : j2, c74Var);
    }

    public final void B() {
        int i = b.a[this.k.ordinal()];
        if (i == 1) {
            i();
            this.i = this.g;
            this.j = this.h;
            this.k = State.WORKING;
            this.c.invoke(Long.valueOf(m()));
            x();
            return;
        }
        if (i == 2) {
            o("The timer '" + this.a + "' already working!");
            return;
        }
        if (i != 3) {
            return;
        }
        o("The timer '" + this.a + "' paused!");
    }

    public final void C() {
        int i = b.a[this.k.ordinal()];
        if (i == 1) {
            o("The timer '" + this.a + "' already stopped!");
            return;
        }
        if (i == 2 || i == 3) {
            this.k = State.STOPPED;
            this.d.invoke(Long.valueOf(m()));
            i();
            r();
        }
    }

    public final void D(long j, Long l) {
        this.h = l;
        this.g = j == 0 ? null : Long.valueOf(j);
    }

    public final void h() {
        int i = b.a[this.k.ordinal()];
        if (i == 2 || i == 3) {
            this.k = State.STOPPED;
            i();
            this.b.invoke(Long.valueOf(m()));
            r();
        }
    }

    public final void i() {
        l().b();
    }

    public final void j() {
        Long l = this.g;
        if (l != null) {
            this.e.invoke(Long.valueOf(wn8.h(m(), l.longValue())));
        } else {
            this.e.invoke(Long.valueOf(m()));
        }
    }

    public final long k() {
        return SystemClock.elapsedRealtime();
    }

    public final FixedRateScheduler l() {
        return (FixedRateScheduler) this.o.getValue();
    }

    public final long m() {
        return n() + this.l;
    }

    public final long n() {
        if (this.m == -1) {
            return 0L;
        }
        return k() - this.m;
    }

    public final void o(String str) {
        wc3 wc3Var = this.f;
        if (wc3Var != null) {
            wc3Var.e(new IllegalArgumentException(str));
        }
    }

    public final void p() {
        int i = b.a[this.k.ordinal()];
        if (i == 1) {
            o("The timer '" + this.a + "' already stopped!");
            return;
        }
        if (i == 2) {
            this.k = State.PAUSED;
            this.b.invoke(Long.valueOf(m()));
            y();
            this.m = -1L;
            return;
        }
        if (i != 3) {
            return;
        }
        o("The timer '" + this.a + "' already paused!");
    }

    public final void q() {
        h();
        B();
    }

    public final void r() {
        this.m = -1L;
        this.n = -1L;
        this.l = 0L;
    }

    public final void s(boolean z) {
        if (!z) {
            this.n = -1L;
        }
        x();
    }

    public final void t() {
        int i = b.a[this.k.ordinal()];
        if (i == 1) {
            o("The timer '" + this.a + "' is stopped!");
            return;
        }
        if (i != 2) {
            if (i != 3) {
                return;
            }
            this.k = State.WORKING;
            s(false);
            return;
        }
        o("The timer '" + this.a + "' already working!");
    }

    public final void u(final long j) {
        long jM = j - m();
        if (jM >= 0) {
            A(this, jM, 0L, new c74() {
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override
                public Object invoke() {
                    m137invoke();
                    return zfb.a;
                }

                public final void m137invoke() {
                    this.this$0.i();
                    this.this$0.d.invoke(Long.valueOf(j));
                    this.this$0.k = Ticker.State.STOPPED;
                    this.this$0.r();
                }
            }, 2, null);
        } else {
            this.d.invoke(Long.valueOf(j));
            r();
        }
    }

    public final void v(long j) {
        z(j, j - (m() % j), new c74() {
            {
                super(0);
            }

            @Override
            public Object invoke() {
                m138invoke();
                return zfb.a;
            }

            public final void m138invoke() {
                this.this$0.j();
            }
        });
    }

    public final void w(final long j, final long j2) {
        long jM = j2 - (m() % j2);
        final Ref$LongRef ref$LongRef = new Ref$LongRef();
        ref$LongRef.element = (j / j2) - (m() / j2);
        final c74 c74Var = new c74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override
            public Object invoke() {
                m141invoke();
                return zfb.a;
            }

            public final void m141invoke() {
                if (ref$LongRef.element > 0) {
                    this.e.invoke(Long.valueOf(j));
                }
                this.d.invoke(Long.valueOf(j));
                this.i();
                this.r();
                this.k = Ticker.State.STOPPED;
            }
        };
        z(j2, jM, new c74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override
            public Object invoke() {
                m139invoke();
                return zfb.a;
            }

            public final void m139invoke() {
                long jM2 = j - this.m();
                this.j();
                ref$LongRef.element--;
                if (1 > jM2 || jM2 >= j2) {
                    if (jM2 <= 0) {
                        c74Var.invoke();
                    }
                } else {
                    this.i();
                    Ticker ticker = this;
                    final c74 c74Var2 = c74Var;
                    Ticker.A(ticker, jM2, 0L, new c74() {
                        {
                            super(0);
                        }

                        @Override
                        public Object invoke() {
                            m140invoke();
                            return zfb.a;
                        }

                        public final void m140invoke() {
                            c74Var2.invoke();
                        }
                    }, 2, null);
                }
            }
        });
    }

    public final void x() {
        Long l = this.j;
        Long l2 = this.i;
        if (l != null && this.n != -1 && k() - this.n > l.longValue()) {
            j();
        }
        if (l == null && l2 != null) {
            u(l2.longValue());
            return;
        }
        if (l != null && l2 != null) {
            w(l2.longValue(), l.longValue());
        } else {
            if (l == null || l2 != null) {
                return;
            }
            v(l.longValue());
        }
    }

    public final void y() {
        if (this.m != -1) {
            this.l += k() - this.m;
            this.n = k();
            this.m = -1L;
        }
        i();
    }

    public final void z(long j, long j2, c74 c74Var) {
        this.m = k();
        l().c(j2, j, c74Var);
    }
}
