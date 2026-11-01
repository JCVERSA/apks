package o;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.text.TextUtils;
import com.snaptube.premium.R;
import com.snaptube.premium.app.PhoenixApplication;
import com.snaptube.util.ProductionEnv;
import java.text.DecimalFormat;

public class xi7 {
    public static String b;
    public static final a a = new a(null);
    public static String c = "";
    public static int d = 6060000;

    public static class a extends ThreadLocal {
        public a() {
        }

        public a(wi7 wi7Var) {
            this();
        }

        public DecimalFormat a() {
            return l38.s("###,###");
        }

        @Override
        public Object initialValue() {
            return a();
        }
    }

    public static String a(Context context) {
        if (TextUtils.isEmpty(c)) {
            c = o76.a(context);
        }
        return c;
    }

    public static String b(Context context, boolean z) {
        if (!TextUtils.isEmpty(b) && !"unknown".equals(b)) {
            return b;
        }
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 64);
            if (!PhoenixApplication.T(context)) {
                return z ? xl.c(context) : cj0.m(packageInfo);
            }
            b = cj0.m(packageInfo);
            return b;
        } catch (Throwable th) {
            ProductionEnv.throwExceptForDebugging(th);
            b = "unknown";
        }
    }

    public static boolean c(Context context, boolean z) {
        String strB = b(context, z);
        if (TextUtils.isEmpty(strB) || TextUtils.equals(strB, "unknown")) {
            return false;
        }
        return !"be135353437d704f3a37e2b413d040a5ddff4f19".equalsIgnoreCase(strB);
    }

    public static String d(int i, Context context) {
        if (context == null) {
            context = PhoenixApplication.z();
        }
        return context.getString(i, context.getString(R.string.app_name));
    }
}
