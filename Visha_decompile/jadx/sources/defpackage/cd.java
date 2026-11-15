package defpackage;

import android.animation.ObjectAnimator;
import android.content.Context;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.ImageView;
import com.transsion.common.R;

public abstract class cd {
    public static Animation a;
    public static Animation b;

    public static void b(ImageView imageView) {
        int i = R.id.play_pause_icon_switch_runnable_tag;
        Object tag = imageView.getTag(i);
        if (tag instanceof Runnable) {
            imageView.removeCallbacks((Runnable) tag);
            imageView.setTag(i, null);
        }
        imageView.clearAnimation();
    }

    public static Animation c(View view, boolean z) {
        if (z) {
            Animation animation = b;
            return animation == null ? AnimationUtils.loadAnimation(view.getContext(), R.anim.video_play_pause_out_anim) : animation;
        }
        Animation animation2 = a;
        return animation2 == null ? AnimationUtils.loadAnimation(view.getContext(), R.anim.video_play_pause_in_anim) : animation2;
    }

    public static boolean d(ImageView imageView, int i) {
        Object tag = imageView.getTag(R.id.play_pause_icon_res_tag);
        return i == (tag instanceof Integer ? ((Integer) tag).intValue() : 0);
    }

    public static void e(ImageView imageView, int i) {
        imageView.setImageResource(i);
        j(imageView, true);
        imageView.setTag(R.id.play_pause_icon_switch_runnable_tag, null);
    }

    public static void f(final ImageView imageView, final int i) {
        if (d(imageView, i)) {
            return;
        }
        b(imageView);
        Runnable runnable = new Runnable() {
            @Override
            public final void run() {
                cd.e(imageView, i);
            }
        };
        imageView.setTag(R.id.play_pause_icon_switch_runnable_tag, runnable);
        imageView.postDelayed(runnable, 100L);
        j(imageView, false);
        imageView.setTag(R.id.play_pause_icon_res_tag, Integer.valueOf(i));
    }

    public static void g(Context context, View view) {
        view.startAnimation(AnimationUtils.loadAnimation(view.getContext(), R.anim.anim_small));
    }

    public static void h(View view) {
        view.startAnimation(AnimationUtils.loadAnimation(view.getContext(), R.anim.anim_small));
    }

    public static void i(View view) {
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(view, "translationX", 0.0f, view.getWidth() / 4, (-view.getWidth()) / 4, 0.0f);
        objectAnimatorOfFloat.setDuration(300L);
        objectAnimatorOfFloat.start();
    }

    public static void j(View view, boolean z) {
        view.startAnimation(c(view, z));
    }
}
