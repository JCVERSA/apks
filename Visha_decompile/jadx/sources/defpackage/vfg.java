package defpackage;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Looper;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.util.zzbo;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.internal.ads.j8;
import java.util.concurrent.Executor;

public final class vfg {
    public final zzbo a;
    public final fy0 b;
    public final Executor c;

    public vfg(zzbo zzboVar, fy0 fy0Var, Executor executor) {
        this.a = zzboVar;
        this.b = fy0Var;
        this.c = executor;
    }

    public static Bitmap a(vfg vfgVar, double d, boolean z, fme fmeVar) {
        byte[] bArr = fmeVar.b;
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inDensity = (int) (d * 160.0d);
        if (!z) {
            options.inPreferredConfig = Bitmap.Config.RGB_565;
        }
        if (((Boolean) zzbd.zzc().b(cye.f6)).booleanValue()) {
            options.inJustDecodeBounds = true;
            vfgVar.c(bArr, options);
            options.inJustDecodeBounds = false;
            int i = options.outWidth * options.outHeight;
            if (i > 0) {
                options.inSampleSize = 1 << ((33 - Integer.numberOfLeadingZeros((i - 1) / ((Integer) zzbd.zzc().b(cye.g6)).intValue())) / 2);
            }
        }
        return vfgVar.c(bArr, options);
    }

    public final im5 b(String str, final double d, final boolean z) {
        return j8.m(this.a.zza(str), new m2i() {
            @Override
            public final Object apply(Object obj) {
                return vfg.a(this.a, d, z, (fme) obj);
            }
        }, this.c);
    }

    public final Bitmap c(byte[] bArr, BitmapFactory.Options options) {
        fy0 fy0Var = this.b;
        long jElapsedRealtime = fy0Var.elapsedRealtime();
        Bitmap bitmapDecodeByteArray = BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
        long jElapsedRealtime2 = fy0Var.elapsedRealtime();
        if (bitmapDecodeByteArray != null) {
            long j = jElapsedRealtime2 - jElapsedRealtime;
            zze.zza("Decoded image w: " + bitmapDecodeByteArray.getWidth() + " h:" + bitmapDecodeByteArray.getHeight() + " bytes: " + bitmapDecodeByteArray.getAllocationByteCount() + " time: " + j + " on ui thread: " + (Looper.getMainLooper().getThread() == Thread.currentThread()));
        }
        return bitmapDecodeByteArray;
    }
}
