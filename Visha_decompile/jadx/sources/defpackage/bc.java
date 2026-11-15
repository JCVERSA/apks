package defpackage;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.LinearInterpolator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.SeekBar;
import android.widget.TextView;
import androidx.core.view.GravityCompat;
import com.transsion.tools.R;
import java.util.ArrayList;
import java.util.List;

public abstract class bc {

    public class a implements ValueAnimator.AnimatorUpdateListener {
        public final SeekBar b;

        public a(SeekBar seekBar) {
            this.b = seekBar;
        }

        @Override
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            this.b.setProgress(((Integer) valueAnimator.getAnimatedValue()).intValue());
        }
    }

    public class b implements Animator.AnimatorListener {
        public final ImageView b;
        public final View c;
        public final Context d;
        public final int e;

        public b(ImageView imageView, View view, Context context, int i) {
            this.b = imageView;
            this.c = view;
            this.d = context;
            this.e = i;
        }

        @Override
        public void onAnimationCancel(Animator animator) {
        }

        @Override
        public void onAnimationEnd(Animator animator) {
        }

        @Override
        public void onAnimationRepeat(Animator animator) {
        }

        @Override
        public void onAnimationStart(Animator animator) {
            this.b.setVisibility(0);
            bc.a((ViewGroup) this.c, null, this.d, this.e);
        }
    }

    public class c implements Animator.AnimatorListener {
        public final ImageView b;

        public c(ImageView imageView) {
            this.b = imageView;
        }

        @Override
        public void onAnimationCancel(Animator animator) {
        }

        @Override
        public void onAnimationEnd(Animator animator) {
        }

        @Override
        public void onAnimationRepeat(Animator animator) {
        }

        @Override
        public void onAnimationStart(Animator animator) {
            this.b.setVisibility(0);
        }
    }

    public class d implements Animator.AnimatorListener {
        public final ImageView b;

        public d(ImageView imageView) {
            this.b = imageView;
        }

        @Override
        public void onAnimationCancel(Animator animator) {
        }

        @Override
        public void onAnimationEnd(Animator animator) {
        }

        @Override
        public void onAnimationRepeat(Animator animator) {
        }

        @Override
        public void onAnimationStart(Animator animator) {
            this.b.setVisibility(0);
        }
    }

    public class e implements Animator.AnimatorListener {
        public final ImageView b;
        public final int c;
        public final ViewGroup d;
        public final List e;
        public final Context f;
        public final int g;

        public e(ImageView imageView, int i, ViewGroup viewGroup, List list, Context context, int i2) {
            this.b = imageView;
            this.c = i;
            this.d = viewGroup;
            this.e = list;
            this.f = context;
            this.g = i2;
        }

        @Override
        public void onAnimationCancel(Animator animator) {
        }

        @Override
        public void onAnimationEnd(Animator animator) {
        }

        @Override
        public void onAnimationRepeat(Animator animator) {
        }

        @Override
        public void onAnimationStart(Animator animator) {
            this.b.setVisibility(0);
            int i = this.c;
            if (i <= 0) {
                bc.a((ViewGroup) this.e.get(i), null, this.f, this.g);
            } else {
                this.d.getChildAt(i - 1).setVisibility(4);
                bc.a((ViewGroup) this.e.get(this.c), (ViewGroup) this.e.get(this.c - 1), this.f, this.g);
            }
        }
    }

    public static void a(ViewGroup viewGroup, ViewGroup viewGroup2, Context context, int i) {
        if (viewGroup != null) {
            ImageView imageView = (ImageView) viewGroup.getChildAt(0);
            if (imageView != null) {
                imageView.setVisibility(4);
            }
            TextView textView = (TextView) viewGroup.getChildAt(1);
            if (textView != null) {
                textView.setTextColor(i);
            }
        }
        if (viewGroup2 != null) {
            ImageView imageView2 = (ImageView) viewGroup2.getChildAt(0);
            if (imageView2 != null) {
                imageView2.setVisibility(0);
            }
            TextView textView2 = (TextView) viewGroup2.getChildAt(1);
            if (textView2 != null) {
                textView2.setTextColor(context.getResources().getColor(R.color.unselected_custom_preview_tab_text_color));
            }
        }
    }

    public static AnimatorSet b(View view, Animator.AnimatorListener animatorListener, int i, int i2) {
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(view, "alpha", 0.0f, 1.0f);
        objectAnimatorOfFloat.addListener(animatorListener);
        ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(view, "scaleY", 0.1f, 1.0f);
        ObjectAnimator objectAnimatorOfFloat3 = ObjectAnimator.ofFloat(view, "scaleX", 0.1f, 1.0f);
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(objectAnimatorOfFloat, objectAnimatorOfFloat3, objectAnimatorOfFloat2);
        animatorSet.setDuration(i);
        animatorSet.setInterpolator(new AccelerateInterpolator());
        animatorSet.setStartDelay(i2);
        return animatorSet;
    }

    public static void c(ViewGroup viewGroup, AnimatorSet animatorSet, List list, Context context, List list2, boolean z, int i, int i2, int i3) {
        if (z) {
            d(viewGroup, animatorSet, list, context, list2, i2);
        } else {
            e(viewGroup, animatorSet, list, context, list2, i, i2, i3);
        }
    }

    public static void d(ViewGroup viewGroup, AnimatorSet animatorSet, List list, Context context, List list2, int i) {
        int i2 = 4;
        char c2 = 1;
        int i3 = 2;
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -1);
        layoutParams.weight = 1.0f;
        char c3 = 0;
        layoutParams.width = 0;
        Resources resources = context.getResources();
        int i4 = R.dimen.custom_thumb_tab_height;
        layoutParams.height = resources.getDimensionPixelOffset(i4);
        float dimensionPixelOffset = context.getResources().getDimensionPixelOffset(i4);
        List<Animator> arrayList = new ArrayList<>();
        int i5 = 0;
        while (i5 < list.size()) {
            ImageView imageView = new ImageView(context);
            imageView.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
            imageView.setImageResource(((Integer) list.get(i5)).intValue());
            viewGroup.addView(imageView, layoutParams);
            imageView.setVisibility(i2);
            float[] fArr = new float[i3];
            fArr[c3] = dimensionPixelOffset;
            fArr[c2] = 0.0f;
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(imageView, "TranslationY", fArr);
            objectAnimatorOfFloat.addListener(new d(imageView));
            float[] fArr2 = new float[i3];
            
            fArr2[0] = 0.1f;
            fArr2[1] = 1.0f;
            ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(imageView, "scaleY", fArr2);
            float[] fArr3 = new float[i3];
            
            fArr3[0] = 0.1f;
            fArr3[1] = 1.0f;
            ObjectAnimator objectAnimatorOfFloat3 = ObjectAnimator.ofFloat(imageView, "scaleX", fArr3);
            float[] fArr4 = new float[i3];
            
            fArr4[0] = 1.0f;
            fArr4[1] = 0.0f;
            ObjectAnimator objectAnimatorOfFloat4 = ObjectAnimator.ofFloat((View) list2.get(i5), "alpha", fArr4);
            AnimatorSet animatorSet2 = new AnimatorSet();
            animatorSet2.playTogether(objectAnimatorOfFloat, objectAnimatorOfFloat3, objectAnimatorOfFloat2, objectAnimatorOfFloat4);
            animatorSet2.setDuration(i);
            animatorSet2.setInterpolator(new AccelerateInterpolator());
            arrayList.add(animatorSet2);
            i5++;
            c2 = 1;
            i2 = 4;
            c3 = 0;
            i3 = 2;
        }
        animatorSet.playSequentially(arrayList);
        animatorSet.setInterpolator(new LinearInterpolator());
        animatorSet.start();
    }

    public static void e(ViewGroup viewGroup, AnimatorSet animatorSet, List list, Context context, List list2, int i, int i2, int i3) {
        Context context2 = context;
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -1);
        ViewGroup.LayoutParams layoutParams2 = ((ImageView) ((View) list2.get(0)).findViewById(R.id.iv_video)).getLayoutParams();
        layoutParams.width = com.transsion.utils.a.d(context2, 27.0f);
        layoutParams.height = 0;
        layoutParams.weight = 1.0f;
        layoutParams.gravity = GravityCompat.END;
        if (layoutParams2 instanceof FrameLayout.LayoutParams) {
            layoutParams.setMarginEnd(((FrameLayout.LayoutParams) layoutParams2).getMarginEnd());
        }
        ArrayList arrayList = new ArrayList();
        int i4 = 0;
        while (i4 < list.size()) {
            ImageView imageView = new ImageView(context2);
            imageView.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
            imageView.setImageResource(((Integer) list.get(i4)).intValue());
            viewGroup.addView(imageView, layoutParams);
            imageView.setVisibility(4);
            arrayList.add(b(imageView, new e(imageView, i4, viewGroup, list2, context, i), i2, i3));
            i4++;
            context2 = context;
        }
        animatorSet.playSequentially(arrayList);
        animatorSet.setInterpolator(new LinearInterpolator());
        animatorSet.start();
    }

    public static void f(ViewGroup viewGroup, AnimatorSet animatorSet, Bitmap bitmap, View view, Context context, boolean z, int i) {
        if (z) {
            g(viewGroup, animatorSet, bitmap, view, context);
        } else {
            h(viewGroup, animatorSet, bitmap, view, context, i);
        }
    }

    public static void g(ViewGroup viewGroup, AnimatorSet animatorSet, Bitmap bitmap, View view, Context context) {
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -1);
        layoutParams.leftMargin = context.getResources().getDimensionPixelOffset(R.dimen.custom_thumb_offset);
        Resources resources = context.getResources();
        int i = R.dimen.custom_tab_width;
        layoutParams.height = resources.getDimensionPixelOffset(i);
        layoutParams.width = context.getResources().getDimensionPixelOffset(i);
        ImageView imageView = new ImageView(context);
        imageView.setImageBitmap(bitmap);
        viewGroup.addView(imageView, layoutParams);
        imageView.setVisibility(4);
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(imageView, "TranslationY", context.getResources().getDimensionPixelOffset(R.dimen.custom_thumb_default_tab_height), 0.0f);
        objectAnimatorOfFloat.addListener(new c(imageView));
        animatorSet.playTogether(objectAnimatorOfFloat, ObjectAnimator.ofFloat(view, "alpha", 1.0f, 0.0f), ObjectAnimator.ofFloat(imageView, "scaleX", 0.1f, 1.0f), ObjectAnimator.ofFloat(imageView, "scaleY", 0.1f, 1.0f));
        animatorSet.setDuration(600L);
        animatorSet.setInterpolator(new AccelerateInterpolator());
        animatorSet.start();
    }

    public static void h(ViewGroup viewGroup, AnimatorSet animatorSet, Bitmap bitmap, View view, Context context, int i) {
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -1);
        ViewGroup.LayoutParams layoutParams2 = ((ImageView) view.findViewById(R.id.iv_video)).getLayoutParams();
        layoutParams.width = com.transsion.utils.a.d(context, 27.0f);
        layoutParams.height = view.getHeight();
        layoutParams.gravity = GravityCompat.END;
        if (layoutParams2 instanceof FrameLayout.LayoutParams) {
            layoutParams.setMarginEnd(((FrameLayout.LayoutParams) layoutParams2).getMarginEnd());
        }
        ImageView imageView = new ImageView(context);
        imageView.setImageBitmap(bitmap);
        imageView.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
        viewGroup.addView(imageView, layoutParams);
        imageView.setVisibility(4);
        animatorSet.play(b(imageView, new b(imageView, view, context, i), 600, 500));
        animatorSet.start();
    }

    public static void i(ValueAnimator valueAnimator, SeekBar seekBar) {
        ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(0, 60);
        valueAnimatorOfInt.setDuration(2000L);
        valueAnimatorOfInt.setInterpolator(new LinearInterpolator());
        valueAnimatorOfInt.addUpdateListener(new a(seekBar));
        valueAnimatorOfInt.start();
    }
}
