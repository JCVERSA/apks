package com.cloud.tmc.miniutils.util;

import android.annotation.SuppressLint;
import android.os.Build;
import androidx.annotation.NonNull;
import com.cloud.tmc.miniutils.constant.TimeConstants;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.function.Supplier;

public final class TimeUtils {
    private static final String[] CHINESE_ZODIAC;
    private static final ThreadLocal<Map<String, SimpleDateFormat>> SDF_THREAD_LOCAL;
    private static final String[] ZODIAC;
    private static final int[] ZODIAC_FLAGS;

    static {
        if (Build.VERSION.SDK_INT >= 26) {
            SDF_THREAD_LOCAL = ThreadLocal.withInitial(new Supplier() {
                @Override
                public final Object get() {
                    return new HashMap();
                }
            });
        } else {
            SDF_THREAD_LOCAL = new ThreadLocal<Map<String, SimpleDateFormat>>() {
                @Override
                public Map<String, SimpleDateFormat> initialValue() {
                    return new HashMap();
                }
            };
        }
        CHINESE_ZODIAC = new String[]{"猴", "鸡", "狗", "猪", "鼠", "牛", "虎", "兔", "龙", "蛇", "马", "羊"};
        ZODIAC_FLAGS = new int[]{20, 19, 21, 21, 21, 22, 23, 23, 23, 24, 23, 22};
        ZODIAC = new String[]{"水瓶座", "双鱼座", "白羊座", "金牛座", "双子座", "巨蟹座", "狮子座", "处女座", "天秤座", "天蝎座", "射手座", "摩羯座"};
    }

    private TimeUtils() {
        throw new UnsupportedOperationException("u can't instantiate me...");
    }

    public static void cleanup() {
        SDF_THREAD_LOCAL.remove();
    }

    public static long date2Millis(Date date) {
        return date.getTime();
    }

    public static String date2String(Date date) {
        return date2String(date, getDefaultFormat());
    }

    public static String getChineseWeek(String str) {
        return getChineseWeek(string2Date(str, getDefaultFormat()));
    }

    public static String getChineseZodiac(String str) {
        return getChineseZodiac(string2Date(str, getDefaultFormat()));
    }

    public static Date getDate(long j10, long j11, int i10) {
        return millis2Date(j10 + timeSpan2Millis(j11, i10));
    }

    public static Date getDateByNow(long j10, int i10) {
        return getDate(getNowMills(), j10, i10);
    }

    private static SimpleDateFormat getDefaultFormat() {
        return getSafeDateFormat("yyyy-MM-dd HH:mm:ss");
    }

    public static String getFitTimeSpan(String str, String str2, int i10) {
        return millis2FitTimeSpan(string2Millis(str, getDefaultFormat()) - string2Millis(str2, getDefaultFormat()), i10);
    }

    public static String getFitTimeSpanByNow(String str, int i10) {
        return getFitTimeSpan(str, getNowString(), getDefaultFormat(), i10);
    }

    public static String getFriendlyTimeSpanByNow(String str) {
        return getFriendlyTimeSpanByNow(str, getDefaultFormat());
    }

    public static long getMillis(long j10, long j11, int i10) {
        return j10 + timeSpan2Millis(j11, i10);
    }

    public static long getMillisByNow(long j10, int i10) {
        return getMillis(getNowMills(), j10, i10);
    }

    public static Date getNowDate() {
        return new Date();
    }

    public static long getNowMills() {
        return System.currentTimeMillis();
    }

    public static String getNowString() {
        return millis2String(System.currentTimeMillis(), getDefaultFormat());
    }

    @SuppressLint({"SimpleDateFormat"})
    public static SimpleDateFormat getSafeDateFormat(String str) {
        Map<String, SimpleDateFormat> map = SDF_THREAD_LOCAL.get();
        SimpleDateFormat simpleDateFormat = map.get(str);
        if (simpleDateFormat != null) {
            return simpleDateFormat;
        }
        SimpleDateFormat simpleDateFormat2 = new SimpleDateFormat(str);
        map.put(str, simpleDateFormat2);
        return simpleDateFormat2;
    }

    public static String getString(long j10, long j11, int i10) {
        return getString(j10, getDefaultFormat(), j11, i10);
    }

    public static String getStringByNow(long j10, int i10) {
        return getStringByNow(j10, getDefaultFormat(), i10);
    }

    public static long getTimeSpan(String str, String str2, int i10) {
        return getTimeSpan(str, str2, getDefaultFormat(), i10);
    }

