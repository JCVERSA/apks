package defpackage;

import android.content.Context;
import com.airbnb.lottie.AsyncUpdates;
import java.io.File;

public abstract class yh5 {
    public static boolean a = false;
    public static boolean b = false;
    public static boolean c = true;
    public static boolean d = true;
    public static gt5 f;
    public static ft5 g;
    public static volatile rz6 h;
    public static volatile oz6 i;
    public static ThreadLocal j;
    public static AsyncUpdates e = AsyncUpdates.AUTOMATIC;
    public static lp8 k = new qaa();

    public static void b(String str) {
        if (b) {
            g().a(str);
        }
    }

    public static float c(String str) {
        if (b) {
            return g().b(str);
        }
        return 0.0f;
    }

    public static AsyncUpdates d() {
        return e;
    }

    public static boolean e() {
        return d;
    }

    public static lp8 f() {
        return k;
    }

    public static mt5 g() {
        mt5 mt5Var = (mt5) j.get();
        if (mt5Var != null) {
            return mt5Var;
        }
        mt5 mt5Var2 = new mt5();
        j.set(mt5Var2);
        return mt5Var2;
    }

    public static boolean h() {
        return b;
    }

    public static File i(Context context) {
        return new File(context.getCacheDir(), "lottie_network_cache");
    }

    public static oz6 j(Context context) {
        if (!c) {
            return null;
        }
        final Context applicationContext = context.getApplicationContext();
        oz6 oz6Var = i;
        if (oz6Var == null) {
            synchronized (oz6.class) {
                try {
                    oz6Var = i;
                    if (oz6Var == null) {
                        ft5 ft5Var = g;
                        if (ft5Var == null) {
                            ft5Var = new ft5() {
                                @Override
                                public final File a() {
                                    return yh5.i(applicationContext);
                                }
                            };
                        }
                        oz6Var = new oz6(ft5Var);
                        i = oz6Var;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return oz6Var;
    }

    public static rz6 k(Context context) {
        rz6 rz6Var = h;
        if (rz6Var == null) {
            synchronized (rz6.class) {
                try {
                    rz6Var = h;
                    if (rz6Var == null) {
                        oz6 oz6VarJ = j(context);
                        gt5 k22Var = f;
                        if (k22Var == null) {
                            k22Var = new k22();
                        }
                        rz6Var = new rz6(oz6VarJ, k22Var);
                        h = rz6Var;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return rz6Var;
    }
}
