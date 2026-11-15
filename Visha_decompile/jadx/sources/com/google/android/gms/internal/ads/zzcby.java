package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.net.Uri;
import android.view.Surface;
import android.view.TextureView;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.ads.internal.zzv;
import defpackage.aif;
import defpackage.bhf;
import defpackage.chf;
import defpackage.cye;
import defpackage.dhf;
import defpackage.qgf;
import defpackage.rif;
import defpackage.rmg;
import defpackage.smg;
import defpackage.tgf;
import defpackage.ugf;
import defpackage.xhf;
import defpackage.zef;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.Arrays;

public final class zzcby extends zzcam implements TextureView.SurfaceTextureListener, tgf {
    public final chf d;
    public final dhf e;
    public final bhf f;
    public final smg g;
    public qgf h;
    public Surface i;
    public ugf j;
    public String k;
    public String[] l;
    public boolean m;
    public int n;
    public zzcbe o;
    public final boolean p;
    public boolean q;
    public boolean r;
    public int s;
    public int t;
    public float u;

    public zzcby(Context context, dhf dhfVar, chf chfVar, boolean z, boolean z2, bhf bhfVar, @Nullable smg smgVar) {
        super(context);
        this.n = 1;
        this.d = chfVar;
        this.e = dhfVar;
        this.p = z;
        this.f = bhfVar;
        dhfVar.a(this);
        this.g = smgVar;
    }

    public static String c(String str, Exception exc) {
        return str + "/" + exc.getClass().getCanonicalName() + StringUtils.PROCESS_POSTFIX_DELIMITER + exc.getMessage();
    }

    private final void d() {
        ugf ugfVar = this.j;
        if (ugfVar != null) {
            ugfVar.H(true);
        }
    }

    private final boolean m() {
        ugf ugfVar = this.j;
        return (ugfVar == null || !ugfVar.M() || this.m) ? false : true;
    }

    public static void zzG(zzcby zzcbyVar) {
        qgf qgfVar = zzcbyVar.h;
        if (qgfVar != null) {
            qgfVar.zzi();
        }
    }

    public static void zzH(zzcby zzcbyVar, int i) {
        qgf qgfVar = zzcbyVar.h;
        if (qgfVar != null) {
            qgfVar.onWindowVisibilityChanged(i);
        }
    }

    public static void zzI(zzcby zzcbyVar, String str) {
        qgf qgfVar = zzcbyVar.h;
        if (qgfVar != null) {
            qgfVar.zzb("ExoPlayerAdapter error", str);
        }
    }

    public static void zzJ(zzcby zzcbyVar) {
        qgf qgfVar = zzcbyVar.h;
        if (qgfVar != null) {
            qgfVar.zze();
        }
    }

    public static void zzK(zzcby zzcbyVar) {
        qgf qgfVar = zzcbyVar.h;
        if (qgfVar != null) {
            qgfVar.zza();
        }
    }

    public static void zzL(zzcby zzcbyVar) {
        qgf qgfVar = zzcbyVar.h;
        if (qgfVar != null) {
            qgfVar.zzh();
        }
    }

    public static void zzM(zzcby zzcbyVar) {
        float fA = zzcbyVar.c.a();
        ugf ugfVar = zzcbyVar.j;
        if (ugfVar == null) {
            int i = zze.zza;
            zzo.zzj("Trying to set volume before player is initialized.");
            return;
        }
        try {
            ugfVar.K(fA, false);
        } catch (IOException e) {
            int i2 = zze.zza;
            zzo.zzk("", e);
        }
    }

    public static void zzN(zzcby zzcbyVar) {
        qgf qgfVar = zzcbyVar.h;
        if (qgfVar != null) {
            qgfVar.zzd();
        }
    }

    public static void zzO(zzcby zzcbyVar, int i, int i2) {
        qgf qgfVar = zzcbyVar.h;
        if (qgfVar != null) {
            qgfVar.zzj(i, i2);
        }
    }

    public static void zzP(zzcby zzcbyVar) {
        qgf qgfVar = zzcbyVar.h;
        if (qgfVar != null) {
            qgfVar.zzf();
        }
    }

    public static void zzQ(zzcby zzcbyVar, String str) {
        qgf qgfVar = zzcbyVar.h;
        if (qgfVar != null) {
            qgfVar.zzc("ExoPlayerAdapter exception", str);
        }
    }

    public static void zzS(zzcby zzcbyVar) {
        qgf qgfVar = zzcbyVar.h;
        if (qgfVar != null) {
            qgfVar.zzg();
        }
    }

    public final ugf a(Integer num) {
        bhf bhfVar = this.f;
        chf chfVar = this.d;
        rif rifVar = new rif(chfVar.getContext(), bhfVar, chfVar, num);
        int i = zze.zza;
        zzo.zzi("ExoPlayerAdapter initialized.");
        return rifVar;
    }

