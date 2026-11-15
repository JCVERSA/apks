package com.google.android.material.badge;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.core.view.ViewCompat;
import cb.i;
import cb.n;
import com.google.android.material.R$attr;
import com.google.android.material.R$id;
import com.google.android.material.R$string;
import com.google.android.material.R$style;
import com.google.android.material.internal.b0;
import com.google.android.material.internal.y;
import java.lang.ref.WeakReference;
import java.text.NumberFormat;
import za.d;

public class BadgeDrawable extends Drawable implements y.b {

    private static final int f27455n = R$style.Widget_MaterialComponents_Badge;

    private static final int f27456o = R$attr.badgeStyle;

    private final WeakReference f27457a;

    private final i f27458b;

    private final y f27459c;

    private final Rect f27460d;

    private final BadgeState f27461e;

    private float f27462f;

    private float f27463g;

    private int f27464h;

    private float f27465i;

    private float f27466j;

    private float f27467k;

    private WeakReference f27468l;

    private WeakReference f27469m;

    private BadgeDrawable(Context context, int i10, int i11, int i12, BadgeState.State state) {
        this.f27457a = new WeakReference(context);
        b0.c(context);
        this.f27460d = new Rect();
        y yVar = new y(this);
        this.f27459c = yVar;
        yVar.g().setTextAlign(Paint.Align.CENTER);
        BadgeState badgeState = new BadgeState(context, i10, i11, i12, state);
        this.f27461e = badgeState;
        this.f27458b = new i(n.b(context, A() ? badgeState.m() : badgeState.i(), A() ? badgeState.l() : badgeState.h()).m());
        N();
    }

    private boolean A() {
        return C() || B();
    }

    private boolean D() {
        FrameLayout frameLayoutJ = j();
        return frameLayoutJ != null && frameLayoutJ.getId() == R$id.mtrl_anchor_parent;
    }

    private void E() {
        this.f27459c.g().setAlpha(getAlpha());
        invalidateSelf();
    }

    private void F() {
        ColorStateList colorStateListValueOf = ColorStateList.valueOf(this.f27461e.e());
        if (this.f27458b.z() != colorStateListValueOf) {
            this.f27458b.d0(colorStateListValueOf);
            invalidateSelf();
        }
    }

    private void G() {
        this.f27459c.l(true);
        I();
        T();
        invalidateSelf();
    }

    private void H() {
        WeakReference weakReference = this.f27468l;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        View view = (View) this.f27468l.get();
        WeakReference weakReference2 = this.f27469m;
        S(view, weakReference2 != null ? (FrameLayout) weakReference2.get() : null);
    }

    private void I() {
        Context context = (Context) this.f27457a.get();
        if (context == null) {
            return;
        }
        this.f27458b.setShapeAppearanceModel(n.b(context, A() ? this.f27461e.m() : this.f27461e.i(), A() ? this.f27461e.l() : this.f27461e.h()).m());
        invalidateSelf();
    }

    private void J() {
        d dVar;
        Context context = (Context) this.f27457a.get();
        if (context == null || this.f27459c.e() == (dVar = new d(context, this.f27461e.A()))) {
            return;
        }
        this.f27459c.k(dVar, context);
        K();
        T();
        invalidateSelf();
    }

    private void K() {
        this.f27459c.g().setColor(this.f27461e.j());
        invalidateSelf();
    }

    private void L() {
        U();
        this.f27459c.l(true);
        T();
        invalidateSelf();
    }

    private void M() {
        boolean zG = this.f27461e.G();
        setVisible(zG, false);
        if (!c.f27481a || j() == null || zG) {
            return;
        }
        ((ViewGroup) j().getParent()).invalidate();
    }

    private void N() {
        I();
        J();
        L();
        G();
        E();
        F();
        K();
        H();
        T();
        M();
    }

