package v5;

import android.content.Context;
import android.text.TextUtils;
import com.bytedance.sdk.component.sP.Sj.Ym;
import java.io.File;
import java.util.concurrent.TimeUnit;

public abstract class b {

    private static Context f73454a = null;

    private static String f73455b = null;

    private static boolean f73456c = false;

    private static Ym f73457d = null;

    private static int f73458e = 1;

    public static boolean f73459f = false;

    public static Ym a() {
        if (f73457d == null) {
            Ym.Sj sj2 = new Ym.Sj("v_config");
            TimeUnit timeUnit = TimeUnit.MILLISECONDS;
            f73457d = sj2.Sj(10000L, timeUnit).sP(10000L, timeUnit).TKC(10000L, timeUnit).Sj();
        }
        return f73457d;
    }

    public static boolean b() {
        return f73459f;
    }

    public static Context c() {
        return f73454a;
    }

    public static void d(int i10) {
        f73458e = i10;
    }

    public static void e(Context context, String str) {
        f73454a = context;
        f73455b = str;
    }

    public static void f(Ym ym2) {
        f73457d = ym2;
    }

    public static void g(boolean z10) {
        f73456c = z10;
    }

    public static boolean h() {
        return f73456c;
    }

    public static String i() {
        if (TextUtils.isEmpty(f73455b)) {
            try {
                File file = new File(c().getFilesDir(), "ttad_dir");
                if (!file.exists()) {
                    file.mkdirs();
                }
                f73455b = file.getAbsolutePath();
            } catch (Throwable unused) {
            }
        }
        return f73455b;
    }

    public static int j() {
        return f73458e;
    }
}
