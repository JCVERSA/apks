package androidx.appcompat.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.text.InputFilter;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.Button;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.R$attr;
import androidx.core.view.TintableBackgroundView;

public class AppCompatButton extends Button implements TintableBackgroundView, androidx.core.widget.o {

    @NonNull
    private h mAppCompatEmojiTextHelper;
    private final c mBackgroundTintHelper;
    private final AppCompatTextHelper mTextHelper;

    public AppCompatButton(@NonNull Context context) {
        this(context, null);
    }

    @NonNull
    private h getEmojiTextViewHelper() {
        if (this.mAppCompatEmojiTextHelper == null) {
            this.mAppCompatEmojiTextHelper = new h(this);
        }
        return this.mAppCompatEmojiTextHelper;
    }

    @Override
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        c cVar = this.mBackgroundTintHelper;
        if (cVar != null) {
            cVar.b();
        }
        AppCompatTextHelper appCompatTextHelper = this.mTextHelper;
        if (appCompatTextHelper != null) {
            appCompatTextHelper.b();
        }
    }

    @Override
    public int getAutoSizeMaxTextSize() {
        if (u0.f1814c) {
            return super.getAutoSizeMaxTextSize();
        }
        AppCompatTextHelper appCompatTextHelper = this.mTextHelper;
        if (appCompatTextHelper != null) {
            return appCompatTextHelper.e();
        }
        return -1;
    }

    @Override
    public int getAutoSizeMinTextSize() {
        if (u0.f1814c) {
            return super.getAutoSizeMinTextSize();
        }
        AppCompatTextHelper appCompatTextHelper = this.mTextHelper;
        if (appCompatTextHelper != null) {
            return appCompatTextHelper.f();
        }
        return -1;
    }

    @Override
    public int getAutoSizeStepGranularity() {
        if (u0.f1814c) {
            return super.getAutoSizeStepGranularity();
        }
        AppCompatTextHelper appCompatTextHelper = this.mTextHelper;
        if (appCompatTextHelper != null) {
            return appCompatTextHelper.g();
        }
        return -1;
    }

    @Override
    public int[] getAutoSizeTextAvailableSizes() {
        if (u0.f1814c) {
            return super.getAutoSizeTextAvailableSizes();
        }
        AppCompatTextHelper appCompatTextHelper = this.mTextHelper;
        return appCompatTextHelper != null ? appCompatTextHelper.h() : new int[0];
    }

    @Override
    @SuppressLint({"WrongConstant"})
    public int getAutoSizeTextType() {
        if (u0.f1814c) {
            return super.getAutoSizeTextType() == 1 ? 1 : 0;
        }
        AppCompatTextHelper appCompatTextHelper = this.mTextHelper;
        if (appCompatTextHelper != null) {
            return appCompatTextHelper.i();
        }
        return 0;
    }

    @Override
    @Nullable
    public ActionMode.Callback getCustomSelectionActionModeCallback() {
        return androidx.core.widget.l.r(super.getCustomSelectionActionModeCallback());
    }

    @Override
    @Nullable
    public ColorStateList getSupportBackgroundTintList() {
        c cVar = this.mBackgroundTintHelper;
        if (cVar != null) {
            return cVar.c();
        }
        return null;
    }

    @Override
    @Nullable
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        c cVar = this.mBackgroundTintHelper;
        if (cVar != null) {
            return cVar.d();
        }
        return null;
    }

    @Nullable
    public ColorStateList getSupportCompoundDrawablesTintList() {
        return this.mTextHelper.j();
    }

    @Nullable
    public PorterDuff.Mode getSupportCompoundDrawablesTintMode() {
        return this.mTextHelper.k();
    }

    public boolean isEmojiCompatEnabled() {
        return getEmojiTextViewHelper().b();
    }

    @Override
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName(Button.class.getName());
    }

    @Override
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(Button.class.getName());
    }

    @Override
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        super.onLayout(z10, i10, i11, i12, i13);
        AppCompatTextHelper appCompatTextHelper = this.mTextHelper;
        if (appCompatTextHelper != null) {
            appCompatTextHelper.o(z10, i10, i11, i12, i13);
        }
    }

    @Override
    protected void onTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
        super.onTextChanged(charSequence, i10, i11, i12);
        AppCompatTextHelper appCompatTextHelper = this.mTextHelper;
        if (appCompatTextHelper == null || u0.f1814c || !appCompatTextHelper.l()) {
            return;
        }
        this.mTextHelper.c();
    }

    @Override
    public void setAllCaps(boolean z10) {
        super.setAllCaps(z10);
        getEmojiTextViewHelper().d(z10);
    }

    @Override
    public void setAutoSizeTextTypeUniformWithConfiguration(int i10, int i11, int i12, int i13) throws IllegalArgumentException {
        if (u0.f1814c) {
            super.setAutoSizeTextTypeUniformWithConfiguration(i10, i11, i12, i13);
            return;
        }
        AppCompatTextHelper appCompatTextHelper = this.mTextHelper;
        if (appCompatTextHelper != null) {
            appCompatTextHelper.t(i10, i11, i12, i13);
        }
    }

    @Override
    public void setAutoSizeTextTypeUniformWithPresetSizes(@NonNull int[] iArr, int i10) throws IllegalArgumentException {
        if (u0.f1814c) {
            super.setAutoSizeTextTypeUniformWithPresetSizes(iArr, i10);
            return;
        }
        AppCompatTextHelper appCompatTextHelper = this.mTextHelper;
        if (appCompatTextHelper != null) {
            appCompatTextHelper.u(iArr, i10);
        }
    }

    @Override
    public void setAutoSizeTextTypeWithDefaults(int i10) {
        if (u0.f1814c) {
            super.setAutoSizeTextTypeWithDefaults(i10);
            return;
        }
        AppCompatTextHelper appCompatTextHelper = this.mTextHelper;
        if (appCompatTextHelper != null) {
            appCompatTextHelper.v(i10);
        }
    }

    @Override
    public void setBackgroundDrawable(@Nullable Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        c cVar = this.mBackgroundTintHelper;
        if (cVar != null) {
            cVar.f(drawable);
        }
    }

    @Override
    public void setBackgroundResource(int i10) {
        super.setBackgroundResource(i10);
        c cVar = this.mBackgroundTintHelper;
        if (cVar != null) {
            cVar.g(i10);
        }
    }

    @Override
    public void setCustomSelectionActionModeCallback(@Nullable ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(androidx.core.widget.l.s(this, callback));
    }

    public void setEmojiCompatEnabled(boolean z10) {
        getEmojiTextViewHelper().e(z10);
    }

    @Override
    public void setFilters(@NonNull InputFilter[] inputFilterArr) {
        super.setFilters(getEmojiTextViewHelper().a(inputFilterArr));
    }

    public void setSupportAllCaps(boolean z10) {
        AppCompatTextHelper appCompatTextHelper = this.mTextHelper;
        if (appCompatTextHelper != null) {
            appCompatTextHelper.s(z10);
        }
    }

    @Override
    public void setSupportBackgroundTintList(@Nullable ColorStateList colorStateList) {
        c cVar = this.mBackgroundTintHelper;
        if (cVar != null) {
            cVar.i(colorStateList);
        }
    }

    @Override
    public void setSupportBackgroundTintMode(@Nullable PorterDuff.Mode mode) {
        c cVar = this.mBackgroundTintHelper;
        if (cVar != null) {
            cVar.j(mode);
        }
    }

    @Override
    public void setSupportCompoundDrawablesTintList(@Nullable ColorStateList colorStateList) {
        this.mTextHelper.w(colorStateList);
        this.mTextHelper.b();
    }

    @Override
    public void setSupportCompoundDrawablesTintMode(@Nullable PorterDuff.Mode mode) {
        this.mTextHelper.x(mode);
        this.mTextHelper.b();
    }

    @Override
    public void setTextAppearance(Context context, int i10) {
        super.setTextAppearance(context, i10);
        AppCompatTextHelper appCompatTextHelper = this.mTextHelper;
        if (appCompatTextHelper != null) {
            appCompatTextHelper.q(context, i10);
        }
    }

    @Override
    public void setTextSize(int i10, float f10) {
        if (u0.f1814c) {
            super.setTextSize(i10, f10);
            return;
        }
        AppCompatTextHelper appCompatTextHelper = this.mTextHelper;
        if (appCompatTextHelper != null) {
            appCompatTextHelper.A(i10, f10);
        }
    }

    public AppCompatButton(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.buttonStyle);
    }

    public AppCompatButton(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(g0.b(context), attributeSet, i10);
        f0.a(this, getContext());
        c cVar = new c(this);
        this.mBackgroundTintHelper = cVar;
        cVar.e(attributeSet, i10);
        AppCompatTextHelper appCompatTextHelper = new AppCompatTextHelper(this);
        this.mTextHelper = appCompatTextHelper;
        appCompatTextHelper.m(attributeSet, i10);
        appCompatTextHelper.b();
        getEmojiTextViewHelper().c(attributeSet, i10);
    }
}
