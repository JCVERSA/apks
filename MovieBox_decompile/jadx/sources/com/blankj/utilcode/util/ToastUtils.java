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
import android.os.Build;
import android.os.Handler;
import android.os.Message;
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
import androidx.core.view.ViewCompat;
import com.blankj.utilcode.R$id;
import com.blankj.utilcode.R$layout;
import com.cloud.tmc.miniapp.utils.toast.ToastStrategy;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;

public final class ToastUtils {

    private static final ToastUtils f19431l = n();

    private static WeakReference f19432m;

    private String f19433a;

    private int f19434b = -1;

    private int f19435c = -1;

    private int f19436d = -1;

    private int f19437e = -16777217;

    private int f19438f = -1;

    private int f19439g = -16777217;

    private int f19440h = -1;

    private boolean f19441i = false;

    private Drawable[] f19442j = new Drawable[4];

    private boolean f19443k = false;

    static final class ActivityToast extends a {

        private static int f19444f;

        private Utils.a f19445d;

        private b f19446e;

        class a extends Utils.a {

            final int f19447a;

            a(int i10) {
                this.f19447a = i10;
            }

            @Override
            public void a(Activity activity) {
                if (ActivityToast.this.i()) {
                    ActivityToast.this.l(activity, this.f19447a, false);
                }
            }
        }

        ActivityToast(ToastUtils toastUtils) {
            super(toastUtils);
        }

        public boolean i() {
            return this.f19445d != null;
        }

        private void j() {
            a aVar = new a(f19444f);
            this.f19445d = aVar;
            e0.a(aVar);
        }

        private b k(int i10) {
            c cVar = new c(this.f19453b);
            cVar.f19452a = this.f19452a;
            cVar.a(i10);
            return cVar;
        }

        public void l(Activity activity, int i10, boolean z10) {
            Window window = activity.getWindow();
            if (window != null) {
                ViewGroup viewGroup = (ViewGroup) window.getDecorView();
                FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
                layoutParams.gravity = this.f19452a.getGravity();
                layoutParams.bottomMargin = this.f19452a.getYOffset() + e0.p();
                layoutParams.topMargin = this.f19452a.getYOffset() + e0.s();
                layoutParams.leftMargin = this.f19452a.getXOffset();
                View viewD = d(i10);
                if (z10) {
                    viewD.setAlpha(0.0f);
                    viewD.animate().alpha(1.0f).setDuration(200L).start();
                }
                viewGroup.addView(viewD, layoutParams);
            }
        }

        private b m(Activity activity, int i10) {
            WindowManagerToast windowManagerToast = new WindowManagerToast(this.f19453b, activity.getWindowManager(), 99);
            windowManagerToast.f19454c = d(-1);
            windowManagerToast.f19452a = this.f19452a;
            windowManagerToast.a(i10);
            return windowManagerToast;
        }

        private void n() {
            e0.I(this.f19445d);
            this.f19445d = null;
        }

        @Override
        public void a(int i10) {
            if (this.f19452a == null) {
                return;
            }
            if (!e0.x()) {
                this.f19446e = k(i10);
                return;
            }
            boolean z10 = false;
            for (Activity activity : e0.h()) {
                if (e0.w(activity)) {
                    if (z10) {
                        l(activity, f19444f, true);
                    } else {
                        this.f19446e = m(activity, i10);
                        z10 = true;
                    }
                }
            }
            if (!z10) {
                this.f19446e = k(i10);
                return;
            }
            j();
            e0.K(new Runnable() {
                @Override
                public void run() {
                    ActivityToast.this.cancel();
                }
            }, i10 == 0 ? 2000L : ToastStrategy.LONG_DURATION_TIMEOUT);
            f19444f++;
        }

