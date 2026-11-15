package defpackage;

import android.net.Uri;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.util.client.zzf;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.ads.internal.util.zzs;
import com.google.android.gms.ads.internal.zzv;
import com.google.android.gms.internal.ads.y3;
import com.google.android.gms.internal.ads.z3;
import defpackage.aif;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.io.IOException;

public final class aif extends z3 implements tgf {
    public ugf e;
    public String f;
    public boolean g;
    public boolean h;
    public y3 i;
    public long j;
    public long k;

    public aif(chf chfVar, bhf bhfVar) {
        super(chfVar);
        rif rifVar = new rif(chfVar.getContext(), bhfVar, (chf) this.d.get(), null);
        int i = zze.zza;
        zzo.zzi("ExoPlayerAdapter initialized.");
        this.e = rifVar;
        rifVar.C(this);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void t(aif aifVar) throws Throwable {
        String str;
        aif aifVar2;
        aif aifVar3;
        aif aifVar4;
        long j;
        String str2;
        aif aifVar5;
        long j2;
        String strU = u(aifVar.f);
        try {
            long jLongValue = ((Long) zzbd.zzc().b(cye.N)).longValue() * 1000;
            long jIntValue = ((Integer) zzbd.zzc().b(cye.t)).intValue();
            boolean zBooleanValue = ((Boolean) zzbd.zzc().b(cye.c2)).booleanValue();
            try {
                synchronized (aifVar) {
                    try {
                        if (zzv.zzC().currentTimeMillis() - aifVar.j > jLongValue) {
                            throw new IOException("Timeout reached. Limit: " + jLongValue + " ms");
                        }
                        if (aifVar.g) {
                            throw new IOException("Abort requested before buffering finished. ");
                        }
                        if (!aifVar.h) {
                            if (!aifVar.e.M()) {
                                throw new IOException("ExoPlayer was released during preloading.");
                            }
                            long jV = aifVar.e.V();
                            if (jV > 0) {
                                long jR = aifVar.e.R();
                                if (jR != aifVar.k) {
                                    try {
                                        str2 = strU;
                                        try {
                                            aifVar.h(aifVar.f, strU, jR, jV, jR > 0, zBooleanValue ? aifVar.e.r() : -1L, zBooleanValue ? aifVar.e.T() : -1L, zBooleanValue ? aifVar.e.s() : -1L, ugf.O(), ugf.Q());
                                            aifVar5 = aifVar;
                                            j = jR;
                                            try {
                                                aifVar5.k = j;
                                                j2 = jV;
                                                aifVar5 = aifVar5;
                                            } catch (Throwable th) {
                                                th = th;
                                                str = str2;
                                                aifVar2 = aifVar5;
                                                try {
                                                    throw th;
                                                } catch (Exception e) {
                                                    e = e;
                                                    String str3 = "Failed to preload url " + aifVar2.f + " Exception: " + e.getMessage();
                                                    int i = zze.zza;
                                                    zzo.zzj(str3);
                                                    zzv.zzp().w(e, "VideoStreamExoPlayerCache.preload");
                                                    aifVar.release();
                                                    aifVar2.c(aifVar2.f, str, "error", v("error", e));
                                                    aifVar3 = aifVar2;
                                                    zzv.zzz().f(aifVar3.i);
                                                }
                                            }
                                        } catch (Throwable th2) {
                                            th = th2;
                                            aifVar5 = aifVar;
                                            str = str2;
                                            aifVar2 = aifVar5;
                                            throw th;
                                        }
                                    } catch (Throwable th3) {
                                        th = th3;
                                        str2 = strU;
                                        aifVar5 = aifVar;
                                    }
                                } else {
                                    j = jR;
                                    str2 = strU;
                                    aifVar5 = aifVar;
                                    j2 = jV;
                                }
                                if (j >= j2) {
                                    aifVar5.e(aifVar5.f, str2, j2);
                                    aifVar3 = aifVar5;
                                } else if (aifVar5.e.S() >= jIntValue && j > 0) {
                                    aifVar3 = aifVar5;
                                }
                            } else {
                                aifVar4 = aifVar;
                            }
                            aifVar4.w(((Long) zzbd.zzc().b(cye.O)).longValue());
                            return;
                        }
                        aifVar3 = aifVar;
                        zzv.zzz().f(aifVar3.i);
                    } catch (Throwable th4) {
                        th = th4;
                        str = strU;
                        aifVar2 = aifVar;
                    }
                }
            } catch (Throwable th5) {
                th = th5;
                aifVar2 = zBooleanValue;
            }
        } catch (Exception e2) {
            e = e2;
            str = strU;
            aifVar2 = aifVar;
        }
    }

    public static final String u(String str) {
        return "cache:".concat(String.valueOf(zzf.zzg(str)));
    }

    public static String v(String str, Exception exc) {
        return str + "/" + exc.getClass().getCanonicalName() + StringUtils.PROCESS_POSTFIX_DELIMITER + exc.getMessage();
    }

    @Override
    public final void b() {
        synchronized (this) {
            this.g = true;
            notify();
            release();
        }
        String str = this.f;
        if (str != null) {
            c(this.f, u(str), "externalAbort", "Programmatic precache abort.");
        }
    }

    @Override
    public final void i(int i) {
        this.e.A(i);
    }

    @Override
    public final void k(int i) {
        this.e.B(i);
    }

    @Override
    public final void l(int i) {
        this.e.D(i);
    }

    @Override
    public final void m(int i) {
        this.e.E(i);
    }

    @Override
    public final boolean n(String str) {
        return o(str, new String[]{str});
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v7, types: [chf] */
    /* JADX WARN: Type inference failed for: r13v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r13v1 */
    /* JADX WARN: Type inference failed for: r13v2 */
    /* JADX WARN: Type inference failed for: r13v3 */
    /* JADX WARN: Type inference failed for: r13v5 */
    /* JADX WARN: Type inference failed for: r15v0, types: [aif, com.google.android.gms.internal.ads.z3] */
    /* JADX WARN: Type inference failed for: r15v1 */
    /* JADX WARN: Type inference failed for: r15v2, types: [aif] */
    /* JADX WARN: Type inference failed for: r15v3 */
    /* JADX WARN: Type inference failed for: r15v4 */
    /* JADX WARN: Type inference failed for: r3v0, types: [java.lang.StringBuilder] */
    /* JADX WARN: Type inference failed for: r5v0 */
    /* JADX WARN: Type inference failed for: r5v1, types: [com.google.android.gms.internal.ads.z3] */
    /* JADX WARN: Type inference failed for: r5v10, types: [int] */
    /* JADX WARN: Type inference failed for: r5v13 */
    /* JADX WARN: Type inference failed for: r5v14 */
    /* JADX WARN: Type inference failed for: r5v15 */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v3 */
    /* JADX WARN: Type inference failed for: r5v4 */
    /* JADX WARN: Type inference failed for: r5v5 */
    /* JADX WARN: Type inference failed for: r5v6 */
    /* JADX WARN: Type inference failed for: r5v7 */
    /* JADX WARN: Type inference failed for: r5v8 */
    /* JADX WARN: Type inference failed for: r5v9, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r6v0 */
    /* JADX WARN: Type inference failed for: r6v1, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r6v10 */
    /* JADX WARN: Type inference failed for: r6v11 */
    /* JADX WARN: Type inference failed for: r6v13 */
    /* JADX WARN: Type inference failed for: r6v15 */
    /* JADX WARN: Type inference failed for: r6v16 */
    /* JADX WARN: Type inference failed for: r6v19 */
    /* JADX WARN: Type inference failed for: r6v20 */
    /* JADX WARN: Type inference failed for: r6v22 */
    /* JADX WARN: Type inference failed for: r6v4 */
    /* JADX WARN: Type inference failed for: r6v5 */
    /* JADX WARN: Type inference failed for: r6v6 */
    /* JADX WARN: Type inference failed for: r6v7 */
    /* JADX WARN: Type inference failed for: r6v8 */
    /* JADX WARN: Type inference failed for: r6v9 */
    @Override
    public final boolean o(String str, String[] strArr) throws Throwable {
        ?? r6;
        String str2;
        ?? r5;
        long j;
        ?? r7;
        ?? r8;
        String str3;
        long j2;
        ?? r15 = this;
        ?? r13 = str;
        r15.f = r13;
        String strU = u(str);
        try {
            Uri[] uriArr = new Uri[strArr.length];
            for (int i = 0; i < strArr.length; i++) {
                uriArr[i] = Uri.parse(strArr[i]);
            }
            r15.e.w(uriArr, r15.c);
            ?? r0 = (chf) r15.d.get();
            if (r0 != 0) {
                r0.zzt(strU, r15);
            }
            fy0 fy0VarZzC = zzv.zzC();
            long jCurrentTimeMillis = fy0VarZzC.currentTimeMillis();
            long jLongValue = ((Long) zzbd.zzc().b(cye.O)).longValue();
            long jLongValue2 = ((Long) zzbd.zzc().b(cye.N)).longValue() * 1000;
            long jIntValue = ((Integer) zzbd.zzc().b(cye.t)).intValue();
            boolean zBooleanValue = ((Boolean) zzbd.zzc().b(cye.c2)).booleanValue();
            long j3 = -1;
            long j4 = jIntValue;
            r13 = r13;
            r15 = r15;
            while (true) {
                synchronized (this) {
                    try {
                        if (fy0VarZzC.currentTimeMillis() - jCurrentTimeMillis > jLongValue2) {
                            throw new IOException("Timeout reached. Limit: " + jLongValue2 + " ms");
                        }
                        if (r15.g) {
                            throw new IOException("Abort requested before buffering finished. ");
                        }
                        if (!r15.h) {
                            if (!r15.e.M()) {
                                throw new IOException("ExoPlayer was released during preloading.");
                            }
                            long jV = r15.e.V();
                            if (jV > 0) {
                                long jR = r15.e.R();
                                if (jR != j3) {
                                    try {
                                        long j5 = jV;
                                        str3 = strU;
                                        try {
                                            h(str, strU, jR, j5, jR > 0, zBooleanValue ? r15.e.r() : -1L, zBooleanValue ? r15.e.T() : -1L, zBooleanValue ? r15.e.s() : -1L, ugf.O(), ugf.Q());
                                            j3 = jR;
                                            j2 = jV;
                                            r7 = j5;
                                        } catch (Throwable th) {
                                            th = th;
                                            r5 = this;
                                            r6 = str;
                                            str2 = str3;
                                            try {
                                                throw th;
                                            } catch (Exception e) {
                                                e = e;
                                                String str4 = "Failed to preload url " + r6 + " Exception: " + e.getMessage();
                                                int i2 = zze.zza;
                                                zzo.zzj(str4);
                                                zzv.zzp().w(e, "VideoStreamExoPlayerCache.preload");
                                                release();
                                                r5.c(r6, str2, "error", v("error", e));
                                                return false;
                                            }
                                        }
                                    } catch (Throwable th2) {
                                        th = th2;
                                        str3 = strU;
                                    }
                                } else {
                                    str3 = strU;
                                    j2 = jV;
                                    r7 = j4;
                                }
                                r8 = (jR > j2 ? 1 : (jR == j2 ? 0 : -1));
                                if (r8 >= 0) {
                                    e(str, str3, j2);
                                } else {
                                    try {
                                        aif aifVar = this;
                                        r7 = str;
                                        str2 = str3;
                                        if (aifVar.e.S() < j4 || jR <= 0) {
                                            r8 = aifVar;
                                            j = j4;
                                        }
                                    } catch (Throwable th3) {
                                        th = th3;
                                        r5 = r8;
                                        r6 = r7;
                                        throw th;
                                    }
                                }
                            } else {
                                j = j4;
                                jLongValue2 = jLongValue2;
                                r7 = r13;
                                str2 = strU;
                                r8 = r15;
                            }
                            try {
                                r8.wait(jLongValue);
                            } catch (InterruptedException unused) {
                                throw new IOException("Wait interrupted.");
                            }
                        }
                        return true;
                    } catch (Throwable th4) {
                        th = th4;
                        r6 = r13;
                        str2 = strU;
                        r5 = r15;
                    }
                }
                return true;
                jLongValue = jLongValue;
                r15 = r8;
                r13 = r7;
                strU = str2;
                j4 = j;
                jLongValue2 = jLongValue2;
            }
        } catch (Exception e2) {
            e = e2;
            r6 = r13;
            str2 = strU;
            r5 = r15;
        }
    }

    @Override
    public final boolean r(String str, String[] strArr, y3 y3Var) {
        this.f = str;
        this.i = y3Var;
        String strU = u(str);
        try {
            Uri[] uriArr = new Uri[strArr.length];
            for (int i = 0; i < strArr.length; i++) {
                uriArr[i] = Uri.parse(strArr[i]);
            }
            this.e.w(uriArr, this.c);
            chf chfVar = (chf) this.d.get();
            if (chfVar != null) {
                chfVar.zzt(strU, this);
            }
            this.j = zzv.zzC().currentTimeMillis();
            this.k = -1L;
            w(0L);
            return true;
        } catch (Exception e) {
            String str2 = "Failed to preload url " + str + " Exception: " + e.getMessage();
            int i2 = zze.zza;
            zzo.zzj(str2);
            zzv.zzp().w(e, "VideoStreamExoPlayerCache.preload");
            release();
            c(str, strU, "error", v("error", e));
            return false;
        }
    }

    @Override
    public final void release() {
        ugf ugfVar = this.e;
        if (ugfVar != null) {
            ugfVar.C(null);
            this.e.y();
        }
    }

    public final ugf s() {
        synchronized (this) {
            this.h = true;
            notify();
        }
        this.e.C(null);
        ugf ugfVar = this.e;
        this.e = null;
        return ugfVar;
    }

    public final void w(long j) {
        zzs.zza.postDelayed(new Runnable() {
            @Override
            public final void run() throws Throwable {
                aif.t(this.zza);
            }
        }, j);
    }

    @Override
    public final void zzD(int i, int i2) {
    }

    @Override
    public final void zzi(final boolean z, final long j) {
        final chf chfVar = (chf) this.d.get();
        if (chfVar != null) {
            zef.f.execute(new Runnable() {
                @Override
                public final void run() {
                    chfVar.zzv(z, j);
                }
            });
        }
    }

    @Override
    public final void zzk(String str, Exception exc) {
        int i = zze.zza;
        zzo.zzk("Precache error", exc);
        zzv.zzp().w(exc, "VideoStreamExoPlayerCache.onError");
    }

    @Override
    public final void zzl(String str, Exception exc) {
        int i = zze.zza;
        zzo.zzk("Precache exception", exc);
        zzv.zzp().w(exc, "VideoStreamExoPlayerCache.onException");
    }

    @Override
    public final void zzm(int i) {
    }

    @Override
    public final void zzv() {
        int i = zze.zza;
        zzo.zzj("Precache onRenderedFirstFrame");
    }
}