    private void Q(final View view) {
        ViewGroup viewGroup = (ViewGroup) view.getParent();
        if (viewGroup == null || viewGroup.getId() != R$id.mtrl_anchor_parent) {
            WeakReference weakReference = this.f27469m;
            if (weakReference == null || weakReference.get() != viewGroup) {
                R(view);
                final FrameLayout frameLayout = new FrameLayout(view.getContext());
                frameLayout.setId(R$id.mtrl_anchor_parent);
                frameLayout.setClipChildren(false);
                frameLayout.setClipToPadding(false);
                frameLayout.setLayoutParams(view.getLayoutParams());
                frameLayout.setMinimumWidth(view.getWidth());
                frameLayout.setMinimumHeight(view.getHeight());
                int iIndexOfChild = viewGroup.indexOfChild(view);
                viewGroup.removeViewAt(iIndexOfChild);
                view.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
                frameLayout.addView(view);
                viewGroup.addView(frameLayout, iIndexOfChild);
                this.f27469m = new WeakReference(frameLayout);
                frameLayout.post(new Runnable() {
                    @Override
                    public void run() {
                        BadgeDrawable.this.S(view, frameLayout);
                    }
                });
            }
        }
    }

    private static void R(View view) {
        ViewGroup viewGroup = (ViewGroup) view.getParent();
        viewGroup.setClipChildren(false);
        viewGroup.setClipToPadding(false);
    }

    private void T() {
        Context context = (Context) this.f27457a.get();
        WeakReference weakReference = this.f27468l;
        View view = weakReference != null ? (View) weakReference.get() : null;
        if (context == null || view == null) {
            return;
        }
        Rect rect = new Rect();
        rect.set(this.f27460d);
        Rect rect2 = new Rect();
        view.getDrawingRect(rect2);
        WeakReference weakReference2 = this.f27469m;
        ViewGroup viewGroup = weakReference2 != null ? (ViewGroup) weakReference2.get() : null;
        if (viewGroup != null || c.f27481a) {
            if (viewGroup == null) {
                viewGroup = (ViewGroup) view.getParent();
            }
            viewGroup.offsetDescendantRectToMyCoords(view, rect2);
        }
        c(rect2, view);
        c.i(this.f27460d, this.f27462f, this.f27463g, this.f27466j, this.f27467k);
        float f10 = this.f27465i;
        if (f10 != -1.0f) {
            this.f27458b.a0(f10);
        }
        if (rect.equals(this.f27460d)) {
            return;
        }
        this.f27458b.setBounds(this.f27460d);
    }

    private void U() {
        if (n() != -2) {
            this.f27464h = ((int) Math.pow(10.0d, ((double) n()) - 1.0d)) - 1;
        } else {
            this.f27464h = o();
        }
    }

    private void b(View view) {
        float y10;
        float x10;
        View viewJ = j();
        if (viewJ == null) {
            if (!(view.getParent() instanceof View)) {
                return;
            }
            float y11 = view.getY();
            x10 = view.getX();
            viewJ = (View) view.getParent();
            y10 = y11;
        } else if (!D()) {
            y10 = 0.0f;
            x10 = 0.0f;
        } else {
            if (!(viewJ.getParent() instanceof View)) {
                return;
            }
            y10 = viewJ.getY();
            x10 = viewJ.getX();
            viewJ = (View) viewJ.getParent();
        }
        float fX = x(viewJ, y10);
        float fM = m(viewJ, x10);
        float fH = h(viewJ, y10);
        float fS = s(viewJ, x10);
        if (fX < 0.0f) {
            this.f27463g += Math.abs(fX);
        }
        if (fM < 0.0f) {
            this.f27462f += Math.abs(fM);
        }
        if (fH > 0.0f) {
            this.f27463g -= Math.abs(fH);
        }
        if (fS > 0.0f) {
            this.f27462f -= Math.abs(fS);
        }
    }

