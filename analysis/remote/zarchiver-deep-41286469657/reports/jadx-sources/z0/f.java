package z0;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.graphics.Bitmap;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.SpannableString;
import android.text.style.StyleSpan;
import android.view.View;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.widget.ImageView;
import android.widget.TextView;

public final class f {

    public class a extends AnimatorListenerAdapter {

        public final View f2348a;

        public a(View view) {
            this.f2348a = view;
        }

        @Override
        public final void onAnimationStart(Animator animator) {
            this.f2348a.setVisibility(0);
        }
    }

    public class b extends AnimatorListenerAdapter {

        public final View f2349a;

        public b(View view) {
            this.f2349a = view;
        }

        @Override
        public final void onAnimationEnd(Animator animator) {
            View view = this.f2349a;
            view.setVisibility(8);
            view.setRotation(0.0f);
        }
    }

    public class c implements Runnable {

        public final View f2350a;

        public final AnimatorListenerAdapter f2351b;

        public c(View view, b bVar) {
            this.f2350a = view;
            this.f2351b = bVar;
        }

        @Override
        public final void run() {
            this.f2350a.animate().alpha(0.0f).setDuration(300L).setListener(this.f2351b);
        }
    }

    public static void a(View view) {
        view.setAlpha(1.0f);
        view.animate().alpha(0.0f).setInterpolator(new AccelerateInterpolator(2.0f)).setDuration(200).setListener(new i(view));
    }

    public static void b(View view) {
        view.setAlpha(0.0f);
        view.animate().alpha(1.0f).setInterpolator(new DecelerateInterpolator(2.0f)).setDuration(300).setListener(new h(view));
    }

    public static void c(ImageView imageView, Bitmap bitmap) {
        imageView.animate().alpha(0.3f).setInterpolator(new AccelerateInterpolator(2.0f)).setDuration(150).setListener(new j(imageView, bitmap));
    }

    public static boolean d(View view) {
        return Build.VERSION.SDK_INT >= 17 && view.getResources().getConfiguration().getLayoutDirection() == 1;
    }

    public static void e(View view) {
        b bVar = new b(view);
        if (Build.VERSION.SDK_INT < 16) {
            view.animate().rotation(180.0f).setDuration(300L).setListener(bVar);
        } else {
            view.animate().rotation(180.0f).setDuration(300L).withEndAction(new c(view, bVar));
        }
    }

    public static void f(View view, Drawable drawable) {
        if (Build.VERSION.SDK_INT >= 16) {
            view.setBackground(drawable);
        } else {
            view.setBackgroundDrawable(drawable);
        }
    }

    public static void g(TextView textView) {
        if (Build.VERSION.SDK_INT < 23 || textView == null) {
            return;
        }
        textView.setBreakStrategy(0);
        textView.setHyphenationFrequency(0);
    }

    public static void h(TextView textView, String str, String str2) {
        int iIndexOf;
        if (str2 == null || (iIndexOf = str.toLowerCase().indexOf(str2)) < 0) {
            textView.setText(str);
            return;
        }
        SpannableString spannableString = new SpannableString(str);
        spannableString.setSpan(new StyleSpan(1), iIndexOf, str2.length() + iIndexOf, 33);
        textView.setText(spannableString);
    }

    public static void i(Drawable drawable, int i2) {
        if (Build.VERSION.SDK_INT >= 21) {
            drawable.setTint(i2);
        } else {
            drawable.setColorFilter(i2, PorterDuff.Mode.MULTIPLY);
        }
    }

    public static void j(View view) {
        view.setTranslationY(((View) view.getParent()).getBottom() - view.getTop());
        view.animate().translationY(0.0f).setInterpolator(new DecelerateInterpolator(2.0f)).setDuration(500L).setListener(new a(view));
    }
}
