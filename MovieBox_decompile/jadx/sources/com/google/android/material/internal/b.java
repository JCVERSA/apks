package com.google.android.material.internal;

import android.animation.TimeInterpolator;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.os.Build;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import androidx.core.view.GravityCompat;
import androidx.core.view.ViewCompat;

public final class b {

    private static final boolean f28318t0 = false;

    private static final Paint f28319u0 = null;
    private Typeface A;
    private Typeface B;
    private Typeface C;
    private za.a D;
    private za.a E;
    private CharSequence G;
    private CharSequence H;
    private boolean I;
    private boolean K;
    private Bitmap L;
    private Paint M;
    private float N;
    private float O;
    private float P;
    private float Q;
    private float R;
    private int S;
    private int[] T;
    private boolean U;
    private final TextPaint V;
    private final TextPaint W;
    private TimeInterpolator X;
    private TimeInterpolator Y;
    private float Z;

    private final View f28320a;

    private float f28321a0;

    private float f28322b;

    private float f28323b0;

    private boolean f28324c;

    private ColorStateList f28325c0;

    private float f28326d;

    private float f28327d0;

    private float f28328e;

    private float f28329e0;

    private int f28330f;

    private float f28331f0;

    private final Rect f28332g;

    private ColorStateList f28333g0;

    private final Rect f28334h;

    private float f28335h0;

    private final RectF f28336i;

    private float f28337i0;

    private float f28339j0;

    private StaticLayout f28341k0;

    private float f28343l0;

    private float f28345m0;

    private ColorStateList f28346n;

    private float f28347n0;

    private ColorStateList f28348o;

    private CharSequence f28349o0;

    private int f28350p;

    private float f28352q;

    private float f28354r;

    private float f28356s;

    private float f28358t;

    private float f28359u;

    private float f28360v;

    private Typeface f28361w;

    private Typeface f28362x;

    private Typeface f28363y;

    private Typeface f28364z;

    private int f28338j = 16;

    private int f28340k = 16;

    private float f28342l = 15.0f;

    private float f28344m = 15.0f;
    private TextUtils.TruncateAt F = TextUtils.TruncateAt.END;
    private boolean J = true;

    private int f28351p0 = 1;

    private float f28353q0 = 0.0f;

    private float f28355r0 = 1.0f;

    private int f28357s0 = StaticLayoutBuilderCompat.f28295n;

    class a implements za.a.InterfaceC0956a {
        a() {
        }

        @Override
        public void a(Typeface typeface) {
            b.this.m0(typeface);
        }
    }

    class C0373b implements za.a.InterfaceC0956a {
        C0373b() {
        }

        @Override
        public void a(Typeface typeface) {
            b.this.x0(typeface);
        }
    }

    public b(View view) {
        this.f28320a = view;
        TextPaint textPaint = new TextPaint(129);
        this.V = textPaint;
        this.W = new TextPaint(textPaint);
        this.f28334h = new Rect();
        this.f28332g = new Rect();
        this.f28336i = new RectF();
        this.f28328e = e();
        Z(view.getContext().getResources().getConfiguration());
    }

    private void D0(float f10) {
        h(f10);
        boolean z10 = f28318t0 && this.N != 1.0f;
        this.K = z10;
        if (z10) {
            n();
        }
        ViewCompat.postInvalidateOnAnimation(this.f28320a);
    }

    private Layout.Alignment M() {
        int absoluteGravity = GravityCompat.getAbsoluteGravity(this.f28338j, this.I ? 1 : 0) & 7;
        if (absoluteGravity == 1) {
            return Layout.Alignment.ALIGN_CENTER;
        }
        if (absoluteGravity != 5) {
            return this.I ? Layout.Alignment.ALIGN_OPPOSITE : Layout.Alignment.ALIGN_NORMAL;
        }
        return this.I ? Layout.Alignment.ALIGN_NORMAL : Layout.Alignment.ALIGN_OPPOSITE;
    }

    private void P(TextPaint textPaint) {
        textPaint.setTextSize(this.f28344m);
        textPaint.setTypeface(this.f28361w);
        textPaint.setLetterSpacing(this.f28335h0);
    }

    private boolean P0() {
        return this.f28351p0 > 1 && (!this.I || this.f28324c) && !this.K;
    }