        @Override
        public void cancel() {
            Window window;
            if (i()) {
                n();
                for (Activity activity : e0.h()) {
                    if (e0.w(activity) && (window = activity.getWindow()) != null) {
                        ViewGroup viewGroup = (ViewGroup) window.getDecorView();
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("TAG_TOAST");
                        sb2.append(f19444f - 1);
                        View viewFindViewWithTag = viewGroup.findViewWithTag(sb2.toString());
                        if (viewFindViewWithTag != null) {
                            try {
                                viewGroup.removeView(viewFindViewWithTag);
                            } catch (Exception unused) {
                            }
                        }
                    }
                }
            }
            b bVar = this.f19446e;
            if (bVar != null) {
                bVar.cancel();
                this.f19446e = null;
            }
            super.cancel();
        }
    }

    public static final class UtilsMaxWidthRelativeLayout extends RelativeLayout {

        private static final int f19449a = e0.d(80.0f);

        public UtilsMaxWidthRelativeLayout(Context context) {
            super(context);
        }

        @Override
        protected void onMeasure(int i10, int i11) {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(e0.i() - f19449a, Integer.MIN_VALUE), i11);
        }

        public UtilsMaxWidthRelativeLayout(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public UtilsMaxWidthRelativeLayout(Context context, AttributeSet attributeSet, int i10) {
            super(context, attributeSet, i10);
        }
    }

    static abstract class a implements b {

        protected Toast f19452a = new Toast(Utils.a());

        protected ToastUtils f19453b;

        protected View f19454c;

        a(ToastUtils toastUtils) {
            this.f19453b = toastUtils;
            if (toastUtils.f19434b == -1 && this.f19453b.f19435c == -1 && this.f19453b.f19436d == -1) {
                return;
            }
            this.f19452a.setGravity(this.f19453b.f19434b, this.f19453b.f19435c, this.f19453b.f19436d);
        }

        private void e() {
            if (e0.B()) {
                b(d(-1));
            }
        }

        private void f(TextView textView) {
            if (this.f19453b.f19438f != -1) {
                this.f19454c.setBackgroundResource(this.f19453b.f19438f);
                textView.setBackgroundColor(0);
                return;
            }
            if (this.f19453b.f19437e != -16777217) {
                Drawable background = this.f19454c.getBackground();
                Drawable background2 = textView.getBackground();
                if (background != null && background2 != null) {
                    background.mutate().setColorFilter(new PorterDuffColorFilter(this.f19453b.f19437e, PorterDuff.Mode.SRC_IN));
                    textView.setBackgroundColor(0);
                } else if (background != null) {
                    background.mutate().setColorFilter(new PorterDuffColorFilter(this.f19453b.f19437e, PorterDuff.Mode.SRC_IN));
                } else if (background2 != null) {
                    background2.mutate().setColorFilter(new PorterDuffColorFilter(this.f19453b.f19437e, PorterDuff.Mode.SRC_IN));
                } else {
                    this.f19454c.setBackgroundColor(this.f19453b.f19437e);
                }
            }
        }

        @Override
        public void b(View view) {
            this.f19454c = view;
            this.f19452a.setView(view);
        }

        @Override
        public void c(CharSequence charSequence) {
            View viewT = this.f19453b.t(charSequence);
            if (viewT != null) {
                b(viewT);
                e();
                return;
            }
            View view = this.f19452a.getView();
            this.f19454c = view;
            if (view == null || view.findViewById(R.id.message) == null) {
                b(e0.F(R$layout.utils_toast_view));
            }
            TextView textView = (TextView) this.f19454c.findViewById(R.id.message);
            textView.setText(charSequence);
            if (this.f19453b.f19439g != -16777217) {
                textView.setTextColor(this.f19453b.f19439g);
            }
            if (this.f19453b.f19440h != -1) {
                textView.setTextSize(this.f19453b.f19440h);
            }
            f(textView);
            e();
        }

        @Override
        public void cancel() {
            Toast toast = this.f19452a;
            if (toast != null) {
                toast.cancel();
            }
            this.f19452a = null;
            this.f19454c = null;
        }

