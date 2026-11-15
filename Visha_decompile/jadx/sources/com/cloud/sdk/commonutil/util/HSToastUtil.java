package com.cloud.sdk.commonutil.util;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.util.Log;
import android.widget.Toast;
import defpackage.ja1;
import defpackage.ul4;
import java.lang.reflect.Field;

public abstract class HSToastUtil {
    public static Handler a = new Handler(Looper.getMainLooper());
    public static Toast b = null;
    public static Field c;
    public static Field d;

    class AnonymousClass3 implements Runnable {
        final Context val$context;
        final int val$resId;

        public AnonymousClass3(int i, Context context) {
            this.val$resId = i;
            this.val$context = context;
        }

        @Override
        public void run() {
            if (HSToastUtil.b != null) {
                HSToastUtil.b.setText(this.val$resId);
                HSToastUtil.b.setDuration(1);
                HSToastUtil.d(HSToastUtil.b);
            } else {
                Toast unused = HSToastUtil.b = Toast.makeText(this.val$context.getApplicationContext(), this.val$resId, 1);
            }
            HSToastUtil.b.show();
        }
    }

    class AnonymousClass4 implements Runnable {
        final Context val$context;
        final String val$text;

        public AnonymousClass4(String str, Context context) {
            this.val$text = str;
            this.val$context = context;
        }

        @Override
        public void run() {
            if (HSToastUtil.b != null) {
                HSToastUtil.b.setText(this.val$text);
                HSToastUtil.b.setDuration(1);
                HSToastUtil.d(HSToastUtil.b);
            } else {
                Toast unused = HSToastUtil.b = Toast.makeText(this.val$context.getApplicationContext(), this.val$text, 1);
            }
            HSToastUtil.b.show();
        }
    }

    public static class a extends Handler {
        public Handler a;

        public a(Handler handler) {
            this.a = handler;
        }

        @Override
        public void dispatchMessage(Message message) {
            try {
                super.dispatchMessage(message);
            } catch (Exception e) {
                ja1.Log().e("ssp", "dispatchMessage error: " + Log.getStackTraceString(e));
            }
        }

        @Override
        public void handleMessage(Message message) {
            this.a.handleMessage(message);
        }
    }

    public static void d(Toast toast) {
        try {
            Object obj = c.get(toast);
            Handler handler = (Handler) d.get(obj);
            if (handler != null && !(handler instanceof a)) {
                d.set(obj, new a(handler));
            }
        } catch (Exception e) {
            ja1.Log().e("ssp", "toast hook error: " + Log.getStackTraceString(e));
        }
        try {
            Field declaredField = Toast.class.getDeclaredField("mTN");
            c = declaredField;
            declaredField.setAccessible(true);
            Field declaredField2 = c.getType().getDeclaredField("mHandler");
            d = declaredField2;
            declaredField2.setAccessible(true);
        } catch (Exception e2) {
            ja1.Log().e("ssp", "toast static init error: " + Log.getStackTraceString(e2));
        }
    }

    public static void e(final int i) {
        final Context contextA = ul4.a();
        if (i > 0) {
            a.post(new Runnable() {
                @Override
                public void run() {
                    if (HSToastUtil.b != null) {
                        HSToastUtil.b.setText(i);
                        HSToastUtil.b.setDuration(0);
                        HSToastUtil.d(HSToastUtil.b);
                    } else {
                        Toast unused = HSToastUtil.b = Toast.makeText(contextA.getApplicationContext(), i, 0);
                    }
                    HSToastUtil.b.show();
                }
            });
        }
    }

    public static void f(final String str) {
        final Context contextA = ul4.a();
        if (TextUtils.isEmpty(str)) {
            return;
        }
        a.post(new Runnable() {
            @Override
            public void run() {
                if (HSToastUtil.b != null) {
                    HSToastUtil.b.setText(str);
                    HSToastUtil.b.setDuration(0);
                    HSToastUtil.d(HSToastUtil.b);
                } else {
                    Toast unused = HSToastUtil.b = Toast.makeText(contextA.getApplicationContext(), str, 0);
                }
                HSToastUtil.b.show();
            }
        });
    }
}