    private void Q(TextPaint textPaint) {
        textPaint.setTextSize(this.f28342l);
        textPaint.setTypeface(this.f28364z);
        textPaint.setLetterSpacing(this.f28337i0);
    }

    private void S(float f10) {
        if (this.f28324c) {
            this.f28336i.set(f10 < this.f28328e ? this.f28332g : this.f28334h);
            return;
        }
        this.f28336i.left = Y(this.f28332g.left, this.f28334h.left, f10, this.X);
        this.f28336i.top = Y(this.f28352q, this.f28354r, f10, this.X);
        this.f28336i.right = Y(this.f28332g.right, this.f28334h.right, f10, this.X);
        this.f28336i.bottom = Y(this.f28332g.bottom, this.f28334h.bottom, f10, this.X);
    }

    private static boolean T(float f10, float f11) {
        return Math.abs(f10 - f11) < 1.0E-5f;
    }

    private boolean U() {
        return ViewCompat.getLayoutDirection(this.f28320a) == 1;
    }

    private boolean X(CharSequence charSequence, boolean z10) {
        return (z10 ? androidx.core.text.t.f7947d : androidx.core.text.t.f7946c).a(charSequence, 0, charSequence.length());
    }

    private static float Y(float f10, float f11, float f12, TimeInterpolator timeInterpolator) {
        if (timeInterpolator != null) {
            f12 = timeInterpolator.getInterpolation(f12);
        }
        return qa.a.a(f10, f11, f12);
    }

    private static int a(int i10, int i11, float f10) {
        float f11 = 1.0f - f10;
        return Color.argb(Math.round((Color.alpha(i10) * f11) + (Color.alpha(i11) * f10)), Math.round((Color.red(i10) * f11) + (Color.red(i11) * f10)), Math.round((Color.green(i10) * f11) + (Color.green(i11) * f10)), Math.round((Color.blue(i10) * f11) + (Color.blue(i11) * f10)));
    }

    private float a0(TextPaint textPaint, CharSequence charSequence) {
        return textPaint.measureText(charSequence, 0, charSequence.length());
    }

    private void b(boolean z10) {
        StaticLayout staticLayout;
        i(1.0f, z10);
        CharSequence charSequence = this.H;
        if (charSequence != null && (staticLayout = this.f28341k0) != null) {
            this.f28349o0 = TextUtils.ellipsize(charSequence, this.V, staticLayout.getWidth(), this.F);
        }
        CharSequence charSequence2 = this.f28349o0;
        float fA0 = 0.0f;
        if (charSequence2 != null) {
            this.f28343l0 = a0(this.V, charSequence2);
        } else {
            this.f28343l0 = 0.0f;
        }
        int absoluteGravity = GravityCompat.getAbsoluteGravity(this.f28340k, this.I ? 1 : 0);
        int i10 = absoluteGravity & 112;
        if (i10 == 48) {
            this.f28354r = this.f28334h.top;
        } else if (i10 != 80) {
            this.f28354r = this.f28334h.centerY() - ((this.V.descent() - this.V.ascent()) / 2.0f);
        } else {
            this.f28354r = this.f28334h.bottom + this.V.ascent();
        }
        int i11 = absoluteGravity & GravityCompat.RELATIVE_HORIZONTAL_GRAVITY_MASK;
        if (i11 == 1) {
            this.f28358t = this.f28334h.centerX() - (this.f28343l0 / 2.0f);
        } else if (i11 != 5) {
            this.f28358t = this.f28334h.left;
        } else {
            this.f28358t = this.f28334h.right - this.f28343l0;
        }
        i(0.0f, z10);
        StaticLayout staticLayout2 = this.f28341k0;
        float height = staticLayout2 != null ? staticLayout2.getHeight() : 0.0f;
        StaticLayout staticLayout3 = this.f28341k0;
        if (staticLayout3 == null || this.f28351p0 <= 1) {
            CharSequence charSequence3 = this.H;
            if (charSequence3 != null) {
                fA0 = a0(this.V, charSequence3);
            }
        } else {
            fA0 = staticLayout3.getWidth();
        }
        StaticLayout staticLayout4 = this.f28341k0;
        this.f28350p = staticLayout4 != null ? staticLayout4.getLineCount() : 0;
        int absoluteGravity2 = GravityCompat.getAbsoluteGravity(this.f28338j, this.I ? 1 : 0);
        int i12 = absoluteGravity2 & 112;
        if (i12 == 48) {
            this.f28352q = this.f28332g.top;
        } else if (i12 != 80) {
            this.f28352q = this.f28332g.centerY() - (height / 2.0f);
        } else {
            this.f28352q = (this.f28332g.bottom - height) + this.V.descent();
        }
        int i13 = absoluteGravity2 & GravityCompat.RELATIVE_HORIZONTAL_GRAVITY_MASK;
        if (i13 == 1) {
            this.f28356s = this.f28332g.centerX() - (fA0 / 2.0f);
        } else if (i13 != 5) {
            this.f28356s = this.f28332g.left;
        } else {
            this.f28356s = this.f28332g.right - fA0;
        }
        j();
        D0(this.f28322b);
    }