    public final String b() {
        chf chfVar = this.d;
        return zzv.zzq().zzc(chfVar.getContext(), chfVar.zzm().afmaVersion);
    }

    public final void e() {
        if (this.q) {
            return;
        }
        this.q = true;
        com.google.android.gms.ads.internal.util.zzs.zza.post(new Runnable() {
            @Override
            public final void run() {
                zzcby.zzP(this.zza);
            }
        });
        zzn();
        this.e.b();
        if (this.r) {
            zzp();
        }
    }

    public final void f(boolean z, Integer num) {
        ugf ugfVar = this.j;
        if (ugfVar != null && !z) {
            ugfVar.G(num);
            return;
        }
        if (this.k == null || this.i == null) {
            return;
        }
        if (z) {
            if (!m()) {
                int i = zze.zza;
                zzo.zzj("No valid ExoPlayerAdapter exists when switch source.");
                return;
            } else {
                ugfVar.L();
                h();
            }
        }
        if (this.k.startsWith("cache:")) {
            z3 z3VarZzo = this.d.zzo(this.k);
            if (z3VarZzo instanceof aif) {
                ugf ugfVarS = ((aif) z3VarZzo).s();
                this.j = ugfVarS;
                ugfVarS.G(num);
                if (!this.j.M()) {
                    int i2 = zze.zza;
                    zzo.zzj("Precached video player has been released.");
                    return;
                }
            } else {
                if (!(z3VarZzo instanceof xhf)) {
                    String strValueOf = String.valueOf(this.k);
                    int i3 = zze.zza;
                    zzo.zzj("Stream cache miss: ".concat(strValueOf));
                    return;
                }
                xhf xhfVar = (xhf) z3VarZzo;
                String strB = b();
                ByteBuffer byteBufferU = xhfVar.u();
                boolean zV = xhfVar.v();
                String strT = xhfVar.t();
                if (strT == null) {
                    int i4 = zze.zza;
                    zzo.zzj("Stream cache URL is null.");
                    return;
                } else {
                    ugf ugfVarA = a(num);
                    this.j = ugfVarA;
                    ugfVarA.x(new Uri[]{Uri.parse(strT)}, strB, byteBufferU, zV);
                }
            }
        } else {
            this.j = a(num);
            String strB2 = b();
            Uri[] uriArr = new Uri[this.l.length];
            int i5 = 0;
            while (true) {
                String[] strArr = this.l;
                if (i5 >= strArr.length) {
                    break;
                }
                uriArr[i5] = Uri.parse(strArr[i5]);
                i5++;
            }
            this.j.w(uriArr, strB2);
        }
        this.j.C(this);
        i(this.i, false);
        if (this.j.M()) {
            int iP = this.j.P();
            this.n = iP;
            if (iP == 3) {
                e();
            }
        }
    }

    public final void g() {
        ugf ugfVar = this.j;
        if (ugfVar != null) {
            ugfVar.H(false);
        }
    }

    public final void h() {
        if (this.j != null) {
            i(null, true);
            ugf ugfVar = this.j;
            if (ugfVar != null) {
                ugfVar.C(null);
                this.j.y();
                this.j = null;
            }
            this.n = 1;
            this.m = false;
            this.q = false;
            this.r = false;
        }
    }

    public final void i(Surface surface, boolean z) {
        ugf ugfVar = this.j;
        if (ugfVar == null) {
            int i = zze.zza;
            zzo.zzj("Trying to set surface before player is initialized.");
            return;
        }
        try {
            ugfVar.J(surface, z);
        } catch (IOException e) {
            int i2 = zze.zza;
            zzo.zzk("", e);
        }
    }

    public final void j() {
        k(this.s, this.t);
    }

    public final void k(int i, int i2) {
        float f = i2 > 0 ? i / i2 : 1.0f;
        if (this.u != f) {
            this.u = f;
            requestLayout();
        }
    }

    public final boolean l() {
        return m() && this.n != 1;
    }

