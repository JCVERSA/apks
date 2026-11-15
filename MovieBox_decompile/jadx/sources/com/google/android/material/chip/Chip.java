package com.google.android.material.chip;

import android.R;
import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Outline;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Bundle;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.PointerIcon;
import android.view.View;
import android.view.ViewOutlineProvider;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.CompoundButton;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.AppCompatCheckBox;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import cb.j;
import cb.n;
import cb.q;
import com.google.android.material.R$attr;
import com.google.android.material.R$string;
import com.google.android.material.R$style;
import com.google.android.material.R$styleable;
import com.google.android.material.internal.b0;
import com.google.android.material.internal.f0;
import com.google.android.material.internal.l;
import java.util.List;
import qa.h;
import za.d;
import za.f;

public class Chip extends AppCompatCheckBox implements com.google.android.material.chip.a.InterfaceC0368a, q, l {

    private static final int f27848t = R$style.Widget_MaterialComponents_Chip_Action;

    private static final Rect f27849u = new Rect();

    private static final int[] f27850v = {R.attr.state_selected};

    private static final int[] f27851w = {R.attr.state_checkable};

    private com.google.android.material.chip.a f27852a;

    private InsetDrawable f27853b;

    private RippleDrawable f27854c;

    private View.OnClickListener f27855d;

    private CompoundButton.OnCheckedChangeListener f27856e;

    private l.a f27857f;

    private boolean f27858g;

    private boolean f27859h;

    private boolean f27860i;

    private boolean f27861j;

    private boolean f27862k;

    private int f27863l;

    private int f27864m;

    private CharSequence f27865n;

    private final c f27866o;

    private boolean f27867p;

    private final Rect f27868q;

    private final RectF f27869r;

    private final f f27870s;

    class a extends f {
        a() {
        }

        @Override
        public void a(int i10) {
        }

        @Override
        public void b(Typeface typeface, boolean z10) {
            Chip chip = Chip.this;
            chip.setText(chip.f27852a.W2() ? Chip.this.f27852a.p1() : Chip.this.getText());
            Chip.this.requestLayout();
            Chip.this.invalidate();
        }
    }

    class b extends ViewOutlineProvider {
        b() {
        }

        @Override
        public void getOutline(View view, Outline outline) {
            if (Chip.this.f27852a != null) {
                Chip.this.f27852a.getOutline(outline);
            } else {
                outline.setAlpha(0.0f);
            }
        }
    }

    private class c extends androidx.customview.widget.a {
        c(Chip chip) {
            super(chip);
        }

        @Override
        protected void B(AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            accessibilityNodeInfoCompat.setCheckable(Chip.this.isCheckable());
            accessibilityNodeInfoCompat.setClickable(Chip.this.isClickable());
            accessibilityNodeInfoCompat.setClassName(Chip.this.getAccessibilityClassName());
            accessibilityNodeInfoCompat.setText(Chip.this.getText());
        }

        @Override
        protected void C(int i10, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            if (i10 != 1) {
                accessibilityNodeInfoCompat.setContentDescription("");
                accessibilityNodeInfoCompat.setBoundsInParent(Chip.f27849u);
                return;
            }
            CharSequence closeIconContentDescription = Chip.this.getCloseIconContentDescription();
            if (closeIconContentDescription != null) {
                accessibilityNodeInfoCompat.setContentDescription(closeIconContentDescription);
            } else {
                CharSequence text = Chip.this.getText();
                accessibilityNodeInfoCompat.setContentDescription(Chip.this.getContext().getString(R$string.mtrl_chip_close_icon_content_description, TextUtils.isEmpty(text) ? "" : text).trim());
            }
            accessibilityNodeInfoCompat.setBoundsInParent(Chip.this.getCloseIconTouchBoundsInt());
            accessibilityNodeInfoCompat.addAction(AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_CLICK);
            accessibilityNodeInfoCompat.setEnabled(Chip.this.isEnabled());
        }

        @Override
        protected void D(int i10, boolean z10) {
            if (i10 == 1) {
                Chip.this.f27861j = z10;
                Chip.this.refreshDrawableState();
            }
        }

        @Override
        protected int o(float f10, float f11) {
            return (Chip.this.l() && Chip.this.getCloseIconTouchBounds().contains(f10, f11)) ? 1 : 0;
        }

        @Override
        protected void p(List list) {
            list.add(0);
            if (Chip.this.l() && Chip.this.isCloseIconVisible() && Chip.this.f27855d != null) {
                list.add(1);
            }
        }

        @Override
        protected boolean y(int i10, int i11, Bundle bundle) {
            if (i11 != 16) {
                return false;
            }
            if (i10 == 0) {
                return Chip.this.performClick();
            }
            if (i10 == 1) {
                return Chip.this.performCloseIconClick();
            }
            return false;
        }
    }

    public Chip(Context context) {
        this(context, null);
    }

    @NonNull
    public RectF getCloseIconTouchBounds() {
        this.f27869r.setEmpty();
        if (l() && this.f27855d != null) {
            this.f27852a.g1(this.f27869r);
        }
        return this.f27869r;
    }

    @NonNull
    public Rect getCloseIconTouchBoundsInt() {
        RectF closeIconTouchBounds = getCloseIconTouchBounds();
        this.f27868q.set((int) closeIconTouchBounds.left, (int) closeIconTouchBounds.top, (int) closeIconTouchBounds.right, (int) closeIconTouchBounds.bottom);
        return this.f27868q;
    }

    @Nullable
    private d getTextAppearance() {
        com.google.android.material.chip.a aVar = this.f27852a;
        if (aVar != null) {
            return aVar.q1();
        }
        return null;
    }

