package com.google.android.material.checkbox;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.AnimatedStateListDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.autofill.AutofillManager;
import android.widget.CompoundButton;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.AppCompatCheckBox;
import androidx.appcompat.widget.j0;
import com.google.android.material.R$attr;
import com.google.android.material.R$drawable;
import com.google.android.material.R$id;
import com.google.android.material.R$string;
import com.google.android.material.R$style;
import com.google.android.material.R$styleable;
import com.google.android.material.drawable.d;
import com.google.android.material.internal.b0;
import com.google.android.material.internal.f0;
import java.util.Iterator;
import java.util.LinkedHashSet;

public class MaterialCheckBox extends AppCompatCheckBox {
    public static final int STATE_CHECKED = 1;
    public static final int STATE_INDETERMINATE = 2;
    public static final int STATE_UNCHECKED = 0;

    private static final int f27821u = R$style.Widget_MaterialComponents_CompoundButton_CheckBox;

    private static final int[] f27822v = {R$attr.state_indeterminate};

    private static final int[] f27823w;

    private static final int[][] f27824x;

    private static final int f27825y;

    private final LinkedHashSet f27826a;

    private final LinkedHashSet f27827b;

    private ColorStateList f27828c;

    private boolean f27829d;

    private boolean f27830e;

    private boolean f27831f;

    private CharSequence f27832g;

    private Drawable f27833h;

    private Drawable f27834i;

    private boolean f27835j;

    ColorStateList f27836k;

    ColorStateList f27837l;

    private PorterDuff.Mode f27838m;

    private int f27839n;

    private int[] f27840o;

    private boolean f27841p;

    private CharSequence f27842q;

    private CompoundButton.OnCheckedChangeListener f27843r;

    private final androidx.vectordrawable.graphics.drawable.c f27844s;

    private final androidx.vectordrawable.graphics.drawable.b f27845t;

    static class SavedState extends View.BaseSavedState {

        @NonNull
        public static final Parcelable.Creator<SavedState> CREATOR = new a();

        int f27846a;

        class a implements Parcelable.Creator {
            a() {
            }

            @Override
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }

            @Override
            public SavedState[] newArray(int i10) {
                return new SavedState[i10];
            }
        }

        SavedState(Parcel parcel, a aVar) {
            this(parcel);
        }

        private String a() {
            int i10 = this.f27846a;
            if (i10 != 1) {
                return i10 != 2 ? "unchecked" : "indeterminate";
            }
            return "checked";
        }

