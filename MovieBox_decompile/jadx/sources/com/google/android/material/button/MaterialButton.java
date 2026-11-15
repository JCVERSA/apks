package com.google.android.material.button;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.media.session.c;
import android.text.Layout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.Button;
import android.widget.Checkable;
import android.widget.CompoundButton;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.AppCompatButton;
import androidx.core.view.GravityCompat;
import androidx.core.view.ViewCompat;
import androidx.core.widget.l;
import androidx.customview.view.AbsSavedState;
import cb.j;
import cb.n;
import cb.q;
import com.google.android.material.R$attr;
import com.google.android.material.R$style;
import com.google.android.material.R$styleable;
import com.google.android.material.internal.b0;
import com.google.android.material.internal.f0;
import java.util.Iterator;
import java.util.LinkedHashSet;

public class MaterialButton extends AppCompatButton implements Checkable, q {
    public static final int ICON_GRAVITY_END = 3;
    public static final int ICON_GRAVITY_START = 1;
    public static final int ICON_GRAVITY_TEXT_END = 4;
    public static final int ICON_GRAVITY_TEXT_START = 2;
    public static final int ICON_GRAVITY_TEXT_TOP = 32;
    public static final int ICON_GRAVITY_TOP = 16;

    private static final int[] f27654o = {R.attr.state_checkable};

    private static final int[] f27655p = {R.attr.state_checked};

    private static final int f27656q = R$style.Widget_MaterialComponents_Button;

    private final com.google.android.material.button.a f27657a;

    private final LinkedHashSet f27658b;

    private b f27659c;

    private PorterDuff.Mode f27660d;

    private ColorStateList f27661e;

    private Drawable f27662f;

    private String f27663g;

    private int f27664h;

    private int f27665i;

    private int f27666j;

    private int f27667k;

    private boolean f27668l;

    private boolean f27669m;

    private int f27670n;

    static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();

        boolean f27671a;

        class a implements Parcelable.ClassLoaderCreator {
            a() {
            }

            @Override
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }

            @Override
            public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            @Override
            public SavedState[] newArray(int i10) {
                return new SavedState[i10];
            }
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        private void a(Parcel parcel) {
            this.f27671a = parcel.readInt() == 1;
        }

