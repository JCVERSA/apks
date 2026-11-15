package fv;

import android.content.Context;
import com.transsion.usercenter.R$string;
import java.text.DateFormat;
import java.text.DateFormatSymbols;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

public final class b {

    private static DateFormat f60521b;

    public static final a f60520a = new a(null);

    private static final int f60522c = R$string.minute_ago;

    private static final int f60523d = R$string.hour_ago;

    private static final int f60524e = R$string.just_now;

    private static final int f60525f = R$string.day_ago;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final DateFormat c(Context context) {
            if (b.f60521b == null) {
                DateFormatSymbols dateFormatSymbols = new DateFormatSymbols();
                dateFormatSymbols.setShortMonths(new String[]{context.getString(R$string.month_jan), context.getString(R$string.month_feb), context.getString(R$string.month_mar), context.getString(R$string.month_apr), context.getString(R$string.month_may), context.getString(R$string.month_june), context.getString(R$string.month_july), context.getString(R$string.month_aug), context.getString(R$string.month_sept), context.getString(R$string.month_oct), context.getString(R$string.month_nov), context.getString(R$string.month_dec)});
                b.f60521b = new SimpleDateFormat("dd MMM", dateFormatSymbols);
            }
            return b.f60521b;
        }

        private final String d(Long l10) {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            Intrinsics.e(l10);
            return simpleDateFormat.format(new Date(l10.longValue()));
        }

        private final String e(Context context, long j10, long j11) {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            try {
                long time = simpleDateFormat.parse(d(Long.valueOf(j11))).getTime() - simpleDateFormat.parse(d(Long.valueOf(j10))).getTime();
                long j12 = (time % 86400000) / 3600000;
                long j13 = ((time % 86400000) % 3600000) / 60000;
                if (time / 86400000 > 0) {
                    DateFormat dateFormatC = c(context);
                    if (dateFormatC != null) {
                        return dateFormatC.format(new Date(j10));
                    }
                    return null;
                }
                if (j12 > 0) {
                    String string = context.getString(b.f60523d);
                    Intrinsics.g(string, "getString(...)");
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(j12);
                    return StringsKt.Q(string, "{$target}", sb2.toString(), false, 4, null);
                }
                if (j13 <= 0) {
                    return context.getString(b.f60524e);
                }
                String string2 = context.getString(b.f60522c);
                Intrinsics.g(string2, "getString(...)");
                StringBuilder sb3 = new StringBuilder();
                sb3.append(j13);
                return StringsKt.Q(string2, "{$target}", sb3.toString(), false, 4, null);
            } catch (Exception e10) {
                e10.printStackTrace();
                return "";
            }
        }

        public final String a(Context context, String timestamp) {
            Intrinsics.h(context, "context");
            Intrinsics.h(timestamp, "timestamp");
            try {
                long j10 = Long.parseLong(timestamp);
                Calendar calendar = Calendar.getInstance();
                long timeInMillis = calendar.getTimeInMillis();
                int i10 = calendar.get(7);
                int i11 = calendar.get(4);
                int i12 = calendar.get(2) + 1;
                int i13 = calendar.get(1);
                Calendar calendar2 = Calendar.getInstance();
                calendar2.setTimeInMillis(j10);
                long timeInMillis2 = calendar2.getTimeInMillis();
                int i14 = calendar2.get(7);
                int i15 = calendar2.get(4);
                int i16 = calendar2.get(2) + 1;
                int i17 = calendar2.get(1);
                if (Math.abs(i13 - i17) > 0) {
                    return new SimpleDateFormat("MM-dd-yyyy").format(Long.valueOf(timeInMillis2));
                }
                if (i13 != i17) {
                    return "";
                }
                if (Math.abs(i12 - i16) > 0) {
                    return e(context, j10, timeInMillis);
                }
                if (i12 != i16) {
                    return "";
                }
                if (Math.abs(i11 - i15) > 0) {
                    return e(context, j10, timeInMillis);
                }
                if (i11 != i15) {
                    return "";
                }
                int i18 = i10 - i14;
                if (Math.abs(i18) > 1) {
                    return e(context, j10, timeInMillis);
                }
                return Math.abs(i18) == 1 ? e(context, j10, timeInMillis) : e(context, j10, timeInMillis);
            } catch (Exception e10) {
                e10.printStackTrace();
                return "";
            }
        }

        public final String b(long j10) {
            if (j10 == 0) {
                return "";
            }
            long jCurrentTimeMillis = System.currentTimeMillis();
            Calendar calendar = Calendar.getInstance();
            calendar.setTimeInMillis(jCurrentTimeMillis);
            int i10 = calendar.get(1);
            Calendar calendar2 = Calendar.getInstance();
            calendar2.setTimeInMillis(j10);
            boolean z10 = calendar2.get(1) == i10;
            boolean z11 = calendar2.get(6) == Calendar.getInstance().get(6);
            if (z10 && z11) {
                String str = new SimpleDateFormat("HH:mm", Locale.getDefault()).format(new Date(j10));
                Intrinsics.g(str, "format(...)");
                return str;
            }
            if (!z10 || z11) {
                String str2 = new SimpleDateFormat("dd/MM/yyyy", Locale.getDefault()).format(new Date(j10));
                Intrinsics.g(str2, "format(...)");
                return str2;
            }
            String str3 = new SimpleDateFormat("dd/MM", Locale.getDefault()).format(new Date(j10));
            Intrinsics.g(str3, "format(...)");
            return str3;
        }

        private a() {
        }
    }
}
