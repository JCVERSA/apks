package defpackage;

import android.content.Context;
import android.icu.text.DateFormat;
import android.util.Log;
import com.transsion.playercommon.R;
import com.transsion.widgetslib.widget.timepicker.OSDateTimePicker;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.Objects;

public abstract class wna {
    public static String a(long j) {
        long j2 = j / 1000;
        if (j2 <= 0) {
            return "";
        }
        if (j2 < 60) {
            return String.format("%02d min", 1);
        }
        return j2 < 3600 ? String.format("%02d min", Long.valueOf(j2 / 60)) : String.format("%02d h %02d min", Long.valueOf(j2 / 3600), Long.valueOf((j2 % 3600) / 60));
    }

    public static String b(long j) {
        return new SimpleDateFormat(OSDateTimePicker.FORMAT_Y_M_D).format(Long.valueOf(j));
    }

    public static String c(long j) {
        return (j > 1000 || j <= 1) ? e(j) : String.format(Locale.getDefault(), "%02d:%02d", 0L, 1L);
    }

    public static String d(long j) {
        long j2 = j / 1000;
        if (j2 <= 0) {
            return String.format(Locale.getDefault(), "%02d:%02d", 0L, 0L);
        }
        if (j2 >= 60 && j2 >= 3600) {
            return String.format("%02d:%02d:%02d", Long.valueOf(j2 / 3600), Long.valueOf((j2 % 3600) / 60), Long.valueOf(j2 % 60));
        }
        return String.format("%02d:%02d", Long.valueOf(j2 / 60), Long.valueOf(j2 % 60));
    }

    public static String e(long j) {
        long j2 = j / 1000;
        if (j2 <= 0) {
            return String.format(Locale.getDefault(), "%02d:%02d", 0L, 0L);
        }
        if (j2 >= 60 && j2 >= 3600) {
            return String.format(Locale.getDefault(), "%02d:%02d:%02d", Long.valueOf(j2 / 3600), Long.valueOf((j2 % 3600) / 60), Long.valueOf(j2 % 60));
        }
        return String.format(Locale.getDefault(), "%02d:%02d", Long.valueOf(j2 / 60), Long.valueOf(j2 % 60));
    }

    public static String f(Context context, long j) {
        if (j <= 1000 && j > 1) {
            return context.getResources().getString(R.string.talkback_second);
        }
        long j2 = j / 1000;
        if (j2 <= 0) {
            return context.getResources().getString(R.string.talkback_second, 0L);
        }
        if (j2 < 60) {
            return context.getResources().getString(R.string.talkback_seconds, Long.valueOf(j2));
        }
        if (j2 < 3600) {
            long j3 = j2 / 60;
            long j4 = j2 % 60;
            return (j3 > 1 ? context.getResources().getString(R.string.talkback_minutes, Long.valueOf(j3)) : context.getResources().getString(R.string.talkback_minute, Long.valueOf(j3))) + (j4 > 1 ? context.getResources().getString(R.string.talkback_seconds, Long.valueOf(j4)) : context.getResources().getString(R.string.talkback_second, Long.valueOf(j4)));
        }
        long j5 = j2 / 3600;
        long j6 = (j2 % 3600) / 60;
        long j7 = j2 % 60;
        return (j5 > 1 ? context.getResources().getString(R.string.talkback_hours, Long.valueOf(j5)) : context.getResources().getString(R.string.talkback_hour, Long.valueOf(j5))) + (j6 > 1 ? context.getResources().getString(R.string.talkback_minutes, Long.valueOf(j6)) : context.getResources().getString(R.string.talkback_minute, Long.valueOf(j6))) + (j7 > 1 ? context.getResources().getString(R.string.talkback_seconds, Long.valueOf(j7)) : context.getResources().getString(R.string.talkback_second, Long.valueOf(j7)));
    }

    public static String g(Context context, long j) throws ParseException {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("MMM d, yyyy");
        Date date = simpleDateFormat.parse(simpleDateFormat.format(new Date(j * 1000)));
        Date date2 = simpleDateFormat.parse(simpleDateFormat.format(new Date()));
        long time = date.getTime();
        long time2 = (date2.getTime() - time) / 86400000;
        if (time2 == 0) {
            return context.getResources().getString(R.string.today);
        }
        if (time2 == 1) {
            return context.getResources().getString(R.string.yesterday);
        }
        Locale locale = Locale.getDefault();
        boolean zEquals = Objects.equals(locale.getLanguage(), Locale.ENGLISH.getLanguage());
        if (date.getYear() == date2.getYear()) {
            return zEquals ? new SimpleDateFormat("MMM d, yyyy").format(Long.valueOf(time)) : DateFormat.getInstanceForSkeleton("MMMMd", locale).format(date);
        }
        return zEquals ? new SimpleDateFormat("MMM d, yyyy").format(Long.valueOf(time)) : DateFormat.getDateInstance(1).format(date);
    }

    public static String h(Context context, long j) throws ParseException {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("MMM d, yyyy");
        Date date = simpleDateFormat.parse(simpleDateFormat.format(new Date(j * 1000)));
        Date date2 = simpleDateFormat.parse(simpleDateFormat.format(new Date()));
        long time = date.getTime();
        long time2 = (date2.getTime() - time) / 86400000;
        if (time2 == 0) {
            return context.getResources().getString(R.string.today);
        }
        if (time2 == 1) {
            return context.getResources().getString(R.string.yesterday);
        }
        Locale locale = Locale.getDefault();
        boolean zEquals = Objects.equals(locale.getLanguage(), Locale.ENGLISH.getLanguage());
        if (date.getYear() != date2.getYear()) {
            return zEquals ? new SimpleDateFormat("MMM d, yyyy").format(Long.valueOf(time)) : DateFormat.getDateInstance(1).format(date);
        }
        if (zEquals) {
            return new SimpleDateFormat("MMM d, yyyy").format(Long.valueOf(time));
        }
        return Objects.equals(locale.getLanguage(), Locale.CHINESE.getLanguage()) ? new SimpleDateFormat("yyyy年MM月dd日").format(Long.valueOf(time)) : DateFormat.getInstanceForSkeleton("MMMMd", locale).format(date);
    }

    public static String i(long j) {
        try {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("MMM d, yyyy");
            Date date = simpleDateFormat.parse(simpleDateFormat.format(new Date(j * 1000)));
            long time = date.getTime();
            Locale locale = Locale.getDefault();
            boolean zEquals = Objects.equals(locale.getLanguage(), Locale.ENGLISH.getLanguage());
            boolean zEquals2 = Objects.equals(locale.getLanguage(), "mn");
            if (zEquals) {
                return new SimpleDateFormat("MMM d, yyyy").format(Long.valueOf(time));
            }
            return zEquals2 ? new SimpleDateFormat("yyyy оны M-р сарын d", locale).format(date) : DateFormat.getDateInstance(1).format(date);
        } catch (Exception e) {
            Log.e("TimeUtils", "getModifiedTimeString " + e);
            return new SimpleDateFormat(OSDateTimePicker.FORMAT_Y_M_D).format(Long.valueOf(j * 1000));
        }
    }
}
