package androidx.appcompat.app;

import android.content.Context;
import android.os.Bundle;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.R$attr;
import androidx.core.view.KeyEventDispatcher;
import androidx.p009lifecycle.ViewTreeLifecycleOwner;
import androidx.p010savedstate.ViewTreeSavedStateRegistryOwner;

public class w extends androidx.activity.q implements d {
    private f mDelegate;
    private final KeyEventDispatcher.Component mKeyDispatcher;

    public w(Context context, int i10) {
        super(context, d(context, i10));
        this.mKeyDispatcher = new KeyEventDispatcher.Component() {
            @Override
            public final boolean superDispatchKeyEvent(KeyEvent keyEvent) {
                return this.f868a.superDispatchKeyEvent(keyEvent);
            }
        };
        f delegate = getDelegate();
        delegate.R(d(context, i10));
        delegate.B(null);
    }

    private static int d(Context context, int i10) {
        if (i10 != 0) {
            return i10;
        }
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(R$attr.dialogTheme, typedValue, true);
        return typedValue.resourceId;
    }

    private void e() {
        ViewTreeLifecycleOwner.b(getWindow().getDecorView(), this);
        ViewTreeSavedStateRegistryOwner.b(getWindow().getDecorView(), this);
        androidx.activity.z.a(getWindow().getDecorView(), this);
    }

    @Override
    public void addContentView(@NonNull View view, ViewGroup.LayoutParams layoutParams) {
        getDelegate().e(view, layoutParams);
    }

    @Override
    public void dismiss() {
        super.dismiss();
        getDelegate().C();
    }

    @Override
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return KeyEventDispatcher.dispatchKeyEvent(this.mKeyDispatcher, getWindow().getDecorView(), this, keyEvent);
    }

    @Override
    @Nullable
    public <T extends View> T findViewById(int i10) {
        return (T) getDelegate().m(i10);
    }

    @NonNull
    public f getDelegate() {
        if (this.mDelegate == null) {
            this.mDelegate = f.k(this, this);
        }
        return this.mDelegate;
    }

    public a getSupportActionBar() {
        return getDelegate().v();
    }

    @Override
    public void invalidateOptionsMenu() {
        getDelegate().x();
    }

    @Override
    protected void onCreate(Bundle bundle) {
        getDelegate().w();
        super.onCreate(bundle);
        getDelegate().B(bundle);
    }

    @Override
    protected void onStop() {
        super.onStop();
        getDelegate().H();
    }

    @Override
    @Nullable
    public androidx.appcompat.view.b onWindowStartingSupportActionMode(androidx.appcompat.view.b.a aVar) {
        return null;
    }

    @Override
    public void setContentView(int i10) {
        e();
        getDelegate().L(i10);
    }

    @Override
    public void setTitle(CharSequence charSequence) {
        super.setTitle(charSequence);
        getDelegate().S(charSequence);
    }

    boolean superDispatchKeyEvent(KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent);
    }

    public boolean supportRequestWindowFeature(int i10) {
        return getDelegate().K(i10);
    }

    @Override
    public void setContentView(@NonNull View view) {
        e();
        getDelegate().M(view);
    }

    @Override
    public void setTitle(int i10) {
        super.setTitle(i10);
        getDelegate().S(getContext().getString(i10));
    }

    @Override
    public void setContentView(@NonNull View view, ViewGroup.LayoutParams layoutParams) {
        e();
        getDelegate().N(view, layoutParams);
    }

    @Override
    public void onSupportActionModeFinished(androidx.appcompat.view.b bVar) {
    }

    @Override
    public void onSupportActionModeStarted(androidx.appcompat.view.b bVar) {
    }
}
