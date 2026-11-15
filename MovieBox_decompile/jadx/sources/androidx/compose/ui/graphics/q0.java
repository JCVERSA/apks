package androidx.compose.ui.graphics;

import android.graphics.Bitmap;
import android.os.Build;
import android.util.DisplayMetrics;

public abstract class q0 {
    public static final e4 a(int i10, int i11, int i12, boolean z10, androidx.compose.ui.graphics.colorspace.c cVar) {
        Bitmap bitmapCreateBitmap;
        Bitmap.Config configD = d(i12);
        if (Build.VERSION.SDK_INT >= 26) {
            bitmapCreateBitmap = a1.b(i10, i11, i12, z10, cVar);
        } else {
            bitmapCreateBitmap = Bitmap.createBitmap((DisplayMetrics) null, i10, i11, configD);
            bitmapCreateBitmap.setHasAlpha(z10);
        }
        return new n0(bitmapCreateBitmap);
    }

    public static final Bitmap b(e4 e4Var) {
        if (e4Var instanceof n0) {
            return ((n0) e4Var).c();
        }
        throw new UnsupportedOperationException("Unable to obtain android.graphics.Bitmap");
    }

    public static final e4 c(Bitmap bitmap) {
        return new n0(bitmap);
    }

    public static final Bitmap.Config d(int i10) {
        f4.a aVar = f4.f4130b;
        if (f4.i(i10, aVar.b())) {
            return Bitmap.Config.ARGB_8888;
        }
        if (f4.i(i10, aVar.a())) {
            return Bitmap.Config.ALPHA_8;
        }
        if (f4.i(i10, aVar.e())) {
            return Bitmap.Config.RGB_565;
        }
        int i11 = Build.VERSION.SDK_INT;
        if (i11 < 26 || !f4.i(i10, aVar.c())) {
            return (i11 < 26 || !f4.i(i10, aVar.d())) ? Bitmap.Config.ARGB_8888 : Bitmap.Config.HARDWARE;
        }
        return Bitmap.Config.RGBA_F16;
    }

    public static final int e(Bitmap.Config config) {
        if (config == Bitmap.Config.ALPHA_8) {
            return f4.f4130b.a();
        }
        if (config == Bitmap.Config.RGB_565) {
            return f4.f4130b.e();
        }
        if (config == Bitmap.Config.ARGB_4444) {
            return f4.f4130b.b();
        }
        int i10 = Build.VERSION.SDK_INT;
        if (i10 < 26 || config != Bitmap.Config.RGBA_F16) {
            return (i10 < 26 || config != Bitmap.Config.HARDWARE) ? f4.f4130b.b() : f4.f4130b.d();
        }
        return f4.f4130b.c();
    }
}
