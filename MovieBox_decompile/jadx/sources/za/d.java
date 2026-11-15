package za;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.text.TextPaint;
import androidx.core.view.ViewCompat;
import com.google.android.material.R$styleable;

public class d {

    public final ColorStateList f76734a;

    public final ColorStateList f76735b;

    public final ColorStateList f76736c;

    public final String f76737d;

    public final int f76738e;

    public final int f76739f;

    public final boolean f76740g;

    public final float f76741h;

    public final float f76742i;

    public final float f76743j;

    public final boolean f76744k;

    public final float f76745l;

    private ColorStateList f76746m;

    private float f76747n;

    private final int f76748o;

    private boolean f76749p = false;

    private Typeface f76750q;

    class a extends y0.h.e {

        final f f76751a;

        a(f fVar) {
            this.f76751a = fVar;
        }

        @Override
        public void f(int i10) {
            d.this.f76749p = true;
            this.f76751a.a(i10);
        }

        @Override
        public void g(Typeface typeface) {
            d dVar = d.this;
            dVar.f76750q = Typeface.create(typeface, dVar.f76738e);
            d.this.f76749p = true;
            this.f76751a.b(d.this.f76750q, false);
        }
    }

    class b extends f {

        final Context f76753a;

        final TextPaint f76754b;

        final f f76755c;

        b(Context context, TextPaint textPaint, f fVar) {
            this.f76753a = context;
            this.f76754b = textPaint;
            this.f76755c = fVar;
        }

        @Override
        public void a(int i10) {
            this.f76755c.a(i10);
        }

        @Override
        public void b(Typeface typeface, boolean z10) {
            d.this.p(this.f76753a, this.f76754b, typeface);
            this.f76755c.b(typeface, z10);
        }
    }