        View d(int i10) {
            Bitmap bitmapM = e0.M(this.f19454c);
            ImageView imageView = new ImageView(Utils.a());
            imageView.setTag("TAG_TOAST" + i10);
            imageView.setImageBitmap(bitmapM);
            return imageView;
        }
    }

    interface b {
        void a(int i10);

        void b(View view);

        void c(CharSequence charSequence);

        void cancel();
    }

    static final class c extends a {

        static class a extends Handler {

            private Handler f19455a;

            a(Handler handler) {
                this.f19455a = handler;
            }

            @Override
            public void dispatchMessage(Message message) {
                try {
                    this.f19455a.dispatchMessage(message);
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }

            @Override
            public void handleMessage(Message message) {
                this.f19455a.handleMessage(message);
            }
        }

        c(ToastUtils toastUtils) {
            super(toastUtils);
            if (Build.VERSION.SDK_INT == 25) {
                try {
                    Field declaredField = Toast.class.getDeclaredField("mTN");
                    declaredField.setAccessible(true);
                    Object obj = declaredField.get(this.f19452a);
                    Field declaredField2 = declaredField.getType().getDeclaredField("mHandler");
                    declaredField2.setAccessible(true);
                    declaredField2.set(obj, new a((Handler) declaredField2.get(obj)));
                } catch (Exception unused) {
                }
            }
        }

        @Override
        public void a(int i10) {
            Toast toast = this.f19452a;
            if (toast == null) {
                return;
            }
            toast.setDuration(i10);
            this.f19452a.show();
        }
    }

    public static void l() {
        e0.J(new Runnable() {
            @Override
            public void run() {
                if (ToastUtils.f19432m != null) {
                    b bVar = (b) ToastUtils.f19432m.get();
                    if (bVar != null) {
                        bVar.cancel();
                    }
                    WeakReference unused = ToastUtils.f19432m = null;
                }
            }
        });
    }

    private static CharSequence m(CharSequence charSequence) {
        if (charSequence == null) {
            return "toast null";
        }
        return charSequence.length() == 0 ? "toast nothing" : charSequence;
    }

    public static ToastUtils n() {
        return new ToastUtils();
    }

    public static b o(ToastUtils toastUtils) {
        if (!toastUtils.f19443k && androidx.core.app.t.b(Utils.a()).a() && !e0.z()) {
            return new c(toastUtils);
        }
        int i10 = Build.VERSION.SDK_INT;
        if (i10 < 25) {
            return new WindowManagerToast(toastUtils, 2005);
        }
        if (e0.z()) {
            return i10 >= 26 ? new WindowManagerToast(toastUtils, 2038) : new WindowManagerToast(toastUtils, 2002);
        }
        return new ActivityToast(toastUtils);
    }

    private static void p(final View view, final CharSequence charSequence, final int i10, ToastUtils toastUtils) {
        e0.J(new Runnable() {
            @Override
            public void run() {
                ToastUtils.l();
                b bVarO = ToastUtils.o(ToastUtils.this);
                WeakReference unused = ToastUtils.f19432m = new WeakReference(bVarO);
                View view2 = view;
                if (view2 != null) {
                    bVarO.b(view2);
                } else {
                    bVarO.c(charSequence);
                }
                bVarO.a(i10);
            }
        });
    }

    private static void q(CharSequence charSequence, int i10, ToastUtils toastUtils) {
        p(null, m(charSequence), i10, toastUtils);
    }

    public static void r(int i10) {
        q(e0.t(i10), 0, f19431l);
    }

    public static void s(String str, Object... objArr) {
        q(e0.g(str, objArr), 0, f19431l);
    }