    private void c(Rect rect, View view) {
        float f10 = A() ? this.f27461e.f27473d : this.f27461e.f27472c;
        this.f27465i = f10;
        if (f10 != -1.0f) {
            this.f27466j = f10;
            this.f27467k = f10;
        } else {
            this.f27466j = Math.round((A() ? this.f27461e.f27476g : this.f27461e.f27474e) / 2.0f);
            this.f27467k = Math.round((A() ? this.f27461e.f27477h : this.f27461e.f27475f) / 2.0f);
        }
        if (A()) {
            String strG = g();
            this.f27466j = Math.max(this.f27466j, (this.f27459c.h(strG) / 2.0f) + this.f27461e.g());
            float fMax = Math.max(this.f27467k, (this.f27459c.f(strG) / 2.0f) + this.f27461e.k());
            this.f27467k = fMax;
            this.f27466j = Math.max(this.f27466j, fMax);
        }
        int iZ = z();
        int iF = this.f27461e.f();
        if (iF == 8388691 || iF == 8388693) {
            this.f27463g = rect.bottom - iZ;
        } else {
            this.f27463g = rect.top + iZ;
        }
        int iY = y();
        int iF2 = this.f27461e.f();
        if (iF2 == 8388659 || iF2 == 8388691) {
            this.f27462f = ViewCompat.getLayoutDirection(view) == 0 ? (rect.left - this.f27466j) + iY : (rect.right + this.f27466j) - iY;
        } else {
            this.f27462f = ViewCompat.getLayoutDirection(view) == 0 ? (rect.right + this.f27466j) - iY : (rect.left - this.f27466j) + iY;
        }
        if (this.f27461e.F()) {
            b(view);
        }
    }

    public static BadgeDrawable d(Context context) {
        return new BadgeDrawable(context, 0, f27456o, f27455n, null);
    }

    static BadgeDrawable e(Context context, BadgeState.State state) {
        return new BadgeDrawable(context, 0, f27456o, f27455n, state);
    }

    private void f(Canvas canvas) {
        String strG = g();
        if (strG != null) {
            Rect rect = new Rect();
            this.f27459c.g().getTextBounds(strG, 0, strG.length(), rect);
            float fExactCenterY = this.f27463g - rect.exactCenterY();
            canvas.drawText(strG, this.f27462f, rect.bottom <= 0 ? (int) fExactCenterY : Math.round(fExactCenterY), this.f27459c.g());
        }
    }

    private String g() {
        if (C()) {
            return v();
        }
        if (B()) {
            return q();
        }
        return null;
    }

    private float h(View view, float f10) {
        if (!(view.getParent() instanceof View)) {
            return 0.0f;
        }
        return ((this.f27463g + this.f27467k) - (((View) view.getParent()).getHeight() - view.getY())) + f10;
    }

    private CharSequence k() {
        return this.f27461e.p();
    }

    private float m(View view, float f10) {
        return (this.f27462f - this.f27466j) + view.getX() + f10;
    }

    private String q() {
        if (this.f27464h == -2 || p() <= this.f27464h) {
            return NumberFormat.getInstance(this.f27461e.x()).format(p());
        }
        Context context = (Context) this.f27457a.get();
        return context == null ? "" : String.format(this.f27461e.x(), context.getString(R$string.mtrl_exceed_max_badge_number_suffix), Integer.valueOf(this.f27464h), "+");
    }

    private String r() {
        Context context;
        if (this.f27461e.q() == 0 || (context = (Context) this.f27457a.get()) == null) {
            return null;
        }
        return (this.f27464h == -2 || p() <= this.f27464h) ? context.getResources().getQuantityString(this.f27461e.q(), p(), Integer.valueOf(p())) : context.getString(this.f27461e.n(), Integer.valueOf(this.f27464h));
    }

    private float s(View view, float f10) {
        if (!(view.getParent() instanceof View)) {
            return 0.0f;
        }
        return ((this.f27462f + this.f27466j) - (((View) view.getParent()).getWidth() - view.getX())) + f10;
    }

