package androidx.vectordrawable.graphics.drawable;

import android.graphics.drawable.Animatable2;
import android.graphics.drawable.Drawable;

public abstract class b {
    Animatable2.AnimationCallback mPlatformCallback;

    class a extends Animatable2.AnimationCallback {
        a() {
        }

        @Override
        public void onAnimationEnd(Drawable drawable) {
            b.this.onAnimationEnd(drawable);
        }

        @Override
        public void onAnimationStart(Drawable drawable) {
            b.this.onAnimationStart(drawable);
        }
    }

    Animatable2.AnimationCallback getPlatformCallback() {
        if (this.mPlatformCallback == null) {
            this.mPlatformCallback = new a();
        }
        return this.mPlatformCallback;
    }

    public void onAnimationEnd(Drawable drawable) {
    }

    public void onAnimationStart(Drawable drawable) {
    }
}