    public static long getTimeSpanByNow(String str, int i10) {
        return getTimeSpan(str, getNowString(), getDefaultFormat(), i10);
    }

    public static String getUSWeek(String str) {
        return getUSWeek(string2Date(str, getDefaultFormat()));
    }

    public static int getValueByCalendarField(int i10) {
        return Calendar.getInstance().get(i10);
    }

    private static long getWeeOfToday() {
        Calendar calendar = Calendar.getInstance();
        calendar.set(11, 0);
        calendar.set(13, 0);
        calendar.set(12, 0);
        calendar.set(14, 0);
        return calendar.getTimeInMillis();
    }

    public static String getZodiac(String str) {
        return getZodiac(string2Date(str, getDefaultFormat()));
    }

    public static boolean isAm() {
        return Calendar.getInstance().get(9) == 0;
    }

    public static boolean isLeapYear(String str) {
        return isLeapYear(string2Date(str, getDefaultFormat()));
    }

    public static boolean isPm() {
        return !isAm();
    }

    public static boolean isToday(String str) {
        return isToday(string2Millis(str, getDefaultFormat()));
    }

    public static Date millis2Date(long j10) {
        return new Date(j10);
    }

    static String millis2FitTimeSpan(long j10, int i10) {
        if (i10 <= 0) {
            return null;
        }
        int iMin = Math.min(i10, 5);
        String[] strArr = {"天", "小时", "分钟", "秒", "毫秒"};
        if (j10 == 0) {
            return 0 + strArr[iMin - 1];
        }
        StringBuilder sb2 = new StringBuilder();
        if (j10 < 0) {
            sb2.append("-");
            j10 = -j10;
        }
        int[] iArr = {TimeConstants.DAY, TimeConstants.HOUR, 60000, 1000, 1};
        for (int i11 = 0; i11 < iMin; i11++) {
            int i12 = iArr[i11];
            if (j10 >= i12) {
                long j11 = j10 / ((long) i12);
                j10 -= ((long) i12) * j11;
                sb2.append(j11);
                sb2.append(strArr[i11]);
            }
        }
        return sb2.toString();
    }

    public static String millis2String(long j10) {
        return millis2String(j10, getDefaultFormat());
    }

    private static long millis2TimeSpan(long j10, int i10) {
        return j10 / ((long) i10);
    }

    public static Date string2Date(String str) {
        return string2Date(str, getDefaultFormat());
    }

    public static long string2Millis(String str) {
        return string2Millis(str, getDefaultFormat());
    }

    private static long timeSpan2Millis(long j10, int i10) {
        return j10 * ((long) i10);
    }

    public static String date2String(Date date, @NonNull String str) {
        return getSafeDateFormat(str).format(date);
    }

    public static String getChineseWeek(String str, @NonNull DateFormat dateFormat) {
        return getChineseWeek(string2Date(str, dateFormat));
    }

    public static String getChineseZodiac(String str, @NonNull DateFormat dateFormat) {
        return getChineseZodiac(string2Date(str, dateFormat));
    }

    public static Date getDate(String str, long j10, int i10) {
        return getDate(str, getDefaultFormat(), j10, i10);
    }

    public static String getFitTimeSpanByNow(String str, @NonNull DateFormat dateFormat, int i10) {
        return getFitTimeSpan(str, getNowString(dateFormat), dateFormat, i10);
    }

    public static String getFriendlyTimeSpanByNow(String str, @NonNull DateFormat dateFormat) {
        return getFriendlyTimeSpanByNow(string2Millis(str, dateFormat));
    }

    public static long getMillis(String str, long j10, int i10) {
        return getMillis(str, getDefaultFormat(), j10, i10);
    }

    public static String getNowString(@NonNull DateFormat dateFormat) {
        return millis2String(System.currentTimeMillis(), dateFormat);
    }

    public static String getString(long j10, @NonNull DateFormat dateFormat, long j11, int i10) {
        return millis2String(j10 + timeSpan2Millis(j11, i10), dateFormat);
    }

    public static String getStringByNow(long j10, @NonNull DateFormat dateFormat, int i10) {
        return getString(getNowMills(), dateFormat, j10, i10);
    }

    public static long getTimeSpan(String str, String str2, @NonNull DateFormat dateFormat, int i10) {
        return millis2TimeSpan(string2Millis(str, dateFormat) - string2Millis(str2, dateFormat), i10);
    }

