package z0;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.graphics.Bitmap;
import android.view.animation.DecelerateInterpolator;
import android.widget.ImageView;

public final class j extends AnimatorListenerAdapter {

    public final ImageView f2355a;

    public final Bitmap f2356b;

    public final int f2357c = 300;

    public j(ImageView imageView, Bitmap bitmap) {
        this.f2355a = imageView;
        this.f2356b = bitmap;
    }

    @Override
    public final void onAnimationCancel(Animator animator) {
        animator.removeListener(this);
    }

    @Override
    public final void onAnimationEnd(Animator animator) {
        Bitmap bitmap = this.f2356b;
        ImageView imageView = this.f2355a;
        imageView.setImageBitmap(bitmap);
        imageView.animate().alpha(1.0f).setInterpolator(new DecelerateInterpolator(2.0f)).setDuration(this.f2357c / 2);
    }
}
