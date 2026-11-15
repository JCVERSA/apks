package com.google.android.material.card;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.Checkable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.cardview.widget.CardView;
import cb.j;
import cb.n;
import cb.q;
import com.google.android.material.R$attr;
import com.google.android.material.R$style;
import com.google.android.material.R$styleable;
import com.google.android.material.internal.b0;

public class MaterialCardView extends CardView implements Checkable, q {
    public static final int CHECKED_ICON_GRAVITY_BOTTOM_END = 8388693;
    public static final int CHECKED_ICON_GRAVITY_BOTTOM_START = 8388691;
    public static final int CHECKED_ICON_GRAVITY_TOP_END = 8388661;
    public static final int CHECKED_ICON_GRAVITY_TOP_START = 8388659;

    private static final int[] f27712n = {R.attr.state_checkable};

    private static final int[] f27713o = {R.attr.state_checked};

    private static final int[] f27714p = {R$attr.state_dragged};

    private static final int f27715q = R$style.Widget_MaterialComponents_CardView;

    private final b f27716j;

    private boolean f27717k;

    private boolean f27718l;

    private boolean f27719m;

    public interface a {
    }

    public MaterialCardView(Context context) {
        this(context, null);
    }

    private void c() {
        if (Build.VERSION.SDK_INT > 26) {
            this.f27716j.k();
        }
    }

    @NonNull
    private RectF getBoundsAsRectF() {
        RectF rectF = new RectF();
        rectF.set(this.f27716j.l().getBounds());
        return rectF;
    }

    void d(int i10, int i11, int i12, int i13) {
        super.setContentPadding(i10, i11, i12, i13);
    }

    @Override
    @NonNull
    public ColorStateList getCardBackgroundColor() {
        return this.f27716j.m();
    }

    @NonNull
    public ColorStateList getCardForegroundColor() {
        return this.f27716j.n();
    }

    float getCardViewRadius() {
        return super.getRadius();
    }

    @Nullable
    public Drawable getCheckedIcon() {
        return this.f27716j.o();
    }

    public int getCheckedIconGravity() {
        return this.f27716j.p();
    }

    public int getCheckedIconMargin() {
        return this.f27716j.q();
    }

    public int getCheckedIconSize() {
        return this.f27716j.r();
    }

    @Nullable
    public ColorStateList getCheckedIconTint() {
        return this.f27716j.s();
    }

    @Override
    public int getContentPaddingBottom() {
        return this.f27716j.C().bottom;
    }

    @Override
    public int getContentPaddingLeft() {
        return this.f27716j.C().left;
    }

    @Override
    public int getContentPaddingRight() {
        return this.f27716j.C().right;
    }

    @Override
    public int getContentPaddingTop() {
        return this.f27716j.C().top;
    }

    public float getProgress() {
        return this.f27716j.w();
    }

    @Override
    public float getRadius() {
        return this.f27716j.u();
    }

    public ColorStateList getRippleColor() {
        return this.f27716j.x();
    }

    @NonNull
    public n getShapeAppearanceModel() {
        return this.f27716j.y();
    }

    @Deprecated
    public int getStrokeColor() {
        return this.f27716j.z();
    }

    @Nullable
    public ColorStateList getStrokeColorStateList() {
        return this.f27716j.A();
    }

    public int getStrokeWidth() {
        return this.f27716j.B();
    }

    public boolean isCheckable() {
        b bVar = this.f27716j;
        return bVar != null && bVar.F();
    }

    @Override
    public boolean isChecked() {
        return this.f27718l;
    }

    public boolean isDragged() {
        return this.f27719m;
    }

