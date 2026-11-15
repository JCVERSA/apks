package androidx.appcompat.widget;

import android.R;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.InputFilter;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputMethodManager;
import android.view.textclassifier.TextClassifier;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.text.PrecomputedTextCompat;
import androidx.core.view.TintableBackgroundView;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;

public class AppCompatTextView extends TextView implements TintableBackgroundView, androidx.core.widget.o {
    private final androidx.appcompat.widget.c mBackgroundTintHelper;

    @NonNull
    private h mEmojiTextViewHelper;
    private boolean mIsSetTypefaceProcessing;

    @Nullable
    private Future<PrecomputedTextCompat> mPrecomputedTextFuture;

    @Nullable
    private a mSuperCaller;
    private final o mTextClassifierHelper;
    private final AppCompatTextHelper mTextHelper;

    private interface a {
        void a(int[] iArr, int i10);

        void b(int i10);

        int c();

        int d();

        void e(int i10, float f10);

        int[] f();

        TextClassifier g();

        int h();

        void i(TextClassifier textClassifier);

        void j(int i10, int i11, int i12, int i13);

        void k(int i10);

        int l();

        void m(int i10);
    }

    class c extends b {
        c() {
            super();
        }

        @Override
        public void b(int i10) {
            AppCompatTextView.super.setLastBaselineToBottomHeight(i10);
        }

        @Override
        public void k(int i10) {
            AppCompatTextView.super.setFirstBaselineToTopHeight(i10);
        }
    }

    class d extends c {
        d() {
            super();
        }

        @Override
        public void e(int i10, float f10) {
            AppCompatTextView.super.setLineHeight(i10, f10);
        }
    }

    public AppCompatTextView(@NonNull Context context) {
        this(context, null);
    }

    private void a() {
        Future<PrecomputedTextCompat> future = this.mPrecomputedTextFuture;
        if (future != null) {
            try {
                this.mPrecomputedTextFuture = null;
                androidx.core.widget.l.o(this, future.get());
            } catch (InterruptedException | ExecutionException unused) {
            }
        }
    }

    @NonNull
    private h getEmojiTextViewHelper() {
        if (this.mEmojiTextViewHelper == null) {
            this.mEmojiTextViewHelper = new h(this);
        }
        return this.mEmojiTextViewHelper;
    }

