package defpackage;

import android.content.Context;
import android.net.Uri;
import android.os.Handler;
import android.view.Surface;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.ads.internal.util.zzs;
import com.google.android.gms.ads.internal.zzv;
import com.google.android.gms.internal.ads.b4;
import com.google.android.gms.internal.ads.zzba;
import com.google.android.gms.internal.ads.zzftu;
import com.google.android.gms.internal.ads.zzfww;
import defpackage.rif;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

public final class rif extends ugf implements ixi, taj {
    public static final int x = 0;
    public final Context d;
    public final dif e;
    public final rqj f;
    public final bhf g;
    public final WeakReference h;
    public final noj i;
    public o3j j;
    public ByteBuffer k;
    public boolean l;
    public tgf m;
    public int n;
    public int o;
    public long p;
    public final String q;
    public final int r;
    public Integer t;
    public final ArrayList u;
    public volatile fif v;
    public final Object s = new Object();
    public final Set w = new HashSet();

    /* JADX WARN: Code duplicated, block: B:22:0x00e6  */
    /* JADX WARN: Code duplicated, block: B:23:0x00e8  */
    public rif(Context context, bhf bhfVar, chf chfVar, Integer num) {
        final boolean z;
        final t8i t8iVar;
        this.d = context;
        this.g = bhfVar;
        this.t = num;
        this.h = new WeakReference(chfVar);
        dif difVar = new dif();
        this.e = difVar;
        rqj rqjVar = new rqj(context);
        this.f = rqjVar;
        if (zze.zzc()) {
            zze.zza("SimpleExoPlayerAdapter initialize ".concat(toString()));
        }
        ugf.u().incrementAndGet();
        laj lajVar = new laj(context, new pif(this));
        lajVar.b(rqjVar);
        lajVar.a(difVar);
        maj majVarC = lajVar.c();
        this.j = majVarC;
        majVarC.g(this);
        this.n = 0;
        this.p = 0L;
        this.o = 0;
        this.u = new ArrayList();
        this.v = null;
        this.q = (String) zzftu.zzd(chfVar != null ? chfVar.zzr() : null).zzb("");
        this.r = chfVar != null ? chfVar.zzf() : 0;
        final String strZzc = zzv.zzq().zzc(context, chfVar.zzm().afmaVersion);
        if (!this.l || this.k.limit() <= 0) {
            if (((Boolean) zzbd.zzc().b(cye.k2)).booleanValue()) {
                if (!((Boolean) zzbd.zzc().b(cye.c2)).booleanValue()) {
                    z = bhfVar.i ? false : true;
                }
            } else if (bhfVar.i) {
            }
            final t8i t8iVar2 = bhfVar.l ? new t8i() {
                @Override
                public final v9i zza() {
                    return rif.W(this.a, strZzc, z);
                }
            } : bhfVar.h > 0 ? new t8i() {
                @Override
                public final v9i zza() {
                    return rif.X(this.a, strZzc, z);
                }
            } : new t8i() {
                @Override
                public final v9i zza() {
                    return rif.Y(this.a, strZzc, z);
                }
            };
            t8iVar = bhfVar.i ? new t8i() {
                @Override
                public final v9i zza() {
                    return rif.Z(this.a, t8iVar2);
                }
            } : t8iVar2;
            ByteBuffer byteBuffer = this.k;
            if (byteBuffer != null && byteBuffer.limit() > 0) {
                final byte[] bArr = new byte[this.k.limit()];
                this.k.get(bArr);
                t8iVar = new t8i() {
                    @Override
                    public final v9i zza() {
                        int i = rif.x;
                        v9i v9iVarZza = t8iVar.zza();
                        byte[] bArr2 = bArr;
                        return new gif(new u5i(bArr2), bArr2.length, v9iVarZza);
                    }
                };
            }
        } else {
            final byte[] bArr2 = new byte[this.k.limit()];
            this.k.get(bArr2);
            t8iVar = new t8i() {
                @Override
                public final v9i zza() {
                    int i = rif.x;
                    return new u5i(bArr2);
                }
            };
        }
        this.i = new noj(t8iVar, new moj(((Boolean) zzbd.zzc().b(cye.m)).booleanValue() ? new h9e() {
            @Override
            public final c9e[] a(Uri uri, Map map) {
                int i = rif.x;
                return new c9e[]{new mfe(), new xde(), new gfe(vge.a, 32, null, null, zzfww.zzn(), null)};
            }
        } : new h9e() {
            @Override
            public final c9e[] a(Uri uri, Map map) {
                int i = rif.x;
                return new c9e[]{new mfe(), new xde()};
            }
        }));
    }