    @Override
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f27716j.g0();
        j.f(this, this.f27716j.l());
    }

    @Override
    protected int[] onCreateDrawableState(int i10) {
        int[] iArrOnCreateDrawableState = super.onCreateDrawableState(i10 + 3);
        if (isCheckable()) {
            View.mergeDrawableStates(iArrOnCreateDrawableState, f27712n);
        }
        if (isChecked()) {
            View.mergeDrawableStates(iArrOnCreateDrawableState, f27713o);
        }
        if (isDragged()) {
            View.mergeDrawableStates(iArrOnCreateDrawableState, f27714p);
        }
        return iArrOnCreateDrawableState;
    }

    @Override
    public void onInitializeAccessibilityEvent(@NonNull AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName("androidx.cardview.widget.CardView");
        accessibilityEvent.setChecked(isChecked());
    }

    @Override
    public void onInitializeAccessibilityNodeInfo(@NonNull AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName("androidx.cardview.widget.CardView");
        accessibilityNodeInfo.setCheckable(isCheckable());
        accessibilityNodeInfo.setClickable(isClickable());
        accessibilityNodeInfo.setChecked(isChecked());
    }

    @Override
    protected void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
        this.f27716j.K(getMeasuredWidth(), getMeasuredHeight());
    }

    @Override
    public void setBackground(Drawable drawable) {
        setBackgroundDrawable(drawable);
    }

    @Override
    public void setBackgroundDrawable(Drawable drawable) {
        if (this.f27717k) {
            if (!this.f27716j.E()) {
                this.f27716j.L(true);
            }
            super.setBackgroundDrawable(drawable);
        }
    }

    void setBackgroundInternal(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
    }

    @Override
    public void setCardBackgroundColor(int i10) {
        this.f27716j.M(ColorStateList.valueOf(i10));
    }

    @Override
    public void setCardElevation(float f10) {
        super.setCardElevation(f10);
        this.f27716j.i0();
    }

    public void setCardForegroundColor(@Nullable ColorStateList colorStateList) {
        this.f27716j.N(colorStateList);
    }

    public void setCheckable(boolean z10) {
        this.f27716j.O(z10);
    }

    @Override
    public void setChecked(boolean z10) {
        if (this.f27718l != z10) {
            toggle();
        }
    }

    public void setCheckedIcon(@Nullable Drawable drawable) {
        this.f27716j.R(drawable);
    }

    public void setCheckedIconGravity(int i10) {
        if (this.f27716j.p() != i10) {
            this.f27716j.S(i10);
        }
    }

    public void setCheckedIconMargin(int i10) {
        this.f27716j.T(i10);
    }

    public void setCheckedIconMarginResource(int i10) {
        if (i10 != -1) {
            this.f27716j.T(getResources().getDimensionPixelSize(i10));
        }
    }

    public void setCheckedIconResource(int i10) {
        this.f27716j.R(g.a.b(getContext(), i10));
    }

    public void setCheckedIconSize(int i10) {
        this.f27716j.U(i10);
    }

    public void setCheckedIconSizeResource(int i10) {
        if (i10 != 0) {
            this.f27716j.U(getResources().getDimensionPixelSize(i10));
        }
    }

    public void setCheckedIconTint(@Nullable ColorStateList colorStateList) {
        this.f27716j.V(colorStateList);
    }

    @Override
    public void setClickable(boolean z10) {
        super.setClickable(z10);
        b bVar = this.f27716j;
        if (bVar != null) {
            bVar.g0();
        }
    }

    @Override
    public void setContentPadding(int i10, int i11, int i12, int i13) {
        this.f27716j.c0(i10, i11, i12, i13);
    }

    public void setDragged(boolean z10) {
        if (this.f27719m != z10) {
            this.f27719m = z10;
            refreshDrawableState();
            c();
            invalidate();
        }
    }

    @Override
    public void setMaxCardElevation(float f10) {
        super.setMaxCardElevation(f10);
        this.f27716j.k0();
    }

    public void setOnCheckedChangeListener(@Nullable a aVar) {
    }

    @Override
    public void setPreventCornerOverlap(boolean z10) {
        super.setPreventCornerOverlap(z10);
        this.f27716j.k0();
        this.f27716j.h0();
    }

    public void setProgress(float f10) {
        this.f27716j.X(f10);
    }

    @Override
    public void setRadius(float f10) {
        super.setRadius(f10);
        this.f27716j.W(f10);
    }

    public void setRippleColor(@Nullable ColorStateList colorStateList) {
        this.f27716j.Y(colorStateList);
    }

    public void setRippleColorResource(int i10) {
        this.f27716j.Y(g.a.a(getContext(), i10));
    }

    @Override
    public void setShapeAppearanceModel(@NonNull n nVar) {
        setClipToOutline(nVar.u(getBoundsAsRectF()));
        this.f27716j.Z(nVar);
    }

    public void setStrokeColor(int i10) {
        setStrokeColor(ColorStateList.valueOf(i10));
    }

    public void setStrokeWidth(int i10) {
        this.f27716j.b0(i10);
        invalidate();
    }

    @Override
    public void setUseCompatPadding(boolean z10) {
        super.setUseCompatPadding(z10);
        this.f27716j.k0();
        this.f27716j.h0();
    }

    @Override
    public void toggle() {
        if (isCheckable() && isEnabled()) {
            this.f27718l = !this.f27718l;
            refreshDrawableState();
            c();
            this.f27716j.Q(this.f27718l, true);
        }
    }

    public MaterialCardView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.materialCardViewStyle);
    }

    @Override
    public void setCardBackgroundColor(@Nullable ColorStateList colorStateList) {
        this.f27716j.M(colorStateList);
    }

    public void setStrokeColor(ColorStateList colorStateList) {
        this.f27716j.a0(colorStateList);
        invalidate();
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public MaterialCardView(Context context, AttributeSet attributeSet, int i10) {
        int i11 = f27715q;
        super(db.a.c(context, attributeSet, i10, i11), attributeSet, i10);
        this.f27718l = false;
        this.f27719m = false;
        this.f27717k = true;
        TypedArray typedArrayI = b0.i(getContext(), attributeSet, R$styleable.MaterialCardView, i10, i11, new int[0]);
        b bVar = new b(this, attributeSet, i10, i11);
        this.f27716j = bVar;
        bVar.M(super.getCardBackgroundColor());
        bVar.c0(super.getContentPaddingLeft(), super.getContentPaddingTop(), super.getContentPaddingRight(), super.getContentPaddingBottom());
        bVar.J(typedArrayI);
        typedArrayI.recycle();
    }
}