    private String v() {
        String strU = u();
        int iN = n();
        if (iN == -2 || strU == null || strU.length() <= iN) {
            return strU;
        }
        Context context = (Context) this.f27457a.get();
        if (context == null) {
            return "";
        }
        return String.format(context.getString(R$string.m3_exceed_max_badge_text_suffix), strU.substring(0, iN - 1), "…");
    }

    private CharSequence w() {
        CharSequence charSequenceO = this.f27461e.o();
        return charSequenceO != null ? charSequenceO : u();
    }

    private float x(View view, float f10) {
        return (this.f27463g - this.f27467k) + view.getY() + f10;
    }

    private int y() {
        int iR = A() ? this.f27461e.r() : this.f27461e.s();
        if (this.f27461e.f27480k == 1) {
            iR += A() ? this.f27461e.f27479j : this.f27461e.f27478i;
        }
        return iR + this.f27461e.b();
    }

    private int z() {
        int iC = this.f27461e.C();
        if (A()) {
            iC = this.f27461e.B();
            Context context = (Context) this.f27457a.get();
            if (context != null) {
                iC = qa.a.c(iC, iC - this.f27461e.t(), qa.a.b(0.0f, 1.0f, 0.3f, 1.0f, za.c.f(context) - 1.0f));
            }
        }
        if (this.f27461e.f27480k == 0) {
            iC -= Math.round(this.f27467k);
        }
        return iC + this.f27461e.c();
    }

    public boolean B() {
        return !this.f27461e.E() && this.f27461e.D();
    }

    public boolean C() {
        return this.f27461e.E();
    }

    void O(int i10) {
        this.f27461e.I(i10);
        T();
    }

    void P(int i10) {
        this.f27461e.J(i10);
        T();
    }

    public void S(View view, FrameLayout frameLayout) {
        this.f27468l = new WeakReference(view);
        boolean z10 = c.f27481a;
        if (z10 && frameLayout == null) {
            Q(view);
        } else {
            this.f27469m = new WeakReference(frameLayout);
        }
        if (!z10) {
            R(view);
        }
        T();
        invalidateSelf();
    }

    @Override
    public void a() {
        invalidateSelf();
    }

    @Override
    public void draw(Canvas canvas) {
        if (getBounds().isEmpty() || getAlpha() == 0 || !isVisible()) {
            return;
        }
        this.f27458b.draw(canvas);
        if (A()) {
            f(canvas);
        }
    }

    @Override
    public int getAlpha() {
        return this.f27461e.d();
    }

    @Override
    public int getIntrinsicHeight() {
        return this.f27460d.height();
    }

    @Override
    public int getIntrinsicWidth() {
        return this.f27460d.width();
    }

    @Override
    public int getOpacity() {
        return -3;
    }

    public CharSequence i() {
        if (!isVisible()) {
            return null;
        }
        if (C()) {
            return w();
        }
        return B() ? r() : k();
    }

    @Override
    public boolean isStateful() {
        return false;
    }

    public FrameLayout j() {
        WeakReference weakReference = this.f27469m;
        if (weakReference != null) {
            return (FrameLayout) weakReference.get();
        }
        return null;
    }

    public int l() {
        return this.f27461e.s();
    }

    public int n() {
        return this.f27461e.u();
    }

    public int o() {
        return this.f27461e.v();
    }

    @Override
    public boolean onStateChange(int[] iArr) {
        return super.onStateChange(iArr);
    }

    public int p() {
        if (this.f27461e.D()) {
            return this.f27461e.w();
        }
        return 0;
    }

    @Override
    public void setAlpha(int i10) {
        this.f27461e.K(i10);
        E();
    }

    @Override
    public void setColorFilter(ColorFilter colorFilter) {
    }

    BadgeState.State t() {
        return this.f27461e.y();
    }

    public String u() {
        return this.f27461e.z();
    }
}
