package androidx.appcompat.widget;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.text.method.KeyListener;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.AutoCompleteTextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.R$attr;
import androidx.core.view.TintableBackgroundView;

public class AppCompatAutoCompleteTextView extends AutoCompleteTextView implements TintableBackgroundView, androidx.core.widget.o {

    private static final int[] f1369d = {R.attr.popupBackground};

    private final c f1370a;

    private final AppCompatTextHelper f1371b;

    private final g f1372c;

    public AppCompatAutoCompleteTextView(@NonNull Context context) {
        this(context, null);
    }

    void a(g gVar) {
        KeyListener keyListener = getKeyListener();
        if (gVar.b(keyListener)) {
            boolean zIsFocusable = super.isFocusable();
            boolean zIsClickable = super.isClickable();
            boolean zIsLongClickable = super.isLongClickable();
            int inputType = super.getInputType();
            KeyListener keyListenerA = gVar.a(keyListener);
            if (keyListenerA == keyListener) {
                return;
            }
            super.setKeyListener(keyListenerA);
            super.setRawInputType(inputType);
            super.setFocusable(zIsFocusable);
            super.setClickable(zIsClickable);
            super.setLongClickable(zIsLongClickable);
        }
    }

    @Override
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        c cVar = this.f1370a;
        if (cVar != null) {
            cVar.b();
        }
        AppCompatTextHelper appCompatTextHelper = this.f1371b;
        if (appCompatTextHelper != null) {
            appCompatTextHelper.b();
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
        c cVar = this.f1370a;
        if (cVar != null) {
            return cVar.c();
        }
        return null;
    }

    @Override
    @Nullable
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        c cVar = this.f1370a;
        if (cVar != null) {
            return cVar.d();
        }
        return null;
    }

    @Nullable
    public ColorStateList getSupportCompoundDrawablesTintList() {
        return this.f1371b.j();
    }

    @Nullable
    public PorterDuff.Mode getSupportCompoundDrawablesTintMode() {
        return this.f1371b.k();
    }

    public boolean isEmojiCompatEnabled() {
        return this.f1372c.c();
    }

    @Override
    public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        return this.f1372c.e(i.a(super.onCreateInputConnection(editorInfo), editorInfo, this), editorInfo);
    }

    @Override
    public void setBackgroundDrawable(@Nullable Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        c cVar = this.f1370a;
        if (cVar != null) {
            cVar.f(drawable);
        }
    }

    @Override
    public void setBackgroundResource(int i10) {
        super.setBackgroundResource(i10);
        c cVar = this.f1370a;
        if (cVar != null) {
            cVar.g(i10);
        }
    }

    @Override
    public void setCompoundDrawables(@Nullable Drawable drawable, @Nullable Drawable drawable2, @Nullable Drawable drawable3, @Nullable Drawable drawable4) {
        super.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
        AppCompatTextHelper appCompatTextHelper = this.f1371b;
        if (appCompatTextHelper != null) {
            appCompatTextHelper.p();
        }
    }

    @Override
    public void setCompoundDrawablesRelative(@Nullable Drawable drawable, @Nullable Drawable drawable2, @Nullable Drawable drawable3, @Nullable Drawable drawable4) {
        super.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
        AppCompatTextHelper appCompatTextHelper = this.f1371b;
        if (appCompatTextHelper != null) {
            appCompatTextHelper.p();
        }
    }

    @Override
    public void setCustomSelectionActionModeCallback(@Nullable ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(androidx.core.widget.l.s(this, callback));
    }

    @Override
    public void setDropDownBackgroundResource(int i10) {
        setDropDownBackgroundDrawable(g.a.b(getContext(), i10));
    }

    public void setEmojiCompatEnabled(boolean z10) {
        this.f1372c.f(z10);
    }

    @Override
    public void setKeyListener(@Nullable KeyListener keyListener) {
        super.setKeyListener(this.f1372c.a(keyListener));
    }

    @Override
    public void setSupportBackgroundTintList(@Nullable ColorStateList colorStateList) {
        c cVar = this.f1370a;
        if (cVar != null) {
            cVar.i(colorStateList);
        }
    }

    @Override
    public void setSupportBackgroundTintMode(@Nullable PorterDuff.Mode mode) {
        c cVar = this.f1370a;
        if (cVar != null) {
            cVar.j(mode);
        }
    }

    @Override
    public void setSupportCompoundDrawablesTintList(@Nullable ColorStateList colorStateList) {
        this.f1371b.w(colorStateList);
        this.f1371b.b();
    }

    @Override
    public void setSupportCompoundDrawablesTintMode(@Nullable PorterDuff.Mode mode) {
        this.f1371b.x(mode);
        this.f1371b.b();
    }

    @Override
    public void setTextAppearance(Context context, int i10) {
        super.setTextAppearance(context, i10);
        AppCompatTextHelper appCompatTextHelper = this.f1371b;
        if (appCompatTextHelper != null) {
            appCompatTextHelper.q(context, i10);
        }
    }

    public AppCompatAutoCompleteTextView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.autoCompleteTextViewStyle);
    }

    public AppCompatAutoCompleteTextView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(g0.b(context), attributeSet, i10);
        f0.a(this, getContext());
        j0 j0VarV = j0.v(getContext(), attributeSet, f1369d, i10, 0);
        if (j0VarV.s(0)) {
            setDropDownBackgroundDrawable(j0VarV.g(0));
        }
        j0VarV.x();
        c cVar = new c(this);
        this.f1370a = cVar;
        cVar.e(attributeSet, i10);
        AppCompatTextHelper appCompatTextHelper = new AppCompatTextHelper(this);
        this.f1371b = appCompatTextHelper;
        appCompatTextHelper.m(attributeSet, i10);
        appCompatTextHelper.b();
        g gVar = new g(this);
        this.f1372c = gVar;
        gVar.d(attributeSet, i10);
        a(gVar);
    }
}
