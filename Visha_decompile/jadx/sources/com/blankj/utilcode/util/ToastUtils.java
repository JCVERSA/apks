package com.blankj.utilcode.util;

import android.R;
import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.core.app.NotificationManagerCompat;
import androidx.core.view.ViewCompat;
import com.transsion.hubsdk.api.view.TranWindowManager;
import java.lang.ref.WeakReference;

public final class ToastUtils {
    public static final ToastUtils l = m();
    public static WeakReference m;
    public String a;
    public int b = -1;
    public int c = -1;
    public int d = -1;
    public int e = -16777217;
    public int f = -1;
    public int g = -16777217;
    public int h = -1;
    public boolean i = false;
    public final Drawable[] j = new Drawable[4];
    public boolean k = false;

    class AnonymousClass2 implements Runnable {
        final int val$duration;
        final CharSequence val$text;
        final View val$view;

        public AnonymousClass2(View view, CharSequence charSequence, int i) {
            this.val$view = view;
            this.val$text = charSequence;
            this.val$duration = i;
        }

        @Override
        public void run() {
            ToastUtils.l();
            b bVarN = ToastUtils.n(ToastUtils.this);
            WeakReference unused = ToastUtils.m = new WeakReference(bVarN);
            View view = this.val$view;
            if (view != null) {
                bVarN.a(view);
            } else {
                bVarN.c(this.val$text);
            }
            bVarN.b(this.val$duration);
        }
    }

    public static final class ActivityToast extends a {
        public static int f;
        public Utils.a d;
        public b e;

        public class a extends Utils.a {
            public final int a;

            public a(int i) {
                this.a = i;
            }

            @Override
            public void a(Activity activity) {
                if (ActivityToast.this.i()) {
                    ActivityToast.this.l(activity, this.a, false);
                }
            }
        }

        public ActivityToast(ToastUtils toastUtils) {
            super(toastUtils);
        }

        @Override
        public void b(int i) {
            if (this.a == null) {
                return;
            }
            if (!h.w()) {
                this.e = k(i);
                return;
            }
            boolean z = false;
            for (Activity activity : h.i()) {
                if (h.v(activity)) {
                    if (z) {
                        l(activity, f, true);
                    } else {
                        this.e = m(activity, i);
                        z = true;
                    }
                }
            }
            if (!z) {
                this.e = k(i);
                return;
            }
            j();
            h.L(new Runnable() {
                @Override
                public void run() {
                    ActivityToast.this.cancel();
                }
            }, i == 0 ? 2000L : 3500L);
            f++;
        }

        @Override
        public void cancel() {
            Window window;
            if (i()) {
                n();
                for (Activity activity : h.i()) {
                    if (h.v(activity) && (window = activity.getWindow()) != null) {
                        ViewGroup viewGroup = (ViewGroup) window.getDecorView();
                        StringBuilder sb = new StringBuilder();
                        sb.append("TAG_TOAST");
                        sb.append(f - 1);
                        View viewFindViewWithTag = viewGroup.findViewWithTag(sb.toString());
                        if (viewFindViewWithTag != null) {
                            try {
                                viewGroup.removeView(viewFindViewWithTag);
                            } catch (Exception unused) {
                            }
                        }
                    }
                }
            }
            b bVar = this.e;
            if (bVar != null) {
                bVar.cancel();
                this.e = null;
            }
            super.cancel();
        }

        public final boolean i() {
            return this.d != null;
        }

        public final void j() {
            a aVar = new a(f);
            this.d = aVar;
            h.a(aVar);
        }

        public final b k(int i) {
            c cVar = new c(this.b);
            cVar.a = this.a;
            cVar.b(i);
            return cVar;
        }

        public final void l(Activity activity, int i, boolean z) {
            Window window = activity.getWindow();
            if (window != null) {
                ViewGroup viewGroup = (ViewGroup) window.getDecorView();
                FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
                layoutParams.gravity = this.a.getGravity();
                layoutParams.bottomMargin = this.a.getYOffset() + h.q();
                layoutParams.topMargin = this.a.getYOffset() + h.s();
                layoutParams.leftMargin = this.a.getXOffset();
                View viewD = d(i);
                if (z) {
                    viewD.setAlpha(0.0f);
                    viewD.animate().alpha(1.0f).setDuration(200L).start();
                }
                viewGroup.addView(viewD, layoutParams);
            }
        }