    private void c() {
        g(this.f28322b);
    }

    private float d(float f10) {
        float f11 = this.f28328e;
        return f10 <= f11 ? qa.a.b(1.0f, 0.0f, this.f28326d, f11, f10) : qa.a.b(0.0f, 1.0f, f11, 1.0f, f10);
    }

    private static boolean d0(Rect rect, int i10, int i11, int i12, int i13) {
        return rect.left == i10 && rect.top == i11 && rect.right == i12 && rect.bottom == i13;
    }

    private float e() {
        float f10 = this.f28326d;
        return f10 + ((1.0f - f10) * 0.5f);
    }

    private boolean f(CharSequence charSequence) {
        boolean zU = U();
        return this.J ? X(charSequence, zU) : zU;
    }

    private void g(float f10) {
        float f11;
        S(f10);
        if (!this.f28324c) {
            this.f28359u = Y(this.f28356s, this.f28358t, f10, this.X);
            this.f28360v = Y(this.f28352q, this.f28354r, f10, this.X);
            D0(f10);
            f11 = f10;
        } else if (f10 < this.f28328e) {
            this.f28359u = this.f28356s;
            this.f28360v = this.f28352q;
            D0(0.0f);
            f11 = 0.0f;
        } else {
            this.f28359u = this.f28358t;
            this.f28360v = this.f28354r - Math.max(0, this.f28330f);
            D0(1.0f);
            f11 = 1.0f;
        }
        TimeInterpolator timeInterpolator = qa.a.f69578b;
        i0(1.0f - Y(0.0f, 1.0f, 1.0f - f10, timeInterpolator));
        t0(Y(1.0f, 0.0f, f10, timeInterpolator));
        if (this.f28348o != this.f28346n) {
            this.V.setColor(a(y(), w(), f11));
        } else {
            this.V.setColor(w());
        }
        int i10 = Build.VERSION.SDK_INT;
        float f12 = this.f28335h0;
        float f13 = this.f28337i0;
        if (f12 != f13) {
            this.V.setLetterSpacing(Y(f13, f12, f10, timeInterpolator));
        } else {
            this.V.setLetterSpacing(f12);
        }
        this.P = Y(this.f28327d0, this.Z, f10, null);
        this.Q = Y(this.f28329e0, this.f28321a0, f10, null);
        this.R = Y(this.f28331f0, this.f28323b0, f10, null);
        int iA = a(x(this.f28333g0), x(this.f28325c0), f10);
        this.S = iA;
        this.V.setShadowLayer(this.P, this.Q, this.R, iA);
        if (this.f28324c) {
            this.V.setAlpha((int) (d(f10) * this.V.getAlpha()));
            if (i10 >= 31) {
                TextPaint textPaint = this.V;
                textPaint.setShadowLayer(this.P, this.Q, this.R, com.google.android.material.color.b.a(this.S, textPaint.getAlpha()));
            }
        }
        ViewCompat.postInvalidateOnAnimation(this.f28320a);
    }

    private void h(float f10) {
        i(f10, false);
    }

