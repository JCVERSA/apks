package com.hunantv.imgo.util;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.CountDownTimer;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import android.widget.Toast;
import androidx.annotation.Nullable;
import com.hunantv.imgo.BaseApplication;
import com.mgtv.ssp.R;
import java.lang.reflect.Field;

public class v {

    @Nullable
    private static Toast a;

    @Nullable
    private static String b;

    public static class a {
        private static Field a;
        private static Field b;

        public static class HandlerC0131a extends Handler {
            private Handler a;

            public HandlerC0131a(Handler handler) {
                this.a = handler;
            }

            @Override
            public void dispatchMessage(Message message) {
                try {
                    super.dispatchMessage(message);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }

            @Override
            public void handleMessage(Message message) {
                this.a.handleMessage(message);
            }
        }

        static {
            try {
                Field declaredField = Toast.class.getDeclaredField("mTN");
                a = declaredField;
                declaredField.setAccessible(true);
                Field declaredField2 = a.getType().getDeclaredField("mHandler");
                b = declaredField2;
                declaredField2.setAccessible(true);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        public static void a(Toast toast) {
            try {
                Object obj = a.get(toast);
                b.set(obj, new HandlerC0131a((Handler) b.get(obj)));
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    public static void a(String str) {
        b(str, 0);
    }

    public static void b(String str) {
        b(str, 1);
    }

    public static void a(int i) {
        a(i, 0, false);
    }

    public static void b(int i) {
        a(i, 1, false);
    }

    @SuppressLint({"InflateParams"})
    private static void c(@Nullable String str, int i) {
        if (TextUtils.isEmpty(str) || TextUtils.equals(str, b)) {
            return;
        }
        Context context = BaseApplication.getContext();
        if (a() == null) {
            return;
        }
        View viewInflate = LayoutInflater.from(context).inflate(R.layout.toast_center_black, (ViewGroup) null);
        ((TextView) viewInflate.findViewById(R.id.tvToast)).setText(str);
        Toast toast = new Toast(context);
        a = toast;
        toast.setGravity(17, 0, 0);
        a.setDuration(i);
        a.setView(viewInflate);
        a.show();
        b = str;
        if (i == 0) {
            a(2000L);
        } else if (i == 1) {
            a(3500L);
        } else {
            a(i);
        }
    }

    public static void a(String str, int i) {
        b(str, i);
    }

    @SuppressLint({"InflateParams"})
    private static void b(@Nullable String str, int i) {
        if (TextUtils.isEmpty(str) || TextUtils.equals(str, b)) {
            return;
        }
        Context context = BaseApplication.getContext();
        if (a() == null) {
            return;
        }
        View viewInflate = LayoutInflater.from(context).inflate(R.layout.toast_black, (ViewGroup) null);
        ((TextView) viewInflate.findViewById(R.id.tvToast)).setText(str);
        Toast toast = new Toast(context);
        a = toast;
        toast.setGravity(80, 0, 300);
        a.setDuration(i);
        a.setView(viewInflate);
        a.show();
        b = str;
        if (i == 0) {
            a(2000L);
        } else if (i == 1) {
            a(3500L);
        } else {
            a(i);
        }
    }

    @SuppressLint({"InflateParams"})
    public static void a(int i, int i2, boolean z) {
        String string;
        try {
            string = BaseApplication.getContext().getString(i);
        } catch (Exception e) {
            e.printStackTrace();
            string = null;
        }
        if (z) {
            c(string, i2);
        } else {
            b(string, i2);
        }
    }

    private static void a(long j) {
        if (j <= 0) {
            return;
        }
        new CountDownTimer(j, j) {
            @Override
            public void onFinish() {
                String unused = v.b = null;
            }

            @Override
            public void onTick(long j2) {
            }
        }.start();
    }

    @Nullable
    public static Looper a() {
        Looper looperMyLooper = Looper.myLooper();
        if (looperMyLooper != null) {
            return looperMyLooper;
        }
        try {
            Looper.prepare();
            return Looper.myLooper();
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
}
