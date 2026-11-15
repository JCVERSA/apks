package k0;

import android.text.BoringLayout;
import android.text.Layout;
import android.text.TextPaint;

public final class g0 {

    private final CharSequence f63460a;

    private final TextPaint f63461b;

    private final int f63462c;

    private float f63463d = Float.NaN;

    private float f63464e = Float.NaN;

    private BoringLayout.Metrics f63465f;

    private boolean f63466g;

    public g0(CharSequence charSequence, TextPaint textPaint, int i10) {
        this.f63460a = charSequence;
        this.f63461b = textPaint;
        this.f63462c = i10;
    }

    public final BoringLayout.Metrics a() {
        if (!this.f63466g) {
            this.f63465f = e.f63429a.c(this.f63460a, this.f63461b, f1.k(this.f63462c));
            this.f63466g = true;
        }
        return this.f63465f;
    }

    public final float b() {
        if (!Float.isNaN(this.f63463d)) {
            return this.f63463d;
        }
        BoringLayout.Metrics metricsA = a();
        float fCeil = metricsA != null ? metricsA.width : -1;
        if (fCeil < 0.0f) {
            CharSequence charSequence = this.f63460a;
            fCeil = (float) Math.ceil(Layout.getDesiredWidth(charSequence, 0, charSequence.length(), this.f63461b));
        }
        if (i0.e(fCeil, this.f63460a, this.f63461b)) {
            fCeil += 0.5f;
        }
        this.f63463d = fCeil;
        return fCeil;
    }

    public final float c() {
        if (!Float.isNaN(this.f63464e)) {
            return this.f63464e;
        }
        float fC = i0.c(this.f63460a, this.f63461b);
        this.f63464e = fC;
        return fC;
    }
}
