package z0;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.os.Build;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.TextView;
import ru.zdevs.zarchiver.R;

public final class d implements View.OnTouchListener, ViewTreeObserver.OnPreDrawListener {

    public final View f2338a;

    public final int f2339b;

    public final int f2340c;

    public final int f2341d;

    public final LinearLayout f2342e;

    public final PopupWindow f2343f;

    public float f2344g;

    public float f2345h;

    public class a extends AnimatorListenerAdapter {
        public a() {
        }

        @Override
        public final void onAnimationEnd(Animator animator) {
            d.this.f2343f.dismiss();
        }
    }

    /* JADX WARN: Code duplicated, block: B:10:0x003c  */
    public d(Context context, View view, int i2, String str, int i3, int i4) throws Exception {
        Activity activity;
        int i5;
        int i6;
        this.f2338a = view;
        this.f2339b = i2;
        this.f2340c = i3;
        this.f2341d = i4;
        LinearLayout linearLayout = new LinearLayout(context);
        this.f2342e = linearLayout;
        linearLayout.setOnTouchListener(this);
        int iC = c.c(context, R.attr.colorPrimaryDark);
        int iA = c.a(8);
        if (context instanceof Activity) {
            activity = (Activity) context;
        } else if (context instanceof ContextWrapper) {
            Context baseContext = ((ContextWrapper) context).getBaseContext();
            if (baseContext instanceof Activity) {
                activity = (Activity) baseContext;
            } else {
                activity = null;
            }
        } else {
            activity = null;
        }
        if (activity != null) {
            DisplayMetrics displayMetrics = new DisplayMetrics();
            activity.getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
            i5 = displayMetrics.widthPixels;
            i6 = displayMetrics.heightPixels;
        } else {
            i5 = Integer.MAX_VALUE;
            i6 = Integer.MAX_VALUE;
        }
        TextView textView = new TextView(context);
        if (Build.VERSION.SDK_INT >= 23) {
            textView.setTextAppearance(android.R.style.TextAppearance.Small);
        } else {
            textView.setTextAppearance(context, android.R.style.TextAppearance.Small);
        }
        textView.setPadding(iA, iA, iA, iA);
        textView.setTextColor(c.e(iC));
        textView.setEllipsize(TextUtils.TruncateAt.END);
        textView.setBackgroundColor(iC);
        if (i6 != Integer.MAX_VALUE || i5 != Integer.MAX_VALUE) {
            textView.setMaxWidth((Math.min(i5, i6) * 2) / 3);
        }
        textView.setText(str);
        ImageView imageView = new ImageView(context);
        imageView.setColorFilter(new PorterDuffColorFilter(iC, PorterDuff.Mode.MULTIPLY));
        imageView.setImageResource(R.drawable.ic_arrow_down);
        if (i2 == 48) {
            linearLayout.setOrientation(1);
            linearLayout.addView(textView, new LinearLayout.LayoutParams(-2, -2));
            linearLayout.addView(imageView, new LinearLayout.LayoutParams(-2, -2));
        } else {
            if (i2 != 80) {
                throw new Exception("Unsupported gravity");
            }
            linearLayout.setOrientation(1);
            imageView.setRotation(180.0f);
            linearLayout.addView(imageView, new LinearLayout.LayoutParams(-2, -2));
            linearLayout.addView(textView, new LinearLayout.LayoutParams(-2, -2));
        }
        PopupWindow popupWindow = new PopupWindow(linearLayout, -1, -1);
        this.f2343f = popupWindow;
        popupWindow.setOutsideTouchable(true);
    }

    public final void a() {
        if (this.f2343f.isShowing()) {
            LinearLayout linearLayout = this.f2342e;
            linearLayout.setPivotX(this.f2344g);
            linearLayout.setPivotY(this.f2345h);
            linearLayout.animate().setDuration(300L).alpha(0.0f).scaleX(0.0f).scaleY(0.0f).setListener(new a());
        }
    }

    /* JADX WARN: Code duplicated, block: B:10:0x0027  */
    @Override
    public final boolean onPreDraw() {
        Activity activity;
        TextView textView;
        View childAt;
        LinearLayout linearLayout = this.f2342e;
        linearLayout.getViewTreeObserver().removeOnPreDrawListener(this);
        Context context = linearLayout.getContext();
        if (context instanceof Activity) {
            activity = (Activity) context;
        } else if (context instanceof ContextWrapper) {
            Context baseContext = ((ContextWrapper) context).getBaseContext();
            if (baseContext instanceof Activity) {
                activity = (Activity) baseContext;
            } else {
                activity = null;
            }
        } else {
            activity = null;
        }
        if (activity == null) {
            return false;
        }
        DisplayMetrics displayMetrics = new DisplayMetrics();
        activity.getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
        int i2 = displayMetrics.widthPixels;
        int[] iArr = new int[2];
        linearLayout.getLocationOnScreen(iArr);
        int[] iArr2 = new int[2];
        View view = this.f2338a;
        view.getLocationOnScreen(iArr2);
        int i3 = iArr2[1] - iArr[1];
        int i4 = iArr2[0] - iArr[0];
        int width = view.getWidth();
        int height = view.getHeight();
        int i5 = this.f2339b;
        if (i5 == 3 || i5 == 80) {
            View childAt2 = linearLayout.getChildAt(0);
            textView = (TextView) linearLayout.getChildAt(1);
            childAt = childAt2;
        } else {
            childAt = linearLayout.getChildAt(1);
            textView = (TextView) linearLayout.getChildAt(0);
        }
        int width2 = textView.getWidth();
        int height2 = textView.getHeight();
        int width3 = childAt.getWidth();
        int height3 = childAt.getHeight();
        int iA = c.a(20);
        if (i5 == 48 || i5 == 80) {
            int iMax = Math.max(width2, width3);
            int i6 = height2 + height3;
            int i7 = this.f2341d;
            int i8 = i5 == 48 ? (i3 - i6) + i7 : (height + i3) - i7;
            int i9 = (width / 2) + i4;
            int i10 = i9 - (iMax / 2);
            if (i10 + iMax > i2) {
                i10 = (i2 - iMax) - (iA * 2);
            }
            int iMax2 = Math.max(0, i10) + iA;
            linearLayout.setPadding(iMax2, i8, iA, 0);
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) childAt.getLayoutParams();
            marginLayoutParams.leftMargin = ((i9 - iMax2) - (childAt.getWidth() / 2)) - this.f2340c;
            childAt.setLayoutParams(marginLayoutParams);
            this.f2344g = i9;
            this.f2345h = i5 == 48 ? i3 : i8;
        }
        linearLayout.setAlpha(0.0f);
        linearLayout.setPivotX(this.f2344g);
        linearLayout.setPivotY(this.f2345h);
        linearLayout.setScaleX(0.0f);
        linearLayout.setScaleY(0.0f);
        linearLayout.animate().setDuration(300L).alpha(1.0f).scaleX(1.0f).scaleY(1.0f);
        return false;
    }

    @Override
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        a();
        return false;
    }
}
