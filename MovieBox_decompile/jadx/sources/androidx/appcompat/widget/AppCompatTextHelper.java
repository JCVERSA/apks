package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.LocaleList;
import android.text.method.PasswordTransformationMethod;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.TextView;
import androidx.appcompat.R$styleable;
import androidx.core.view.ViewCompat;
import androidx.core.view.inputmethod.EditorInfoCompat;
import java.lang.ref.WeakReference;
import java.util.Locale;

class AppCompatTextHelper {

    private final TextView f1408a;

    private h0 f1409b;

    private h0 f1410c;

    private h0 f1411d;

    private h0 f1412e;

    private h0 f1413f;

    private h0 f1414g;

    private h0 f1415h;

    private final p f1416i;

    private int f1417j = 0;

    private int f1418k = -1;

    private Typeface f1419l;

    private boolean f1420m;

    static class b {
        static Locale a(String str) {
            return Locale.forLanguageTag(str);
        }
    }

    static class c {
        static LocaleList a(String str) {
            return LocaleList.forLanguageTags(str);
        }

        static void b(TextView textView, LocaleList localeList) {
            textView.setTextLocales(localeList);
        }
    }

    static class d {
        static int a(TextView textView) {
            return textView.getAutoSizeStepGranularity();
        }

        static void b(TextView textView, int i10, int i11, int i12, int i13) {
            textView.setAutoSizeTextTypeUniformWithConfiguration(i10, i11, i12, i13);
        }

        static void c(TextView textView, int[] iArr, int i10) {
            textView.setAutoSizeTextTypeUniformWithPresetSizes(iArr, i10);
        }

        static boolean d(TextView textView, String str) {
            return textView.setFontVariationSettings(str);
        }
    }

    static class e {
        static Typeface a(Typeface typeface, int i10, boolean z10) {
            return Typeface.create(typeface, i10, z10);
        }
    }

    AppCompatTextHelper(TextView textView) {
        this.f1408a = textView;
        this.f1416i = new p(textView);
    }

    private void B(int i10, float f10) {
        this.f1416i.t(i10, f10);
    }

