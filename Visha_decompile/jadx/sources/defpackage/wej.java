package defpackage;

import android.os.Looper;
import android.util.SparseArray;
import androidx.media3.exoplayer.analytics.AnalyticsListener;
import com.google.android.gms.internal.ads.zzba;
import com.google.android.gms.internal.ads.zzii;
import defpackage.wej;
import java.io.IOException;
import java.util.List;

public final class wej implements qaj {
    public final tbg a;
    public final y2f b;
    public final e4f c;
    public final uej d;
    public final SparseArray e;
    public xqg f;
    public l1f g;
    public olg h;
    public boolean i;

    public wej(tbg tbgVar) {
        tbgVar.getClass();
        this.a = tbgVar;
        this.f = new xqg(kfh.U(), tbgVar, new yog() {
            @Override
            public final void a(Object obj, enj enjVar) {
            }
        });
        y2f y2fVar = new y2f();
        this.b = y2fVar;
        this.c = new e4f();
        this.d = new uej(y2fVar);
        this.e = new SparseArray();
    }

    public static void W(wej wejVar) {
        final raj rajVarU = wejVar.U();
        wejVar.Y(rajVarU, AnalyticsListener.EVENT_PLAYER_RELEASED, new iog(rajVarU) {
            @Override
            public final void zza(Object obj) {
            }
        });
        wejVar.f.e();
    }

    @Override
    public final void A(final Exception exc) {
        final raj rajVarC0 = c0();
        Y(rajVarC0, AnalyticsListener.EVENT_VIDEO_CODEC_ERROR, new iog(rajVarC0, exc) {
            @Override
            public final void zza(Object obj) {
            }
        });
    }

    @Override
    public final void B(final long j, final int i) {
        final raj rajVarB0 = b0();
        Y(rajVarB0, 1021, new iog(rajVarB0, j, i) {
            @Override
            public final void zza(Object obj) {
            }
        });
    }

    @Override
    public final void C(final d1j d1jVar) {
        final raj rajVarC0 = c0();
        Y(rajVarC0, 1007, new iog(rajVarC0, d1jVar) {
            @Override
            public final void zza(Object obj) {
            }
        });
    }

    @Override
    public final void D(final uye uyeVar) {
        final raj rajVarU = U();
        Y(rajVarU, 13, new iog(rajVarU, uyeVar) {
            @Override
            public final void zza(Object obj) {
            }
        });
    }

    @Override
    public final void E(final int i, final long j, final long j2) {
        final raj rajVarZ = Z(this.d.c());
        Y(rajVarZ, 1006, new iog() {
            @Override
            public final void zza(Object obj) {
                ((taj) obj).n(rajVarZ, i, j, j2);
            }
        });
    }

    @Override
    public final void F(final l1f l1fVar, Looper looper) {
        boolean z = true;
        if (this.g != null && !this.d.b.isEmpty()) {
            z = false;
        }
        n7g.f(z);
        l1fVar.getClass();
        this.g = l1fVar;
        this.h = this.a.a(looper, null);
        this.f = this.f.a(looper, new yog() {
            @Override
            public final void a(Object obj, enj enjVar) {
                taj tajVar = (taj) obj;
                tajVar.i(l1fVar, new saj(enjVar, this.a.e));
            }
        });
    }

    @Override
    public final void G(int i, bnj bnjVar, final smj smjVar, final xmj xmjVar, final int i2) {
        final raj rajVarA0 = a0(i, bnjVar);
        Y(rajVarA0, 1000, new iog(rajVarA0, smjVar, xmjVar, i2) {
            @Override
            public final void zza(Object obj) {
            }
        });
    }

    @Override
    public final void H(final naf nafVar) {
        final raj rajVarU = U();
        Y(rajVarU, 2, new iog(rajVarU, nafVar) {
            @Override
            public final void zza(Object obj) {
            }
        });
    }

    @Override
    public final void I(final boolean z, final int i) {
        final raj rajVarU = U();
        Y(rajVarU, 5, new iog(rajVarU, z, i) {
            @Override
            public final void zza(Object obj) {
            }
        });
    }

    @Override
    public final void J(final Exception exc) {
        final raj rajVarC0 = c0();
        Y(rajVarC0, 1014, new iog(rajVarC0, exc) {
            @Override
            public final void zza(Object obj) {
            }
        });
    }

    @Override
    public final void K(final ipe ipeVar) {
        final raj rajVarU = U();
        Y(rajVarU, 14, new iog(rajVarU, ipeVar) {
            @Override
            public final void zza(Object obj) {
            }
        });
    }

