package defpackage;

import android.util.Log;
import java.util.function.Supplier;

public class rk5 {
    public static boolean e = true;
    public final Class a;
    public final String b;
    public final Supplier c;
    public volatile Object d = null;

    public rk5(String str, Class cls, Supplier supplier) {
        this.a = cls;
        this.b = str;
        this.c = supplier;
    }

    public Object a() {
        if (this.d != null) {
            return this.d;
        }
        synchronized (this.a) {
            try {
                if (this.d != null) {
                    return this.d;
                }
                Class cls = this.a;
                Object objInvoke = null;
                try {
                    Class<?> cls2 = Class.forName(this.b, true, cls.getClassLoader());
                    objInvoke = cls2.getDeclaredMethod("instance", null).invoke(cls2, null);
                } catch (Throwable th) {
                    if (e) {
                        Log.w("LiceInfo", "instance failed. " + this.b + " from " + cls.getName(), th);
                    } else {
                        Log.w("LiceInfo", "instance failed. className:" + this.b + " from " + cls.getName() + " " + th);
                    }
                }
                if (this.a.isInstance(objInvoke)) {
                    this.d = objInvoke;
                    if (e) {
                        Log.d("LiceInfo", "instance successfully. " + objInvoke + " from " + cls.getName());
                    }
                } else {
                    this.d = this.c.get();
                    StringBuilder sb = new StringBuilder();
                    sb.append("using ");
                    sb.append(this.d);
                    sb.append(" instead of ");
                    if (objInvoke == null) {
                        objInvoke = this.b;
                    }
                    sb.append(objInvoke);
                    sb.append(" from ");
                    sb.append(cls.getName());
                    Log.d("LiceInfo", sb.toString());
                }
                return this.d;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
