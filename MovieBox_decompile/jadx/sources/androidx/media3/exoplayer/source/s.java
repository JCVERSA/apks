package androidx.media3.exoplayer.source;

import android.os.Handler;
import androidx.media3.common.util.a1;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.io.IOException;
import java.util.concurrent.CopyOnWriteArrayList;

public interface s {

    public static class a {

        public final int f12576a;

        public final r.b f12577b;

        private final CopyOnWriteArrayList f12578c;

        private static final class C0095a {

            public Handler f12579a;

            public s f12580b;

            public C0095a(Handler handler, s sVar) {
                this.f12579a = handler;
                this.f12580b = sVar;
            }
        }

        public a() {
            this(new CopyOnWriteArrayList(), 0, null);
        }

        public void m(f2.j jVar, s sVar) {
            sVar.r(this.f12576a, this.f12577b, jVar);
        }

        public void n(f2.i iVar, f2.j jVar, s sVar) {
            sVar.H(this.f12576a, this.f12577b, iVar, jVar);
        }

        public void o(f2.i iVar, f2.j jVar, s sVar) {
            sVar.B(this.f12576a, this.f12577b, iVar, jVar);
        }

        public void p(f2.i iVar, f2.j jVar, IOException iOException, boolean z10, s sVar) {
            sVar.l(this.f12576a, this.f12577b, iVar, jVar, iOException, z10);
        }

        public void q(f2.i iVar, f2.j jVar, int i10, s sVar) {
            sVar.x(this.f12576a, this.f12577b, iVar, jVar, i10);
        }

        public void r(r.b bVar, f2.j jVar, s sVar) {
            sVar.w(this.f12576a, bVar, jVar);
        }

        public void A(final f2.i iVar, final f2.j jVar, final IOException iOException, final boolean z10) {
            i(new androidx.media3.common.util.m() {
                @Override
                public final void accept(Object obj) {
                    this.f59931a.p(iVar, jVar, iOException, z10, (androidx.media3.exoplayer.source.s) obj);
                }
            });
        }

        public void B(f2.i iVar, int i10, int i11) {
            C(iVar, i10, -1, null, 0, null, C.TIME_UNSET, C.TIME_UNSET, i11);
        }

        public void C(f2.i iVar, int i10, int i11, androidx.media3.common.r rVar, int i12, Object obj, long j10, long j11, int i13) {
            D(iVar, new f2.j(i10, i11, rVar, i12, obj, a1.y1(j10), a1.y1(j11)), i13);
        }

        public void D(final f2.i iVar, final f2.j jVar, final int i10) {
            i(new androidx.media3.common.util.m() {
                @Override
                public final void accept(Object obj) {
                    this.f59924a.q(iVar, jVar, i10, (androidx.media3.exoplayer.source.s) obj);
                }
            });
        }

        public void E(s sVar) {
            for (C0095a c0095a : this.f12578c) {
                if (c0095a.f12580b == sVar) {
                    this.f12578c.remove(c0095a);
                }
            }
        }

        public void F(int i10, long j10, long j11) {
            G(new f2.j(1, i10, null, 3, null, a1.y1(j10), a1.y1(j11)));
        }

        public void G(final f2.j jVar) {
            final r.b bVar = (r.b) androidx.media3.common.util.a.e(this.f12577b);
            i(new androidx.media3.common.util.m() {
                @Override
                public final void accept(Object obj) {
                    this.f59943a.r(bVar, jVar, (androidx.media3.exoplayer.source.s) obj);
                }
            });
        }

        public a H(int i10, r.b bVar) {
            return new a(this.f12578c, i10, bVar);
        }

        public void h(Handler handler, s sVar) {
            androidx.media3.common.util.a.e(handler);
            androidx.media3.common.util.a.e(sVar);
            this.f12578c.add(new C0095a(handler, sVar));
        }

        public void i(final androidx.media3.common.util.m mVar) {
            for (C0095a c0095a : this.f12578c) {
                final s sVar = c0095a.f12580b;
                a1.b1(c0095a.f12579a, new Runnable() {
                    @Override
                    public final void run() {
                        mVar.accept(sVar);
                    }
                });
            }
        }

        public void j(int i10, androidx.media3.common.r rVar, int i11, Object obj, long j10) {
            k(new f2.j(1, i10, rVar, i11, obj, a1.y1(j10), C.TIME_UNSET));
        }

        public void k(final f2.j jVar) {
            i(new androidx.media3.common.util.m() {
                @Override
                public final void accept(Object obj) {
                    this.f59941a.m(jVar, (androidx.media3.exoplayer.source.s) obj);
                }
            });
        }

        public void s(f2.i iVar, int i10) {
            t(iVar, i10, -1, null, 0, null, C.TIME_UNSET, C.TIME_UNSET);
        }

        public void t(f2.i iVar, int i10, int i11, androidx.media3.common.r rVar, int i12, Object obj, long j10, long j11) {
            u(iVar, new f2.j(i10, i11, rVar, i12, obj, a1.y1(j10), a1.y1(j11)));
        }

        public void u(final f2.i iVar, final f2.j jVar) {
            i(new androidx.media3.common.util.m() {
                @Override
                public final void accept(Object obj) {
                    this.f59936a.n(iVar, jVar, (androidx.media3.exoplayer.source.s) obj);
                }
            });
        }

        public void v(f2.i iVar, int i10) {
            w(iVar, i10, -1, null, 0, null, C.TIME_UNSET, C.TIME_UNSET);
        }

        public void w(f2.i iVar, int i10, int i11, androidx.media3.common.r rVar, int i12, Object obj, long j10, long j11) {
            x(iVar, new f2.j(i10, i11, rVar, i12, obj, a1.y1(j10), a1.y1(j11)));
        }

        public void x(final f2.i iVar, final f2.j jVar) {
            i(new androidx.media3.common.util.m() {
                @Override
                public final void accept(Object obj) {
                    this.f59928a.o(iVar, jVar, (androidx.media3.exoplayer.source.s) obj);
                }
            });
        }

        public void y(f2.i iVar, int i10, int i11, androidx.media3.common.r rVar, int i12, Object obj, long j10, long j11, IOException iOException, boolean z10) {
            A(iVar, new f2.j(i10, i11, rVar, i12, obj, a1.y1(j10), a1.y1(j11)), iOException, z10);
        }

        public void z(f2.i iVar, int i10, IOException iOException, boolean z10) {
            y(iVar, i10, -1, null, 0, null, C.TIME_UNSET, C.TIME_UNSET, iOException, z10);
        }

        private a(CopyOnWriteArrayList copyOnWriteArrayList, int i10, r.b bVar) {
            this.f12578c = copyOnWriteArrayList;
            this.f12576a = i10;
            this.f12577b = bVar;
        }
    }

    void B(int i10, r.b bVar, f2.i iVar, f2.j jVar);

    void H(int i10, r.b bVar, f2.i iVar, f2.j jVar);

    void l(int i10, r.b bVar, f2.i iVar, f2.j jVar, IOException iOException, boolean z10);

    void r(int i10, r.b bVar, f2.j jVar);

    void w(int i10, r.b bVar, f2.j jVar);

    void x(int i10, r.b bVar, f2.i iVar, f2.j jVar, int i11);
}
