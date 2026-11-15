package defpackage;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.widget.Toast;
import java.lang.reflect.Field;

public abstract class yoa {
    public static Handler a = new Handler(Looper.getMainLooper());
    public static Toast b = null;
    public static Field c;
    public static Field d;

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
            c = declaredField;
            declaredField.setAccessible(true);
            Field declaredField2 = c.getType().getDeclaredField("mHandler");
            d = declaredField2;
            declaredField2.setAccessible(true);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static void d(Toast toast) {
        try {
            Object obj = c.get(toast);
            Handler handler = (Handler) d.get(obj);
            if (handler == null || (handler instanceof a)) {
                return;
            }
            d.set(obj, new a(handler));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