        @Override
        public void writeToParcel(Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
            parcel.writeInt(this.f27671a ? 1 : 0);
        }

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            if (classLoader == null) {
                getClass().getClassLoader();
            }
            a(parcel);
        }
    }

    public interface a {
    }

    interface b {
        void a(MaterialButton materialButton, boolean z10);
    }

    public MaterialButton(@NonNull Context context) {
        this(context, null);
    }

    private boolean a() {
        int i10 = this.f27670n;
        return i10 == 3 || i10 == 4;
    }

    private boolean b() {
        int i10 = this.f27670n;
        return i10 == 1 || i10 == 2;
    }

    private boolean c() {
        int i10 = this.f27670n;
        return i10 == 16 || i10 == 32;
    }

    private boolean d() {
        return ViewCompat.getLayoutDirection(this) == 1;
    }

    private boolean e() {
        com.google.android.material.button.a aVar = this.f27657a;
        return (aVar == null || aVar.o()) ? false : true;
    }

    private void f() {
        if (b()) {
            l.j(this, this.f27662f, null, null, null);
        } else if (a()) {
            l.j(this, null, null, this.f27662f, null);
        } else if (c()) {
            l.j(this, null, this.f27662f, null, null);
        }
    }

    private void g(boolean z10) {
        Drawable drawable = this.f27662f;
        if (drawable != null) {
            Drawable drawableMutate = a1.a.r(drawable).mutate();
            this.f27662f = drawableMutate;
            a1.a.o(drawableMutate, this.f27661e);
            PorterDuff.Mode mode = this.f27660d;
            if (mode != null) {
                a1.a.p(this.f27662f, mode);
            }
            int intrinsicWidth = this.f27664h;
            if (intrinsicWidth == 0) {
                intrinsicWidth = this.f27662f.getIntrinsicWidth();
            }
            int intrinsicHeight = this.f27664h;
            if (intrinsicHeight == 0) {
                intrinsicHeight = this.f27662f.getIntrinsicHeight();
            }
            Drawable drawable2 = this.f27662f;
            int i10 = this.f27665i;
            int i11 = this.f27666j;
            drawable2.setBounds(i10, i11, intrinsicWidth + i10, intrinsicHeight + i11);
            this.f27662f.setVisible(true, z10);
        }
        if (z10) {
            f();
            return;
        }
        Drawable[] drawableArrA = l.a(this);
        Drawable drawable3 = drawableArrA[0];
        Drawable drawable4 = drawableArrA[1];
        Drawable drawable5 = drawableArrA[2];
        if ((!b() || drawable3 == this.f27662f) && ((!a() || drawable5 == this.f27662f) && (!c() || drawable4 == this.f27662f))) {
            return;
        }
        f();
    }

    private Layout.Alignment getActualTextAlignment() {
        int textAlignment = getTextAlignment();
        if (textAlignment == 1) {
            return getGravityTextAlignment();
        }
        if (textAlignment == 6 || textAlignment == 3) {
            return Layout.Alignment.ALIGN_OPPOSITE;
        }
        return textAlignment != 4 ? Layout.Alignment.ALIGN_NORMAL : Layout.Alignment.ALIGN_CENTER;
    }

    private Layout.Alignment getGravityTextAlignment() {
        int gravity = getGravity() & GravityCompat.RELATIVE_HORIZONTAL_GRAVITY_MASK;
        if (gravity != 1) {
            return (gravity == 5 || gravity == 8388613) ? Layout.Alignment.ALIGN_OPPOSITE : Layout.Alignment.ALIGN_NORMAL;
        }
        return Layout.Alignment.ALIGN_CENTER;
    }

    private int getTextHeight() {
        if (getLineCount() > 1) {
            return getLayout().getHeight();
        }
        TextPaint paint = getPaint();
        String string = getText().toString();
        if (getTransformationMethod() != null) {
            string = getTransformationMethod().getTransformation(string, this).toString();
        }
        Rect rect = new Rect();
        paint.getTextBounds(string, 0, string.length(), rect);
        return Math.min(rect.height(), getLayout().getHeight());
    }

    private int getTextLayoutWidth() {
        int lineCount = getLineCount();
        float fMax = 0.0f;
        for (int i10 = 0; i10 < lineCount; i10++) {
            fMax = Math.max(fMax, getLayout().getLineWidth(i10));
        }
        return (int) Math.ceil(fMax);
    }

    private void h(int i10, int i11) {
        if (this.f27662f == null || getLayout() == null) {
            return;
        }
        if (!b() && !a()) {
            if (c()) {
                this.f27665i = 0;
                if (this.f27670n == 16) {
                    this.f27666j = 0;
                    g(false);
                    return;
                }
                int intrinsicHeight = this.f27664h;
                if (intrinsicHeight == 0) {
                    intrinsicHeight = this.f27662f.getIntrinsicHeight();
                }
                int iMax = Math.max(0, (((((i11 - getTextHeight()) - getPaddingTop()) - intrinsicHeight) - this.f27667k) - getPaddingBottom()) / 2);
                if (this.f27666j != iMax) {
                    this.f27666j = iMax;
                    g(false);
                    return;
                }
                return;
            }
            return;
        }
        this.f27666j = 0;
        Layout.Alignment actualTextAlignment = getActualTextAlignment();
        int i12 = this.f27670n;
        if (i12 == 1 || i12 == 3 || ((i12 == 2 && actualTextAlignment == Layout.Alignment.ALIGN_NORMAL) || (i12 == 4 && actualTextAlignment == Layout.Alignment.ALIGN_OPPOSITE))) {
            this.f27665i = 0;
            g(false);
            return;
        }
        int intrinsicWidth = this.f27664h;
        if (intrinsicWidth == 0) {
            intrinsicWidth = this.f27662f.getIntrinsicWidth();
        }
        int textLayoutWidth = ((((i10 - getTextLayoutWidth()) - ViewCompat.getPaddingEnd(this)) - intrinsicWidth) - this.f27667k) - ViewCompat.getPaddingStart(this);
        if (actualTextAlignment == Layout.Alignment.ALIGN_CENTER) {
            textLayoutWidth /= 2;
        }
        if (d() != (this.f27670n == 4)) {
            textLayoutWidth = -textLayoutWidth;
        }
        if (this.f27665i != textLayoutWidth) {
            this.f27665i = textLayoutWidth;
            g(false);
        }
    }

    public void addOnCheckedChangeListener(@NonNull a aVar) {
        this.f27658b.add(aVar);
    }

    public void clearOnCheckedChangeListeners() {
        this.f27658b.clear();
    }

    @NonNull
    String getA11yClassName() {
        if (TextUtils.isEmpty(this.f27663g)) {
            return (isCheckable() ? CompoundButton.class : Button.class).getName();
        }
        return this.f27663g;
    }

    @Override
    @Nullable
    public ColorStateList getBackgroundTintList() {
        return getSupportBackgroundTintList();
    }

    @Override
    @Nullable
    public PorterDuff.Mode getBackgroundTintMode() {
        return getSupportBackgroundTintMode();
    }

    public int getCornerRadius() {
        if (e()) {
            return this.f27657a.b();
        }
        return 0;
    }

    public Drawable getIcon() {
        return this.f27662f;
    }

    public int getIconGravity() {
        return this.f27670n;
    }

    public int getIconPadding() {
        return this.f27667k;
    }

    public int getIconSize() {
        return this.f27664h;
    }

    public ColorStateList getIconTint() {
        return this.f27661e;
    }

    public PorterDuff.Mode getIconTintMode() {
        return this.f27660d;
    }

    public int getInsetBottom() {
        return this.f27657a.c();
    }

    public int getInsetTop() {
        return this.f27657a.d();
    }

    @Nullable
    public ColorStateList getRippleColor() {
        if (e()) {
            return this.f27657a.h();
        }
        return null;
    }

    @NonNull
    public n getShapeAppearanceModel() {
        if (e()) {
            return this.f27657a.i();
        }
        throw new IllegalStateException("Attempted to get ShapeAppearanceModel from a MaterialButton which has an overwritten background.");
    }

    public ColorStateList getStrokeColor() {
        if (e()) {
            return this.f27657a.j();
        }
        return null;
    }

    public int getStrokeWidth() {
        if (e()) {
            return this.f27657a.k();
        }
        return 0;
    }

    @Override
    @Nullable
    public ColorStateList getSupportBackgroundTintList() {
        return e() ? this.f27657a.l() : super.getSupportBackgroundTintList();
    }

    @Override
    @Nullable
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        return e() ? this.f27657a.m() : super.getSupportBackgroundTintMode();
    }

    public boolean isCheckable() {
        com.google.android.material.button.a aVar = this.f27657a;
        return aVar != null && aVar.p();
    }

    @Override
    public boolean isChecked() {
        return this.f27668l;
    }

    public boolean isToggleCheckedStateOnClick() {
        return this.f27657a.q();
    }

    @Override
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (e()) {
            j.f(this, this.f27657a.f());
        }
    }

    @Override
    protected int[] onCreateDrawableState(int i10) {
        int[] iArrOnCreateDrawableState = super.onCreateDrawableState(i10 + 2);
        if (isCheckable()) {
            View.mergeDrawableStates(iArrOnCreateDrawableState, f27654o);
        }
        if (isChecked()) {
            View.mergeDrawableStates(iArrOnCreateDrawableState, f27655p);
        }
        return iArrOnCreateDrawableState;
    }

    @Override
    public void onInitializeAccessibilityEvent(@NonNull AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName(getA11yClassName());
        accessibilityEvent.setChecked(isChecked());
    }

    @Override
    public void onInitializeAccessibilityNodeInfo(@NonNull AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(getA11yClassName());
        accessibilityNodeInfo.setCheckable(isCheckable());
        accessibilityNodeInfo.setChecked(isChecked());
        accessibilityNodeInfo.setClickable(isClickable());
    }

    @Override
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        super.onLayout(z10, i10, i11, i12, i13);
        h(getMeasuredWidth(), getMeasuredHeight());
    }

    @Override
    public void onRestoreInstanceState(@Nullable Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        setChecked(savedState.f27671a);
    }

    @Override
    @NonNull
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.f27671a = this.f27668l;
        return savedState;
    }

    @Override
    protected void onTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
        super.onTextChanged(charSequence, i10, i11, i12);
        h(getMeasuredWidth(), getMeasuredHeight());
    }

    @Override
    public boolean performClick() {
        if (this.f27657a.q()) {
            toggle();
        }
        return super.performClick();
    }

    @Override
    public void refreshDrawableState() {
        super.refreshDrawableState();
        if (this.f27662f != null) {
            if (this.f27662f.setState(getDrawableState())) {
                invalidate();
            }
        }
    }

    public void removeOnCheckedChangeListener(@NonNull a aVar) {
        this.f27658b.remove(aVar);
    }

    void setA11yClassName(@Nullable String str) {
        this.f27663g = str;
    }

    @Override
    public void setBackground(@NonNull Drawable drawable) {
        setBackgroundDrawable(drawable);
    }

    @Override
    public void setBackgroundColor(int i10) {
        if (e()) {
            this.f27657a.s(i10);
        } else {
            super.setBackgroundColor(i10);
        }
    }

    @Override
    public void setBackgroundDrawable(@NonNull Drawable drawable) {
        if (!e()) {
            super.setBackgroundDrawable(drawable);
        } else {
            if (drawable == getBackground()) {
                getBackground().setState(drawable.getState());
                return;
            }
            Log.w("MaterialButton", "MaterialButton manages its own background to control elevation, shape, color and states. Consider using backgroundTint, shapeAppearance and other attributes where available. A custom background will ignore these attributes and you should consider handling interaction states such as pressed, focused and disabled");
            this.f27657a.t();
            super.setBackgroundDrawable(drawable);
        }
    }

    @Override
    public void setBackgroundResource(int i10) {
        setBackgroundDrawable(i10 != 0 ? g.a.b(getContext(), i10) : null);
    }

    @Override
    public void setBackgroundTintList(@Nullable ColorStateList colorStateList) {
        setSupportBackgroundTintList(colorStateList);
    }

    @Override
    public void setBackgroundTintMode(@Nullable PorterDuff.Mode mode) {
        setSupportBackgroundTintMode(mode);
    }

    public void setCheckable(boolean z10) {
        if (e()) {
            this.f27657a.u(z10);
        }
    }

    @Override
    public void setChecked(boolean z10) {
        if (isCheckable() && isEnabled() && this.f27668l != z10) {
            this.f27668l = z10;
            refreshDrawableState();
            if (getParent() instanceof MaterialButtonToggleGroup) {
                ((MaterialButtonToggleGroup) getParent()).j(this, this.f27668l);
            }
            if (this.f27669m) {
                return;
            }
            this.f27669m = true;
            Iterator it = this.f27658b.iterator();
            if (it.hasNext()) {
                c.a(it.next());
                throw null;
            }
            this.f27669m = false;
        }
    }

    public void setCornerRadius(int i10) {
        if (e()) {
            this.f27657a.v(i10);
        }
    }

    public void setCornerRadiusResource(int i10) {
        if (e()) {
            setCornerRadius(getResources().getDimensionPixelSize(i10));
        }
    }

    @Override
    public void setElevation(float f10) {
        super.setElevation(f10);
        if (e()) {
            this.f27657a.f().c0(f10);
        }
    }

    public void setIcon(@Nullable Drawable drawable) {
        if (this.f27662f != drawable) {
            this.f27662f = drawable;
            g(true);
            h(getMeasuredWidth(), getMeasuredHeight());
        }
    }

    public void setIconGravity(int i10) {
        if (this.f27670n != i10) {
            this.f27670n = i10;
            h(getMeasuredWidth(), getMeasuredHeight());
        }
    }

    public void setIconPadding(int i10) {
        if (this.f27667k != i10) {
            this.f27667k = i10;
            setCompoundDrawablePadding(i10);
        }
    }

    public void setIconResource(int i10) {
        setIcon(i10 != 0 ? g.a.b(getContext(), i10) : null);
    }

    public void setIconSize(int i10) {
        if (i10 < 0) {
            throw new IllegalArgumentException("iconSize cannot be less than 0");
        }
        if (this.f27664h != i10) {
            this.f27664h = i10;
            g(true);
        }
    }

    public void setIconTint(@Nullable ColorStateList colorStateList) {
        if (this.f27661e != colorStateList) {
            this.f27661e = colorStateList;
            g(false);
        }
    }

    public void setIconTintMode(PorterDuff.Mode mode) {
        if (this.f27660d != mode) {
            this.f27660d = mode;
            g(false);
        }
    }

    public void setIconTintResource(int i10) {
        setIconTint(g.a.a(getContext(), i10));
    }

    public void setInsetBottom(int i10) {
        this.f27657a.w(i10);
    }

    public void setInsetTop(int i10) {
        this.f27657a.x(i10);
    }

    void setInternalBackground(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
    }

    void setOnPressedChangeListenerInternal(@Nullable b bVar) {
        this.f27659c = bVar;
    }

    @Override
    public void setPressed(boolean z10) {
        b bVar = this.f27659c;
        if (bVar != null) {
            bVar.a(this, z10);
        }
        super.setPressed(z10);
    }

    public void setRippleColor(@Nullable ColorStateList colorStateList) {
        if (e()) {
            this.f27657a.y(colorStateList);
        }
    }

    public void setRippleColorResource(int i10) {
        if (e()) {
            setRippleColor(g.a.a(getContext(), i10));
        }
    }

    @Override
    public void setShapeAppearanceModel(@NonNull n nVar) {
        if (!e()) {
            throw new IllegalStateException("Attempted to set ShapeAppearanceModel on a MaterialButton which has an overwritten background.");
        }
        this.f27657a.z(nVar);
    }

    void setShouldDrawSurfaceColorStroke(boolean z10) {
        if (e()) {
            this.f27657a.A(z10);
        }
    }

    public void setStrokeColor(@Nullable ColorStateList colorStateList) {
        if (e()) {
            this.f27657a.B(colorStateList);
        }
    }

    public void setStrokeColorResource(int i10) {
        if (e()) {
            setStrokeColor(g.a.a(getContext(), i10));
        }
    }

    public void setStrokeWidth(int i10) {
        if (e()) {
            this.f27657a.C(i10);
        }
    }

    public void setStrokeWidthResource(int i10) {
        if (e()) {
            setStrokeWidth(getResources().getDimensionPixelSize(i10));
        }
    }

    @Override
    public void setSupportBackgroundTintList(@Nullable ColorStateList colorStateList) {
        if (e()) {
            this.f27657a.D(colorStateList);
        } else {
            super.setSupportBackgroundTintList(colorStateList);
        }
    }

    @Override
    public void setSupportBackgroundTintMode(@Nullable PorterDuff.Mode mode) {
        if (e()) {
            this.f27657a.E(mode);
        } else {
            super.setSupportBackgroundTintMode(mode);
        }
    }

    @Override
    public void setTextAlignment(int i10) {
        super.setTextAlignment(i10);
        h(getMeasuredWidth(), getMeasuredHeight());
    }

    public void setToggleCheckedStateOnClick(boolean z10) {
        this.f27657a.F(z10);
    }

    @Override
    public void toggle() {
        setChecked(!this.f27668l);
    }

    public MaterialButton(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.materialButtonStyle);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public MaterialButton(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        int i11 = f27656q;
        super(db.a.c(context, attributeSet, i10, i11), attributeSet, i10);
        this.f27658b = new LinkedHashSet();
        this.f27668l = false;
        this.f27669m = false;
        Context context2 = getContext();
        TypedArray typedArrayI = b0.i(context2, attributeSet, R$styleable.MaterialButton, i10, i11, new int[0]);
        this.f27667k = typedArrayI.getDimensionPixelSize(R$styleable.MaterialButton_iconPadding, 0);
        this.f27660d = f0.r(typedArrayI.getInt(R$styleable.MaterialButton_iconTintMode, -1), PorterDuff.Mode.SRC_IN);
        this.f27661e = za.c.a(getContext(), typedArrayI, R$styleable.MaterialButton_iconTint);
        this.f27662f = za.c.e(getContext(), typedArrayI, R$styleable.MaterialButton_icon);
        this.f27670n = typedArrayI.getInteger(R$styleable.MaterialButton_iconGravity, 1);
        this.f27664h = typedArrayI.getDimensionPixelSize(R$styleable.MaterialButton_iconSize, 0);
        com.google.android.material.button.a aVar = new com.google.android.material.button.a(this, n.e(context2, attributeSet, i10, i11).m());
        this.f27657a = aVar;
        aVar.r(typedArrayI);
        typedArrayI.recycle();
        setCompoundDrawablePadding(this.f27667k);
        g(this.f27662f != null);
    }
}