    public View t(CharSequence charSequence) {
        if (!"dark".equals(this.f19433a) && !"light".equals(this.f19433a)) {
            Drawable[] drawableArr = this.f19442j;
            if (drawableArr[0] == null && drawableArr[1] == null && drawableArr[2] == null && drawableArr[3] == null) {
                return null;
            }
        }
        View viewF = e0.F(R$layout.utils_toast_view);
        TextView textView = (TextView) viewF.findViewById(R.id.message);
        if ("dark".equals(this.f19433a)) {
            ((GradientDrawable) viewF.getBackground().mutate()).setColor(Color.parseColor("#BB000000"));
            textView.setTextColor(-1);
        }
        textView.setText(charSequence);
        if (this.f19442j[0] != null) {
            View viewFindViewById = viewF.findViewById(R$id.utvLeftIconView);
            ViewCompat.setBackground(viewFindViewById, this.f19442j[0]);
            viewFindViewById.setVisibility(0);
        }
        if (this.f19442j[1] != null) {
            View viewFindViewById2 = viewF.findViewById(R$id.utvTopIconView);
            ViewCompat.setBackground(viewFindViewById2, this.f19442j[1]);
            viewFindViewById2.setVisibility(0);
        }
        if (this.f19442j[2] != null) {
            View viewFindViewById3 = viewF.findViewById(R$id.utvRightIconView);
            ViewCompat.setBackground(viewFindViewById3, this.f19442j[2]);
            viewFindViewById3.setVisibility(0);
        }
        if (this.f19442j[3] != null) {
            View viewFindViewById4 = viewF.findViewById(R$id.utvBottomIconView);
            ViewCompat.setBackground(viewFindViewById4, this.f19442j[3]);
            viewFindViewById4.setVisibility(0);
        }
        return viewF;
    }

    static final class WindowManagerToast extends a {

        private WindowManager f19450d;

        private WindowManager.LayoutParams f19451e;

        WindowManagerToast(ToastUtils toastUtils, int i10) {
            super(toastUtils);
            this.f19451e = new WindowManager.LayoutParams();
            this.f19450d = (WindowManager) Utils.a().getSystemService("window");
            this.f19451e.type = i10;
        }

        @Override
        public void a(int i10) {
            if (this.f19452a == null) {
                return;
            }
            WindowManager.LayoutParams layoutParams = this.f19451e;
            layoutParams.height = -2;
            layoutParams.width = -2;
            layoutParams.format = -3;
            layoutParams.windowAnimations = 16973828;
            layoutParams.setTitle("ToastWithoutNotification");
            WindowManager.LayoutParams layoutParams2 = this.f19451e;
            layoutParams2.flags = 152;
            layoutParams2.packageName = Utils.a().getPackageName();
            this.f19451e.gravity = this.f19452a.getGravity();
            WindowManager.LayoutParams layoutParams3 = this.f19451e;
            int i11 = layoutParams3.gravity;
            if ((i11 & 7) == 7) {
                layoutParams3.horizontalWeight = 1.0f;
            }
            if ((i11 & 112) == 112) {
                layoutParams3.verticalWeight = 1.0f;
            }
            layoutParams3.x = this.f19452a.getXOffset();
            this.f19451e.y = this.f19452a.getYOffset();
            this.f19451e.horizontalMargin = this.f19452a.getHorizontalMargin();
            this.f19451e.verticalMargin = this.f19452a.getVerticalMargin();
            try {
                WindowManager windowManager = this.f19450d;
                if (windowManager != null) {
                    windowManager.addView(this.f19454c, this.f19451e);
                }
            } catch (Exception unused) {
            }
            e0.K(new Runnable() {
                @Override
                public void run() {
                    WindowManagerToast.this.cancel();
                }
            }, i10 == 0 ? 2000L : ToastStrategy.LONG_DURATION_TIMEOUT);
        }

        @Override
        public void cancel() {
            try {
                WindowManager windowManager = this.f19450d;
                if (windowManager != null) {
                    windowManager.removeViewImmediate(this.f19454c);
                    this.f19450d = null;
                }
            } catch (Exception unused) {
            }
            super.cancel();
        }

        WindowManagerToast(ToastUtils toastUtils, WindowManager windowManager, int i10) {
            super(toastUtils);
            WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
            this.f19451e = layoutParams;
            this.f19450d = windowManager;
            layoutParams.type = i10;
        }
    }
}
