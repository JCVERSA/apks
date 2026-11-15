package defpackage;

import android.text.TextUtils;
import com.google.firebase.installations.local.b;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.concurrent.TimeUnit;
import java.util.regex.Pattern;

public final class vlb {
    public static final long b = TimeUnit.HOURS.toSeconds(1);
    public static final Pattern c = Pattern.compile("\\AA[\\w-]{38}\\z");
    public static vlb d;
    public final gy0 a;

    public vlb(gy0 gy0Var) {
        this.a = gy0Var;
    }

    public static vlb c() {
        return d(k9a.a());
    }

    public static vlb d(gy0 gy0Var) {
        if (d == null) {
            d = new vlb(gy0Var);
        }
        return d;
    }

    public static boolean g(String str) {
        return c.matcher(str).matches();
    }

    public static boolean h(String str) {
        return str.contains(StringUtils.PROCESS_POSTFIX_DELIMITER);
    }

    public long a() {
        return this.a.currentTimeMillis();
    }

    public long b() {
        return TimeUnit.MILLISECONDS.toSeconds(a());
    }

    public long e() {
        return (long) (Math.random() * 1000.0d);
    }

    public boolean f(b bVar) {
        return TextUtils.isEmpty(bVar.b()) || bVar.h() + bVar.c() < b() + b;
    }
}