    public static v9i W(rif rifVar, String str, boolean z) {
        rif rifVar2 = true != z ? null : rifVar;
        bhf bhfVar = rifVar.g;
        return new b4(str, rifVar2, bhfVar.d, bhfVar.e, bhfVar.m, bhfVar.n);
    }

    public static v9i X(rif rifVar, String str, boolean z) {
        rif rifVar2 = true != z ? null : rifVar;
        bhf bhfVar = rifVar.g;
        cif cifVar = new cif(str, rifVar2, bhfVar.d, bhfVar.e, bhfVar.h);
        rifVar.w.add(new WeakReference(cifVar));
        return cifVar;
    }

    public static v9i Y(rif rifVar, String str, boolean z) {
        hii hiiVar = new hii();
        hiiVar.e(str);
        hiiVar.d(true != z ? null : rifVar);
        bhf bhfVar = rifVar.g;
        hiiVar.b(bhfVar.d);
        hiiVar.c(bhfVar.e);
        hiiVar.a(true);
        return hiiVar.zza();
    }

    public static v9i Z(rif rifVar, t8i t8iVar) {
        v9i v9iVarZza = t8iVar.zza();
        oif oifVar = new oif(rifVar);
        return new fif(rifVar.d, v9iVarZza, rifVar.q, rifVar.r, rifVar, oifVar);
    }

    public static void b0(rif rifVar, boolean z, long j) {
        tgf tgfVar = rifVar.m;
        if (tgfVar != null) {
            tgfVar.zzi(z, j);
        }
    }

    public static x9j[] c0(rif rifVar, Handler handler, l7e l7eVar, dhj dhjVar, ppj ppjVar, tlj tljVar) {
        hlj hljVar = hlj.a;
        Context context = rifVar.d;
        djj djjVar = new djj(context, new jkj(context, null, null), hljVar, false, handler, dhjVar, new aij(context).c());
        i6e i6eVar = new i6e(context);
        i6eVar.g(hljVar);
        i6eVar.e(handler);
        i6eVar.f(l7eVar);
        return new x9j[]{djjVar, i6eVar.h()};
    }

    @Override
    public final void A(int i) {
        this.e.k(i);
    }

    @Override
    public final void B(int i) {
        this.e.l(i);
    }

    @Override
    public final void C(tgf tgfVar) {
        this.m = tgfVar;
    }

    @Override
    public final void D(int i) {
        this.e.m(i);
    }

    @Override
    public final void E(int i) {
        this.e.n(i);
    }

    @Override
    public final void F(boolean z) {
        this.j.f(z);
    }

    @Override
    public final void G(Integer num) {
        this.t = num;
    }

    @Override
    public final void H(boolean z) {
        if (this.j == null) {
            return;
        }
        int i = 0;
        while (true) {
            this.j.zzy();
            if (i >= 2) {
                return;
            }
            rqj rqjVar = this.f;
            gqj gqjVarC = rqjVar.n().c();
            gqjVarC.D(i, !z);
            rqjVar.r(gqjVarC);
            i++;
        }
    }

    @Override
    public final void I(int i) {
        Iterator it = this.w.iterator();
        while (it.hasNext()) {
            cif cifVar = (cif) ((WeakReference) it.next()).get();
            if (cifVar != null) {
                cifVar.p(i);
            }
        }
    }

    @Override
    public final void J(Surface surface, boolean z) {
        o3j o3jVar = this.j;
        if (o3jVar != null) {
            o3jVar.a(surface);
        }
    }

