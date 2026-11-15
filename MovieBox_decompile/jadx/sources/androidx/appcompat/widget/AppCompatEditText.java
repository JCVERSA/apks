package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.Editable;
import android.text.method.KeyListener;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.DragEvent;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputMethodManager;
import android.view.textclassifier.TextClassifier;
import android.widget.EditText;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.R$attr;
import androidx.core.view.ContentInfoCompat;
import androidx.core.view.OnReceiveContentViewBehavior;
import androidx.core.view.TintableBackgroundView;
import androidx.core.view.ViewCompat;
import androidx.core.view.inputmethod.EditorInfoCompat;
import androidx.core.view.inputmethod.InputConnectionCompat;

public class AppCompatEditText extends EditText implements TintableBackgroundView, OnReceiveContentViewBehavior, androidx.core.widget.o {

    @NonNull
    private final g mAppCompatEmojiEditTextHelper;
    private final c mBackgroundTintHelper;
    private final androidx.core.widget.m mDefaultOnReceiveContentListener;

    @Nullable
    private a mSuperCaller;
    private final o mTextClassifierHelper;
    private final AppCompatTextHelper mTextHelper;

    class a {
        a() {
        }

        public TextClassifier a() {
            return AppCompatEditText.super.getTextClassifier();
        }

        public void b(TextClassifier textClassifier) {
            AppCompatEditText.super.setTextClassifier(textClassifier);
        }
    }

    public AppCompatEditText(@NonNull Context context) {
        this(context, null);
    }

    @NonNull
    private a getSuperCaller() {
        if (this.mSuperCaller == null) {
            this.mSuperCaller = new a();
        }
        return this.mSuperCaller;
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

    @Override
    @NonNull
    public TextClassifier getTextClassifier() {
        o oVar;
        return (Build.VERSION.SDK_INT >= 28 || (oVar = this.mTextClassifierHelper) == null) ? getSuperCaller().a() : oVar.a();
    }

    void initEmojiKeyListener(g gVar) {
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

    public boolean isEmojiCompatEnabled() {
        return this.mAppCompatEmojiEditTextHelper.c();
    }

    @Override
    @Nullable
    public InputConnection onCreateInputConnection(@NonNull EditorInfo editorInfo) {
        String[] onReceiveContentMimeTypes;
        InputConnection inputConnectionOnCreateInputConnection = super.onCreateInputConnection(editorInfo);
        this.mTextHelper.r(this, inputConnectionOnCreateInputConnection, editorInfo);
        InputConnection inputConnectionA = i.a(inputConnectionOnCreateInputConnection, editorInfo, this);
        if (inputConnectionA != null && Build.VERSION.SDK_INT <= 30 && (onReceiveContentMimeTypes = ViewCompat.getOnReceiveContentMimeTypes(this)) != null) {
            EditorInfoCompat.setContentMimeTypes(editorInfo, onReceiveContentMimeTypes);
            inputConnectionA = InputConnectionCompat.createWrapper(this, inputConnectionA, editorInfo);
        }
        return this.mAppCompatEmojiEditTextHelper.e(inputConnectionA, editorInfo);
    }

    @Override
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        int i10 = Build.VERSION.SDK_INT;
        if (i10 < 30 || i10 >= 33) {
            return;
        }
        ((InputMethodManager) getContext().getSystemService("input_method")).isActive(this);
    }

    @Override
    public boolean onDragEvent(DragEvent dragEvent) {
        if (m.a(this, dragEvent)) {
            return true;
        }
        return super.onDragEvent(dragEvent);
    }

    @Override
    @Nullable
    public ContentInfoCompat onReceiveContent(@NonNull ContentInfoCompat contentInfoCompat) {
        return this.mDefaultOnReceiveContentListener.onReceiveContent(this, contentInfoCompat);
    }

    @Override
    public boolean onTextContextMenuItem(int i10) {
        if (m.b(this, i10)) {
            return true;
        }
        return super.onTextContextMenuItem(i10);
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
    public void setCustomSelectionActionModeCallback(@Nullable ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(androidx.core.widget.l.s(this, callback));
    }

    public void setEmojiCompatEnabled(boolean z10) {
        this.mAppCompatEmojiEditTextHelper.f(z10);
    }

    @Override
    public void setKeyListener(@Nullable KeyListener keyListener) {
        super.setKeyListener(this.mAppCompatEmojiEditTextHelper.a(keyListener));
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
    public void setTextClassifier(@Nullable TextClassifier textClassifier) {
        o oVar;
        if (Build.VERSION.SDK_INT >= 28 || (oVar = this.mTextClassifierHelper) == null) {
            getSuperCaller().b(textClassifier);
        } else {
            oVar.b(textClassifier);
        }
    }

    public AppCompatEditText(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.editTextStyle);
    }

    @Override
    @Nullable
    public Editable getText() {
        return Build.VERSION.SDK_INT >= 28 ? super.getText() : super.getEditableText();
    }

    public AppCompatEditText(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(g0.b(context), attributeSet, i10);
        f0.a(this, getContext());
        c cVar = new c(this);
        this.mBackgroundTintHelper = cVar;
        cVar.e(attributeSet, i10);
        AppCompatTextHelper appCompatTextHelper = new AppCompatTextHelper(this);
        this.mTextHelper = appCompatTextHelper;
        appCompatTextHelper.m(attributeSet, i10);
        appCompatTextHelper.b();
        this.mTextClassifierHelper = new o(this);
        this.mDefaultOnReceiveContentListener = new androidx.core.widget.m();
        g gVar = new g(this);
        this.mAppCompatEmojiEditTextHelper = gVar;
        gVar.d(attributeSet, i10);
        initEmojiKeyListener(gVar);
    }
}
