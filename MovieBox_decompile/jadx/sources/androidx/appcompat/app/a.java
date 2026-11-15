package androidx.appcompat.app;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.R$styleable;

public abstract class a {

    public static abstract class b {
        public abstract CharSequence a();

        public abstract View b();

        public abstract Drawable c();

        public abstract CharSequence d();

        public abstract void e();
    }

    public boolean g() {
        return false;
    }

    public boolean h() {
        return false;
    }

    public abstract int j();

    public Context k() {
        return null;
    }

    public abstract void l();

    public boolean m() {
        return false;
    }

    public boolean p(int i10, KeyEvent keyEvent) {
        return false;
    }

    public boolean q(KeyEvent keyEvent) {
        return false;
    }

    public boolean r() {
        return false;
    }

    public androidx.appcompat.view.b v(androidx.appcompat.view.b.a aVar) {
        return null;
    }

    public static class C0013a extends ViewGroup.MarginLayoutParams {

        public int f795a;

        public C0013a(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f795a = 0;
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.ActionBarLayout);
            this.f795a = typedArrayObtainStyledAttributes.getInt(R$styleable.ActionBarLayout_android_layout_gravity, 0);
            typedArrayObtainStyledAttributes.recycle();
        }

        public C0013a(int i10, int i11) {
            super(i10, i11);
            this.f795a = 8388627;
        }

        public C0013a(C0013a c0013a) {
            super((ViewGroup.MarginLayoutParams) c0013a);
            this.f795a = 0;
            this.f795a = c0013a.f795a;
        }

        public C0013a(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f795a = 0;
        }
    }

    void o() {
    }

    public void i(boolean z10) {
    }

    public void n(Configuration configuration) {
    }

    public void s(boolean z10) {
    }

    public void t(boolean z10) {
    }

    public void u(CharSequence charSequence) {
    }
}
