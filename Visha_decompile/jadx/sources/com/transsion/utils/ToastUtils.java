package com.transsion.utils;

import android.R;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import android.widget.Toast;
import androidx.core.app.NotificationManagerCompat;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.blankj.utilcode.util.Utils;
import io.appmetrica.analytics.coreutils.internal.system.ConstantDeviceInfo;

public abstract class ToastUtils {
    public static a b;
    public static final Handler a = new Handler(Looper.getMainLooper());
    public static int c = -1;
    public static int d = -1;
    public static int e = -1;
    public static int f = -16777217;
    public static int g = -1;
    public static int h = -16777217;
    public static int i = -1;

    class AnonymousClass3 implements Runnable {
        final int val$duration;
        final View val$view;

        public AnonymousClass3(View view, int i) {
            this.val$view = view;
            this.val$duration = i;
        }

        @Override
        public void run() {
            ToastUtils.h();
            ToastUtils.b = c.c(Utils.a());
            ToastUtils.b.setView(this.val$view);
            ToastUtils.b.b(this.val$duration);
            if (ToastUtils.c != -1 || ToastUtils.d != -1 || ToastUtils.e != -1) {
                ToastUtils.b.a(ToastUtils.c, ToastUtils.d, ToastUtils.e);
            }
            ToastUtils.j();
            ToastUtils.b.show();
        }
    }

    public interface a {
        void a(int i, int i2, int i3);

        void b(int i);

        void cancel();

        View getView();

        void setView(View view);

        void show();
    }

    public static class b implements a {
        public Toast a;

        public b(Toast toast) {
            this.a = toast;
        }

        @Override
        public void a(int i, int i2, int i3) {
            this.a.setGravity(i, i2, i3);
        }

        @Override
        public void b(int i) {
            this.a.setDuration(i);
        }

        @Override
        public void cancel() {
            this.a.cancel();
        }

        @Override
        public View getView() {
            return this.a.getView();
        }

        @Override
        public void setView(View view) {
            this.a.setView(view);
        }

        @Override
        public void show() {
            this.a.show();
        }
    }

    public static class c {
        public static Toast a(Context context, CharSequence charSequence, int i) {
            if (!"Xiaomi".equals(Build.MANUFACTURER)) {
                return Toast.makeText(context, charSequence, i);
            }
            Toast toast = new Toast(context);
            View viewI = ToastUtils.i(Resources.getSystem().getIdentifier("transient_notification", TtmlNode.TAG_LAYOUT, ConstantDeviceInfo.APP_PLATFORM));
            toast.setView(viewI);
            toast.setDuration(i);
            ((TextView) viewI.findViewById(R.id.message)).setText(charSequence);
            return toast;
        }

        public static a b(Context context, CharSequence charSequence, int i) {
            if (NotificationManagerCompat.from(context).areNotificationsEnabled()) {
                return new b(a(context, charSequence, i));
            }
            Log.e("ToastUtils", "Toast is GG. In fact, next step is useless.");
            return new b(a(context, charSequence, i));
        }

        public static a c(Context context) {
            if (NotificationManagerCompat.from(context).areNotificationsEnabled()) {
                return new b(new Toast(context));
            }
            Log.e("ToastUtils", "Toast is GG. In fact, next step is useless.");
            return new b(new Toast(context));
        }
    }

    public static class d implements a {
        @Override
        public abstract void cancel();
    }

    public static void h() {
        a aVar = b;
        if (aVar != null) {
            aVar.cancel();
        }
        b = null;
    }

    public static View i(int i2) {
        return ((LayoutInflater) Utils.a().getSystemService("layout_inflater")).inflate(i2, (ViewGroup) null);
    }

    public static void j() {
        if (g != -1) {
            b.getView().setBackgroundResource(g);
            return;
        }
        if (f != -16777217) {
            View view = b.getView();
            Drawable background = view.getBackground();
            if (background != null) {
                background.setColorFilter(new PorterDuffColorFilter(f, PorterDuff.Mode.SRC_IN));
            } else {
                view.setBackground(new ColorDrawable(f));
            }
        }
    }

    public static void k(int i2, int i3) {
        o(Utils.a().getResources().getText(i2).toString(), i3);
    }

    public static void l(int i2, int i3, Object... objArr) {
        o(String.format(Utils.a().getResources().getString(i2), objArr), i3);
    }

    public static void m(Context context, int i2, int i3) {
        n(context, Utils.a().getResources().getText(i2).toString(), i3);
    }

    public static void n(final Context context, final CharSequence charSequence, final int i2) {
        a.post(new Runnable() {
            @Override
            @SuppressLint({"ShowToast"})
            public void run() {
                ToastUtils.h();
                ToastUtils.b = c.b(context, charSequence, i2);
                ToastUtils.b.show();
            }
        });
    }

    public static void o(final CharSequence charSequence, final int i2) {
        a.post(new Runnable() {
            @Override
            @SuppressLint({"ShowToast"})
            public void run() {
                ToastUtils.h();
                ToastUtils.b = c.b(Utils.a(), charSequence, i2);
                ToastUtils.b.show();
            }
        });
    }

    public static void p(String str, int i2, Object... objArr) {
        o(str == null ? "null" : String.format(str, objArr), i2);
    }

    public static void q(int i2) {
        k(i2, 1);
    }

    public static void r(CharSequence charSequence) {
        if (charSequence == null) {
            charSequence = "null";
        }
        o(charSequence, 1);
    }

    public static void s(int i2) {
        k(i2, 0);
    }

    public static void t(int i2, Object... objArr) {
        l(i2, 0, objArr);
    }

    public static void u(Context context, int i2) {
        m(context, i2, 0);
    }

    public static void v(Context context, CharSequence charSequence) {
        if (charSequence == null) {
            charSequence = "null";
        }
        n(context, charSequence, 0);
    }

    public static void w(CharSequence charSequence) {
        if (charSequence == null) {
            charSequence = "null";
        }
        o(charSequence, 0);
    }

    public static void x(String str, Object... objArr) {
        p(str, 0, objArr);
    }
}