    @Override
    public final void K(float f, boolean z) {
        o3j o3jVar = this.j;
        if (o3jVar != null) {
            o3jVar.c(f);
        }
    }

    @Override
    public final void L() {
        this.j.zzu();
    }

    @Override
    public final boolean M() {
        return this.j != null;
    }

    @Override
    public final int N() {
        return this.o;
    }

    @Override
    public final int P() {
        return this.j.zzg();
    }

    @Override
    public final long R() {
        return this.j.zzj();
    }

    @Override
    public final long S() {
        return this.n;
    }

    @Override
    public final long T() {
        if (d0() && this.v.s()) {
            return Math.min(this.n, this.v.n());
        }
        return 0L;
    }

    @Override
    public final long U() {
        return this.j.zzl();
    }

    @Override
    public final long V() {
        return this.j.zzm();
    }

    @Override
    public final void a(raj rajVar, Object obj, long j) {
        tgf tgfVar = this.m;
        if (tgfVar != null) {
            tgfVar.zzv();
        }
    }

    public final knj a0(Uri uri) {
        v8e v8eVar = new v8e();
        v8eVar.b(uri);
        cme cmeVarC = v8eVar.c();
        noj nojVar = this.i;
        nojVar.a(this.g.f);
        return nojVar.b(cmeVarC);
    }

    @Override
    public final void b(raj rajVar, v0f v0fVar, v0f v0fVar2, int i) {
    }

    @Override
    public final void c(raj rajVar, zzba zzbaVar) {
        tgf tgfVar = this.m;
        if (tgfVar != null) {
            tgfVar.zzk("onPlayerError", zzbaVar);
        }
    }

    @Override
    public final void d(raj rajVar, smj smjVar, xmj xmjVar, IOException iOException, boolean z) {
        tgf tgfVar = this.m;
        if (tgfVar != null) {
            if (this.g.j) {
                tgfVar.zzl("onLoadException", iOException);
            } else {
                tgfVar.zzk("onLoadError", iOException);
            }
        }
    }

    public final boolean d0() {
        return this.v != null && this.v.t();
    }

    @Override
    public final void e(raj rajVar, d1j d1jVar) {
    }

    @Override
    public final void f(v9i v9iVar, cfi cfiVar, boolean z, int i) {
        this.n += i;
    }

    public final void finalize() {
        ugf.u().decrementAndGet();
        if (zze.zzc()) {
            zze.zza("SimpleExoPlayerAdapter finalize ".concat(toString()));
        }
    }

    @Override
    public final void g(raj rajVar, zhf zhfVar) {
        tgf tgfVar = this.m;
        if (tgfVar != null) {
            tgfVar.zzD(zhfVar.a, zhfVar.b);
        }
    }

    @Override
    public final void h(raj rajVar, int i, long j) {
        this.o += i;
    }

    @Override
    public final void i(l1f l1fVar, saj sajVar) {
    }

    @Override
    public final void j(v9i v9iVar, cfi cfiVar, boolean z) {
        if (v9iVar instanceof lti) {
            synchronized (this.s) {
                this.u.add((lti) v9iVar);
            }
        } else if (v9iVar instanceof fif) {
            this.v = (fif) v9iVar;
            final chf chfVar = (chf) this.h.get();
            if (((Boolean) zzbd.zzc().b(cye.c2)).booleanValue() && chfVar != null && this.v.q()) {
                final HashMap map = new HashMap();
                map.put("gcacheHit", String.valueOf(this.v.s()));
                map.put("gcacheDownloaded", String.valueOf(this.v.r()));
                zzs.zza.post(new Runnable() {
                    @Override
                    public final void run() {
                        int i = rif.x;
                        chfVar.zzd("onGcacheInfoEvent", map);
                    }
                });
            }
        }
    }