        public String toString() {
            return "MaterialCheckBox.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " CheckedState=" + a() + "}";
        }

        @Override
        public void writeToParcel(Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
            parcel.writeValue(Integer.valueOf(this.f27846a));
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        private SavedState(Parcel parcel) {
            super(parcel);
            this.f27846a = ((Integer) parcel.readValue(getClass().getClassLoader())).intValue();
        }
    }

    class a extends androidx.vectordrawable.graphics.drawable.b {
        a() {
        }

        @Override
        public void onAnimationEnd(Drawable drawable) {
            super.onAnimationEnd(drawable);
            ColorStateList colorStateList = MaterialCheckBox.this.f27836k;
            if (colorStateList != null) {
                a1.a.o(drawable, colorStateList);
            }
        }

        @Override
        public void onAnimationStart(Drawable drawable) {
            super.onAnimationStart(drawable);
            MaterialCheckBox materialCheckBox = MaterialCheckBox.this;
            ColorStateList colorStateList = materialCheckBox.f27836k;
            if (colorStateList != null) {
                a1.a.n(drawable, colorStateList.getColorForState(materialCheckBox.f27840o, MaterialCheckBox.this.f27836k.getDefaultColor()));
            }
        }
    }

    public interface b {
    }

    public interface c {
    }

    static {
        int i10 = R$attr.state_error;
        f27823w = new int[]{i10};
        f27824x = new int[][]{new int[]{R.attr.state_enabled, i10}, new int[]{R.attr.state_enabled, R.attr.state_checked}, new int[]{R.attr.state_enabled, -16842912}, new int[]{-16842910, R.attr.state_checked}, new int[]{-16842910, -16842912}};
        f27825y = Resources.getSystem().getIdentifier("btn_check_material_anim", "drawable", "android");
    }

    public MaterialCheckBox(Context context) {
        this(context, null);
    }

    private boolean b(j0 j0Var) {
        return j0Var.n(R$styleable.MaterialCheckBox_android_button, 0) == f27825y && j0Var.n(R$styleable.MaterialCheckBox_buttonCompat, 0) == 0;
    }

    private void c() {
        this.f27833h = d.d(this.f27833h, this.f27836k, androidx.core.widget.b.c(this));
        this.f27834i = d.d(this.f27834i, this.f27837l, this.f27838m);
        e();
        f();
        super.setButtonDrawable(d.a(this.f27833h, this.f27834i));
        refreshDrawableState();
    }

    private void d() {
        if (Build.VERSION.SDK_INT < 30 || this.f27842q != null) {
            return;
        }
        super.setStateDescription(getButtonStateDescription());
    }

    private void e() {
        androidx.vectordrawable.graphics.drawable.c cVar;
        if (this.f27835j) {
            androidx.vectordrawable.graphics.drawable.c cVar2 = this.f27844s;
            if (cVar2 != null) {
                cVar2.g(this.f27845t);
                this.f27844s.c(this.f27845t);
            }
            if (Build.VERSION.SDK_INT >= 24) {
                Drawable drawable = this.f27833h;
                if (!(drawable instanceof AnimatedStateListDrawable) || (cVar = this.f27844s) == null) {
                    return;
                }
                ((AnimatedStateListDrawable) drawable).addTransition(R$id.checked, R$id.unchecked, cVar, false);
                ((AnimatedStateListDrawable) this.f27833h).addTransition(R$id.indeterminate, R$id.unchecked, this.f27844s, false);
            }
        }
    }

    private void f() {
        ColorStateList colorStateList;
        ColorStateList colorStateList2;
        Drawable drawable = this.f27833h;
        if (drawable != null && (colorStateList2 = this.f27836k) != null) {
            a1.a.o(drawable, colorStateList2);
        }
        Drawable drawable2 = this.f27834i;
        if (drawable2 == null || (colorStateList = this.f27837l) == null) {
            return;
        }
        a1.a.o(drawable2, colorStateList);
    }

    private void g() {
    }

    @NonNull
    private String getButtonStateDescription() {
        int i10 = this.f27839n;
        if (i10 == 1) {
            return getResources().getString(R$string.mtrl_checkbox_state_description_checked);
        }
        return i10 == 0 ? getResources().getString(R$string.mtrl_checkbox_state_description_unchecked) : getResources().getString(R$string.mtrl_checkbox_state_description_indeterminate);
    }

    private ColorStateList getMaterialThemeColorsTintList() {
        if (this.f27828c == null) {
            int[][] iArr = f27824x;
            int[] iArr2 = new int[iArr.length];
            int iD = com.google.android.material.color.b.d(this, R$attr.colorControlActivated);
            int iD2 = com.google.android.material.color.b.d(this, R$attr.colorError);
            int iD3 = com.google.android.material.color.b.d(this, R$attr.colorSurface);
            int iD4 = com.google.android.material.color.b.d(this, R$attr.colorOnSurface);
            iArr2[0] = com.google.android.material.color.b.j(iD3, iD2, 1.0f);
            iArr2[1] = com.google.android.material.color.b.j(iD3, iD, 1.0f);
            iArr2[2] = com.google.android.material.color.b.j(iD3, iD4, 0.54f);
            iArr2[3] = com.google.android.material.color.b.j(iD3, iD4, 0.38f);
            iArr2[4] = com.google.android.material.color.b.j(iD3, iD4, 0.38f);
            this.f27828c = new ColorStateList(iArr, iArr2);
        }
        return this.f27828c;
    }

    @Nullable
    private ColorStateList getSuperButtonTintList() {
        ColorStateList colorStateList = this.f27836k;
        if (colorStateList != null) {
            return colorStateList;
        }
        return super.getButtonTintList() != null ? super.getButtonTintList() : getSupportButtonTintList();
    }

    public void addOnCheckedStateChangedListener(@NonNull b bVar) {
        this.f27827b.add(bVar);
    }

    public void addOnErrorChangedListener(@NonNull c cVar) {
        this.f27826a.add(cVar);
    }

    public void clearOnCheckedStateChangedListeners() {
        this.f27827b.clear();
    }

    public void clearOnErrorChangedListeners() {
        this.f27826a.clear();
    }

    @Override
    @Nullable
    public Drawable getButtonDrawable() {
        return this.f27833h;
    }

    @Nullable
    public Drawable getButtonIconDrawable() {
        return this.f27834i;
    }

    @Nullable
    public ColorStateList getButtonIconTintList() {
        return this.f27837l;
    }

    @NonNull
    public PorterDuff.Mode getButtonIconTintMode() {
        return this.f27838m;
    }

    @Override
    @Nullable
    public ColorStateList getButtonTintList() {
        return this.f27836k;
    }

    public int getCheckedState() {
        return this.f27839n;
    }

    @Nullable
    public CharSequence getErrorAccessibilityLabel() {
        return this.f27832g;
    }

    public boolean isCenterIfNoTextEnabled() {
        return this.f27830e;
    }

    @Override
    public boolean isChecked() {
        return this.f27839n == 1;
    }

    public boolean isErrorShown() {
        return this.f27831f;
    }

    public boolean isUseMaterialThemeColors() {
        return this.f27829d;
    }

    @Override
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.f27829d && this.f27836k == null && this.f27837l == null) {
            setUseMaterialThemeColors(true);
        }
    }

    @Override
    protected int[] onCreateDrawableState(int i10) {
        int[] iArrOnCreateDrawableState = super.onCreateDrawableState(i10 + 2);
        if (getCheckedState() == 2) {
            View.mergeDrawableStates(iArrOnCreateDrawableState, f27822v);
        }
        if (isErrorShown()) {
            View.mergeDrawableStates(iArrOnCreateDrawableState, f27823w);
        }
        this.f27840o = d.f(iArrOnCreateDrawableState);
        g();
        return iArrOnCreateDrawableState;
    }

    @Override
    protected void onDraw(Canvas canvas) {
        Drawable drawableA;
        if (!this.f27830e || !TextUtils.isEmpty(getText()) || (drawableA = androidx.core.widget.b.a(this)) == null) {
            super.onDraw(canvas);
            return;
        }
        int width = ((getWidth() - drawableA.getIntrinsicWidth()) / 2) * (f0.p(this) ? -1 : 1);
        int iSave = canvas.save();
        canvas.translate(width, 0.0f);
        super.onDraw(canvas);
        canvas.restoreToCount(iSave);
        if (getBackground() != null) {
            Rect bounds = drawableA.getBounds();
            a1.a.l(getBackground(), bounds.left + width, bounds.top, bounds.right + width, bounds.bottom);
        }
    }

    @Override
    public void onInitializeAccessibilityNodeInfo(@Nullable AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        if (accessibilityNodeInfo != null && isErrorShown()) {
            accessibilityNodeInfo.setText(((Object) accessibilityNodeInfo.getText()) + ", " + ((Object) this.f27832g));
        }
    }

    @Override
    public void onRestoreInstanceState(@Nullable Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        setCheckedState(savedState.f27846a);
    }

    @Override
    @Nullable
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.f27846a = getCheckedState();
        return savedState;
    }

    public void removeOnCheckedStateChangedListener(@NonNull b bVar) {
        this.f27827b.remove(bVar);
    }

    public void removeOnErrorChangedListener(@NonNull c cVar) {
        this.f27826a.remove(cVar);
    }

    @Override
    public void setButtonDrawable(int i10) {
        setButtonDrawable(g.a.b(getContext(), i10));
    }

    public void setButtonIconDrawable(@Nullable Drawable drawable) {
        this.f27834i = drawable;
        c();
    }

    public void setButtonIconDrawableResource(int i10) {
        setButtonIconDrawable(g.a.b(getContext(), i10));
    }

    public void setButtonIconTintList(@Nullable ColorStateList colorStateList) {
        if (this.f27837l == colorStateList) {
            return;
        }
        this.f27837l = colorStateList;
        c();
    }

    public void setButtonIconTintMode(@NonNull PorterDuff.Mode mode) {
        if (this.f27838m == mode) {
            return;
        }
        this.f27838m = mode;
        c();
    }

    @Override
    public void setButtonTintList(@Nullable ColorStateList colorStateList) {
        if (this.f27836k == colorStateList) {
            return;
        }
        this.f27836k = colorStateList;
        c();
    }

    @Override
    public void setButtonTintMode(@Nullable PorterDuff.Mode mode) {
        setSupportButtonTintMode(mode);
        c();
    }

    public void setCenterIfNoTextEnabled(boolean z10) {
        this.f27830e = z10;
    }

    @Override
    public void setChecked(boolean z10) {
        setCheckedState(z10 ? 1 : 0);
    }

    public void setCheckedState(int i10) {
        AutofillManager autofillManagerA;
        CompoundButton.OnCheckedChangeListener onCheckedChangeListener;
        if (this.f27839n != i10) {
            this.f27839n = i10;
            super.setChecked(i10 == 1);
            refreshDrawableState();
            d();
            if (this.f27841p) {
                return;
            }
            this.f27841p = true;
            LinkedHashSet linkedHashSet = this.f27827b;
            if (linkedHashSet != null) {
                Iterator it = linkedHashSet.iterator();
                if (it.hasNext()) {
                    android.support.v4.media.session.c.a(it.next());
                    throw null;
                }
            }
            if (this.f27839n != 2 && (onCheckedChangeListener = this.f27843r) != null) {
                onCheckedChangeListener.onCheckedChanged(this, isChecked());
            }
            if (Build.VERSION.SDK_INT >= 26 && (autofillManagerA = x.b.a(getContext().getSystemService(x.a.a()))) != null) {
                autofillManagerA.notifyValueChanged(this);
            }
            this.f27841p = false;
        }
    }

    @Override
    public void setEnabled(boolean z10) {
        super.setEnabled(z10);
        g();
    }

    public void setErrorAccessibilityLabel(@Nullable CharSequence charSequence) {
        this.f27832g = charSequence;
    }

    public void setErrorAccessibilityLabelResource(int i10) {
        setErrorAccessibilityLabel(i10 != 0 ? getResources().getText(i10) : null);
    }

    public void setErrorShown(boolean z10) {
        if (this.f27831f == z10) {
            return;
        }
        this.f27831f = z10;
        refreshDrawableState();
        Iterator it = this.f27826a.iterator();
        if (it.hasNext()) {
            android.support.v4.media.session.c.a(it.next());
            throw null;
        }
    }

    @Override
    public void setOnCheckedChangeListener(@Nullable CompoundButton.OnCheckedChangeListener onCheckedChangeListener) {
        this.f27843r = onCheckedChangeListener;
    }

    @Override
    public void setStateDescription(@Nullable CharSequence charSequence) {
        this.f27842q = charSequence;
        if (charSequence == null) {
            d();
        } else {
            super.setStateDescription(charSequence);
        }
    }

    public void setUseMaterialThemeColors(boolean z10) {
        this.f27829d = z10;
        if (z10) {
            androidx.core.widget.b.d(this, getMaterialThemeColorsTintList());
        } else {
            androidx.core.widget.b.d(this, null);
        }
    }

    @Override
    public void toggle() {
        setChecked(!isChecked());
    }

    public MaterialCheckBox(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.checkboxStyle);
    }

    @Override
    public void setButtonDrawable(@Nullable Drawable drawable) {
        this.f27833h = drawable;
        this.f27835j = false;
        c();
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public MaterialCheckBox(Context context, @Nullable AttributeSet attributeSet, int i10) {
        int i11 = f27821u;
        super(db.a.c(context, attributeSet, i10, i11), attributeSet, i10);
        this.f27826a = new LinkedHashSet();
        this.f27827b = new LinkedHashSet();
        this.f27844s = androidx.vectordrawable.graphics.drawable.c.a(getContext(), R$drawable.mtrl_checkbox_button_checked_unchecked);
        this.f27845t = new a();
        Context context2 = getContext();
        this.f27833h = androidx.core.widget.b.a(this);
        this.f27836k = getSuperButtonTintList();
        setSupportButtonTintList(null);
        j0 j0VarJ = b0.j(context2, attributeSet, R$styleable.MaterialCheckBox, i10, i11, new int[0]);
        this.f27834i = j0VarJ.g(R$styleable.MaterialCheckBox_buttonIcon);
        if (this.f27833h != null && b0.g(context2) && b(j0VarJ)) {
            super.setButtonDrawable((Drawable) null);
            this.f27833h = g.a.b(context2, R$drawable.mtrl_checkbox_button);
            this.f27835j = true;
            if (this.f27834i == null) {
                this.f27834i = g.a.b(context2, R$drawable.mtrl_checkbox_button_icon);
            }
        }
        this.f27837l = za.c.b(context2, j0VarJ, R$styleable.MaterialCheckBox_buttonIconTint);
        this.f27838m = f0.r(j0VarJ.k(R$styleable.MaterialCheckBox_buttonIconTintMode, -1), PorterDuff.Mode.SRC_IN);
        this.f27829d = j0VarJ.a(R$styleable.MaterialCheckBox_useMaterialThemeColors, false);
        this.f27830e = j0VarJ.a(R$styleable.MaterialCheckBox_centerIfNoTextEnabled, true);
        this.f27831f = j0VarJ.a(R$styleable.MaterialCheckBox_errorShown, false);
        this.f27832g = j0VarJ.p(R$styleable.MaterialCheckBox_errorAccessibilityLabel);
        if (j0VarJ.s(R$styleable.MaterialCheckBox_checkedState)) {
            setCheckedState(j0VarJ.k(R$styleable.MaterialCheckBox_checkedState, 0));
        }
        j0VarJ.x();
        c();
    }
}
