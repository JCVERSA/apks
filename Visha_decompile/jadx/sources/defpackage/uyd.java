package defpackage;

import android.os.IBinder;
import java.lang.reflect.Method;

public abstract class uyd {
    public static final Class a;
    public static final Method b;
    public static final Method c;

    static {
        Class<?> cls;
        Class<?> cls2;
        Method method;
        String str = vyd.a;
        Method method2 = null;
        try {
            cls = Class.forName("com.transsion.hubsdk.TranServiceManager");
        } catch (Exception e) {
            e.printStackTrace();
            cls = null;
        }
        try {
            cls2 = Class.forName("com.transsion.hubsdk.view.ITranWindowManager$Stub");
        } catch (Exception e2) {
            e2.printStackTrace();
            cls2 = null;
        }
        a = cls2;
        try {
            method = cls.getMethod("getServiceIBinder", String.class);
        } catch (Exception e3) {
            e3.printStackTrace();
            method = null;
        }
        b = method;
        try {
            method2 = cls2.getMethod("asInterface", IBinder.class);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        c = method2;
    }

    public static void a(int i) {
        Object objInvoke;
        try {
            IBinder iBinder = (IBinder) b.invoke(null, "window");
            if (iBinder == null || (objInvoke = c.invoke(a, iBinder)) == null) {
                return;
            }
            Class<?> cls = objInvoke.getClass();
            Class cls2 = Integer.TYPE;
            cls.getMethod("hookWindowScene", cls2, cls2, cls2).invoke(objInvoke, 0, 3, Integer.valueOf(i));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
