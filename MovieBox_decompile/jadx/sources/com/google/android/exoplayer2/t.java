package com.google.android.exoplayer2;

import android.content.Context;
import android.os.Looper;
import com.google.android.exoplayer2.util.PriorityTaskManager;
import com.mbridge.msdk.interstitial.view.MBInterstitialActivity;

public interface t extends p2 {

    public interface a {
        void x(boolean z10);
    }

    public static final class b {
        boolean A;
        boolean B;

        final Context f26060a;

        com.google.android.exoplayer2.util.e f26061b;

        long f26062c;

        com.google.common.base.q f26063d;

        com.google.common.base.q f26064e;

        com.google.common.base.q f26065f;

        com.google.common.base.q f26066g;

        com.google.common.base.q f26067h;

        com.google.common.base.f f26068i;

        Looper f26069j;

        PriorityTaskManager f26070k;

        com.google.android.exoplayer2.audio.e f26071l;

        boolean f26072m;

        int f26073n;

        boolean f26074o;

        boolean f26075p;

        int f26076q;

        int f26077r;

        boolean f26078s;

        d3 f26079t;

        long f26080u;

        long f26081v;

        t1 f26082w;

        long f26083x;

        long f26084y;

        boolean f26085z;

        public b(final Context context) {
            this(context, new com.google.common.base.q() {
                @Override
                public final Object get() {
                    return t.b.g(context);
                }
            }, new com.google.common.base.q() {
                @Override
                public final Object get() {
                    return t.b.h(context);
                }
            });
        }

        public static c3 g(Context context) {
            return new p(context);
        }

        public static com.google.android.exoplayer2.source.o.a h(Context context) {
            return new com.google.android.exoplayer2.source.i(context, new i9.i());
        }

        public static na.b0 i(Context context) {
            return new na.m(context);
        }

        public t f() {
            com.google.android.exoplayer2.util.a.g(!this.B);
            this.B = true;
            return new a1(this, null);
        }

        public b l(final c3 c3Var) {
            com.google.android.exoplayer2.util.a.g(!this.B);
            this.f26063d = new com.google.common.base.q() {
                @Override
                public final Object get() {
                    return t.b.k(c3Var);
                }
            };
            return this;
        }

        private b(final Context context, com.google.common.base.q qVar, com.google.common.base.q qVar2) {
            this(context, qVar, qVar2, new com.google.common.base.q() {
                @Override
                public final Object get() {
                    return t.b.i(context);
                }
            }, new com.google.common.base.q() {
                @Override
                public final Object get() {
                    return new n();
                }
            }, new com.google.common.base.q() {
                @Override
                public final Object get() {
                    return com.google.android.exoplayer2.upstream.q.m(context);
                }
            }, new com.google.common.base.f() {
                @Override
                public final Object apply(Object obj) {
                    return new g9.p1((com.google.android.exoplayer2.util.e) obj);
                }
            });
        }

        private b(Context context, com.google.common.base.q qVar, com.google.common.base.q qVar2, com.google.common.base.q qVar3, com.google.common.base.q qVar4, com.google.common.base.q qVar5, com.google.common.base.f fVar) {
            this.f26060a = context;
            this.f26063d = qVar;
            this.f26064e = qVar2;
            this.f26065f = qVar3;
            this.f26066g = qVar4;
            this.f26067h = qVar5;
            this.f26068i = fVar;
            this.f26069j = com.google.android.exoplayer2.util.p0.Q();
            this.f26071l = com.google.android.exoplayer2.audio.e.f23942g;
            this.f26073n = 0;
            this.f26076q = 1;
            this.f26077r = 0;
            this.f26078s = true;
            this.f26079t = d3.f24198g;
            this.f26080u = 5000L;
            this.f26081v = MBInterstitialActivity.WEB_LOAD_TIME;
            this.f26082w = new m.b().a();
            this.f26061b = com.google.android.exoplayer2.util.e.f26795a;
            this.f26083x = 500L;
            this.f26084y = 2000L;
            this.A = true;
        }

        public static c3 k(c3 c3Var) {
            return c3Var;
        }
    }

    void a(com.google.android.exoplayer2.source.o oVar);
}