    private void C(Context context, j0 j0Var) {
        String strO;
        this.f1417j = j0Var.k(R$styleable.TextAppearance_android_textStyle, this.f1417j);
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 28) {
            int iK = j0Var.k(R$styleable.TextAppearance_android_textFontWeight, -1);
            this.f1418k = iK;
            if (iK != -1) {
                this.f1417j &= 2;
            }
        }
        if (!j0Var.s(R$styleable.TextAppearance_android_fontFamily) && !j0Var.s(R$styleable.TextAppearance_fontFamily)) {
            if (j0Var.s(R$styleable.TextAppearance_android_typeface)) {
                this.f1420m = false;
                int iK2 = j0Var.k(R$styleable.TextAppearance_android_typeface, 1);
                if (iK2 == 1) {
                    this.f1419l = Typeface.SANS_SERIF;
                    return;
                } else if (iK2 == 2) {
                    this.f1419l = Typeface.SERIF;
                    return;
                } else {
                    if (iK2 != 3) {
                        return;
                    }
                    this.f1419l = Typeface.MONOSPACE;
                    return;
                }
            }
            return;
        }
        this.f1419l = null;
        int i11 = j0Var.s(R$styleable.TextAppearance_fontFamily) ? R$styleable.TextAppearance_fontFamily : R$styleable.TextAppearance_android_fontFamily;
        int i12 = this.f1418k;
        int i13 = this.f1417j;
        if (!context.isRestricted()) {
            try {
                Typeface typefaceJ = j0Var.j(i11, this.f1417j, new a(i12, i13, new WeakReference(this.f1408a)));
                if (typefaceJ != null) {
                    if (i10 < 28 || this.f1418k == -1) {
                        this.f1419l = typefaceJ;
                    } else {
                        this.f1419l = e.a(Typeface.create(typefaceJ, 0), this.f1418k, (this.f1417j & 2) != 0);
                    }
                }
                this.f1420m = this.f1419l == null;
            } catch (Resources.NotFoundException | UnsupportedOperationException unused) {
            }
        }
        if (this.f1419l != null || (strO = j0Var.o(i11)) == null) {
            return;
        }
        if (Build.VERSION.SDK_INT < 28 || this.f1418k == -1) {
            this.f1419l = Typeface.create(strO, this.f1417j);
        } else {
            this.f1419l = e.a(Typeface.create(strO, 0), this.f1418k, (this.f1417j & 2) != 0);
        }
    }

    private void a(Drawable drawable, h0 h0Var) {
        if (drawable == null || h0Var == null) {
            return;
        }
        f.i(drawable, h0Var, this.f1408a.getDrawableState());
    }

    private static h0 d(Context context, f fVar, int i10) {
        ColorStateList colorStateListF = fVar.f(context, i10);
        if (colorStateListF == null) {
            return null;
        }
        h0 h0Var = new h0();
        h0Var.f1728d = true;
        h0Var.f1725a = colorStateListF;
        return h0Var;
    }

    private void y(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4, Drawable drawable5, Drawable drawable6) {
        if (drawable5 != null || drawable6 != null) {
            Drawable[] compoundDrawablesRelative = this.f1408a.getCompoundDrawablesRelative();
            if (drawable5 == null) {
                drawable5 = compoundDrawablesRelative[0];
            }
            if (drawable2 == null) {
                drawable2 = compoundDrawablesRelative[1];
            }
            if (drawable6 == null) {
                drawable6 = compoundDrawablesRelative[2];
            }
            TextView textView = this.f1408a;
            if (drawable4 == null) {
                drawable4 = compoundDrawablesRelative[3];
            }
            textView.setCompoundDrawablesRelativeWithIntrinsicBounds(drawable5, drawable2, drawable6, drawable4);
            return;
        }
        if (drawable == null && drawable2 == null && drawable3 == null && drawable4 == null) {
            return;
        }
        Drawable[] compoundDrawablesRelative2 = this.f1408a.getCompoundDrawablesRelative();
        Drawable drawable7 = compoundDrawablesRelative2[0];
        if (drawable7 != null || compoundDrawablesRelative2[2] != null) {
            if (drawable2 == null) {
                drawable2 = compoundDrawablesRelative2[1];
            }
            if (drawable4 == null) {
                drawable4 = compoundDrawablesRelative2[3];
            }
            this.f1408a.setCompoundDrawablesRelativeWithIntrinsicBounds(drawable7, drawable2, compoundDrawablesRelative2[2], drawable4);
            return;
        }
        Drawable[] compoundDrawables = this.f1408a.getCompoundDrawables();
        TextView textView2 = this.f1408a;
        if (drawable == null) {
            drawable = compoundDrawables[0];
        }
        if (drawable2 == null) {
            drawable2 = compoundDrawables[1];
        }
        if (drawable3 == null) {
            drawable3 = compoundDrawables[2];
        }
        if (drawable4 == null) {
            drawable4 = compoundDrawables[3];
        }
        textView2.setCompoundDrawablesWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
    }

    private void z() {
        h0 h0Var = this.f1415h;
        this.f1409b = h0Var;
        this.f1410c = h0Var;
        this.f1411d = h0Var;
        this.f1412e = h0Var;
        this.f1413f = h0Var;
        this.f1414g = h0Var;
    }

    void A(int i10, float f10) {
        if (u0.f1814c || l()) {
            return;
        }
        B(i10, f10);
    }

    void b() {
        if (this.f1409b != null || this.f1410c != null || this.f1411d != null || this.f1412e != null) {
            Drawable[] compoundDrawables = this.f1408a.getCompoundDrawables();
            a(compoundDrawables[0], this.f1409b);
            a(compoundDrawables[1], this.f1410c);
            a(compoundDrawables[2], this.f1411d);
            a(compoundDrawables[3], this.f1412e);
        }
        if (this.f1413f == null && this.f1414g == null) {
            return;
        }
        Drawable[] compoundDrawablesRelative = this.f1408a.getCompoundDrawablesRelative();
        a(compoundDrawablesRelative[0], this.f1413f);
        a(compoundDrawablesRelative[2], this.f1414g);
    }

    void c() {
        this.f1416i.a();
    }

    int e() {
        return this.f1416i.f();
    }

    int f() {
        return this.f1416i.g();
    }

    int g() {
        return this.f1416i.h();
    }

    int[] h() {
        return this.f1416i.i();
    }

    int i() {
        return this.f1416i.j();
    }

    ColorStateList j() {
        h0 h0Var = this.f1415h;
        if (h0Var != null) {
            return h0Var.f1725a;
        }
        return null;
    }

    PorterDuff.Mode k() {
        h0 h0Var = this.f1415h;
        if (h0Var != null) {
            return h0Var.f1726b;
        }
        return null;
    }

    boolean l() {
        return this.f1416i.n();
    }

    /* JADX WARN: Code duplicated, block: B:128:0x02b1  */
    /* JADX WARN: Code duplicated, block: B:130:0x02b8  */
    /* JADX WARN: Code duplicated, block: B:133:0x02c1 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:134:0x02c3  */
    /* JADX WARN: Code duplicated, block: B:135:0x02ca  */
    /* JADX WARN: Code duplicated, block: B:137:? A[RETURN, SYNTHETIC] */
    void m(AttributeSet attributeSet, int i10) {
        boolean zA;
        boolean z10;
        String strO;
        String strO2;
        boolean z11;
        float f10;
        int iA;
        Context context = this.f1408a.getContext();
        f fVarB = f.b();
        j0 j0VarV = j0.v(context, attributeSet, R$styleable.AppCompatTextHelper, i10, 0);
        TextView textView = this.f1408a;
        ViewCompat.saveAttributeDataForStyleable(textView, textView.getContext(), R$styleable.AppCompatTextHelper, attributeSet, j0VarV.r(), i10, 0);
        int iN = j0VarV.n(R$styleable.AppCompatTextHelper_android_textAppearance, -1);
        if (j0VarV.s(R$styleable.AppCompatTextHelper_android_drawableLeft)) {
            this.f1409b = d(context, fVarB, j0VarV.n(R$styleable.AppCompatTextHelper_android_drawableLeft, 0));
        }
        if (j0VarV.s(R$styleable.AppCompatTextHelper_android_drawableTop)) {
            this.f1410c = d(context, fVarB, j0VarV.n(R$styleable.AppCompatTextHelper_android_drawableTop, 0));
        }
        if (j0VarV.s(R$styleable.AppCompatTextHelper_android_drawableRight)) {
            this.f1411d = d(context, fVarB, j0VarV.n(R$styleable.AppCompatTextHelper_android_drawableRight, 0));
        }
        if (j0VarV.s(R$styleable.AppCompatTextHelper_android_drawableBottom)) {
            this.f1412e = d(context, fVarB, j0VarV.n(R$styleable.AppCompatTextHelper_android_drawableBottom, 0));
        }
        if (j0VarV.s(R$styleable.AppCompatTextHelper_android_drawableStart)) {
            this.f1413f = d(context, fVarB, j0VarV.n(R$styleable.AppCompatTextHelper_android_drawableStart, 0));
        }
        if (j0VarV.s(R$styleable.AppCompatTextHelper_android_drawableEnd)) {
            this.f1414g = d(context, fVarB, j0VarV.n(R$styleable.AppCompatTextHelper_android_drawableEnd, 0));
        }
        j0VarV.x();
        boolean z12 = this.f1408a.getTransformationMethod() instanceof PasswordTransformationMethod;
        if (iN != -1) {
            j0 j0VarT = j0.t(context, iN, R$styleable.TextAppearance);
            if (z12 || !j0VarT.s(R$styleable.TextAppearance_textAllCaps)) {
                zA = false;
                z10 = false;
            } else {
                zA = j0VarT.a(R$styleable.TextAppearance_textAllCaps, false);
                z10 = true;
            }
            C(context, j0VarT);
            int i11 = Build.VERSION.SDK_INT;
            strO2 = j0VarT.s(R$styleable.TextAppearance_textLocale) ? j0VarT.o(R$styleable.TextAppearance_textLocale) : null;
            strO = (i11 < 26 || !j0VarT.s(R$styleable.TextAppearance_fontVariationSettings)) ? null : j0VarT.o(R$styleable.TextAppearance_fontVariationSettings);
            j0VarT.x();
        } else {
            zA = false;
            z10 = false;
            strO = null;
            strO2 = null;
        }
        j0 j0VarV2 = j0.v(context, attributeSet, R$styleable.TextAppearance, i10, 0);
        if (z12 || !j0VarV2.s(R$styleable.TextAppearance_textAllCaps)) {
            z11 = z10;
        } else {
            zA = j0VarV2.a(R$styleable.TextAppearance_textAllCaps, false);
            z11 = true;
        }
        int i12 = Build.VERSION.SDK_INT;
        if (j0VarV2.s(R$styleable.TextAppearance_textLocale)) {
            strO2 = j0VarV2.o(R$styleable.TextAppearance_textLocale);
        }
        if (i12 >= 26 && j0VarV2.s(R$styleable.TextAppearance_fontVariationSettings)) {
            strO = j0VarV2.o(R$styleable.TextAppearance_fontVariationSettings);
        }
        if (i12 >= 28 && j0VarV2.s(R$styleable.TextAppearance_android_textSize) && j0VarV2.f(R$styleable.TextAppearance_android_textSize, -1) == 0) {
            this.f1408a.setTextSize(0, 0.0f);
        }
        C(context, j0VarV2);
        j0VarV2.x();
        if (!z12 && z11) {
            s(zA);
        }
        Typeface typeface = this.f1419l;
        if (typeface != null) {
            if (this.f1418k == -1) {
                this.f1408a.setTypeface(typeface, this.f1417j);
            } else {
                this.f1408a.setTypeface(typeface);
            }
        }
        if (strO != null) {
            d.d(this.f1408a, strO);
        }
        if (strO2 != null) {
            if (i12 >= 24) {
                c.b(this.f1408a, c.a(strO2));
            } else {
                this.f1408a.setTextLocale(b.a(strO2.split(",")[0]));
            }
        }
        this.f1416i.o(attributeSet, i10);
        if (u0.f1814c && this.f1416i.j() != 0) {
            int[] iArrI = this.f1416i.i();
            if (iArrI.length > 0) {
                if (d.a(this.f1408a) != -1.0f) {
                    d.b(this.f1408a, this.f1416i.g(), this.f1416i.f(), this.f1416i.h(), 0);
                } else {
                    d.c(this.f1408a, iArrI, 0);
                }
            }
        }
        j0 j0VarU = j0.u(context, attributeSet, R$styleable.AppCompatTextView);
        int iN2 = j0VarU.n(R$styleable.AppCompatTextView_drawableLeftCompat, -1);
        Drawable drawableC = iN2 != -1 ? fVarB.c(context, iN2) : null;
        int iN3 = j0VarU.n(R$styleable.AppCompatTextView_drawableTopCompat, -1);
        Drawable drawableC2 = iN3 != -1 ? fVarB.c(context, iN3) : null;
        int iN4 = j0VarU.n(R$styleable.AppCompatTextView_drawableRightCompat, -1);
        Drawable drawableC3 = iN4 != -1 ? fVarB.c(context, iN4) : null;
        int iN5 = j0VarU.n(R$styleable.AppCompatTextView_drawableBottomCompat, -1);
        Drawable drawableC4 = iN5 != -1 ? fVarB.c(context, iN5) : null;
        int iN6 = j0VarU.n(R$styleable.AppCompatTextView_drawableStartCompat, -1);
        Drawable drawableC5 = iN6 != -1 ? fVarB.c(context, iN6) : null;
        int iN7 = j0VarU.n(R$styleable.AppCompatTextView_drawableEndCompat, -1);
        y(drawableC, drawableC2, drawableC3, drawableC4, drawableC5, iN7 != -1 ? fVarB.c(context, iN7) : null);
        if (j0VarU.s(R$styleable.AppCompatTextView_drawableTint)) {
            androidx.core.widget.l.h(this.f1408a, j0VarU.c(R$styleable.AppCompatTextView_drawableTint));
        }
        if (j0VarU.s(R$styleable.AppCompatTextView_drawableTintMode)) {
            androidx.core.widget.l.i(this.f1408a, y.e(j0VarU.k(R$styleable.AppCompatTextView_drawableTintMode, -1), null));
        }
        int iF = j0VarU.f(R$styleable.AppCompatTextView_firstBaselineToTopHeight, -1);
        int iF2 = j0VarU.f(R$styleable.AppCompatTextView_lastBaselineToBottomHeight, -1);
        if (j0VarU.s(R$styleable.AppCompatTextView_lineHeight)) {
            TypedValue typedValueW = j0VarU.w(R$styleable.AppCompatTextView_lineHeight);
            if (typedValueW == null || typedValueW.type != 5) {
                f10 = j0VarU.f(R$styleable.AppCompatTextView_lineHeight, -1);
            } else {
                iA = androidx.core.util.n.a(typedValueW.data);
                f10 = TypedValue.complexToFloat(typedValueW.data);
            }
            j0VarU.x();
            if (iF != -1) {
                androidx.core.widget.l.k(this.f1408a, iF);
            }
            if (iF2 != -1) {
                androidx.core.widget.l.l(this.f1408a, iF2);
            }
            if (f10 != -1.0f) {
                if (iA == -1) {
                    androidx.core.widget.l.m(this.f1408a, (int) f10);
                } else {
                    androidx.core.widget.l.n(this.f1408a, iA, f10);
                }
            }
        }
        f10 = -1.0f;
        iA = -1;
        j0VarU.x();
        if (iF != -1) {
            androidx.core.widget.l.k(this.f1408a, iF);
        }
        if (iF2 != -1) {
            androidx.core.widget.l.l(this.f1408a, iF2);
        }
        if (f10 != -1.0f) {
            if (iA == -1) {
                androidx.core.widget.l.m(this.f1408a, (int) f10);
            } else {
                androidx.core.widget.l.n(this.f1408a, iA, f10);
            }
        }
    }

    void n(WeakReference weakReference, final Typeface typeface) {
        if (this.f1420m) {
            this.f1419l = typeface;
            final TextView textView = (TextView) weakReference.get();
            if (textView != null) {
                if (!textView.isAttachedToWindow()) {
                    textView.setTypeface(typeface, this.f1417j);
                } else {
                    final int i10 = this.f1417j;
                    textView.post(new Runnable() {
                        @Override
                        public void run() {
                            textView.setTypeface(typeface, i10);
                        }
                    });
                }
            }
        }
    }

    void o(boolean z10, int i10, int i11, int i12, int i13) {
        if (u0.f1814c) {
            return;
        }
        c();
    }

    void p() {
        b();
    }

    void q(Context context, int i10) {
        String strO;
        j0 j0VarT = j0.t(context, i10, R$styleable.TextAppearance);
        if (j0VarT.s(R$styleable.TextAppearance_textAllCaps)) {
            s(j0VarT.a(R$styleable.TextAppearance_textAllCaps, false));
        }
        int i11 = Build.VERSION.SDK_INT;
        if (j0VarT.s(R$styleable.TextAppearance_android_textSize) && j0VarT.f(R$styleable.TextAppearance_android_textSize, -1) == 0) {
            this.f1408a.setTextSize(0, 0.0f);
        }
        C(context, j0VarT);
        if (i11 >= 26 && j0VarT.s(R$styleable.TextAppearance_fontVariationSettings) && (strO = j0VarT.o(R$styleable.TextAppearance_fontVariationSettings)) != null) {
            d.d(this.f1408a, strO);
        }
        j0VarT.x();
        Typeface typeface = this.f1419l;
        if (typeface != null) {
            this.f1408a.setTypeface(typeface, this.f1417j);
        }
    }

    void r(TextView textView, InputConnection inputConnection, EditorInfo editorInfo) {
        if (Build.VERSION.SDK_INT >= 30 || inputConnection == null) {
            return;
        }
        EditorInfoCompat.setInitialSurroundingText(editorInfo, textView.getText());
    }

    void s(boolean z10) {
        this.f1408a.setAllCaps(z10);
    }

    void t(int i10, int i11, int i12, int i13) {
        this.f1416i.p(i10, i11, i12, i13);
    }

    void u(int[] iArr, int i10) {
        this.f1416i.q(iArr, i10);
    }

    void v(int i10) {
        this.f1416i.r(i10);
    }

    void w(ColorStateList colorStateList) {
        if (this.f1415h == null) {
            this.f1415h = new h0();
        }
        h0 h0Var = this.f1415h;
        h0Var.f1725a = colorStateList;
        h0Var.f1728d = colorStateList != null;
        z();
    }

    void x(PorterDuff.Mode mode) {
        if (this.f1415h == null) {
            this.f1415h = new h0();
        }
        h0 h0Var = this.f1415h;
        h0Var.f1726b = mode;
        h0Var.f1727c = mode != null;
        z();
    }

    class a extends y0.h.e {

        final int f1421a;

        final int f1422b;

        final WeakReference f1423c;

        a(int i10, int i11, WeakReference weakReference) {
            this.f1421a = i10;
            this.f1422b = i11;
            this.f1423c = weakReference;
        }

        @Override
        public void g(Typeface typeface) {
            int i10;
            if (Build.VERSION.SDK_INT >= 28 && (i10 = this.f1421a) != -1) {
                typeface = e.a(typeface, i10, (this.f1422b & 2) != 0);
            }
            AppCompatTextHelper.this.n(this.f1423c, typeface);
        }

        @Override
        public void f(int i10) {
        }
    }
}