        public final b m(Activity activity, int i) {
            WindowManagerToast windowManagerToast = new WindowManagerToast(this.b, activity.getWindowManager(), 99);
            windowManagerToast.c = d(-1);
            windowManagerToast.a = this.a;
            windowManagerToast.b(i);
            return windowManagerToast;
        }

        public final void n() {
            h.J(this.d);
            this.d = null;
        }
    }

    public static final class UtilsMaxWidthRelativeLayout extends RelativeLayout {
        public static final int b = h.e(80.0f);

        public UtilsMaxWidthRelativeLayout(Context context) {
            super(context);
        }

        @Override
        public void onMeasure(int i, int i2) {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(h.j() - b, Integer.MIN_VALUE), i2);
        }

        public UtilsMaxWidthRelativeLayout(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public UtilsMaxWidthRelativeLayout(Context context, AttributeSet attributeSet, int i) {
            super(context, attributeSet, i);
        }
    }

    public static abstract class a implements b {
        public Toast a = new Toast(Utils.a());
        public ToastUtils b;
        public View c;

        public a(ToastUtils toastUtils) {
            this.b = toastUtils;
            if (toastUtils.b == -1 && this.b.c == -1 && this.b.d == -1) {
                return;
            }
            this.a.setGravity(this.b.b, this.b.c, this.b.d);
        }

        @Override
        public void a(View view) {
            this.c = view;
            this.a.setView(view);
        }

        @Override
        public void c(CharSequence charSequence) {
            View viewO = this.b.o(charSequence);
            if (viewO != null) {
                a(viewO);
                e();
                return;
            }
            View view = this.a.getView();
            this.c = view;
            if (view == null || view.findViewById(R.id.message) == null) {
                a(h.F(com.blankj.utilcode.R.layout.utils_toast_view));
            }
            TextView textView = (TextView) this.c.findViewById(R.id.message);
            textView.setText(charSequence);
            if (this.b.g != -16777217) {
                textView.setTextColor(this.b.g);
            }
            if (this.b.h != -1) {
                textView.setTextSize(this.b.h);
            }
            f(textView);
            e();
        }

        @Override
        public void cancel() {
            Toast toast = this.a;
            if (toast != null) {
                toast.cancel();
            }
            this.a = null;
            this.c = null;
        }

        public View d(int i) {
            Bitmap bitmapN = h.N(this.c);
            ImageView imageView = new ImageView(Utils.a());
            imageView.setTag("TAG_TOAST" + i);
            imageView.setImageBitmap(bitmapN);
            return imageView;
        }

        public final void e() {
            if (h.A()) {
                a(d(-1));
            }
        }

        public final void f(TextView textView) {
            if (this.b.f != -1) {
                this.c.setBackgroundResource(this.b.f);
                textView.setBackgroundColor(0);
                return;
            }
            if (this.b.e != -16777217) {
                Drawable background = this.c.getBackground();
                Drawable background2 = textView.getBackground();
                if (background != null && background2 != null) {
                    background.mutate().setColorFilter(new PorterDuffColorFilter(this.b.e, PorterDuff.Mode.SRC_IN));
                    textView.setBackgroundColor(0);
                } else if (background != null) {
                    background.mutate().setColorFilter(new PorterDuffColorFilter(this.b.e, PorterDuff.Mode.SRC_IN));
                } else if (background2 != null) {
                    background2.mutate().setColorFilter(new PorterDuffColorFilter(this.b.e, PorterDuff.Mode.SRC_IN));
                } else {
                    this.c.setBackgroundColor(this.b.e);
                }
            }
        }
    }

    public interface b {
        void a(View view);

        void b(int i);

        void c(CharSequence charSequence);

        void cancel();
    }

    public static final class c extends a {
        public c(ToastUtils toastUtils) {
            super(toastUtils);
        }

        @Override
        public void b(int i) {
            Toast toast = this.a;
            if (toast == null) {
                return;
            }
            toast.setDuration(i);
            this.a.show();
        }
    }

    public static void l() {
        h.K(new Runnable() {
            @Override
            public void run() {
                if (ToastUtils.m != null) {
                    b bVar = (b) ToastUtils.m.get();
                    if (bVar != null) {
                        bVar.cancel();
                    }
                    WeakReference unused = ToastUtils.m = null;
                }
            }
        });
    }

    public static ToastUtils m() {
        return new ToastUtils();
    }

