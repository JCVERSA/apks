package androidx.compose.ui.platform;

import android.graphics.Matrix;
import androidx.compose.ui.graphics.i4;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

public final class d1 {

    private final Function2 f5457a;

    private Matrix f5458b;

    private Matrix f5459c;

    private float[] f5460d;

    private float[] f5461e;

    private boolean f5462f = true;

    private boolean f5463g = true;

    private boolean f5464h = true;

    public d1(Function2 function2) {
        this.f5457a = function2;
    }

    public final float[] a(Object obj) {
        float[] fArrC = this.f5461e;
        if (fArrC == null) {
            fArrC = i4.c(null, 1, null);
            this.f5461e = fArrC;
        }
        if (this.f5463g) {
            this.f5464h = b1.a(b(obj), fArrC);
            this.f5463g = false;
        }
        if (this.f5464h) {
            return fArrC;
        }
        return null;
    }

    public final float[] b(Object obj) {
        float[] fArrC = this.f5460d;
        if (fArrC == null) {
            fArrC = i4.c(null, 1, null);
            this.f5460d = fArrC;
        }
        if (!this.f5462f) {
            return fArrC;
        }
        Matrix matrix = this.f5458b;
        if (matrix == null) {
            matrix = new Matrix();
            this.f5458b = matrix;
        }
        this.f5457a.invoke(obj, matrix);
        Matrix matrix2 = this.f5459c;
        if (matrix2 == null || !Intrinsics.c(matrix, matrix2)) {
            androidx.compose.ui.graphics.r0.b(fArrC, matrix);
            this.f5458b = matrix2;
            this.f5459c = matrix;
        }
        this.f5462f = false;
        return fArrC;
    }

    public final void c() {
        this.f5462f = true;
        this.f5463g = true;
    }
}