    private void i(float f10, boolean z10) {
        float f11;
        float f12;
        Typeface typeface;
        if (this.G == null) {
            return;
        }
        float fWidth = this.f28334h.width();
        float fWidth2 = this.f28332g.width();
        if (T(f10, 1.0f)) {
            f11 = this.f28344m;
            f12 = this.f28335h0;
            this.N = 1.0f;
            typeface = this.f28361w;
        } else {
            float f13 = this.f28342l;
            float f14 = this.f28337i0;
            Typeface typeface2 = this.f28364z;
            if (T(f10, 0.0f)) {
                this.N = 1.0f;
            } else {
                this.N = Y(this.f28342l, this.f28344m, f10, this.Y) / this.f28342l;
            }
            float f15 = this.f28344m / this.f28342l;
            fWidth = (z10 || this.f28324c || fWidth2 * f15 <= fWidth) ? fWidth2 : Math.min(fWidth / f15, fWidth2);
            f11 = f13;
            f12 = f14;
            typeface = typeface2;
        }
        boolean z11 = false;
        if (fWidth > 0.0f) {
            boolean z12 = this.O != f11;
            boolean z13 = this.f28339j0 != f12;
            boolean z14 = this.C != typeface;
            StaticLayout staticLayout = this.f28341k0;
            boolean z15 = z12 || z13 || (staticLayout != null && (fWidth > ((float) staticLayout.getWidth()) ? 1 : (fWidth == ((float) staticLayout.getWidth()) ? 0 : -1)) != 0) || z14 || this.U;
            this.O = f11;
            this.f28339j0 = f12;
            this.C = typeface;
            this.U = false;
            this.V.setLinearText(this.N != 1.0f);
            z11 = z15;
        }
        if (this.H == null || z11) {
            this.V.setTextSize(this.O);
            this.V.setTypeface(this.C);
            this.V.setLetterSpacing(this.f28339j0);
            this.I = f(this.G);
            StaticLayout staticLayoutK = k(P0() ? this.f28351p0 : 1, fWidth, this.I);
            this.f28341k0 = staticLayoutK;
            this.H = staticLayoutK.getText();
        }
    }

    private void i0(float f10) {
        this.f28345m0 = f10;
        ViewCompat.postInvalidateOnAnimation(this.f28320a);
    }

    private void j() {
        Bitmap bitmap = this.L;
        if (bitmap != null) {
            bitmap.recycle();
            this.L = null;
        }
    }

    private StaticLayout k(int i10, float f10, boolean z10) {
        StaticLayout staticLayoutA = null;
        try {
            staticLayoutA = StaticLayoutBuilderCompat.b(this.G, this.V, (int) f10).d(this.F).g(z10).c(i10 == 1 ? Layout.Alignment.ALIGN_NORMAL : M()).f(false).i(i10).h(this.f28353q0, this.f28355r0).e(this.f28357s0).j(null).a();
        } catch (StaticLayoutBuilderCompat.StaticLayoutBuilderCompatException e10) {
            Log.e("CollapsingTextHelper", e10.getCause().getMessage(), e10);
        }
        return (StaticLayout) androidx.core.util.i.g(staticLayoutA);
    }

