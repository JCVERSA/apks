package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.CheckedTextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.R$attr;
import androidx.core.view.TintableBackgroundView;

public class AppCompatCheckedTextView extends CheckedTextView implements TintableBackgroundView, androidx.core.widget.o {

    private final d f1373a;

    private final c f1374b;

    private final AppCompatTextHelper f1375c;

    private h f1376d;

    public AppCompatCheckedTextView(@NonNull Context context) {
        this(context, null);
    }

    @NonNull
    private h getEmojiTextViewHelper() {
        if (this.f1376d == null) {
            this.f1376d = new h(this);
        }
        return this.f1376d;
    }

    @Override
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        AppCompatTextHelper appCompatTextHelper = this.f1375c;
        if (appCompatTextHelper != null) {
            appCompatTextHelper.b();
        }
        c cVar = this.f1374b;
        if (cVar != null) {
            cVar.b();
        }
        d dVar = this.f1373a;
        if (dVar != null) {
            dVar.a();
        }
    }

    @Override
    @Nullable
    public ActionMode.Callback getCustomSelectionActionModeCallback() {
        return androidx.core.widget.l.r(super.getCustomSelectionActionModeCallback());
    }

    @Override
    @Nullable
    public ColorStateList getSupportBackgroundTintList() {
        c cVar = this.f1374b;
        if (cVar != null) {
            return cVar.c();
        }
        return null;
    }

    @Override
    @Nullable
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        c cVar = this.f1374b;
        if (cVar != null) {
            return cVar.d();
        }
        return null;
    }

    @Nullable
    public ColorStateList getSupportCheckMarkTintList() {
        d dVar = this.f1373a;
        if (dVar != null) {
            return dVar.b();
        }
        return null;
    }

    @Nullable
    public PorterDuff.Mode getSupportCheckMarkTintMode() {
        d dVar = this.f1373a;
        if (dVar != null) {
            return dVar.c();
        }
        return null;
    }

    @Nullable
    public ColorStateList getSupportCompoundDrawablesTintList() {
        return this.f1375c.j();
    }

    @Nullable
    public PorterDuff.Mode getSupportCompoundDrawablesTintMode() {
        return this.f1375c.k();
    }

    public boolean isEmojiCompatEnabled() {
        return getEmojiTextViewHelper().b();
    }

    @Override
    @Nullable
    public InputConnection onCreateInputConnection(@NonNull EditorInfo editorInfo) {
        return i.a(super.onCreateInputConnection(editorInfo), editorInfo, this);
    }

    @Override
    public void setAllCaps(boolean z10) {
        super.setAllCaps(z10);
        getEmojiTextViewHelper().d(z10);
    }

    @Override
    public void setBackgroundDrawable(@Nullable Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        c cVar = this.f1374b;
        if (cVar != null) {
            cVar.f(drawable);
        }
    }

    @Override
    public void setBackgroundResource(int i10) {
        super.setBackgroundResource(i10);
        c cVar = this.f1374b;
        if (cVar != null) {
            cVar.g(i10);
        }
    }

    @Override
    public void setCheckMarkDrawable(@Nullable Drawable drawable) {
        super.setCheckMarkDrawable(drawable);
        d dVar = this.f1373a;
        if (dVar != null) {
            dVar.e();
        }
    }

    @Override
    public void setCompoundDrawables(@Nullable Drawable drawable, @Nullable Drawable drawable2, @Nullable Drawable drawable3, @Nullable Drawable drawable4) {
        super.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
        AppCompatTextHelper appCompatTextHelper = this.f1375c;
        if (appCompatTextHelper != null) {
            appCompatTextHelper.p();
        }
    }

    @Override
    public void setCompoundDrawablesRelative(@Nullable Drawable drawable, @Nullable Drawable drawable2, @Nullable Drawable drawable3, @Nullable Drawable drawable4) {
        super.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
        AppCompatTextHelper appCompatTextHelper = this.f1375c;
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
    public void setSupportBackgroundTintList(@Nullable ColorStateList colorStateList) {
        c cVar = this.f1374b;
        if (cVar != null) {
            cVar.i(colorStateList);
        }
    }

    @Override
    public void setSupportBackgroundTintMode(@Nullable PorterDuff.Mode mode) {
        c cVar = this.f1374b;
        if (cVar != null) {
            cVar.j(mode);
        }
    }

    public void setSupportCheckMarkTintList(@Nullable ColorStateList colorStateList) {
        d dVar = this.f1373a;
        if (dVar != null) {
            dVar.f(colorStateList);
        }
    }

    public void setSupportCheckMarkTintMode(@Nullable PorterDuff.Mode mode) {
        d dVar = this.f1373a;
        if (dVar != null) {
            dVar.g(mode);
        }
    }

    @Override
    public void setSupportCompoundDrawablesTintList(@Nullable ColorStateList colorStateList) {
        this.f1375c.w(colorStateList);
        this.f1375c.b();
    }

    @Override
    public void setSupportCompoundDrawablesTintMode(@Nullable PorterDuff.Mode mode) {
        this.f1375c.x(mode);
        this.f1375c.b();
    }

    @Override
    public void setTextAppearance(@NonNull Context context, int i10) {
        super.setTextAppearance(context, i10);
        AppCompatTextHelper appCompatTextHelper = this.f1375c;
        if (appCompatTextHelper != null) {
            appCompatTextHelper.q(context, i10);
        }
    }

    public AppCompatCheckedTextView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.checkedTextViewStyle);
    }

    public AppCompatCheckedTextView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(g0.b(context), attributeSet, i10);
        f0.a(this, getContext());
        AppCompatTextHelper appCompatTextHelper = new AppCompatTextHelper(this);
        this.f1375c = appCompatTextHelper;
        appCompatTextHelper.m(attributeSet, i10);
        appCompatTextHelper.b();
        c cVar = new c(this);
        this.f1374b = cVar;
        cVar.e(attributeSet, i10);
        d dVar = new d(this);
        this.f1373a = dVar;
        dVar.d(attributeSet, i10);
        getEmojiTextViewHelper().c(attributeSet, i10);
    }

    @Override
    public void setCheckMarkDrawable(int i10) {
        setCheckMarkDrawable(g.a.b(getContext(), i10));
    }
}