    public static b n(ToastUtils toastUtils) {
        if (toastUtils.k || !NotificationManagerCompat.from(Utils.a()).areNotificationsEnabled() || h.y()) {
            return h.y() ? new WindowManagerToast(toastUtils, TranWindowManager.TYPE_APPLICATION_OVERLAY) : new ActivityToast(toastUtils);
        }
        return new c(toastUtils);
    }

    public final View o(CharSequence charSequence) {
        if (!"dark".equals(this.a) && !"light".equals(this.a)) {
            Drawable[] drawableArr = this.j;
            if (drawableArr[0] == null && drawableArr[1] == null && drawableArr[2] == null && drawableArr[3] == null) {
                return null;
            }
        }
        View viewF = h.F(com.blankj.utilcode.R.layout.utils_toast_view);
        TextView textView = (TextView) viewF.findViewById(R.id.message);
        if ("dark".equals(this.a)) {
            ((GradientDrawable) viewF.getBackground().mutate()).setColor(Color.parseColor("#BB000000"));
            textView.setTextColor(-1);
        }
        textView.setText(charSequence);
        if (this.j[0] != null) {
            View viewFindViewById = viewF.findViewById(com.blankj.utilcode.R.id.utvLeftIconView);
            ViewCompat.setBackground(viewFindViewById, this.j[0]);
            viewFindViewById.setVisibility(0);
        }
        if (this.j[1] != null) {
            View viewFindViewById2 = viewF.findViewById(com.blankj.utilcode.R.id.utvTopIconView);
            ViewCompat.setBackground(viewFindViewById2, this.j[1]);
            viewFindViewById2.setVisibility(0);
        }
        if (this.j[2] != null) {
            View viewFindViewById3 = viewF.findViewById(com.blankj.utilcode.R.id.utvRightIconView);
            ViewCompat.setBackground(viewFindViewById3, this.j[2]);
            viewFindViewById3.setVisibility(0);
        }
        if (this.j[3] != null) {
            View viewFindViewById4 = viewF.findViewById(com.blankj.utilcode.R.id.utvBottomIconView);
            ViewCompat.setBackground(viewFindViewById4, this.j[3]);
            viewFindViewById4.setVisibility(0);
        }
        return viewF;
    }

    public static final class WindowManagerToast extends a {
        public WindowManager d;
        public final WindowManager.LayoutParams e;

        public WindowManagerToast(ToastUtils toastUtils, int i) {
            super(toastUtils);
            WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
            this.e = layoutParams;
            this.d = (WindowManager) Utils.a().getSystemService("window");
            layoutParams.type = i;
        }

        @Override
        public void b(int i) {
            if (this.a == null) {
                return;
            }
            WindowManager.LayoutParams layoutParams = this.e;
            layoutParams.height = -2;
            layoutParams.width = -2;
            layoutParams.format = -3;
            layoutParams.windowAnimations = R.style.Animation.Toast;
            layoutParams.setTitle("ToastWithoutNotification");
            WindowManager.LayoutParams layoutParams2 = this.e;
            layoutParams2.flags = 152;
            layoutParams2.packageName = Utils.a().getPackageName();
            this.e.gravity = this.a.getGravity();
            WindowManager.LayoutParams layoutParams3 = this.e;
            int i2 = layoutParams3.gravity;
            if ((i2 & 7) == 7) {
                layoutParams3.horizontalWeight = 1.0f;
            }
            if ((i2 & 112) == 112) {
                layoutParams3.verticalWeight = 1.0f;
            }
            layoutParams3.x = this.a.getXOffset();
            this.e.y = this.a.getYOffset();
            this.e.horizontalMargin = this.a.getHorizontalMargin();
            this.e.verticalMargin = this.a.getVerticalMargin();
            try {
                WindowManager windowManager = this.d;
                if (windowManager != null) {
                    windowManager.addView(this.c, this.e);
                }
            } catch (Exception unused) {
            }
            h.L(new Runnable() {
                @Override
                public void run() {
                    WindowManagerToast.this.cancel();
                }
            }, i == 0 ? 2000L : 3500L);
        }

        @Override
        public void cancel() {
            try {
                WindowManager windowManager = this.d;
                if (windowManager != null) {
                    windowManager.removeViewImmediate(this.c);
                    this.d = null;
                }
            } catch (Exception unused) {
            }
            super.cancel();
        }

        public WindowManagerToast(ToastUtils toastUtils, WindowManager windowManager, int i) {
            super(toastUtils);
            WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
            this.e = layoutParams;
            this.d = windowManager;
            layoutParams.type = i;
        }
    }
}
