package androidx.compose.ui.graphics;

import android.graphics.Bitmap;
import android.graphics.ColorSpace;
import android.util.DisplayMetrics;
import kotlin.jvm.JvmStatic;

public final class a1 {

    public static final a1 f3981a = new a1();

    private a1() {
    }

    @JvmStatic
    public static final androidx.compose.ui.graphics.colorspace.c a(Bitmap bitmap) {
        androidx.compose.ui.graphics.colorspace.c cVarB;
        ColorSpace colorSpace = bitmap.getColorSpace();
        return (colorSpace == null || (cVarB = j0.b(colorSpace)) == null) ? androidx.compose.ui.graphics.colorspace.g.f4044a.w() : cVarB;
    }

    @JvmStatic
    public static final Bitmap b(int i10, int i11, int i12, boolean z10, androidx.compose.ui.graphics.colorspace.c cVar) {
        return Bitmap.createBitmap((DisplayMetrics) null, i10, i11, q0.d(i12), z10, j0.a(cVar));
    }
}