    private void m(Canvas canvas, float f10, float f11) {
        int alpha = this.V.getAlpha();
        canvas.translate(f10, f11);
        if (!this.f28324c) {
            this.V.setAlpha((int) (this.f28347n0 * alpha));
            if (Build.VERSION.SDK_INT >= 31) {
                TextPaint textPaint = this.V;
                textPaint.setShadowLayer(this.P, this.Q, this.R, com.google.android.material.color.b.a(this.S, textPaint.getAlpha()));
            }
            this.f28341k0.draw(canvas);
        }
        if (!this.f28324c) {
            this.V.setAlpha((int) (this.f28345m0 * alpha));
        }
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 31) {
            TextPaint textPaint2 = this.V;
            textPaint2.setShadowLayer(this.P, this.Q, this.R, com.google.android.material.color.b.a(this.S, textPaint2.getAlpha()));
        }
        int lineBaseline = this.f28341k0.getLineBaseline(0);
        CharSequence charSequence = this.f28349o0;
        float f12 = lineBaseline;
        canvas.drawText(charSequence, 0, charSequence.length(), 0.0f, f12, this.V);
        if (i10 >= 31) {
            this.V.setShadowLayer(this.P, this.Q, this.R, this.S);
        }
        if (this.f28324c) {
            return;
        }
        String strTrim = this.f28349o0.toString().trim();
        if (strTrim.endsWith("…")) {
            strTrim = strTrim.substring(0, strTrim.length() - 1);
        }
        String str = strTrim;
        this.V.setAlpha(alpha);
        canvas.drawText(str, 0, Math.min(this.f28341k0.getLineEnd(0), str.length()), 0.0f, f12, (Paint) this.V);
    }

    private void n() {
        if (this.L != null || this.f28332g.isEmpty() || TextUtils.isEmpty(this.H)) {
            return;
        }
        g(0.0f);
        int width = this.f28341k0.getWidth();
        int height = this.f28341k0.getHeight();
        if (width <= 0 || height <= 0) {
            return;
        }
        this.L = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888);
        this.f28341k0.draw(new Canvas(this.L));
        if (this.M == null) {
            this.M = new Paint(3);
        }
    }

    private boolean n0(Typeface typeface) {
        za.a aVar = this.E;
        if (aVar != null) {
            aVar.c();
        }
        if (this.f28363y == typeface) {
            return false;
        }
        this.f28363y = typeface;
        Typeface typefaceB = za.h.b(this.f28320a.getContext().getResources().getConfiguration(), typeface);
        this.f28362x = typefaceB;
        if (typefaceB == null) {
            typefaceB = this.f28363y;
        }
        this.f28361w = typefaceB;
        return true;
    }

    private float s(int i10, int i11) {
        if (i11 == 17 || (i11 & 7) == 1) {
            return (i10 / 2.0f) - (this.f28343l0 / 2.0f);
        }
        if ((i11 & GravityCompat.END) == 8388613 || (i11 & 5) == 5) {
            return this.I ? this.f28334h.left : this.f28334h.right - this.f28343l0;
        }
        return this.I ? this.f28334h.right - this.f28343l0 : this.f28334h.left;
    }

    private float t(RectF rectF, int i10, int i11) {
        if (i11 == 17 || (i11 & 7) == 1) {
            return (i10 / 2.0f) + (this.f28343l0 / 2.0f);
        }
        if ((i11 & GravityCompat.END) == 8388613 || (i11 & 5) == 5) {
            return this.I ? rectF.left + this.f28343l0 : this.f28334h.right;
        }
        return this.I ? this.f28334h.right : rectF.left + this.f28343l0;
    }

    private void t0(float f10) {
        this.f28347n0 = f10;
        ViewCompat.postInvalidateOnAnimation(this.f28320a);
    }

    private int x(ColorStateList colorStateList) {
        if (colorStateList == null) {
            return 0;
        }
        int[] iArr = this.T;
        return iArr != null ? colorStateList.getColorForState(iArr, 0) : colorStateList.getDefaultColor();
    }

    private int y() {
        return x(this.f28346n);
    }

    private boolean y0(Typeface typeface) {
        za.a aVar = this.D;
        if (aVar != null) {
            aVar.c();
        }
        if (this.B == typeface) {
            return false;
        }
        this.B = typeface;
        Typeface typefaceB = za.h.b(this.f28320a.getContext().getResources().getConfiguration(), typeface);
        this.A = typefaceB;
        if (typefaceB == null) {
            typefaceB = this.B;
        }
        this.f28364z = typefaceB;
        return true;
    }

    public float A() {
        Q(this.W);
        return (-this.W.ascent()) + this.W.descent();
    }

    public void A0(boolean z10) {
        this.f28324c = z10;
    }

    public int B() {
        return this.f28338j;
    }

    public void B0(float f10) {
        this.f28326d = f10;
        this.f28328e = e();
    }

    public float C() {
        Q(this.W);
        return -this.W.ascent();
    }

    public void C0(int i10) {
        this.f28357s0 = i10;
    }

    public float D() {
        return this.f28342l;
    }

    public Typeface E() {
        Typeface typeface = this.f28364z;
        return typeface != null ? typeface : Typeface.DEFAULT;
    }

    public void E0(float f10) {
        this.f28353q0 = f10;
    }

    public float F() {
        return this.f28322b;
    }

    public void F0(float f10) {
        this.f28355r0 = f10;
    }

    public float G() {
        return this.f28328e;
    }

    public void G0(int i10) {
        if (i10 != this.f28351p0) {
            this.f28351p0 = i10;
            j();
            b0();
        }
    }

    public int H() {
        return this.f28357s0;
    }

    public void H0(TimeInterpolator timeInterpolator) {
        this.X = timeInterpolator;
        b0();
    }

    public int I() {
        StaticLayout staticLayout = this.f28341k0;
        if (staticLayout != null) {
            return staticLayout.getLineCount();
        }
        return 0;
    }

    public void I0(boolean z10) {
        this.J = z10;
    }

    public float J() {
        return this.f28341k0.getSpacingAdd();
    }

    public final boolean J0(int[] iArr) {
        this.T = iArr;
        if (!W()) {
            return false;
        }
        b0();
        return true;
    }

    public float K() {
        return this.f28341k0.getSpacingMultiplier();
    }

    public void K0(x xVar) {
        if (xVar != null) {
            c0(true);
        }
    }

    public int L() {
        return this.f28351p0;
    }

    public void L0(CharSequence charSequence) {
        if (charSequence == null || !TextUtils.equals(this.G, charSequence)) {
            this.G = charSequence;
            this.H = null;
            j();
            b0();
        }
    }

    public void M0(TimeInterpolator timeInterpolator) {
        this.Y = timeInterpolator;
        b0();
    }

    public TimeInterpolator N() {
        return this.X;
    }

    public void N0(TextUtils.TruncateAt truncateAt) {
        this.F = truncateAt;
        b0();
    }

    public CharSequence O() {
        return this.G;
    }

    public void O0(Typeface typeface) {
        boolean zN0 = n0(typeface);
        boolean zY0 = y0(typeface);
        if (zN0 || zY0) {
            b0();
        }
    }

    public TextUtils.TruncateAt R() {
        return this.F;
    }

    public boolean V() {
        return this.J;
    }

    public final boolean W() {
        ColorStateList colorStateList;
        ColorStateList colorStateList2 = this.f28348o;
        return (colorStateList2 != null && colorStateList2.isStateful()) || ((colorStateList = this.f28346n) != null && colorStateList.isStateful());
    }

    public void Z(Configuration configuration) {
        if (Build.VERSION.SDK_INT >= 31) {
            Typeface typeface = this.f28363y;
            if (typeface != null) {
                this.f28362x = za.h.b(configuration, typeface);
            }
            Typeface typeface2 = this.B;
            if (typeface2 != null) {
                this.A = za.h.b(configuration, typeface2);
            }
            Typeface typeface3 = this.f28362x;
            if (typeface3 == null) {
                typeface3 = this.f28363y;
            }
            this.f28361w = typeface3;
            Typeface typeface4 = this.A;
            if (typeface4 == null) {
                typeface4 = this.B;
            }
            this.f28364z = typeface4;
            c0(true);
        }
    }

    public void b0() {
        c0(false);
    }

    public void c0(boolean z10) {
        if ((this.f28320a.getHeight() <= 0 || this.f28320a.getWidth() <= 0) && !z10) {
            return;
        }
        b(z10);
        c();
    }

    public void e0(ColorStateList colorStateList) {
        if (this.f28348o == colorStateList && this.f28346n == colorStateList) {
            return;
        }
        this.f28348o = colorStateList;
        this.f28346n = colorStateList;
        b0();
    }

    public void f0(int i10, int i11, int i12, int i13) {
        if (d0(this.f28334h, i10, i11, i12, i13)) {
            return;
        }
        this.f28334h.set(i10, i11, i12, i13);
        this.U = true;
    }

    public void g0(Rect rect) {
        f0(rect.left, rect.top, rect.right, rect.bottom);
    }

    public void h0(int i10) {
        za.d dVar = new za.d(this.f28320a.getContext(), i10);
        if (dVar.i() != null) {
            this.f28348o = dVar.i();
        }
        if (dVar.j() != 0.0f) {
            this.f28344m = dVar.j();
        }
        ColorStateList colorStateList = dVar.f76736c;
        if (colorStateList != null) {
            this.f28325c0 = colorStateList;
        }
        this.f28321a0 = dVar.f76741h;
        this.f28323b0 = dVar.f76742i;
        this.Z = dVar.f76743j;
        this.f28335h0 = dVar.f76745l;
        za.a aVar = this.E;
        if (aVar != null) {
            aVar.c();
        }
        this.E = new za.a(new a(), dVar.e());
        dVar.h(this.f28320a.getContext(), this.E);
        b0();
    }

    public void j0(ColorStateList colorStateList) {
        if (this.f28348o != colorStateList) {
            this.f28348o = colorStateList;
            b0();
        }
    }

    public void k0(int i10) {
        if (this.f28340k != i10) {
            this.f28340k = i10;
            b0();
        }
    }

    public void l(Canvas canvas) {
        int iSave = canvas.save();
        if (this.H == null || this.f28336i.width() <= 0.0f || this.f28336i.height() <= 0.0f) {
            return;
        }
        this.V.setTextSize(this.O);
        float f10 = this.f28359u;
        float f11 = this.f28360v;
        boolean z10 = this.K && this.L != null;
        float f12 = this.N;
        if (f12 != 1.0f && !this.f28324c) {
            canvas.scale(f12, f12, f10, f11);
        }
        if (z10) {
            canvas.drawBitmap(this.L, f10, f11, this.M);
            canvas.restoreToCount(iSave);
            return;
        }
        if (!P0() || (this.f28324c && this.f28322b <= this.f28328e)) {
            canvas.translate(f10, f11);
            this.f28341k0.draw(canvas);
        } else {
            m(canvas, this.f28359u - this.f28341k0.getLineStart(0), f11);
        }
        canvas.restoreToCount(iSave);
    }

    public void l0(float f10) {
        if (this.f28344m != f10) {
            this.f28344m = f10;
            b0();
        }
    }

    public void m0(Typeface typeface) {
        if (n0(typeface)) {
            b0();
        }
    }

    public void o(RectF rectF, int i10, int i11) {
        this.I = f(this.G);
        rectF.left = Math.max(s(i10, i11), this.f28334h.left);
        rectF.top = this.f28334h.top;
        rectF.right = Math.min(t(rectF, i10, i11), this.f28334h.right);
        rectF.bottom = this.f28334h.top + r();
    }

    public void o0(int i10) {
        this.f28330f = i10;
    }

    public ColorStateList p() {
        return this.f28348o;
    }

    public void p0(int i10, int i11, int i12, int i13) {
        if (d0(this.f28332g, i10, i11, i12, i13)) {
            return;
        }
        this.f28332g.set(i10, i11, i12, i13);
        this.U = true;
    }

    public int q() {
        return this.f28340k;
    }

    public void q0(Rect rect) {
        p0(rect.left, rect.top, rect.right, rect.bottom);
    }

    public float r() {
        P(this.W);
        return -this.W.ascent();
    }

    public void r0(float f10) {
        if (this.f28337i0 != f10) {
            this.f28337i0 = f10;
            b0();
        }
    }

    public void s0(int i10) {
        za.d dVar = new za.d(this.f28320a.getContext(), i10);
        if (dVar.i() != null) {
            this.f28346n = dVar.i();
        }
        if (dVar.j() != 0.0f) {
            this.f28342l = dVar.j();
        }
        ColorStateList colorStateList = dVar.f76736c;
        if (colorStateList != null) {
            this.f28333g0 = colorStateList;
        }
        this.f28329e0 = dVar.f76741h;
        this.f28331f0 = dVar.f76742i;
        this.f28327d0 = dVar.f76743j;
        this.f28337i0 = dVar.f76745l;
        za.a aVar = this.D;
        if (aVar != null) {
            aVar.c();
        }
        this.D = new za.a(new C0373b(), dVar.e());
        dVar.h(this.f28320a.getContext(), this.D);
        b0();
    }

    public float u() {
        return this.f28344m;
    }

    public void u0(ColorStateList colorStateList) {
        if (this.f28346n != colorStateList) {
            this.f28346n = colorStateList;
            b0();
        }
    }

    public Typeface v() {
        Typeface typeface = this.f28361w;
        return typeface != null ? typeface : Typeface.DEFAULT;
    }

    public void v0(int i10) {
        if (this.f28338j != i10) {
            this.f28338j = i10;
            b0();
        }
    }

    public int w() {
        return x(this.f28348o);
    }

    public void w0(float f10) {
        if (this.f28342l != f10) {
            this.f28342l = f10;
            b0();
        }
    }

    public void x0(Typeface typeface) {
        if (y0(typeface)) {
            b0();
        }
    }

    public int z() {
        return this.f28350p;
    }

    public void z0(float f10) {
        float fA = d1.a.a(f10, 0.0f, 1.0f);
        if (fA != this.f28322b) {
            this.f28322b = fA;
            c();
        }
    }
}