    @Override
    public final void L(int i, bnj bnjVar, final smj smjVar, final xmj xmjVar) {
        final raj rajVarA0 = a0(i, bnjVar);
        Y(rajVarA0, 1001, new iog(rajVarA0, smjVar, xmjVar) {
            @Override
            public final void zza(Object obj) {
            }
        });
    }

    @Override
    public final void M(taj tajVar) {
        this.f.f(tajVar);
    }

    @Override
    public final void N(taj tajVar) {
        this.f.b(tajVar);
    }

    @Override
    public final void O(int i, bnj bnjVar, final xmj xmjVar) {
        final raj rajVarA0 = a0(i, bnjVar);
        Y(rajVarA0, 1004, new iog() {
            @Override
            public final void zza(Object obj) {
                ((taj) obj).l(rajVarA0, xmjVar);
            }
        });
    }

    @Override
    public final void P(final d1j d1jVar) {
        final raj rajVarB0 = b0();
        Y(rajVarB0, 1013, new iog(rajVarB0, d1jVar) {
            @Override
            public final void zza(Object obj) {
            }
        });
    }

    @Override
    public final void Q(int i, bnj bnjVar, final smj smjVar, final xmj xmjVar) {
        final raj rajVarA0 = a0(i, bnjVar);
        Y(rajVarA0, 1002, new iog(rajVarA0, smjVar, xmjVar) {
            @Override
            public final void zza(Object obj) {
            }
        });
    }

    @Override
    public final void R(final int i, final long j, final long j2) {
        final raj rajVarC0 = c0();
        Y(rajVarC0, 1011, new iog(rajVarC0, i, j, j2) {
            @Override
            public final void zza(Object obj) {
            }
        });
    }

    @Override
    public final void S(final boolean z, final int i) {
        final raj rajVarU = U();
        Y(rajVarU, -1, new iog(rajVarU, z, i) {
            @Override
            public final void zza(Object obj) {
            }
        });
    }

    @Override
    public final void T(final erj erjVar, final g1j g1jVar) {
        final raj rajVarC0 = c0();
        Y(rajVarC0, 1017, new iog() {
            @Override
            public final void zza(Object obj) {
                ((taj) obj).k(rajVarC0, erjVar, g1jVar);
            }
        });
    }

    public final raj U() {
        return Z(this.d.b());
    }

    public final raj V(w4f w4fVar, int i, bnj bnjVar) {
        bnj bnjVar2 = true == w4fVar.o() ? null : bnjVar;
        long jZzb = this.a.zzb();
        boolean z = w4fVar.equals(this.g.zzo()) && i == this.g.zze();
        long jQ = 0;
        if (bnjVar2 == null || !bnjVar2.b()) {
            if (z) {
                jQ = this.g.zzk();
            } else if (!w4fVar.o()) {
                long j = w4fVar.e(i, this.c, 0L).k;
                jQ = kfh.Q(0L);
            }
        } else if (z && this.g.zzc() == bnjVar2.b && this.g.zzd() == bnjVar2.c) {
            jQ = this.g.zzl();
        }
        return new raj(jZzb, w4fVar, i, bnjVar2, jQ, this.g.zzo(), this.g.zze(), this.d.b(), this.g.zzl(), this.g.zzn());
    }

    public final void Y(raj rajVar, int i, iog iogVar) {
        this.e.put(i, rajVar);
        xqg xqgVar = this.f;
        xqgVar.d(i, iogVar);
        xqgVar.c();
    }

    public final raj Z(bnj bnjVar) {
        this.g.getClass();
        w4f w4fVarA = bnjVar == null ? null : this.d.a(bnjVar);
        if (bnjVar != null && w4fVarA != null) {
            return V(w4fVarA, w4fVarA.n(bnjVar.a, this.b).c, bnjVar);
        }
        int iZze = this.g.zze();
        w4f w4fVarZzo = this.g.zzo();
        if (iZze >= w4fVarZzo.c()) {
            w4fVarZzo = w4f.a;
        }
        return V(w4fVarZzo, iZze, null);
    }

    @Override
    public final void a(final boolean z) {
        final raj rajVarU = U();
        Y(rajVarU, 7, new iog(rajVarU, z) {
            @Override
            public final void zza(Object obj) {
            }
        });
    }

    public final raj a0(int i, bnj bnjVar) {
        l1f l1fVar = this.g;
        l1fVar.getClass();
        if (bnjVar != null) {
            return this.d.a(bnjVar) != null ? Z(bnjVar) : V(w4f.a, i, bnjVar);
        }
        w4f w4fVarZzo = l1fVar.zzo();
        if (i >= w4fVarZzo.c()) {
            w4fVarZzo = w4f.a;
        }
        return V(w4fVarZzo, i, null);
    }

