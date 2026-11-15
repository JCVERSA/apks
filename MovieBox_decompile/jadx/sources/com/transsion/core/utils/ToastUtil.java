package com.transsion.core.utils;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.widget.Toast;
import java.lang.reflect.Field;

public class ToastUtil {

    private static Handler f42891a = new Handler(Looper.getMainLooper());

    private static Toast f42892b = null;

    private static Field f42893c;

    private static Field f42894d;

    final class AnonymousClass3 implements Runnable {
        final Context val$context;
        final int val$resid;

        AnonymousClass3(int i10, Context context) {
            this.val$resid = i10;
            this.val$context = context;
        }

        @Override
        public void run() {
            if (ToastUtil.f42892b != null) {
                ToastUtil.f42892b.setText(this.val$resid);
                ToastUtil.f42892b.setDuration(1);
                ToastUtil.d(ToastUtil.f42892b);
            } else {
                Toast unused = ToastUtil.f42892b = Toast.makeText(this.val$context.getApplicationContext(), this.val$resid, 1);
            }
            ToastUtil.f42892b.show();
        }
    }

    final class AnonymousClass4 implements Runnable {
        final Context val$context;
        final String val$msg;

        AnonymousClass4(String str, Context context) {
            this.val$msg = str;
            this.val$context = context;
        }

        @Override
        public void run() {
            if (ToastUtil.f42892b != null) {
                ToastUtil.f42892b.setText(this.val$msg);
                ToastUtil.f42892b.setDuration(1);
                ToastUtil.d(ToastUtil.f42892b);
            } else {
                Toast unused = ToastUtil.f42892b = Toast.makeText(this.val$context.getApplicationContext(), this.val$msg, 1);
            }
            ToastUtil.f42892b.show();
        }
    }

    private static class a extends Handler {

        private Handler f42895a;

        a(Handler handler) {
            this.f42895a = handler;
        }

        @Override
        public void dispatchMessage(Message message) {
            try {
                super.dispatchMessage(message);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }

        @Override
        public void handleMessage(Message message) {
            this.f42895a.handleMessage(message);
        }
    }

    static {
        try {
            Field declaredField = Toast.class.getDeclaredField("mTN");
            f42893c = declaredField;
            declaredField.setAccessible(true);
            Field declaredField2 = f42893c.getType().getDeclaredField("mHandler");
            f42894d = declaredField2;
            declaredField2.setAccessible(true);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public static void d(Toast toast) {
        try {
            Object obj = f42893c.get(toast);
            Handler handler = (Handler) f42894d.get(obj);
            if (handler == null || (handler instanceof a)) {
                return;
            }
            f42894d.set(obj, new a(handler));
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public static void e(final int i10) {
        final Context contextA = yj.a.a();
        if (i10 <= 0) {
            return;
        }
        f42891a.post(new Runnable() {
            @Override
            public void run() {
                if (ToastUtil.f42892b != null) {
                    ToastUtil.f42892b.setText(i10);
                    ToastUtil.f42892b.setDuration(0);
                    ToastUtil.d(ToastUtil.f42892b);
                } else {
                    Toast unused = ToastUtil.f42892b = Toast.makeText(contextA.getApplicationContext(), i10, 0);
                }
                ToastUtil.f42892b.show();
            }
        });
    }

    public static void f(final String str) {
        final Context contextA = yj.a.a();
        if (TextUtils.isEmpty(str)) {
            return;
        }
        f42891a.post(new Runnable() {
            @Override
            public void run() {
                if (ToastUtil.f42892b != null) {
                    ToastUtil.f42892b.setText(str);
                    ToastUtil.f42892b.setDuration(0);
                    ToastUtil.d(ToastUtil.f42892b);
                } else {
                    Toast unused = ToastUtil.f42892b = Toast.makeText(contextA.getApplicationContext(), str, 0);
                }
                ToastUtil.f42892b.show();
            }
        });
    }
}
