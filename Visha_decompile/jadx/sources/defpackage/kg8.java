package defpackage;

import android.content.Context;
import android.os.Build;
import android.os.SystemClock;
import com.blankj.utilcode.util.LogUtils;
import com.transsion.tools.R;
import java.util.Arrays;
import java.util.concurrent.TimeUnit;

public final class kg8 {
    public static final kg8 a = new kg8();
    public static long b;
    public static final long c;
    public static final long d = 0;
    public static final String[] e;

    public interface a {
        void a(boolean z);
    }

    static {
        b = ge.e() ? 5L : 48L;
        c = ge.e() ? 10L : 7L;
        e = new String[]{"time.apple.com", "time.google.com", "time.windows.com", "pool.ntp.org", "asia.pool.ntp.org", "cn.pool.ntp.org"};
    }

    public static final long b() {
        return b;
    }

    public static final long d() {
        return d;
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0024, code lost:
    
        if (r0 > r3) goto L13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:?, code lost:
    
        return r0;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v5, types: [long] */
    /* JADX WARN: Type inference failed for: r3v7 */
    /* JADX WARN: Type inference failed for: r3v8 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final long a(Context context) {
        long jE;
        y45.j(context, "mContext");
        try {
            if (!e07.e(context) || Build.VERSION.SDK_INT < 33) {
                jE = e();
                long j = d;
                this = j;
            } else {
                this = SystemClock.currentNetworkTimeClock().millis();
            }
            return this;
        } catch (Exception e2) {
            LogUtils.m("PrivacyTimeUtil", "getCurrentTime failed", e2);
            long jE2 = this.e();
            jE = d;
            if (jE2 > jE) {
                return jE2;
            }
        }
    }

    public final String c(Context context, long j, long j2, a aVar) {
        y45.j(context, "mContext");
        y45.j(aVar, "callBack");
        long millis = ge.e() ? TimeUnit.MINUTES.toMillis(c) : TimeUnit.DAYS.toMillis(c);
        if (j2 <= d) {
            String string = context.getResources().getString(R.string.visha_delay_access_countdown_notice_no_network);
            y45.i(string, "getString(...)");
            return string;
        }
        long jE = wn8.e(j + (ge.e() ? TimeUnit.MINUTES.toMillis(b) : TimeUnit.HOURS.toMillis(b)), 0L) - j2;
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        long hours = timeUnit.toHours(jE);
        long minutes = timeUnit.toMinutes(jE) % ((long) 60);
        long j3 = -millis;
        if (j3 <= jE && jE < 1) {
            aVar.a(true);
            return "";
        }
        if (jE < j3) {
            aVar.a(false);
            return "";
        }
        if (1 <= hours && hours < 49) {
            hz9 hz9Var = hz9.a;
            String string2 = hours == 1 ? context.getResources().getString(R.string.visha_delay_access_of_hour) : context.getResources().getString(R.string.visha_delay_access_of_hours);
            y45.g(string2);
            String str = String.format(string2, Arrays.copyOf(new Object[]{String.valueOf(hours)}, 1));
            y45.i(str, "format(...)");
            return str;
        }
        if (1 > minutes || minutes >= 60) {
            hz9 hz9Var2 = hz9.a;
            String string3 = context.getResources().getString(R.string.visha_delay_access_of_minute);
            y45.i(string3, "getString(...)");
            String str2 = String.format(string3, Arrays.copyOf(new Object[]{"1"}, 1));
            y45.i(str2, "format(...)");
            return str2;
        }
        hz9 hz9Var3 = hz9.a;
        String string4 = minutes == 1 ? context.getResources().getString(R.string.visha_delay_access_of_minute) : context.getResources().getString(R.string.visha_delay_access_of_minutes);
        y45.g(string4);
        String str3 = String.format(string4, Arrays.copyOf(new Object[]{String.valueOf(minutes)}, 1));
        y45.i(str3, "format(...)");
        return str3;
    }

    public final long e() {
        rr9 rr9Var = new rr9();
        String[] strArr = e;
        int length = strArr.length;
        for (int i = 0; i < length; i++) {
            try {
                if (rr9Var.e(strArr[i], 3000)) {
                    return (rr9Var.a() + SystemClock.elapsedRealtime()) - rr9Var.b();
                }
                continue;
            } catch (Exception e2) {
                LogUtils.m("PrivacyTimeUtil", "getNtpTime failed", e2);
            }
        }
        return d;
    }
}
