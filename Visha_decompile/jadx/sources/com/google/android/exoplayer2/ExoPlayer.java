package com.google.android.exoplayer2;

import android.content.Context;
import android.os.Looper;
import androidx.media3.common.C;
import com.google.android.exoplayer2.ExoPlayer;
import defpackage.a62;
import defpackage.blb;
import defpackage.ey0;
import defpackage.ka9;
import defpackage.ms8;
import defpackage.n12;
import defpackage.o74;
import defpackage.rva;
import defpackage.w6a;
import defpackage.y32;
import defpackage.zi;

public interface ExoPlayer extends t {

    public interface a {
        void g(boolean z);
    }

    public static final class b {
        public boolean A;
        public final Context a;
        public ey0 b;
        public long c;
        public w6a d;
        public w6a e;
        public w6a f;
        public w6a g;
        public w6a h;
        public o74 i;
        public Looper j;
        public com.google.android.exoplayer2.audio.a k;
        public boolean l;
        public int m;
        public boolean n;
        public boolean o;
        public int p;
        public int q;
        public boolean r;
        public ka9 s;
        public long t;
        public long u;
        public m v;
        public long w;
        public long x;
        public boolean y;
        public boolean z;

        public b(final Context context) {
            this(context, new w6a() {
                @Override
                public final Object get() {
                    return ExoPlayer.b.g(context);
                }
            }, new w6a() {
                @Override
                public final Object get() {
                    return ExoPlayer.b.h(context);
                }
            });
        }

        public static ms8 g(Context context) {
            return new y32(context);
        }

        public static com.google.android.exoplayer2.source.i.a h(Context context) {
            return new com.google.android.exoplayer2.source.d(context, new n12());
        }

        public static rva i(Context context) {
            return new a62(context);
        }

        public static ms8 k(ms8 ms8Var) {
            return ms8Var;
        }

        public ExoPlayer f() {
            zi.g(!this.A);
            this.A = true;
            return new i(this, null);
        }

        public b l(final ms8 ms8Var) {
            zi.g(!this.A);
            this.d = new w6a() {
                @Override
                public final Object get() {
                    return ExoPlayer.b.k(ms8Var);
                }
            };
            return this;
        }

        public b(final Context context, w6a w6aVar, w6a w6aVar2) {
            this(context, w6aVar, w6aVar2, new w6a() {
                @Override
                public final Object get() {
                    return ExoPlayer.b.i(context);
                }
            }, new w6a() {
                @Override
                public final Object get() {
                    return new g22();
                }
            }, new w6a() {
                @Override
                public final Object get() {
                    return h02.k(context);
                }
            }, new o74() {
                @Override
                public final Object apply(Object obj) {
                    return new wz1((ey0) obj);
                }
            });
        }

        public b(Context context, w6a w6aVar, w6a w6aVar2, w6a w6aVar3, w6a w6aVar4, w6a w6aVar5, o74 o74Var) {
            this.a = context;
            this.d = w6aVar;
            this.e = w6aVar2;
            this.f = w6aVar3;
            this.g = w6aVar4;
            this.h = w6aVar5;
            this.i = o74Var;
            this.j = blb.K();
            this.k = com.google.android.exoplayer2.audio.a.h;
            this.m = 0;
            this.p = 1;
            this.q = 0;
            this.r = true;
            this.s = ka9.g;
            this.t = 5000L;
            this.u = C.DEFAULT_SEEK_FORWARD_INCREMENT_MS;
            this.v = new f.b().a();
            this.b = ey0.a;
            this.w = 500L;
            this.x = 2000L;
            this.z = true;
        }
    }

    void a(com.google.android.exoplayer2.source.i iVar);

    @Override
    ExoPlaybackException getPlayerError();
}
