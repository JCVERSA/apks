package defpackage;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.client.zzbb;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.internal.util.zzbe;
import com.google.android.gms.ads.internal.util.zzbf;
import com.google.android.gms.ads.internal.util.zzbh;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.ads.internal.zzv;
import com.google.android.gms.internal.ads.zzcam;
import com.lzy.okgo.model.Progress;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.concurrent.TimeUnit;

public final class dhf {
    public static final boolean r;
    public final Context a;
    public final String b;
    public final VersionInfoParcel c;
    public final nye d;
    public final qye e;
    public final zzbh f;
    public final long[] g;
    public final String[] h;
    public boolean i;
    public boolean j;
    public boolean k;
    public boolean l;
    public boolean m;
    public zzcam n;
    public boolean o;
    public boolean p;
    public long q;

    static {
        r = zzbb.zze().nextInt(100) < ((Integer) zzbd.zzc().b(cye.Mc)).intValue();
    }

    public dhf(Context context, VersionInfoParcel versionInfoParcel, String str, qye qyeVar, nye nyeVar) {
        zzbf zzbfVar = new zzbf();
        zzbfVar.zza("min_1", Double.MIN_VALUE, 1.0d);
        zzbfVar.zza("1_5", 1.0d, 5.0d);
        zzbfVar.zza("5_10", 5.0d, 10.0d);
        zzbfVar.zza("10_20", 10.0d, 20.0d);
        zzbfVar.zza("20_30", 20.0d, 30.0d);
        zzbfVar.zza("30_max", 30.0d, Double.MAX_VALUE);
        this.f = zzbfVar.zzb();
        this.i = false;
        this.j = false;
        this.k = false;
        this.l = false;
        this.q = -1L;
        this.a = context;
        this.c = versionInfoParcel;
        this.b = str;
        this.e = qyeVar;
        this.d = nyeVar;
        String str2 = (String) zzbd.zzc().b(cye.Q);
        if (str2 == null) {
            this.h = new String[0];
            this.g = new long[0];
            return;
        }
        String[] strArrSplit = TextUtils.split(str2, StringUtils.COMMA);
        int length = strArrSplit.length;
        this.h = new String[length];
        this.g = new long[length];
        for (int i = 0; i < strArrSplit.length; i++) {
            try {
                this.g[i] = Long.parseLong(strArrSplit[i]);
            } catch (NumberFormatException e) {
                int i2 = zze.zza;
                zzo.zzk("Unable to parse frame hash target time number.", e);
                this.g[i] = -1;
            }
        }
    }

    public final void a(zzcam zzcamVar) {
        qye qyeVar = this.e;
        iye.a(qyeVar, this.d, "vpc2");
        this.i = true;
        qyeVar.d("vpn", zzcamVar.zzj());
        this.n = zzcamVar;
    }

    public final void b() {
        if (!this.i || this.j) {
            return;
        }
        iye.a(this.e, this.d, "vfr2");
        this.j = true;
    }

    public final void c() {
        this.m = true;
        if (!this.j || this.k) {
            return;
        }
        iye.a(this.e, this.d, "vfp2");
        this.k = true;
    }

    public final void d() {
        if (!r || this.o) {
            return;
        }
        Bundle bundle = new Bundle();
        bundle.putString("type", "native-player-metrics");
        bundle.putString(Progress.REQUEST, this.b);
        bundle.putString("player", this.n.zzj());
        for (zzbe zzbeVar : this.f.zza()) {
            String str = zzbeVar.zza;
            String strValueOf = String.valueOf(str);
            bundle.putString("fps_c_".concat(strValueOf), Integer.toString(zzbeVar.zze));
            String strValueOf2 = String.valueOf(str);
            bundle.putString("fps_p_".concat(strValueOf2), Double.toString(zzbeVar.zzd));
        }
        int i = 0;
        while (true) {
            long[] jArr = this.g;
            if (i >= jArr.length) {
                zzv.zzq().zzi(this.a, this.c.afmaVersion, "gmob-apps", bundle, true);
                this.o = true;
                return;
            }
            String str2 = this.h[i];
            if (str2 != null) {
                bundle.putString("fh_".concat(Long.valueOf(jArr[i]).toString()), str2);
            }
            i++;
        }
    }

    public final void e() {
        this.m = false;
    }

    public final void f(zzcam zzcamVar) {
        if (this.k && !this.l) {
            if (zze.zzc() && !this.l) {
                zze.zza("VideoMetricsMixin first frame");
            }
            iye.a(this.e, this.d, "vff2");
            this.l = true;
        }
        long jNanoTime = zzv.zzC().nanoTime();
        if (this.m && this.p && this.q != -1) {
            this.f.zzb(TimeUnit.SECONDS.toNanos(1L) / (jNanoTime - this.q));
        }
        this.p = this.m;
        this.q = jNanoTime;
        long jLongValue = ((Long) zzbd.zzc().b(cye.R)).longValue();
        long jZza = zzcamVar.zza();
        int i = 0;
        while (true) {
            String[] strArr = this.h;
            if (i >= strArr.length) {
                return;
            }
            if (strArr[i] == null && jLongValue > Math.abs(jZza - this.g[i])) {
                int i2 = 8;
                Bitmap bitmap = zzcamVar.getBitmap(8, 8);
                long j = 63;
                long j2 = 0;
                int i3 = 0;
                while (i3 < i2) {
                    int i4 = 0;
                    while (i4 < i2) {
                        int pixel = bitmap.getPixel(i4, i3);
                        j2 |= ((Color.blue(pixel) + Color.red(pixel)) + Color.green(pixel) > 128 ? 1L : 0L) << ((int) j);
                        j--;
                        i4++;
                        i2 = 8;
                    }
                    i3++;
                    i2 = 8;
                }
                strArr[i] = String.format("%016X", Long.valueOf(j2));
                return;
            }
            i++;
        }
    }
}
