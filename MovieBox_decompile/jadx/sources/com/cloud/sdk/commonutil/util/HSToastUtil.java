package com.cloud.sdk.commonutil.util;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.util.Log;
import android.widget.Toast;
import java.lang.reflect.Field;

public class HSToastUtil {

    private static Handler f22509a = new Handler(Looper.getMainLooper());

    private static Toast f22510b = null;

    private static Field f22511c;

    private static Field f22512d;

    class AnonymousClass3 implements Runnable {
        final Context val$context;
        final int val$resId;

        AnonymousClass3(int i10, Context context) {
            this.val$resId = i10;
            this.val$context = context;
        }

        @Override
        public void run() {
            if (HSToastUtil.f22510b != null) {
                HSToastUtil.f22510b.setText(this.val$resId);
                HSToastUtil.f22510b.setDuration(1);
                HSToastUtil.d(HSToastUtil.f22510b);
            } else {
                Toast unused = HSToastUtil.f22510b = Toast.makeText(this.val$context.getApplicationContext(), this.val$resId, 1);
            }
            HSToastUtil.f22510b.show();
        }
    }

    class AnonymousClass4 implements Runnable {
        final Context val$context;
        final String val$text;

        AnonymousClass4(String str, Context context) {
            this.val$text = str;
            this.val$context = context;
        }

        @Override
        public void run() {
            if (HSToastUtil.f22510b != null) {
                HSToastUtil.f22510b.setText(this.val$text);
                HSToastUtil.f22510b.setDuration(1);
                HSToastUtil.d(HSToastUtil.f22510b);
            } else {
                Toast unused = HSToastUtil.f22510b = Toast.makeText(this.val$context.getApplicationContext(), this.val$text, 1);
            }
            HSToastUtil.f22510b.show();
        }
    }

    private static class a extends Handler {

        private Handler f22513a;

        a(Handler handler) {
            this.f22513a = handler;
        }

        @Override
        public void dispatchMessage(Message message) {
            try {
                super.dispatchMessage(message);
            } catch (Exception e10) {
                c.Log().e("ssp", "dispatchMessage error: " + Log.getStackTraceString(e10));
            }
        }

        @Override
        public void handleMessage(Message message) {
            this.f22513a.handleMessage(message);
        }
    }

    public static void d(Toast toast) {
        try {
            Object obj = f22511c.get(toast);
            Handler handler = (Handler) f22512d.get(obj);
            if (handler != null && !(handler instanceof a)) {
                f22512d.set(obj, new a(handler));
            }
        } catch (Exception e10) {
            c.Log().e("ssp", "toast hook error: " + Log.getStackTraceString(e10));
        }
        try {
            Field declaredField = Toast.class.getDeclaredField("mTN");
            f22511c = declaredField;
            declaredField.setAccessible(true);
            Field declaredField2 = f22511c.getType().getDeclaredField("mHandler");
            f22512d = declaredField2;
            declaredField2.setAccessible(true);
        } catch (Exception e11) {
            c.Log().e("ssp", "toast static init error: " + Log.getStackTraceString(e11));
        }
    }

    public static void e(final int i10) {
        final Context contextA = e.a();
        if (i10 > 0) {
            f22509a.post(new Runnable() {
                @Override
                public void run() {
                    if (HSToastUtil.f22510b != null) {
                        HSToastUtil.f22510b.setText(i10);
                        HSToastUtil.f22510b.setDuration(0);
                        HSToastUtil.d(HSToastUtil.f22510b);
                    } else {
                        Toast unused = HSToastUtil.f22510b = Toast.makeText(contextA.getApplicationContext(), i10, 0);
                    }
                    HSToastUtil.f22510b.show();
                }
            });
        }
    }

    public static void f(final String str) {
        final Context contextA = e.a();
        if (TextUtils.isEmpty(str)) {
            return;
        }
        f22509a.post(new Runnable() {
            @Override
            public void run() {
                if (HSToastUtil.f22510b != null) {
                    HSToastUtil.f22510b.setText(str);
                    HSToastUtil.f22510b.setDuration(0);
                    HSToastUtil.d(HSToastUtil.f22510b);
                } else {
                    Toast unused = HSToastUtil.f22510b = Toast.makeText(contextA.getApplicationContext(), str, 0);
                }
                HSToastUtil.f22510b.show();
            }
        });
    }
}