    private void i(com.google.android.material.chip.a aVar) {
        aVar.z2(this);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [boolean, int] */
    private int[] j() {
        ?? IsEnabled = isEnabled();
        int i10 = IsEnabled;
        if (this.f27861j) {
            i10 = IsEnabled + 1;
        }
        int i11 = i10;
        if (this.f27860i) {
            i11 = i10 + 1;
        }
        int i12 = i11;
        if (this.f27859h) {
            i12 = i11 + 1;
        }
        int i13 = i12;
        if (isChecked()) {
            i13 = i12 + 1;
        }
        int[] iArr = new int[i13];
        int i14 = 0;
        if (isEnabled()) {
            iArr[0] = 16842910;
            i14 = 1;
        }
        if (this.f27861j) {
            iArr[i14] = 16842908;
            i14++;
        }
        if (this.f27860i) {
            iArr[i14] = 16843623;
            i14++;
        }
        if (this.f27859h) {
            iArr[i14] = 16842919;
            i14++;
        }
        if (isChecked()) {
            iArr[i14] = 16842913;
        }
        return iArr;
    }

    private void k() {
        if (getBackgroundDrawable() == this.f27853b && this.f27852a.getCallback() == null) {
            this.f27852a.setCallback(this.f27853b);
        }
    }

    public boolean l() {
        com.google.android.material.chip.a aVar = this.f27852a;
        return (aVar == null || aVar.Z0() == null) ? false : true;
    }

    private void m(Context context, AttributeSet attributeSet, int i10) {
        TypedArray typedArrayI = b0.i(context, attributeSet, R$styleable.Chip, i10, f27848t, new int[0]);
        this.f27862k = typedArrayI.getBoolean(R$styleable.Chip_ensureMinTouchTargetSize, false);
        this.f27864m = (int) Math.ceil(typedArrayI.getDimension(R$styleable.Chip_chipMinTouchTargetSize, (float) Math.ceil(f0.g(getContext(), 48))));
        typedArrayI.recycle();
    }

    private void n() {
        setOutlineProvider(new b());
    }

    private void o(int i10, int i11, int i12, int i13) {
        this.f27853b = new InsetDrawable((Drawable) this.f27852a, i10, i11, i12, i13);
    }

    public void p(CompoundButton compoundButton, boolean z10) {
        l.a aVar = this.f27857f;
        if (aVar != null) {
            aVar.a(this, z10);
        }
        CompoundButton.OnCheckedChangeListener onCheckedChangeListener = this.f27856e;
        if (onCheckedChangeListener != null) {
            onCheckedChangeListener.onCheckedChanged(compoundButton, z10);
        }
    }

    private void q() {
        if (this.f27853b != null) {
            this.f27853b = null;
            setMinWidth(0);
            setMinHeight((int) getChipMinHeight());
            t();
        }
    }

    private void r(com.google.android.material.chip.a aVar) {
        if (aVar != null) {
            aVar.z2(null);
        }
    }

    private void s() {
        if (l() && isCloseIconVisible() && this.f27855d != null) {
            ViewCompat.setAccessibilityDelegate(this, this.f27866o);
            this.f27867p = true;
        } else {
            ViewCompat.setAccessibilityDelegate(this, null);
            this.f27867p = false;
        }
    }

    private void setCloseIconHovered(boolean z10) {
        if (this.f27860i != z10) {
            this.f27860i = z10;
            refreshDrawableState();
        }
    }

    private void setCloseIconPressed(boolean z10) {
        if (this.f27859h != z10) {
            this.f27859h = z10;
            refreshDrawableState();
        }
    }

    private void t() {
        if (ab.b.f266a) {
            u();
            return;
        }
        this.f27852a.V2(true);
        ViewCompat.setBackground(this, getBackgroundDrawable());
        v();
        k();
    }

    private void u() {
        this.f27854c = new RippleDrawable(ab.b.d(this.f27852a.n1()), getBackgroundDrawable(), null);
        this.f27852a.V2(false);
        ViewCompat.setBackground(this, this.f27854c);
        v();
    }

    private void v() {
        com.google.android.material.chip.a aVar;
        if (TextUtils.isEmpty(getText()) || (aVar = this.f27852a) == null) {
            return;
        }
        int iR0 = (int) (aVar.R0() + this.f27852a.r1() + this.f27852a.y0());
        int iW0 = (int) (this.f27852a.W0() + this.f27852a.s1() + this.f27852a.u0());
        if (this.f27853b != null) {
            Rect rect = new Rect();
            this.f27853b.getPadding(rect);
            iW0 += rect.left;
            iR0 += rect.right;
        }
        ViewCompat.setPaddingRelative(this, iW0, getPaddingTop(), iR0, getPaddingBottom());
    }

    private void w() {
        TextPaint paint = getPaint();
        com.google.android.material.chip.a aVar = this.f27852a;
        if (aVar != null) {
            paint.drawableState = aVar.getState();
        }
        d textAppearance = getTextAppearance();
        if (textAppearance != null) {
            textAppearance.n(getContext(), paint, this.f27870s);
        }
    }

    private void x(AttributeSet attributeSet) {
        if (attributeSet == null) {
            return;
        }
        if (attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "background") != null) {
            Log.w("Chip", "Do not set the background; Chip manages its own background drawable.");
        }
        if (attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "drawableLeft") != null) {
            throw new UnsupportedOperationException("Please set left drawable using R.attr#chipIcon.");
        }
        if (attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "drawableStart") != null) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        }
        if (attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "drawableEnd") != null) {
            throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
        }
        if (attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "drawableRight") != null) {
            throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
        }
        if (!attributeSet.getAttributeBooleanValue("http://schemas.android.com/apk/res/android", "singleLine", true) || attributeSet.getAttributeIntValue("http://schemas.android.com/apk/res/android", "lines", 1) != 1 || attributeSet.getAttributeIntValue("http://schemas.android.com/apk/res/android", "minLines", 1) != 1 || attributeSet.getAttributeIntValue("http://schemas.android.com/apk/res/android", "maxLines", 1) != 1) {
            throw new UnsupportedOperationException("Chip does not support multi-line text");
        }
        if (attributeSet.getAttributeIntValue("http://schemas.android.com/apk/res/android", "gravity", 8388627) != 8388627) {
            Log.w("Chip", "Chip text must be vertically center and start aligned");
        }
    }

    @Override
    protected boolean dispatchHoverEvent(MotionEvent motionEvent) {
        if (this.f27867p) {
            return this.f27866o.i(motionEvent) || super.dispatchHoverEvent(motionEvent);
        }
        return super.dispatchHoverEvent(motionEvent);
    }

    @Override
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        if (!this.f27867p) {
            return super.dispatchKeyEvent(keyEvent);
        }
        if (!this.f27866o.j(keyEvent) || this.f27866o.n() == Integer.MIN_VALUE) {
            return super.dispatchKeyEvent(keyEvent);
        }
        return true;
    }

    @Override
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        com.google.android.material.chip.a aVar = this.f27852a;
        if ((aVar == null || !aVar.z1()) ? false : this.f27852a.v2(j())) {
            invalidate();
        }
    }

    public boolean ensureAccessibleTouchTarget(int i10) {
        this.f27864m = i10;
        if (!shouldEnsureMinTouchTargetSize()) {
            if (this.f27853b != null) {
                q();
            } else {
                t();
            }
            return false;
        }
        int iMax = Math.max(0, i10 - this.f27852a.getIntrinsicHeight());
        int iMax2 = Math.max(0, i10 - this.f27852a.getIntrinsicWidth());
        if (iMax2 <= 0 && iMax <= 0) {
            if (this.f27853b != null) {
                q();
            } else {
                t();
            }
            return false;
        }
        int i11 = iMax2 > 0 ? iMax2 / 2 : 0;
        int i12 = iMax > 0 ? iMax / 2 : 0;
        if (this.f27853b != null) {
            Rect rect = new Rect();
            this.f27853b.getPadding(rect);
            if (rect.top == i12 && rect.bottom == i12 && rect.left == i11 && rect.right == i11) {
                t();
                return true;
            }
        }
        if (getMinHeight() != i10) {
            setMinHeight(i10);
        }
        if (getMinWidth() != i10) {
            setMinWidth(i10);
        }
        o(i11, i12, i11, i12);
        t();
        return true;
    }

    @Override
    @NonNull
    public CharSequence getAccessibilityClassName() {
        if (!TextUtils.isEmpty(this.f27865n)) {
            return this.f27865n;
        }
        if (!isCheckable()) {
            return isClickable() ? "android.widget.Button" : "android.view.View";
        }
        ViewParent parent = getParent();
        return ((parent instanceof ChipGroup) && ((ChipGroup) parent).isSingleSelection()) ? "android.widget.RadioButton" : "android.widget.Button";
    }

    @Nullable
    public Drawable getBackgroundDrawable() {
        InsetDrawable insetDrawable = this.f27853b;
        return insetDrawable == null ? this.f27852a : insetDrawable;
    }

    @Nullable
    public Drawable getCheckedIcon() {
        com.google.android.material.chip.a aVar = this.f27852a;
        if (aVar != null) {
            return aVar.N0();
        }
        return null;
    }

    @Nullable
    public ColorStateList getCheckedIconTint() {
        com.google.android.material.chip.a aVar = this.f27852a;
        if (aVar != null) {
            return aVar.O0();
        }
        return null;
    }

    @Nullable
    public ColorStateList getChipBackgroundColor() {
        com.google.android.material.chip.a aVar = this.f27852a;
        if (aVar != null) {
            return aVar.P0();
        }
        return null;
    }

    public float getChipCornerRadius() {
        com.google.android.material.chip.a aVar = this.f27852a;
        if (aVar != null) {
            return Math.max(0.0f, aVar.Q0());
        }
        return 0.0f;
    }

    public Drawable getChipDrawable() {
        return this.f27852a;
    }

    public float getChipEndPadding() {
        com.google.android.material.chip.a aVar = this.f27852a;
        if (aVar != null) {
            return aVar.R0();
        }
        return 0.0f;
    }

    @Nullable
    public Drawable getChipIcon() {
        com.google.android.material.chip.a aVar = this.f27852a;
        if (aVar != null) {
            return aVar.S0();
        }
        return null;
    }

    public float getChipIconSize() {
        com.google.android.material.chip.a aVar = this.f27852a;
        if (aVar != null) {
            return aVar.T0();
        }
        return 0.0f;
    }

    @Nullable
    public ColorStateList getChipIconTint() {
        com.google.android.material.chip.a aVar = this.f27852a;
        if (aVar != null) {
            return aVar.U0();
        }
        return null;
    }

    public float getChipMinHeight() {
        com.google.android.material.chip.a aVar = this.f27852a;
        if (aVar != null) {
            return aVar.V0();
        }
        return 0.0f;
    }

    public float getChipStartPadding() {
        com.google.android.material.chip.a aVar = this.f27852a;
        if (aVar != null) {
            return aVar.W0();
        }
        return 0.0f;
    }

    @Nullable
    public ColorStateList getChipStrokeColor() {
        com.google.android.material.chip.a aVar = this.f27852a;
        if (aVar != null) {
            return aVar.X0();
        }
        return null;
    }

    public float getChipStrokeWidth() {
        com.google.android.material.chip.a aVar = this.f27852a;
        if (aVar != null) {
            return aVar.Y0();
        }
        return 0.0f;
    }

    @Deprecated
    public CharSequence getChipText() {
        return getText();
    }

    @Nullable
    public Drawable getCloseIcon() {
        com.google.android.material.chip.a aVar = this.f27852a;
        if (aVar != null) {
            return aVar.Z0();
        }
        return null;
    }

    @Nullable
    public CharSequence getCloseIconContentDescription() {
        com.google.android.material.chip.a aVar = this.f27852a;
        if (aVar != null) {
            return aVar.a1();
        }
        return null;
    }

    public float getCloseIconEndPadding() {
        com.google.android.material.chip.a aVar = this.f27852a;
        if (aVar != null) {
            return aVar.b1();
        }
        return 0.0f;
    }

    public float getCloseIconSize() {
        com.google.android.material.chip.a aVar = this.f27852a;
        if (aVar != null) {
            return aVar.c1();
        }
        return 0.0f;
    }

    public float getCloseIconStartPadding() {
        com.google.android.material.chip.a aVar = this.f27852a;
        if (aVar != null) {
            return aVar.d1();
        }
        return 0.0f;
    }

    @Nullable
    public ColorStateList getCloseIconTint() {
        com.google.android.material.chip.a aVar = this.f27852a;
        if (aVar != null) {
            return aVar.f1();
        }
        return null;
    }

    @Override
    @Nullable
    public TextUtils.TruncateAt getEllipsize() {
        com.google.android.material.chip.a aVar = this.f27852a;
        if (aVar != null) {
            return aVar.j1();
        }
        return null;
    }

    @Override
    public void getFocusedRect(@NonNull Rect rect) {
        if (this.f27867p && (this.f27866o.n() == 1 || this.f27866o.k() == 1)) {
            rect.set(getCloseIconTouchBoundsInt());
        } else {
            super.getFocusedRect(rect);
        }
    }

    @Nullable
    public h getHideMotionSpec() {
        com.google.android.material.chip.a aVar = this.f27852a;
        if (aVar != null) {
            return aVar.k1();
        }
        return null;
    }

    public float getIconEndPadding() {
        com.google.android.material.chip.a aVar = this.f27852a;
        if (aVar != null) {
            return aVar.l1();
        }
        return 0.0f;
    }

    public float getIconStartPadding() {
        com.google.android.material.chip.a aVar = this.f27852a;
        if (aVar != null) {
            return aVar.m1();
        }
        return 0.0f;
    }

    @Nullable
    public ColorStateList getRippleColor() {
        com.google.android.material.chip.a aVar = this.f27852a;
        if (aVar != null) {
            return aVar.n1();
        }
        return null;
    }

    @NonNull
    public n getShapeAppearanceModel() {
        return this.f27852a.G();
    }

    @Nullable
    public h getShowMotionSpec() {
        com.google.android.material.chip.a aVar = this.f27852a;
        if (aVar != null) {
            return aVar.o1();
        }
        return null;
    }

    public float getTextEndPadding() {
        com.google.android.material.chip.a aVar = this.f27852a;
        if (aVar != null) {
            return aVar.r1();
        }
        return 0.0f;
    }

    public float getTextStartPadding() {
        com.google.android.material.chip.a aVar = this.f27852a;
        if (aVar != null) {
            return aVar.s1();
        }
        return 0.0f;
    }

    public boolean isCheckable() {
        com.google.android.material.chip.a aVar = this.f27852a;
        return aVar != null && aVar.w1();
    }

    @Deprecated
    public boolean isCheckedIconEnabled() {
        return isCheckedIconVisible();
    }

    public boolean isCheckedIconVisible() {
        com.google.android.material.chip.a aVar = this.f27852a;
        return aVar != null && aVar.x1();
    }

    @Deprecated
    public boolean isChipIconEnabled() {
        return isChipIconVisible();
    }

    public boolean isChipIconVisible() {
        com.google.android.material.chip.a aVar = this.f27852a;
        return aVar != null && aVar.y1();
    }

    @Deprecated
    public boolean isCloseIconEnabled() {
        return isCloseIconVisible();
    }

    public boolean isCloseIconVisible() {
        com.google.android.material.chip.a aVar = this.f27852a;
        return aVar != null && aVar.A1();
    }

    @Override
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        j.f(this, this.f27852a);
    }

    @Override
    public void onChipDrawableSizeChange() {
        ensureAccessibleTouchTarget(this.f27864m);
        requestLayout();
        invalidateOutline();
    }

    @Override
    protected int[] onCreateDrawableState(int i10) {
        int[] iArrOnCreateDrawableState = super.onCreateDrawableState(i10 + 2);
        if (isChecked()) {
            View.mergeDrawableStates(iArrOnCreateDrawableState, f27850v);
        }
        if (isCheckable()) {
            View.mergeDrawableStates(iArrOnCreateDrawableState, f27851w);
        }
        return iArrOnCreateDrawableState;
    }

    @Override
    protected void onFocusChanged(boolean z10, int i10, Rect rect) {
        super.onFocusChanged(z10, i10, rect);
        if (this.f27867p) {
            this.f27866o.x(z10, i10, rect);
        }
    }

    @Override
    public boolean onHoverEvent(@NonNull MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 7) {
            setCloseIconHovered(getCloseIconTouchBounds().contains(motionEvent.getX(), motionEvent.getY()));
        } else if (actionMasked == 10) {
            setCloseIconHovered(false);
        }
        return super.onHoverEvent(motionEvent);
    }

    @Override
    public void onInitializeAccessibilityNodeInfo(@NonNull AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(getAccessibilityClassName());
        accessibilityNodeInfo.setCheckable(isCheckable());
        accessibilityNodeInfo.setClickable(isClickable());
        if (getParent() instanceof ChipGroup) {
            ChipGroup chipGroup = (ChipGroup) getParent();
            AccessibilityNodeInfoCompat.wrap(accessibilityNodeInfo).setCollectionItemInfo(AccessibilityNodeInfoCompat.CollectionItemInfoCompat.obtain(chipGroup.getRowIndex(this), 1, chipGroup.isSingleLine() ? chipGroup.e(this) : -1, 1, false, isChecked()));
        }
    }

    @Override
    @Nullable
    @TargetApi(24)
    public PointerIcon onResolvePointerIcon(@NonNull MotionEvent motionEvent, int i10) {
        return (getCloseIconTouchBounds().contains(motionEvent.getX(), motionEvent.getY()) && isEnabled()) ? PointerIcon.getSystemIcon(getContext(), 1002) : super.onResolvePointerIcon(motionEvent, i10);
    }

    @Override
    @TargetApi(17)
    public void onRtlPropertiesChanged(int i10) {
        super.onRtlPropertiesChanged(i10);
        if (this.f27863l != i10) {
            this.f27863l = i10;
            v();
        }
    }

    @Override
    @SuppressLint({"ClickableViewAccessibility"})
    public boolean onTouchEvent(@NonNull MotionEvent motionEvent) {
        boolean z10;
        int actionMasked = motionEvent.getActionMasked();
        boolean zContains = getCloseIconTouchBounds().contains(motionEvent.getX(), motionEvent.getY());
        if (actionMasked != 0) {
            if (actionMasked != 1) {
                if (actionMasked != 2) {
                    if (actionMasked != 3) {
                    }
                } else if (this.f27859h) {
                    if (!zContains) {
                        setCloseIconPressed(false);
                    }
                    z10 = true;
                }
                z10 = false;
            } else {
                if (this.f27859h) {
                    performCloseIconClick();
                    z10 = true;
                }
                setCloseIconPressed(false);
            }
            z10 = false;
            setCloseIconPressed(false);
        } else if (zContains) {
            setCloseIconPressed(true);
            z10 = true;
        } else {
            z10 = false;
        }
        return z10 || super.onTouchEvent(motionEvent);
    }

    public boolean performCloseIconClick() {
        boolean z10 = false;
        playSoundEffect(0);
        View.OnClickListener onClickListener = this.f27855d;
        if (onClickListener != null) {
            onClickListener.onClick(this);
            z10 = true;
        }
        if (this.f27867p) {
            this.f27866o.J(1, 1);
        }
        return z10;
    }

    public void setAccessibilityClassName(@Nullable CharSequence charSequence) {
        this.f27865n = charSequence;
    }

    @Override
    public void setBackground(Drawable drawable) {
        if (drawable == getBackgroundDrawable() || drawable == this.f27854c) {
            super.setBackground(drawable);
        } else {
            Log.w("Chip", "Do not set the background; Chip manages its own background drawable.");
        }
    }

    @Override
    public void setBackgroundColor(int i10) {
        Log.w("Chip", "Do not set the background color; Chip manages its own background drawable.");
    }

    @Override
    public void setBackgroundDrawable(Drawable drawable) {
        if (drawable == getBackgroundDrawable() || drawable == this.f27854c) {
            super.setBackgroundDrawable(drawable);
        } else {
            Log.w("Chip", "Do not set the background drawable; Chip manages its own background drawable.");
        }
    }

    @Override
    public void setBackgroundResource(int i10) {
        Log.w("Chip", "Do not set the background resource; Chip manages its own background drawable.");
    }

    @Override
    public void setBackgroundTintList(@Nullable ColorStateList colorStateList) {
        Log.w("Chip", "Do not set the background tint list; Chip manages its own background drawable.");
    }

    @Override
    public void setBackgroundTintMode(@Nullable PorterDuff.Mode mode) {
        Log.w("Chip", "Do not set the background tint mode; Chip manages its own background drawable.");
    }

    public void setCheckable(boolean z10) {
        com.google.android.material.chip.a aVar = this.f27852a;
        if (aVar != null) {
            aVar.H1(z10);
        }
    }

    public void setCheckableResource(int i10) {
        com.google.android.material.chip.a aVar = this.f27852a;
        if (aVar != null) {
            aVar.I1(i10);
        }
    }

    @Override
    public void setChecked(boolean z10) {
        com.google.android.material.chip.a aVar = this.f27852a;
        if (aVar == null) {
            this.f27858g = z10;
        } else if (aVar.w1()) {
            super.setChecked(z10);
        }
    }

    public void setCheckedIcon(@Nullable Drawable drawable) {
        com.google.android.material.chip.a aVar = this.f27852a;
        if (aVar != null) {
            aVar.J1(drawable);
        }
    }

    @Deprecated
    public void setCheckedIconEnabled(boolean z10) {
        setCheckedIconVisible(z10);
    }

    @Deprecated
    public void setCheckedIconEnabledResource(int i10) {
        setCheckedIconVisible(i10);
    }

    public void setCheckedIconResource(int i10) {
        com.google.android.material.chip.a aVar = this.f27852a;
        if (aVar != null) {
            aVar.K1(i10);
        }
    }

    public void setCheckedIconTint(@Nullable ColorStateList colorStateList) {
        com.google.android.material.chip.a aVar = this.f27852a;
        if (aVar != null) {
            aVar.L1(colorStateList);
        }
    }

    public void setCheckedIconTintResource(int i10) {
        com.google.android.material.chip.a aVar = this.f27852a;
        if (aVar != null) {
            aVar.M1(i10);
        }
    }

    public void setCheckedIconVisible(int i10) {
        com.google.android.material.chip.a aVar = this.f27852a;
        if (aVar != null) {
            aVar.N1(i10);
        }
    }

    public void setChipBackgroundColor(@Nullable ColorStateList colorStateList) {
        com.google.android.material.chip.a aVar = this.f27852a;
        if (aVar != null) {
            aVar.P1(colorStateList);
        }
    }

    public void setChipBackgroundColorResource(int i10) {
        com.google.android.material.chip.a aVar = this.f27852a;
        if (aVar != null) {
            aVar.Q1(i10);
        }
    }

    @Deprecated
    public void setChipCornerRadius(float f10) {
        com.google.android.material.chip.a aVar = this.f27852a;
        if (aVar != null) {
            aVar.R1(f10);
        }
    }

    @Deprecated
    public void setChipCornerRadiusResource(int i10) {
        com.google.android.material.chip.a aVar = this.f27852a;
        if (aVar != null) {
            aVar.S1(i10);
        }
    }

    public void setChipDrawable(@NonNull com.google.android.material.chip.a aVar) {
        com.google.android.material.chip.a aVar2 = this.f27852a;
        if (aVar2 != aVar) {
            r(aVar2);
            this.f27852a = aVar;
            aVar.K2(false);
            i(this.f27852a);
            ensureAccessibleTouchTarget(this.f27864m);
        }
    }

    public void setChipEndPadding(float f10) {
        com.google.android.material.chip.a aVar = this.f27852a;
        if (aVar != null) {
            aVar.T1(f10);
        }
    }

    public void setChipEndPaddingResource(int i10) {
        com.google.android.material.chip.a aVar = this.f27852a;
        if (aVar != null) {
            aVar.U1(i10);
        }
    }

    public void setChipIcon(@Nullable Drawable drawable) {
        com.google.android.material.chip.a aVar = this.f27852a;
        if (aVar != null) {
            aVar.V1(drawable);
        }
    }

    @Deprecated
    public void setChipIconEnabled(boolean z10) {
        setChipIconVisible(z10);
    }

    @Deprecated
    public void setChipIconEnabledResource(int i10) {
        setChipIconVisible(i10);
    }

    public void setChipIconResource(int i10) {
        com.google.android.material.chip.a aVar = this.f27852a;
        if (aVar != null) {
            aVar.W1(i10);
        }
    }

    public void setChipIconSize(float f10) {
        com.google.android.material.chip.a aVar = this.f27852a;
        if (aVar != null) {
            aVar.X1(f10);
        }
    }

    public void setChipIconSizeResource(int i10) {
        com.google.android.material.chip.a aVar = this.f27852a;
        if (aVar != null) {
            aVar.Y1(i10);
        }
    }

    public void setChipIconTint(@Nullable ColorStateList colorStateList) {
        com.google.android.material.chip.a aVar = this.f27852a;
        if (aVar != null) {
            aVar.Z1(colorStateList);
        }
    }

    public void setChipIconTintResource(int i10) {
        com.google.android.material.chip.a aVar = this.f27852a;
        if (aVar != null) {
            aVar.a2(i10);
        }
    }

    public void setChipIconVisible(int i10) {
        com.google.android.material.chip.a aVar = this.f27852a;
        if (aVar != null) {
            aVar.b2(i10);
        }
    }

    public void setChipMinHeight(float f10) {
        com.google.android.material.chip.a aVar = this.f27852a;
        if (aVar != null) {
            aVar.d2(f10);
        }
    }

    public void setChipMinHeightResource(int i10) {
        com.google.android.material.chip.a aVar = this.f27852a;
        if (aVar != null) {
            aVar.e2(i10);
        }
    }

    public void setChipStartPadding(float f10) {
        com.google.android.material.chip.a aVar = this.f27852a;
        if (aVar != null) {
            aVar.f2(f10);
        }
    }

    public void setChipStartPaddingResource(int i10) {
        com.google.android.material.chip.a aVar = this.f27852a;
        if (aVar != null) {
            aVar.g2(i10);
        }
    }

    public void setChipStrokeColor(@Nullable ColorStateList colorStateList) {
        com.google.android.material.chip.a aVar = this.f27852a;
        if (aVar != null) {
            aVar.h2(colorStateList);
        }
    }

    public void setChipStrokeColorResource(int i10) {
        com.google.android.material.chip.a aVar = this.f27852a;
        if (aVar != null) {
            aVar.i2(i10);
        }
    }

    public void setChipStrokeWidth(float f10) {
        com.google.android.material.chip.a aVar = this.f27852a;
        if (aVar != null) {
            aVar.j2(f10);
        }
    }

    public void setChipStrokeWidthResource(int i10) {
        com.google.android.material.chip.a aVar = this.f27852a;
        if (aVar != null) {
            aVar.k2(i10);
        }
    }

    @Deprecated
    public void setChipText(@Nullable CharSequence charSequence) {
        setText(charSequence);
    }

    @Deprecated
    public void setChipTextResource(int i10) {
        setText(getResources().getString(i10));
    }

    public void setCloseIcon(@Nullable Drawable drawable) {
        com.google.android.material.chip.a aVar = this.f27852a;
        if (aVar != null) {
            aVar.m2(drawable);
        }
        s();
    }

    public void setCloseIconContentDescription(@Nullable CharSequence charSequence) {
        com.google.android.material.chip.a aVar = this.f27852a;
        if (aVar != null) {
            aVar.n2(charSequence);
        }
    }

    @Deprecated
    public void setCloseIconEnabled(boolean z10) {
        setCloseIconVisible(z10);
    }

    @Deprecated
    public void setCloseIconEnabledResource(int i10) {
        setCloseIconVisible(i10);
    }

    public void setCloseIconEndPadding(float f10) {
        com.google.android.material.chip.a aVar = this.f27852a;
        if (aVar != null) {
            aVar.o2(f10);
        }
    }

    public void setCloseIconEndPaddingResource(int i10) {
        com.google.android.material.chip.a aVar = this.f27852a;
        if (aVar != null) {
            aVar.p2(i10);
        }
    }

    public void setCloseIconResource(int i10) {
        com.google.android.material.chip.a aVar = this.f27852a;
        if (aVar != null) {
            aVar.q2(i10);
        }
        s();
    }

    public void setCloseIconSize(float f10) {
        com.google.android.material.chip.a aVar = this.f27852a;
        if (aVar != null) {
            aVar.r2(f10);
        }
    }

    public void setCloseIconSizeResource(int i10) {
        com.google.android.material.chip.a aVar = this.f27852a;
        if (aVar != null) {
            aVar.s2(i10);
        }
    }

    public void setCloseIconStartPadding(float f10) {
        com.google.android.material.chip.a aVar = this.f27852a;
        if (aVar != null) {
            aVar.t2(f10);
        }
    }

    public void setCloseIconStartPaddingResource(int i10) {
        com.google.android.material.chip.a aVar = this.f27852a;
        if (aVar != null) {
            aVar.u2(i10);
        }
    }

    public void setCloseIconTint(@Nullable ColorStateList colorStateList) {
        com.google.android.material.chip.a aVar = this.f27852a;
        if (aVar != null) {
            aVar.w2(colorStateList);
        }
    }

    public void setCloseIconTintResource(int i10) {
        com.google.android.material.chip.a aVar = this.f27852a;
        if (aVar != null) {
            aVar.x2(i10);
        }
    }

    public void setCloseIconVisible(int i10) {
        setCloseIconVisible(getResources().getBoolean(i10));
    }

    @Override
    public void setCompoundDrawables(@Nullable Drawable drawable, @Nullable Drawable drawable2, @Nullable Drawable drawable3, @Nullable Drawable drawable4) {
        if (drawable != null) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        }
        if (drawable3 != null) {
            throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
        }
        super.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
    }

    @Override
    public void setCompoundDrawablesRelative(@Nullable Drawable drawable, @Nullable Drawable drawable2, @Nullable Drawable drawable3, @Nullable Drawable drawable4) {
        if (drawable != null) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        }
        if (drawable3 != null) {
            throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
        }
        super.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
    }

    @Override
    public void setCompoundDrawablesRelativeWithIntrinsicBounds(int i10, int i11, int i12, int i13) {
        if (i10 != 0) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        }
        if (i12 != 0) {
            throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
        }
        super.setCompoundDrawablesRelativeWithIntrinsicBounds(i10, i11, i12, i13);
    }

    @Override
    public void setCompoundDrawablesWithIntrinsicBounds(int i10, int i11, int i12, int i13) {
        if (i10 != 0) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        }
        if (i12 != 0) {
            throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
        }
        super.setCompoundDrawablesWithIntrinsicBounds(i10, i11, i12, i13);
    }

    @Override
    public void setElevation(float f10) {
        super.setElevation(f10);
        com.google.android.material.chip.a aVar = this.f27852a;
        if (aVar != null) {
            aVar.c0(f10);
        }
    }

    @Override
    public void setEllipsize(TextUtils.TruncateAt truncateAt) {
        if (this.f27852a == null) {
            return;
        }
        if (truncateAt == TextUtils.TruncateAt.MARQUEE) {
            throw new UnsupportedOperationException("Text within a chip are not allowed to scroll.");
        }
        super.setEllipsize(truncateAt);
        com.google.android.material.chip.a aVar = this.f27852a;
        if (aVar != null) {
            aVar.A2(truncateAt);
        }
    }

    public void setEnsureMinTouchTargetSize(boolean z10) {
        this.f27862k = z10;
        ensureAccessibleTouchTarget(this.f27864m);
    }

    @Override
    public void setGravity(int i10) {
        if (i10 != 8388627) {
            Log.w("Chip", "Chip text must be vertically center and start aligned");
        } else {
            super.setGravity(i10);
        }
    }

    public void setHideMotionSpec(@Nullable h hVar) {
        com.google.android.material.chip.a aVar = this.f27852a;
        if (aVar != null) {
            aVar.B2(hVar);
        }
    }

    public void setHideMotionSpecResource(int i10) {
        com.google.android.material.chip.a aVar = this.f27852a;
        if (aVar != null) {
            aVar.C2(i10);
        }
    }

    public void setIconEndPadding(float f10) {
        com.google.android.material.chip.a aVar = this.f27852a;
        if (aVar != null) {
            aVar.D2(f10);
        }
    }

    public void setIconEndPaddingResource(int i10) {
        com.google.android.material.chip.a aVar = this.f27852a;
        if (aVar != null) {
            aVar.E2(i10);
        }
    }

    public void setIconStartPadding(float f10) {
        com.google.android.material.chip.a aVar = this.f27852a;
        if (aVar != null) {
            aVar.F2(f10);
        }
    }

    public void setIconStartPaddingResource(int i10) {
        com.google.android.material.chip.a aVar = this.f27852a;
        if (aVar != null) {
            aVar.G2(i10);
        }
    }

    @Override
    public void setInternalOnCheckedChangeListener(@Nullable l.a aVar) {
        this.f27857f = aVar;
    }

    @Override
    public void setLayoutDirection(int i10) {
        if (this.f27852a == null) {
            return;
        }
        super.setLayoutDirection(i10);
    }

    @Override
    public void setLines(int i10) {
        if (i10 > 1) {
            throw new UnsupportedOperationException("Chip does not support multi-line text");
        }
        super.setLines(i10);
    }

    @Override
    public void setMaxLines(int i10) {
        if (i10 > 1) {
            throw new UnsupportedOperationException("Chip does not support multi-line text");
        }
        super.setMaxLines(i10);
    }

    @Override
    public void setMaxWidth(int i10) {
        super.setMaxWidth(i10);
        com.google.android.material.chip.a aVar = this.f27852a;
        if (aVar != null) {
            aVar.H2(i10);
        }
    }

    @Override
    public void setMinLines(int i10) {
        if (i10 > 1) {
            throw new UnsupportedOperationException("Chip does not support multi-line text");
        }
        super.setMinLines(i10);
    }

    @Override
    public void setOnCheckedChangeListener(@Nullable CompoundButton.OnCheckedChangeListener onCheckedChangeListener) {
        this.f27856e = onCheckedChangeListener;
    }

    public void setOnCloseIconClickListener(View.OnClickListener onClickListener) {
        this.f27855d = onClickListener;
        s();
    }

    public void setRippleColor(@Nullable ColorStateList colorStateList) {
        com.google.android.material.chip.a aVar = this.f27852a;
        if (aVar != null) {
            aVar.I2(colorStateList);
        }
        if (this.f27852a.u1()) {
            return;
        }
        u();
    }

    public void setRippleColorResource(int i10) {
        com.google.android.material.chip.a aVar = this.f27852a;
        if (aVar != null) {
            aVar.J2(i10);
            if (this.f27852a.u1()) {
                return;
            }
            u();
        }
    }

    @Override
    public void setShapeAppearanceModel(@NonNull n nVar) {
        this.f27852a.setShapeAppearanceModel(nVar);
    }

    public void setShowMotionSpec(@Nullable h hVar) {
        com.google.android.material.chip.a aVar = this.f27852a;
        if (aVar != null) {
            aVar.L2(hVar);
        }
    }

    public void setShowMotionSpecResource(int i10) {
        com.google.android.material.chip.a aVar = this.f27852a;
        if (aVar != null) {
            aVar.M2(i10);
        }
    }

    @Override
    public void setSingleLine(boolean z10) {
        if (!z10) {
            throw new UnsupportedOperationException("Chip does not support multi-line text");
        }
        super.setSingleLine(z10);
    }

    @Override
    public void setText(CharSequence charSequence, TextView.BufferType bufferType) {
        com.google.android.material.chip.a aVar = this.f27852a;
        if (aVar == null) {
            return;
        }
        if (charSequence == null) {
            charSequence = "";
        }
        super.setText(aVar.W2() ? null : charSequence, bufferType);
        com.google.android.material.chip.a aVar2 = this.f27852a;
        if (aVar2 != null) {
            aVar2.N2(charSequence);
        }
    }

    public void setTextAppearance(@Nullable d dVar) {
        com.google.android.material.chip.a aVar = this.f27852a;
        if (aVar != null) {
            aVar.O2(dVar);
        }
        w();
    }

    public void setTextAppearanceResource(int i10) {
        setTextAppearance(getContext(), i10);
    }

    public void setTextEndPadding(float f10) {
        com.google.android.material.chip.a aVar = this.f27852a;
        if (aVar != null) {
            aVar.Q2(f10);
        }
    }

    public void setTextEndPaddingResource(int i10) {
        com.google.android.material.chip.a aVar = this.f27852a;
        if (aVar != null) {
            aVar.R2(i10);
        }
    }

    @Override
    public void setTextSize(int i10, float f10) {
        super.setTextSize(i10, f10);
        com.google.android.material.chip.a aVar = this.f27852a;
        if (aVar != null) {
            aVar.S2(TypedValue.applyDimension(i10, f10, getResources().getDisplayMetrics()));
        }
        w();
    }

    public void setTextStartPadding(float f10) {
        com.google.android.material.chip.a aVar = this.f27852a;
        if (aVar != null) {
            aVar.T2(f10);
        }
    }

    public void setTextStartPaddingResource(int i10) {
        com.google.android.material.chip.a aVar = this.f27852a;
        if (aVar != null) {
            aVar.U2(i10);
        }
    }

    public boolean shouldEnsureMinTouchTargetSize() {
        return this.f27862k;
    }

    public Chip(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.chipStyle);
    }

    public void setCloseIconVisible(boolean z10) {
        com.google.android.material.chip.a aVar = this.f27852a;
        if (aVar != null) {
            aVar.y2(z10);
        }
        s();
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public Chip(Context context, AttributeSet attributeSet, int i10) {
        int i11 = f27848t;
        super(db.a.c(context, attributeSet, i10, i11), attributeSet, i10);
        this.f27868q = new Rect();
        this.f27869r = new RectF();
        this.f27870s = new a();
        Context context2 = getContext();
        x(attributeSet);
        com.google.android.material.chip.a aVarD0 = com.google.android.material.chip.a.D0(context2, attributeSet, i10, i11);
        m(context2, attributeSet, i10);
        setChipDrawable(aVarD0);
        aVarD0.c0(ViewCompat.getElevation(this));
        TypedArray typedArrayI = b0.i(context2, attributeSet, R$styleable.Chip, i10, i11, new int[0]);
        boolean zHasValue = typedArrayI.hasValue(R$styleable.Chip_shapeAppearance);
        typedArrayI.recycle();
        this.f27866o = new c(this);
        s();
        if (!zHasValue) {
            n();
        }
        setChecked(this.f27858g);
        setText(aVarD0.p1());
        setEllipsize(aVarD0.j1());
        w();
        if (!this.f27852a.W2()) {
            setLines(1);
            setHorizontallyScrolling(true);
        }
        setGravity(8388627);
        v();
        if (shouldEnsureMinTouchTargetSize()) {
            setMinHeight(this.f27864m);
        }
        this.f27863l = ViewCompat.getLayoutDirection(this);
        super.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() {
            @Override
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z10) {
                this.f72610a.p(compoundButton, z10);
            }
        });
    }

    public void setCheckedIconVisible(boolean z10) {
        com.google.android.material.chip.a aVar = this.f27852a;
        if (aVar != null) {
            aVar.O1(z10);
        }
    }

    public void setChipIconVisible(boolean z10) {
        com.google.android.material.chip.a aVar = this.f27852a;
        if (aVar != null) {
            aVar.c2(z10);
        }
    }

    @Override
    public void setCompoundDrawablesRelativeWithIntrinsicBounds(@Nullable Drawable drawable, @Nullable Drawable drawable2, @Nullable Drawable drawable3, @Nullable Drawable drawable4) {
        if (drawable != null) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        }
        if (drawable3 == null) {
            super.setCompoundDrawablesRelativeWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
            return;
        }
        throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
    }

    @Override
    public void setCompoundDrawablesWithIntrinsicBounds(@Nullable Drawable drawable, @Nullable Drawable drawable2, @Nullable Drawable drawable3, @Nullable Drawable drawable4) {
        if (drawable != null) {
            throw new UnsupportedOperationException("Please set left drawable using R.attr#chipIcon.");
        }
        if (drawable3 == null) {
            super.setCompoundDrawablesWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
            return;
        }
        throw new UnsupportedOperationException("Please set right drawable using R.attr#closeIcon.");
    }

    @Override
    public void setTextAppearance(Context context, int i10) {
        super.setTextAppearance(context, i10);
        com.google.android.material.chip.a aVar = this.f27852a;
        if (aVar != null) {
            aVar.P2(i10);
        }
        w();
    }

    @Override
    public void setTextAppearance(int i10) {
        super.setTextAppearance(i10);
        com.google.android.material.chip.a aVar = this.f27852a;
        if (aVar != null) {
            aVar.P2(i10);
        }
        w();
    }
}