    public static long getTimeSpanByNow(String str, @NonNull DateFormat dateFormat, int i10) {
        return getTimeSpan(str, getNowString(dateFormat), dateFormat, i10);
    }

    public static String getUSWeek(String str, @NonNull DateFormat dateFormat) {
        return getUSWeek(string2Date(str, dateFormat));
    }

    public static String getZodiac(String str, @NonNull DateFormat dateFormat) {
        return getZodiac(string2Date(str, dateFormat));
    }

    public static boolean isLeapYear(String str, @NonNull DateFormat dateFormat) {
        return isLeapYear(string2Date(str, dateFormat));
    }

    public static boolean isPm(String str) {
        return !isAm(str);
    }

    public static boolean isToday(String str, @NonNull DateFormat dateFormat) {
        return isToday(string2Millis(str, dateFormat));
    }

    public static String millis2String(long j10, @NonNull String str) {
        return millis2String(j10, getSafeDateFormat(str));
    }

    public static Date string2Date(String str, @NonNull String str2) {
        return string2Date(str, getSafeDateFormat(str2));
    }

    public static long string2Millis(String str, @NonNull String str2) {
        return string2Millis(str, getSafeDateFormat(str2));
    }

    public static String date2String(Date date, @NonNull DateFormat dateFormat) {
        return dateFormat.format(date);
    }

    public static String getChineseWeek(Date date) {
        return new SimpleDateFormat("E", Locale.CHINA).format(date);
    }