    @Override
    public final void b(final ehj ehjVar) {
        final raj rajVarC0 = c0();
        Y(rajVarC0, AnalyticsListener.EVENT_AUDIO_TRACK_RELEASED, new iog(rajVarC0, ehjVar) {
            @Override
            public final void zza(Object obj) {
            }
        });
    }

    public final raj b0() {
        return Z(this.d.d());
    }

    @Override
    public final void c(final float f) {
        final raj rajVarC0 = c0();
        Y(rajVarC0, 22, new iog(rajVarC0, f) {
            @Override
            public final void zza(Object obj) {
            }
        });
    }

    public final raj c0() {
        return Z(this.d.e());
    }

    @Override
    public final void d(final v0f v0fVar, final v0f v0fVar2, final int i) {
        if (i == 1) {
            this.i = false;
            i = 1;
        }
        uej uejVar = this.d;
        l1f l1fVar = this.g;
        l1fVar.getClass();
        uejVar.g(l1fVar);
        final raj rajVarU = U();
        Y(rajVarU, 11, new iog() {
            @Override
            public final void zza(Object obj) {
                ((taj) obj).b(rajVarU, v0fVar, v0fVar2, i);
            }
        });
    }

    public final raj d0(zzba zzbaVar) {
        bnj bnjVar;
        return (!(zzbaVar instanceof zzii) || (bnjVar = ((zzii) zzbaVar).zzh) == null) ? U() : Z(bnjVar);
    }

    @Override
    public final void e(final cme cmeVar, final int i) {
        final raj rajVarU = U();
        Y(rajVarU, 1, new iog(rajVarU, cmeVar, i) {
            @Override
            public final void zza(Object obj) {
            }
        });
    }

    @Override
    public final void f(final long j) {
        final raj rajVarC0 = c0();
        Y(rajVarC0, 1010, new iog(rajVarC0, j) {
            @Override
            public final void zza(Object obj) {
            }
        });
    }

    @Override
    public final void g(final d1j d1jVar) {
        final raj rajVarB0 = b0();
        Y(rajVarB0, 1020, new iog() {
            @Override
            public final void zza(Object obj) {
                ((taj) obj).e(rajVarB0, d1jVar);
            }
        });
    }

    @Override
    public final void h(final int i, final int i2, final boolean z) {
        final raj rajVarC0 = c0();
        Y(rajVarC0, AnalyticsListener.EVENT_RENDERER_READY_CHANGED, new iog(rajVarC0, i, i2, z) {
            @Override
            public final void zza(Object obj) {
            }
        });
    }

    @Override
    public final void i(final ehj ehjVar) {
        final raj rajVarC0 = c0();
        Y(rajVarC0, AnalyticsListener.EVENT_AUDIO_TRACK_INITIALIZED, new iog(rajVarC0, ehjVar) {
            @Override
            public final void zza(Object obj) {
            }
        });
    }

    @Override
    public final void j(final d1j d1jVar) {
        final raj rajVarC0 = c0();
        Y(rajVarC0, 1015, new iog(rajVarC0, d1jVar) {
            @Override
            public final void zza(Object obj) {
            }
        });
    }

    @Override
    public final void k(final String str) {
        final raj rajVarC0 = c0();
        Y(rajVarC0, 1019, new iog(rajVarC0, str) {
            @Override
            public final void zza(Object obj) {
            }
        });
    }

    @Override
    public final void l(final Exception exc) {
        final raj rajVarC0 = c0();
        Y(rajVarC0, AnalyticsListener.EVENT_AUDIO_CODEC_ERROR, new iog(rajVarC0, exc) {
            @Override
            public final void zza(Object obj) {
            }
        });
    }

    @Override
    public final void m(final zhf zhfVar) {
        final raj rajVarC0 = c0();
        Y(rajVarC0, 25, new iog() {
            @Override
            public final void zza(Object obj) {
                raj rajVar = rajVarC0;
                zhf zhfVar2 = zhfVar;
                ((taj) obj).g(rajVar, zhfVar2);
                int i = zhfVar2.a;
            }
        });
    }

    @Override
    public final void n(final String str, final long j, final long j2) {
        final raj rajVarC0 = c0();
        Y(rajVarC0, 1008, new iog(rajVarC0, str, j2, j) {
            @Override
            public final void zza(Object obj) {
            }
        });
    }

    @Override
    public final void o(final int i, final long j) {
        final raj rajVarB0 = b0();
        Y(rajVarB0, 1018, new iog() {
            @Override
            public final void zza(Object obj) {
                ((taj) obj).h(rajVarB0, i, j);
            }
        });
    }