    @Override
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        androidx.appcompat.widget.c cVar = this.mBackgroundTintHelper;
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
            return getSuperCaller().h();
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
            return getSuperCaller().d();
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
            return getSuperCaller().l();
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
            return getSuperCaller().f();
        }
        AppCompatTextHelper appCompatTextHelper = this.mTextHelper;
        return appCompatTextHelper != null ? appCompatTextHelper.h() : new int[0];
    }

    @Override
    @SuppressLint({"WrongConstant"})
    public int getAutoSizeTextType() {
        if (u0.f1814c) {
            return getSuperCaller().c() == 1 ? 1 : 0;
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
    public int getFirstBaselineToTopHeight() {
        return androidx.core.widget.l.b(this);
    }

    @Override
    public int getLastBaselineToBottomHeight() {
        return androidx.core.widget.l.c(this);
    }

    a getSuperCaller() {
        if (this.mSuperCaller == null) {
            int i10 = Build.VERSION.SDK_INT;
            if (i10 >= 34) {
                this.mSuperCaller = new d();
            } else if (i10 >= 28) {
                this.mSuperCaller = new c();
            } else if (i10 >= 26) {
                this.mSuperCaller = new b();
            }
        }
        return this.mSuperCaller;
    }

    @Override
    @Nullable
    public ColorStateList getSupportBackgroundTintList() {
        androidx.appcompat.widget.c cVar = this.mBackgroundTintHelper;
        if (cVar != null) {
            return cVar.c();
        }
        return null;
    }

    @Override
    @Nullable
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        androidx.appcompat.widget.c cVar = this.mBackgroundTintHelper;
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

    @Override
    public CharSequence getText() {
        a();
        return super.getText();
    }

    @Override
    @NonNull
    public TextClassifier getTextClassifier() {
        o oVar;
        return (Build.VERSION.SDK_INT >= 28 || (oVar = this.mTextClassifierHelper) == null) ? getSuperCaller().g() : oVar.a();
    }

    @NonNull
    public PrecomputedTextCompat.b getTextMetricsParamsCompat() {
        return androidx.core.widget.l.g(this);
    }

    public boolean isEmojiCompatEnabled() {
        return getEmojiTextViewHelper().b();
    }

    @Override
    public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        InputConnection inputConnectionOnCreateInputConnection = super.onCreateInputConnection(editorInfo);
        this.mTextHelper.r(this, inputConnectionOnCreateInputConnection, editorInfo);
        return i.a(inputConnectionOnCreateInputConnection, editorInfo, this);
    }

    @Override
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        int i10 = Build.VERSION.SDK_INT;
        if (i10 < 30 || i10 >= 33 || !onCheckIsTextEditor()) {
            return;
        }
        ((InputMethodManager) getContext().getSystemService("input_method")).isActive(this);
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
    protected void onMeasure(int i10, int i11) {
        a();
        super.onMeasure(i10, i11);
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
            getSuperCaller().j(i10, i11, i12, i13);
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
            getSuperCaller().a(iArr, i10);
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
            getSuperCaller().m(i10);
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
        androidx.appcompat.widget.c cVar = this.mBackgroundTintHelper;
        if (cVar != null) {
            cVar.f(drawable);
        }
    }

    @Override
    public void setBackgroundResource(int i10) {
        super.setBackgroundResource(i10);
        androidx.appcompat.widget.c cVar = this.mBackgroundTintHelper;
        if (cVar != null) {
            cVar.g(i10);
        }
    }

    @Override
    public void setCompoundDrawables(@Nullable Drawable drawable, @Nullable Drawable drawable2, @Nullable Drawable drawable3, @Nullable Drawable drawable4) {
        super.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
        AppCompatTextHelper appCompatTextHelper = this.mTextHelper;
        if (appCompatTextHelper != null) {
            appCompatTextHelper.p();
        }
    }

    @Override
    public void setCompoundDrawablesRelative(@Nullable Drawable drawable, @Nullable Drawable drawable2, @Nullable Drawable drawable3, @Nullable Drawable drawable4) {
        super.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
        AppCompatTextHelper appCompatTextHelper = this.mTextHelper;
        if (appCompatTextHelper != null) {
            appCompatTextHelper.p();
        }
    }

    @Override
    public void setCompoundDrawablesRelativeWithIntrinsicBounds(@Nullable Drawable drawable, @Nullable Drawable drawable2, @Nullable Drawable drawable3, @Nullable Drawable drawable4) {
        super.setCompoundDrawablesRelativeWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
        AppCompatTextHelper appCompatTextHelper = this.mTextHelper;
        if (appCompatTextHelper != null) {
            appCompatTextHelper.p();
        }
    }

    @Override
    public void setCompoundDrawablesWithIntrinsicBounds(@Nullable Drawable drawable, @Nullable Drawable drawable2, @Nullable Drawable drawable3, @Nullable Drawable drawable4) {
        super.setCompoundDrawablesWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
        AppCompatTextHelper appCompatTextHelper = this.mTextHelper;
        if (appCompatTextHelper != null) {
            appCompatTextHelper.p();
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

    @Override
    public void setFirstBaselineToTopHeight(int i10) {
        if (Build.VERSION.SDK_INT >= 28) {
            getSuperCaller().k(i10);
        } else {
            androidx.core.widget.l.k(this, i10);
        }
    }

    @Override
    public void setLastBaselineToBottomHeight(int i10) {
        if (Build.VERSION.SDK_INT >= 28) {
            getSuperCaller().b(i10);
        } else {
            androidx.core.widget.l.l(this, i10);
        }
    }

    @Override
    public void setLineHeight(int i10) {
        androidx.core.widget.l.m(this, i10);
    }

    public void setPrecomputedText(@NonNull PrecomputedTextCompat precomputedTextCompat) {
        androidx.core.widget.l.o(this, precomputedTextCompat);
    }

    @Override
    public void setSupportBackgroundTintList(@Nullable ColorStateList colorStateList) {
        androidx.appcompat.widget.c cVar = this.mBackgroundTintHelper;
        if (cVar != null) {
            cVar.i(colorStateList);
        }
    }

    @Override
    public void setSupportBackgroundTintMode(@Nullable PorterDuff.Mode mode) {
        androidx.appcompat.widget.c cVar = this.mBackgroundTintHelper;
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
    public void setTextClassifier(@Nullable TextClassifier textClassifier) {
        o oVar;
        if (Build.VERSION.SDK_INT >= 28 || (oVar = this.mTextClassifierHelper) == null) {
            getSuperCaller().i(textClassifier);
        } else {
            oVar.b(textClassifier);
        }
    }

    public void setTextFuture(@Nullable Future<PrecomputedTextCompat> future) {
        this.mPrecomputedTextFuture = future;
        if (future != null) {
            requestLayout();
        }
    }

    public void setTextMetricsParamsCompat(@NonNull PrecomputedTextCompat.b bVar) {
        androidx.core.widget.l.q(this, bVar);
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

    @Override
    public void setTypeface(@Nullable Typeface typeface, int i10) {
        if (this.mIsSetTypefaceProcessing) {
            return;
        }
        Typeface typefaceA = (typeface == null || i10 <= 0) ? null : z0.i.a(getContext(), typeface, i10);
        this.mIsSetTypefaceProcessing = true;
        if (typefaceA != null) {
            typeface = typefaceA;
        }
        try {
            super.setTypeface(typeface, i10);
        } finally {
            this.mIsSetTypefaceProcessing = false;
        }
    }

    public AppCompatTextView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.textViewStyle);
    }

    @Override
    public void setLineHeight(int i10, float f10) {
        if (Build.VERSION.SDK_INT >= 34) {
            getSuperCaller().e(i10, f10);
        } else {
            androidx.core.widget.l.n(this, i10, f10);
        }
    }

    public AppCompatTextView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(g0.b(context), attributeSet, i10);
        this.mIsSetTypefaceProcessing = false;
        this.mSuperCaller = null;
        f0.a(this, getContext());
        androidx.appcompat.widget.c cVar = new androidx.appcompat.widget.c(this);
        this.mBackgroundTintHelper = cVar;
        cVar.e(attributeSet, i10);
        AppCompatTextHelper appCompatTextHelper = new AppCompatTextHelper(this);
        this.mTextHelper = appCompatTextHelper;
        appCompatTextHelper.m(attributeSet, i10);
        appCompatTextHelper.b();
        this.mTextClassifierHelper = new o(this);
        getEmojiTextViewHelper().c(attributeSet, i10);
    }

    @Override
    public void setCompoundDrawablesRelativeWithIntrinsicBounds(int i10, int i11, int i12, int i13) {
        Context context = getContext();
        setCompoundDrawablesRelativeWithIntrinsicBounds(i10 != 0 ? g.a.b(context, i10) : null, i11 != 0 ? g.a.b(context, i11) : null, i12 != 0 ? g.a.b(context, i12) : null, i13 != 0 ? g.a.b(context, i13) : null);
        AppCompatTextHelper appCompatTextHelper = this.mTextHelper;
        if (appCompatTextHelper != null) {
            appCompatTextHelper.p();
        }
    }

    @Override
    public void setCompoundDrawablesWithIntrinsicBounds(int i10, int i11, int i12, int i13) {
        Context context = getContext();
        setCompoundDrawablesWithIntrinsicBounds(i10 != 0 ? g.a.b(context, i10) : null, i11 != 0 ? g.a.b(context, i11) : null, i12 != 0 ? g.a.b(context, i12) : null, i13 != 0 ? g.a.b(context, i13) : null);
        AppCompatTextHelper appCompatTextHelper = this.mTextHelper;
        if (appCompatTextHelper != null) {
            appCompatTextHelper.p();
        }
    }

    class b implements a {
        b() {
        }

        @Override
        public void a(int[] iArr, int i10) {
            AppCompatTextView.super.setAutoSizeTextTypeUniformWithPresetSizes(iArr, i10);
        }

        @Override
        public int c() {
            return AppCompatTextView.super.getAutoSizeTextType();
        }

        @Override
        public int d() {
            return AppCompatTextView.super.getAutoSizeMinTextSize();
        }

        @Override
        public int[] f() {
            return AppCompatTextView.super.getAutoSizeTextAvailableSizes();
        }

        @Override
        public TextClassifier g() {
            return AppCompatTextView.super.getTextClassifier();
        }

        @Override
        public int h() {
            return AppCompatTextView.super.getAutoSizeMaxTextSize();
        }

        @Override
        public void i(TextClassifier textClassifier) {
            AppCompatTextView.super.setTextClassifier(textClassifier);
        }

        @Override
        public void j(int i10, int i11, int i12, int i13) {
            AppCompatTextView.super.setAutoSizeTextTypeUniformWithConfiguration(i10, i11, i12, i13);
        }

        @Override
        public int l() {
            return AppCompatTextView.super.getAutoSizeStepGranularity();
        }

        @Override
        public void m(int i10) {
            AppCompatTextView.super.setAutoSizeTextTypeWithDefaults(i10);
        }

        @Override
        public void b(int i10) {
        }

        @Override
        public void k(int i10) {
        }

        @Override
        public void e(int i10, float f10) {
        }
    }
}