    public static String getChineseZodiac(Date date) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        return CHINESE_ZODIAC[calendar.get(1) % 12];
    }

    public static Date getDate(String str, @NonNull DateFormat dateFormat, long j10, int i10) {
        return millis2Date(string2Millis(str, dateFormat) + timeSpan2Millis(j10, i10));
    }

    public static String getFitTimeSpan(String str, String str2, @NonNull DateFormat dateFormat, int i10) {
        return millis2FitTimeSpan(string2Millis(str, dateFormat) - string2Millis(str2, dateFormat), i10);
    }

    public static String getFitTimeSpanByNow(Date date, int i10) {
        return getFitTimeSpan(date, getNowDate(), i10);
    }

    public static String getFriendlyTimeSpanByNow(Date date) {
        return getFriendlyTimeSpanByNow(date.getTime());
    }

    public static long getMillis(String str, @NonNull DateFormat dateFormat, long j10, int i10) {
        return string2Millis(str, dateFormat) + timeSpan2Millis(j10, i10);
    }

    public static String getString(String str, long j10, int i10) {
        return getString(str, getDefaultFormat(), j10, i10);
    }

    public static long getTimeSpan(Date date, Date date2, int i10) {
        return millis2TimeSpan(date2Millis(date) - date2Millis(date2), i10);
    }

    public static long getTimeSpanByNow(Date date, int i10) {
        return getTimeSpan(date, new Date(), i10);
    }

    public static String getUSWeek(Date date) {
        return new SimpleDateFormat("EEEE", Locale.US).format(date);
    }

    public static int getValueByCalendarField(String str, int i10) {
        return getValueByCalendarField(string2Date(str, getDefaultFormat()), i10);
    }

    public static String getZodiac(Date date) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        return getZodiac(calendar.get(2) + 1, calendar.get(5));
    }

    public static boolean isAm(String str) {
        return getValueByCalendarField(str, getDefaultFormat(), 9) == 0;
    }

    public static boolean isLeapYear(Date date) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        return isLeapYear(calendar.get(1));
    }

    public static boolean isPm(String str, @NonNull DateFormat dateFormat) {
        return !isAm(str, dateFormat);
    }

    public static boolean isToday(Date date) {
        return isToday(date.getTime());
    }

    public static String millis2String(long j10, @NonNull DateFormat dateFormat) {
        return dateFormat.format(new Date(j10));
    }

    public static Date string2Date(String str, @NonNull DateFormat dateFormat) {
        try {
            return dateFormat.parse(str);
        } catch (ParseException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public static long string2Millis(String str, @NonNull DateFormat dateFormat) {
        try {
            return dateFormat.parse(str).getTime();
        } catch (ParseException e10) {
            e10.printStackTrace();
            return -1L;
        }
    }

    public static String getChineseWeek(long j10) {
        return getChineseWeek(new Date(j10));
    }

    public static Date getDate(Date date, long j10, int i10) {
        return millis2Date(date2Millis(date) + timeSpan2Millis(j10, i10));
    }

    public static String getFitTimeSpanByNow(long j10, int i10) {
        return getFitTimeSpan(j10, System.currentTimeMillis(), i10);
    }

    public static String getFriendlyTimeSpanByNow(long j10) {
        long jCurrentTimeMillis = System.currentTimeMillis() - j10;
        if (jCurrentTimeMillis < 0) {
            return String.format("%tc", Long.valueOf(j10));
        }
        if (jCurrentTimeMillis < 1000) {
            return "刚刚";
        }
        if (jCurrentTimeMillis < 60000) {
            return String.format(Locale.getDefault(), "%d秒前", Long.valueOf(jCurrentTimeMillis / 1000));
        }
        if (jCurrentTimeMillis < 3600000) {
            return String.format(Locale.getDefault(), "%d分钟前", Long.valueOf(jCurrentTimeMillis / 60000));
        }
        long weeOfToday = getWeeOfToday();
        if (j10 >= weeOfToday) {
            return String.format("今天%tR", Long.valueOf(j10));
        }
        return j10 >= weeOfToday - 86400000 ? String.format("昨天%tR", Long.valueOf(j10)) : String.format("%tF", Long.valueOf(j10));
    }

    public static long getMillis(Date date, long j10, int i10) {
        return date2Millis(date) + timeSpan2Millis(j10, i10);
    }

    public static String getString(String str, @NonNull DateFormat dateFormat, long j10, int i10) {
        return millis2String(string2Millis(str, dateFormat) + timeSpan2Millis(j10, i10), dateFormat);
    }

    public static long getTimeSpan(long j10, long j11, int i10) {
        return millis2TimeSpan(j10 - j11, i10);
    }

    public static long getTimeSpanByNow(long j10, int i10) {
        return getTimeSpan(j10, System.currentTimeMillis(), i10);
    }

    public static String getUSWeek(long j10) {
        return getUSWeek(new Date(j10));
    }

    public static int getValueByCalendarField(String str, @NonNull DateFormat dateFormat, int i10) {
        return getValueByCalendarField(string2Date(str, dateFormat), i10);
    }

    public static boolean isAm(String str, @NonNull DateFormat dateFormat) {
        return getValueByCalendarField(str, dateFormat, 9) == 0;
    }

    public static boolean isPm(Date date) {
        return !isAm(date);
    }

    public static boolean isToday(long j10) {
        long weeOfToday = getWeeOfToday();
        return j10 >= weeOfToday && j10 < weeOfToday + 86400000;
    }

    public static String getFitTimeSpan(Date date, Date date2, int i10) {
        return millis2FitTimeSpan(date2Millis(date) - date2Millis(date2), i10);
    }

    public static String getString(Date date, long j10, int i10) {
        return getString(date, getDefaultFormat(), j10, i10);
    }

    public static int getValueByCalendarField(Date date, int i10) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        return calendar.get(i10);
    }

    public static boolean isAm(Date date) {
        return getValueByCalendarField(date, 9) == 0;
    }

    public static boolean isPm(long j10) {
        return !isAm(j10);
    }

    public static String getChineseZodiac(long j10) {
        return getChineseZodiac(millis2Date(j10));
    }

    public static String getFitTimeSpan(long j10, long j11, int i10) {
        return millis2FitTimeSpan(j10 - j11, i10);
    }

    public static String getString(Date date, @NonNull DateFormat dateFormat, long j10, int i10) {
        return millis2String(date2Millis(date) + timeSpan2Millis(j10, i10), dateFormat);
    }

    public static boolean isAm(long j10) {
        return getValueByCalendarField(j10, 9) == 0;
    }

    public static String getChineseZodiac(int i10) {
        return CHINESE_ZODIAC[i10 % 12];
    }

    public static boolean isLeapYear(long j10) {
        return isLeapYear(millis2Date(j10));
    }

    public static int getValueByCalendarField(long j10, int i10) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(j10);
        return calendar.get(i10);
    }

    public static String getZodiac(long j10) {
        return getZodiac(millis2Date(j10));
    }

    public static boolean isLeapYear(int i10) {
        return (i10 % 4 == 0 && i10 % 100 != 0) || i10 % 400 == 0;
    }

    public static String getZodiac(int i10, int i11) {
        String[] strArr = ZODIAC;
        int i12 = i10 - 1;
        if (i11 < ZODIAC_FLAGS[i12]) {
            i12 = (i10 + 10) % 12;
        }
        return strArr[i12];
    }
}