    @Override
    public final void p(final erj erjVar, final g1j g1jVar) {
        final raj rajVarC0 = c0();
        Y(rajVarC0, 1009, new iog() {
            @Override
            public final void zza(Object obj) {
                ((taj) obj).m(rajVarC0, erjVar, g1jVar);
            }
        });
    }

    @Override
    public final void q(w4f w4fVar, final int i) {
        l1f l1fVar = this.g;
        l1fVar.getClass();
        this.d.i(l1fVar);
        final raj rajVarU = U();
        Y(rajVarU, 0, new iog(rajVarU, i) {
            @Override
            public final void zza(Object obj) {
            }
        });
    }

    @Override
    public final void r(List list, bnj bnjVar) {
        l1f l1fVar = this.g;
        l1fVar.getClass();
        this.d.h(list, bnjVar, l1fVar);
    }

    @Override
    public final void s(final zzba zzbaVar) {
        final raj rajVarD0 = d0(zzbaVar);
        Y(rajVarD0, 10, new iog() {
            @Override
            public final void zza(Object obj) {
                ((taj) obj).c(rajVarD0, zzbaVar);
            }
        });
    }

    @Override
    public final void t(int i, bnj bnjVar, final smj smjVar, final xmj xmjVar, final IOException iOException, final boolean z) {
        final raj rajVarA0 = a0(i, bnjVar);
        Y(rajVarA0, 1003, new iog() {
            @Override
            public final void zza(Object obj) {
                ((taj) obj).d(rajVarA0, smjVar, xmjVar, iOException, z);
            }
        });
    }

    @Override
    public final void u(final int i, final int i2) {
        final raj rajVarC0 = c0();
        Y(rajVarC0, 24, new iog(rajVarC0, i, i2) {
            @Override
            public final void zza(Object obj) {
            }
        });
    }

    @Override
    public final void v(final String str, final long j, final long j2) {
        final raj rajVarC0 = c0();
        Y(rajVarC0, 1016, new iog(rajVarC0, str, j2, j) {
            @Override
            public final void zza(Object obj) {
            }
        });
    }

    @Override
    public final void w(final vwe vweVar) {
        final raj rajVarU = U();
        Y(rajVarU, 12, new iog(rajVarU, vweVar) {
            @Override
            public final void zza(Object obj) {
            }
        });
    }

    @Override
    public final void x(final Object obj, final long j) {
        final raj rajVarC0 = c0();
        Y(rajVarC0, 26, new iog() {
            @Override
            public final void zza(Object obj2) {
                ((taj) obj2).a(rajVarC0, obj, j);
            }
        });
    }

    @Override
    public final void y(final boolean z) {
        final raj rajVarC0 = c0();
        Y(rajVarC0, 23, new iog(rajVarC0, z) {
            @Override
            public final void zza(Object obj) {
            }
        });
    }

    @Override
    public final void z(final zzba zzbaVar) {
        final raj rajVarD0 = d0(zzbaVar);
        Y(rajVarD0, 10, new iog(rajVarD0, zzbaVar) {
            @Override
            public final void zza(Object obj) {
            }
        });
    }

    @Override
    public final void zzR() {
        olg olgVar = this.h;
        n7g.b(olgVar);
        olgVar.f(new Runnable() {
            @Override
            public final void run() {
                wej.W(this.zza);
            }
        });
    }

    @Override
    public final void zza(final int i) {
        final raj rajVarC0 = c0();
        Y(rajVarC0, 21, new iog(rajVarC0, i) {
            @Override
            public final void zza(Object obj) {
            }
        });
    }

    @Override
    public final void zzc(final boolean z) {
        final raj rajVarU = U();
        Y(rajVarU, 3, new iog(rajVarU, z) {
            @Override
            public final void zza(Object obj) {
            }
        });
    }

    @Override
    public final void zzi(final int i) {
        final raj rajVarU = U();
        Y(rajVarU, 4, new iog() {
            @Override
            public final void zza(Object obj) {
                ((taj) obj).o(rajVarU, i);
            }
        });
    }

    @Override
    public final void zzj(final int i) {
        final raj rajVarU = U();
        Y(rajVarU, 6, new iog(rajVarU, i) {
            @Override
            public final void zza(Object obj) {
            }
        });
    }

    @Override
    public final void zzv() {
        if (this.i) {
            return;
        }
        final raj rajVarU = U();
        this.i = true;
        Y(rajVarU, -1, new iog(rajVarU) {
            @Override
            public final void zza(Object obj) {
            }
        });
    }

    @Override
    public final void zzy(final String str) {
        final raj rajVarC0 = c0();
        Y(rajVarC0, 1012, new iog(rajVarC0, str) {
            @Override
            public final void zza(Object obj) {
            }
        });
    }
}
