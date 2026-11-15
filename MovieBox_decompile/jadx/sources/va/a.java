package va;

import android.content.Context;
import android.graphics.Color;
import com.google.android.material.R$attr;
import za.b;

public class a {

    private static final int f73564f = (int) Math.round(5.1000000000000005d);

    private final boolean f73565a;

    private final int f73566b;

    private final int f73567c;

    private final int f73568d;

    private final float f73569e;

    public a(Context context) {
        this(b.b(context, R$attr.elevationOverlayEnabled, false), com.google.android.material.color.b.b(context, R$attr.elevationOverlayColor, 0), com.google.android.material.color.b.b(context, R$attr.elevationOverlayAccentColor, 0), com.google.android.material.color.b.b(context, R$attr.colorSurface, 0), context.getResources().getDisplayMetrics().density);
    }

    private boolean f(int i10) {
        return z0.b.p(i10, 255) == this.f73568d;
    }

    public float a(float f10) {
        float f11 = this.f73569e;
        if (f11 <= 0.0f || f10 <= 0.0f) {
            return 0.0f;
        }
        return Math.min(((((float) Math.log1p(f10 / f11)) * 4.5f) + 2.0f) / 100.0f, 1.0f);
    }

    public int b(int i10, float f10) {
        int i11;
        float fA = a(f10);
        int iAlpha = Color.alpha(i10);
        int iJ = com.google.android.material.color.b.j(z0.b.p(i10, 255), this.f73566b, fA);
        if (fA > 0.0f && (i11 = this.f73567c) != 0) {
            iJ = com.google.android.material.color.b.i(iJ, z0.b.p(i11, f73564f));
        }
        return z0.b.p(iJ, iAlpha);
    }

    public int c(int i10, float f10) {
        return (this.f73565a && f(i10)) ? b(i10, f10) : i10;
    }

    public int d(float f10) {
        return c(this.f73568d, f10);
    }

    public boolean e() {
        return this.f73565a;
    }

    public a(boolean z10, int i10, int i11, int i12, float f10) {
        this.f73565a = z10;
        this.f73566b = i10;
        this.f73567c = i11;
        this.f73568d = i12;
        this.f73569e = f10;
    }
}