    @Override
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        setSurfaceTextureListener(this);
    }

    @Override
    public final void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        int measuredWidth = getMeasuredWidth();
        int measuredHeight = getMeasuredHeight();
        float f = this.u;
        if (f != 0.0f && this.o == null) {
            float f2 = measuredWidth;
            float f3 = f2 / measuredHeight;
            if (f > f3) {
                measuredHeight = (int) (f2 / f);
            }
            if (f < f3) {
                measuredWidth = (int) (measuredHeight * f);
            }
        }
        setMeasuredDimension(measuredWidth, measuredHeight);
        zzcbe zzcbeVar = this.o;
        if (zzcbeVar != null) {
            zzcbeVar.zzc(measuredWidth, measuredHeight);
        }
    }

    @Override
    public final void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
        smg smgVar;
        if (this.p) {
            if (((Boolean) zzbd.zzc().b(cye.nd)).booleanValue() && (smgVar = this.g) != null) {
                rmg rmgVarA = smgVar.a();
                rmgVarA.b("action", "svp_aepv");
                rmgVarA.j();
            }
            zzcbe zzcbeVar = new zzcbe(getContext());
            this.o = zzcbeVar;
            zzcbeVar.zzd(surfaceTexture, i, i2);
            zzcbe zzcbeVar2 = this.o;
            zzcbeVar2.start();
            SurfaceTexture surfaceTextureZzb = zzcbeVar2.zzb();
            if (surfaceTextureZzb != null) {
                surfaceTexture = surfaceTextureZzb;
            } else {
                this.o.zze();
                this.o = null;
            }
        }
        Surface surface = new Surface(surfaceTexture);
        this.i = surface;
        if (this.j == null) {
            f(false, null);
        } else {
            i(surface, true);
            if (!this.f.a) {
                d();
            }
        }
        if (this.s == 0 || this.t == 0) {
            k(i, i2);
        } else {
            j();
        }
        com.google.android.gms.ads.internal.util.zzs.zza.post(new Runnable() {
            @Override
            public final void run() {
                zzcby.zzL(this.zza);
            }
        });
    }

    @Override
    public final boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        zzo();
        zzcbe zzcbeVar = this.o;
        if (zzcbeVar != null) {
            zzcbeVar.zze();
            this.o = null;
        }
        if (this.j != null) {
            g();
            Surface surface = this.i;
            if (surface != null) {
                surface.release();
            }
            this.i = null;
            i(null, true);
        }
        com.google.android.gms.ads.internal.util.zzs.zza.post(new Runnable() {
            @Override
            public final void run() {
                zzcby.zzG(this.zza);
            }
        });
        return true;
    }

    @Override
    public final void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, final int i, final int i2) {
        zzcbe zzcbeVar = this.o;
        if (zzcbeVar != null) {
            zzcbeVar.zzc(i, i2);
        }
        com.google.android.gms.ads.internal.util.zzs.zza.post(new Runnable() {
            @Override
            public final void run() {
                zzcby.zzO(this.zza, i, i2);
            }
        });
    }

    @Override
    public final void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
        this.e.f(this);
        this.b.a(surfaceTexture, this.h);
    }

    @Override
    public final void onWindowVisibilityChanged(final int i) {
        zze.zza("AdExoPlayerView3 window visibility changed to " + i);
        com.google.android.gms.ads.internal.util.zzs.zza.post(new Runnable() {
            @Override
            public final void run() {
                zzcby.zzH(this.zza, i);
            }
        });
        super.onWindowVisibilityChanged(i);
    }

    @Override
    public final void zzA(int i) {
        ugf ugfVar = this.j;
        if (ugfVar != null) {
            ugfVar.E(i);
        }
    }

    @Override
    public final void zzB(int i) {
        ugf ugfVar = this.j;
        if (ugfVar != null) {
            ugfVar.I(i);
        }
    }

    @Override
    public final void zzC(@Nullable String str, @Nullable String[] strArr, @Nullable Integer num) {
        if (str == null) {
            return;
        }
        if (strArr == null) {
            this.l = new String[]{str};
        } else {
            this.l = (String[]) Arrays.copyOf(strArr, strArr.length);
        }
        String str2 = this.k;
        boolean z = false;
        if (this.f.k && str2 != null && !str.equals(str2) && this.n == 4) {
            z = true;
        }
        this.k = str;
        f(z, num);
    }

    @Override
    public final void zzD(int i, int i2) {
        this.s = i;
        this.t = i2;
        j();
    }

    @Override
    public final int zza() {
        if (l()) {
            return (int) this.j.U();
        }
        return 0;
    }

    @Override
    public final int zzb() {
        ugf ugfVar = this.j;
        if (ugfVar != null) {
            return ugfVar.N();
        }
        return -1;
    }

    @Override
    public final int zzc() {
        if (l()) {
            return (int) this.j.V();
        }
        return 0;
    }

    @Override
    public final int zzd() {
        return this.t;
    }

    @Override
    public final int zze() {
        return this.s;
    }

    @Override
    public final long zzf() {
        ugf ugfVar = this.j;
        if (ugfVar != null) {
            return ugfVar.T();
        }
        return -1L;
    }

    @Override
    public final long zzg() {
        ugf ugfVar = this.j;
        if (ugfVar != null) {
            return ugfVar.r();
        }
        return -1L;
    }

    @Override
    public final long zzh() {
        ugf ugfVar = this.j;
        if (ugfVar != null) {
            return ugfVar.s();
        }
        return -1L;
    }

    @Override
    public final void zzi(final boolean z, final long j) {
        if (this.d != null) {
            zef.f.execute(new Runnable() {
                @Override
                public final void run() {
                    this.zza.d.zzv(z, j);
                }
            });
        }
    }

    @Override
    public final String zzj() {
        return "ExoPlayer/2".concat(true != this.p ? "" : " spherical");
    }

    @Override
    public final void zzk(String str, Exception exc) {
        final String strC = c(str, exc);
        String strConcat = "ExoPlayerAdapter error: ".concat(strC);
        int i = zze.zza;
        zzo.zzj(strConcat);
        this.m = true;
        if (this.f.a) {
            g();
        }
        com.google.android.gms.ads.internal.util.zzs.zza.post(new Runnable() {
            @Override
            public final void run() {
                zzcby.zzI(this.zza, strC);
            }
        });
        zzv.zzp().w(exc, "AdExoPlayerView.onError");
    }

    @Override
    public final void zzl(String str, Exception exc) {
        final String strC = c("onLoadException", exc);
        String strConcat = "ExoPlayerAdapter exception: ".concat(strC);
        int i = zze.zza;
        zzo.zzj(strConcat);
        zzv.zzp().w(exc, "AdExoPlayerView.onException");
        com.google.android.gms.ads.internal.util.zzs.zza.post(new Runnable() {
            @Override
            public final void run() {
                zzcby.zzQ(this.zza, strC);
            }
        });
    }

    @Override
    public final void zzm(int i) {
        if (this.n != i) {
            this.n = i;
            if (i == 3) {
                e();
                return;
            }
            if (i != 4) {
                return;
            }
            if (this.f.a) {
                g();
            }
            this.e.e();
            this.c.c();
            com.google.android.gms.ads.internal.util.zzs.zza.post(new Runnable() {
                @Override
                public final void run() {
                    zzcby.zzK(this.zza);
                }
            });
        }
    }

    @Override
    public final void zzn() {
        com.google.android.gms.ads.internal.util.zzs.zza.post(new Runnable() {
            @Override
            public final void run() {
                zzcby.zzM(this.zza);
            }
        });
    }

    @Override
    public final void zzo() {
        if (l()) {
            if (this.f.a) {
                g();
            }
            this.j.F(false);
            this.e.e();
            this.c.c();
            com.google.android.gms.ads.internal.util.zzs.zza.post(new Runnable() {
                @Override
                public final void run() {
                    zzcby.zzN(this.zza);
                }
            });
        }
    }

    @Override
    public final void zzp() {
        if (!l()) {
            this.r = true;
            return;
        }
        if (this.f.a) {
            d();
        }
        this.j.F(true);
        this.e.c();
        this.c.b();
        this.b.b();
        com.google.android.gms.ads.internal.util.zzs.zza.post(new Runnable() {
            @Override
            public final void run() {
                zzcby.zzJ(this.zza);
            }
        });
    }

    @Override
    public final void zzq(int i) {
        if (l()) {
            this.j.z(i);
        }
    }

    @Override
    public final void zzr(qgf qgfVar) {
        this.h = qgfVar;
    }

    @Override
    public final void zzs(@Nullable String str) {
        if (str != null) {
            zzC(str, null, null);
        }
    }

    @Override
    public final void zzt() {
        if (m()) {
            this.j.L();
            h();
        }
        dhf dhfVar = this.e;
        dhfVar.e();
        this.c.c();
        dhfVar.d();
    }

    @Override
    public final void zzu(float f, float f2) {
        zzcbe zzcbeVar = this.o;
        if (zzcbeVar != null) {
            zzcbeVar.zzf(f, f2);
        }
    }

    @Override
    public final void zzv() {
        com.google.android.gms.ads.internal.util.zzs.zza.post(new Runnable() {
            @Override
            public final void run() {
                zzcby.zzS(this.zza);
            }
        });
    }

    @Override
    @Nullable
    public final Integer zzw() {
        ugf ugfVar = this.j;
        if (ugfVar != null) {
            return ugfVar.t();
        }
        return null;
    }

    @Override
    public final void zzx(int i) {
        ugf ugfVar = this.j;
        if (ugfVar != null) {
            ugfVar.A(i);
        }
    }

    @Override
    public final void zzy(int i) {
        ugf ugfVar = this.j;
        if (ugfVar != null) {
            ugfVar.B(i);
        }
    }

    @Override
    public final void zzz(int i) {
        ugf ugfVar = this.j;
        if (ugfVar != null) {
            ugfVar.D(i);
        }
    }
}