    @Override
    public final void k(raj rajVar, erj erjVar, g1j g1jVar) {
        chf chfVar = (chf) this.h.get();
        if (!((Boolean) zzbd.zzc().b(cye.c2)).booleanValue() || chfVar == null) {
            return;
        }
        HashMap map = new HashMap();
        map.put("frameRate", String.valueOf(erjVar.x));
        map.put("bitRate", String.valueOf(erjVar.j));
        map.put("resolution", erjVar.v + "x" + erjVar.w);
        String str = erjVar.n;
        if (str != null) {
            map.put("videoMime", str);
        }
        String str2 = erjVar.o;
        if (str2 != null) {
            map.put("videoSampleMime", str2);
        }
        String str3 = erjVar.k;
        if (str3 != null) {
            map.put("videoCodec", str3);
        }
        chfVar.zzd("onMetadataEvent", map);
    }

    @Override
    public final void l(raj rajVar, xmj xmjVar) {
    }

    @Override
    public final void m(raj rajVar, erj erjVar, g1j g1jVar) {
        chf chfVar = (chf) this.h.get();
        if (!((Boolean) zzbd.zzc().b(cye.c2)).booleanValue() || chfVar == null) {
            return;
        }
        HashMap map = new HashMap();
        String str = erjVar.n;
        if (str != null) {
            map.put("audioMime", str);
        }
        String str2 = erjVar.o;
        if (str2 != null) {
            map.put("audioSampleMime", str2);
        }
        String str3 = erjVar.k;
        if (str3 != null) {
            map.put("audioCodec", str3);
        }
        chfVar.zzd("onMetadataEvent", map);
    }

    @Override
    public final void n(raj rajVar, int i, long j, long j2) {
    }

    @Override
    public final void o(raj rajVar, int i) {
        tgf tgfVar = this.m;
        if (tgfVar != null) {
            tgfVar.zzm(i);
        }
    }

    @Override
    public final void p(v9i v9iVar, cfi cfiVar, boolean z) {
    }

    @Override
    public final void q(v9i v9iVar, cfi cfiVar, boolean z) {
    }

    @Override
    public final long r() {
        if (d0()) {
            return 0L;
        }
        return this.n;
    }

    @Override
    public final long s() {
        if (d0()) {
            return this.v.o();
        }
        synchronized (this.s) {
            while (true) {
                ArrayList arrayList = this.u;
                if (!arrayList.isEmpty()) {
                    long j = this.p;
                    Map mapZze = ((lti) arrayList.remove(0)).zze();
                    long j2 = 0;
                    if (mapZze != null) {
                        for (Map.Entry entry : mapZze.entrySet()) {
                            if (entry != null) {
                                try {
                                    if (entry.getKey() != null && d2i.c("content-length", (CharSequence) entry.getKey()) && entry.getValue() != null && ((List) entry.getValue()).get(0) != null) {
                                        j2 = Long.parseLong((String) ((List) entry.getValue()).get(0));
                                        break;
                                    }
                                } catch (NumberFormatException unused) {
                                    continue;
                                }
                            }
                        }
                    }
                    this.p = j + j2;
                }
            }
        }
        return this.p;
    }

    @Override
    public final Integer t() {
        return this.t;
    }

    @Override
    public final void w(Uri[] uriArr, String str) {
        x(uriArr, str, ByteBuffer.allocate(0), false);
    }

    @Override
    public final void x(Uri[] uriArr, String str, ByteBuffer byteBuffer, boolean z) {
        knj ynjVar;
        if (this.j != null) {
            this.k = byteBuffer;
            this.l = z;
            int length = uriArr.length;
            if (length == 1) {
                ynjVar = a0(uriArr[0]);
            } else {
                knj[] knjVarArr = new knj[length];
                for (int i = 0; i < uriArr.length; i++) {
                    knjVarArr[i] = a0(uriArr[i]);
                }
                ynjVar = new ynj(false, false, new mmj(), knjVarArr);
            }
            this.j.e(ynjVar);
            this.j.zzq();
            ugf.v().incrementAndGet();
        }
    }

    @Override
    public final void y() {
        o3j o3jVar = this.j;
        if (o3jVar != null) {
            o3jVar.d(this);
            this.j.zzA();
            this.j = null;
            ugf.v().decrementAndGet();
        }
    }

    @Override
    public final void z(long j) {
        this.j.b(j);
    }
}
