package com.google.android.gms.common;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.zaaa;
import com.google.android.gms.dynamic.RemoteCreator;
import defpackage.x2e;

public final class SignInButton extends FrameLayout implements View.OnClickListener {
    public static final int COLOR_AUTO = 2;
    public static final int COLOR_DARK = 0;
    public static final int COLOR_LIGHT = 1;
    public static final int SIZE_ICON_ONLY = 2;
    public static final int SIZE_STANDARD = 0;
    public static final int SIZE_WIDE = 1;
    public int b;
    public int c;
    public View d;
    public View.OnClickListener e;

    public SignInButton(@NonNull Context context) {
        this(context, null);
    }

    public final void a(Context context) {
        View view = this.d;
        if (view != null) {
            removeView(view);
        }
        try {
            this.d = x2e.c(context, this.b, this.c);
        } catch (RemoteCreator.RemoteCreatorException unused) {
            Log.w("SignInButton", "Sign in button not found, using placeholder instead");
            int i = this.b;
            int i2 = this.c;
            zaaa zaaaVar = new zaaa(context, null);
            zaaaVar.zaa(context.getResources(), i, i2);
            this.d = zaaaVar;
        }
        addView(this.d);
        this.d.setEnabled(isEnabled());
        this.d.setOnClickListener(this);
    }

    @Override
    public void onClick(@NonNull View view) {
        View.OnClickListener onClickListener = this.e;
        if (onClickListener == null || view != this.d) {
            return;
        }
        onClickListener.onClick(this);
    }

    public void setColorScheme(int i) {
        setStyle(this.b, i);
    }

    @Override
    public void setEnabled(boolean z) {
        super.setEnabled(z);
        this.d.setEnabled(z);
    }

    @Override
    public void setOnClickListener(@Nullable View.OnClickListener onClickListener) {
        this.e = onClickListener;
        View view = this.d;
        if (view != null) {
            view.setOnClickListener(this);
        }
    }

    @Deprecated
    public void setScopes(@NonNull Scope[] scopeArr) {
        setStyle(this.b, this.c);
    }

    public void setSize(int i) {
        setStyle(i, this.c);
    }

    public void setStyle(int i, int i2) {
        this.b = i;
        this.c = i2;
        a(getContext());
    }

    public SignInButton(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    @Deprecated
    public void setStyle(int i, int i2, @NonNull Scope[] scopeArr) {
        setStyle(i, i2);
    }

    public SignInButton(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.e = null;
        TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, com.google.android.gms.base.R.styleable.SignInButton, 0, 0);
        try {
            this.b = typedArrayObtainStyledAttributes.getInt(com.google.android.gms.base.R.styleable.SignInButton_buttonSize, 0);
            this.c = typedArrayObtainStyledAttributes.getInt(com.google.android.gms.base.R.styleable.SignInButton_colorScheme, 2);
            typedArrayObtainStyledAttributes.recycle();
            setStyle(this.b, this.c);
        } catch (Throwable th) {
            typedArrayObtainStyledAttributes.recycle();
            throw th;
        }
    }
}