    public d(Context context, int i10) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(i10, R$styleable.TextAppearance);
        l(typedArrayObtainStyledAttributes.getDimension(R$styleable.TextAppearance_android_textSize, 0.0f));
        k(c.a(context, typedArrayObtainStyledAttributes, R$styleable.TextAppearance_android_textColor));
        this.f76734a = c.a(context, typedArrayObtainStyledAttributes, R$styleable.TextAppearance_android_textColorHint);
        this.f76735b = c.a(context, typedArrayObtainStyledAttributes, R$styleable.TextAppearance_android_textColorLink);
        this.f76738e = typedArrayObtainStyledAttributes.getInt(R$styleable.TextAppearance_android_textStyle, 0);
        this.f76739f = typedArrayObtainStyledAttributes.getInt(R$styleable.TextAppearance_android_typeface, 1);
        int iG = c.g(typedArrayObtainStyledAttributes, R$styleable.TextAppearance_fontFamily, R$styleable.TextAppearance_android_fontFamily);
        this.f76748o = typedArrayObtainStyledAttributes.getResourceId(iG, 0);
        this.f76737d = typedArrayObtainStyledAttributes.getString(iG);
        this.f76740g = typedArrayObtainStyledAttributes.getBoolean(R$styleable.TextAppearance_textAllCaps, false);
        this.f76736c = c.a(context, typedArrayObtainStyledAttributes, R$styleable.TextAppearance_android_shadowColor);
        this.f76741h = typedArrayObtainStyledAttributes.getFloat(R$styleable.TextAppearance_android_shadowDx, 0.0f);
        this.f76742i = typedArrayObtainStyledAttributes.getFloat(R$styleable.TextAppearance_android_shadowDy, 0.0f);
        this.f76743j = typedArrayObtainStyledAttributes.getFloat(R$styleable.TextAppearance_android_shadowRadius, 0.0f);
        typedArrayObtainStyledAttributes.recycle();
        TypedArray typedArrayObtainStyledAttributes2 = context.obtainStyledAttributes(i10, R$styleable.MaterialTextAppearance);
        this.f76744k = typedArrayObtainStyledAttributes2.hasValue(R$styleable.MaterialTextAppearance_android_letterSpacing);
        this.f76745l = typedArrayObtainStyledAttributes2.getFloat(R$styleable.MaterialTextAppearance_android_letterSpacing, 0.0f);
        typedArrayObtainStyledAttributes2.recycle();
    }

    private void d() {
        String str;
        if (this.f76750q == null && (str = this.f76737d) != null) {
            this.f76750q = Typeface.create(str, this.f76738e);
        }
        if (this.f76750q == null) {
            int i10 = this.f76739f;
            if (i10 == 1) {
                this.f76750q = Typeface.SANS_SERIF;
            } else if (i10 == 2) {
                this.f76750q = Typeface.SERIF;
            } else if (i10 != 3) {
                this.f76750q = Typeface.DEFAULT;
            } else {
                this.f76750q = Typeface.MONOSPACE;
            }
            this.f76750q = Typeface.create(this.f76750q, this.f76738e);
        }
    }

    private boolean m(Context context) {
        if (e.a()) {
            return true;
        }
        int i10 = this.f76748o;
        return (i10 != 0 ? y0.h.c(context, i10) : null) != null;
    }

    public Typeface e() {
        d();
        return this.f76750q;
    }

    public Typeface f(Context context) {
        if (this.f76749p) {
            return this.f76750q;
        }
        if (!context.isRestricted()) {
            try {
                Typeface typefaceG = y0.h.g(context, this.f76748o);
                this.f76750q = typefaceG;
                if (typefaceG != null) {
                    this.f76750q = Typeface.create(typefaceG, this.f76738e);
                }
            } catch (Resources.NotFoundException | UnsupportedOperationException unused) {
            } catch (Exception unused2) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Error loading font ");
                sb2.append(this.f76737d);
            }
        }
        d();
        this.f76749p = true;
        return this.f76750q;
    }

    public void g(Context context, TextPaint textPaint, f fVar) {
        p(context, textPaint, e());
        h(context, new b(context, textPaint, fVar));
    }

    public void h(Context context, f fVar) {
        if (m(context)) {
            f(context);
        } else {
            d();
        }
        int i10 = this.f76748o;
        if (i10 == 0) {
            this.f76749p = true;
        }
        if (this.f76749p) {
            fVar.b(this.f76750q, true);
            return;
        }
        try {
            y0.h.i(context, i10, new a(fVar), null);
        } catch (Resources.NotFoundException unused) {
            this.f76749p = true;
            fVar.a(1);
        } catch (Exception unused2) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Error loading font ");
            sb2.append(this.f76737d);
            this.f76749p = true;
            fVar.a(-3);
        }
    }

    public ColorStateList i() {
        return this.f76746m;
    }

    public float j() {
        return this.f76747n;
    }

    public void k(ColorStateList colorStateList) {
        this.f76746m = colorStateList;
    }

    public void l(float f10) {
        this.f76747n = f10;
    }

    public void n(Context context, TextPaint textPaint, f fVar) {
        o(context, textPaint, fVar);
        ColorStateList colorStateList = this.f76746m;
        textPaint.setColor(colorStateList != null ? colorStateList.getColorForState(textPaint.drawableState, colorStateList.getDefaultColor()) : ViewCompat.MEASURED_STATE_MASK);
        float f10 = this.f76743j;
        float f11 = this.f76741h;
        float f12 = this.f76742i;
        ColorStateList colorStateList2 = this.f76736c;
        textPaint.setShadowLayer(f10, f11, f12, colorStateList2 != null ? colorStateList2.getColorForState(textPaint.drawableState, colorStateList2.getDefaultColor()) : 0);
    }

    public void o(Context context, TextPaint textPaint, f fVar) {
        if (m(context)) {
            p(context, textPaint, f(context));
        } else {
            g(context, textPaint, fVar);
        }
    }

    public void p(Context context, TextPaint textPaint, Typeface typeface) {
        Typeface typefaceA = h.a(context, typeface);
        if (typefaceA != null) {
            typeface = typefaceA;
        }
        textPaint.setTypeface(typeface);
        int i10 = this.f76738e & (~typeface.getStyle());
        textPaint.setFakeBoldText((i10 & 1) != 0);
        textPaint.setTextSkewX((i10 & 2) != 0 ? -0.25f : 0.0f);
        textPaint.setTextSize(this.f76747n);
        if (this.f76744k) {
            textPaint.setLetterSpacing(this.f76745l);
        }
    }
}
