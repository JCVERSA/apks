package defpackage;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

public abstract class vna {
    public static final ThreadLocal a = new a();
    public static final String[] b = {"猴", "鸡", "狗", "猪", "鼠", "牛", "虎", "兔", "龙", "蛇", "马", "羊"};
    public static final int[] c = {20, 19, 21, 21, 21, 22, 23, 23, 23, 24, 23, 22};
    public static final String[] d = {"水瓶座", "双鱼座", "白羊座", "金牛座", "双子座", "巨蟹座", "狮子座", "处女座", "天秤座", "天蝎座", "射手座", "摩羯座"};

    public class a extends ThreadLocal {
        @Override
        public Map initialValue() {
            return new HashMap();
        }
    }

    public static long a(Date date) {
        return date.getTime();
    }

    public static long b() {
        return System.currentTimeMillis();
    }

    public static SimpleDateFormat c(String str) {
        Map map = (Map) a.get();
        SimpleDateFormat simpleDateFormat = (SimpleDateFormat) map.get(str);
        if (simpleDateFormat != null) {
            return simpleDateFormat;
        }
        SimpleDateFormat simpleDateFormat2 = new SimpleDateFormat(str);
        map.put(str, simpleDateFormat2);
        return simpleDateFormat2;
    }

    public static String d(long j, String str) {
        return e(j, c(str));
    }

    public static String e(long j, DateFormat dateFormat) {
        return dateFormat.format(new Date(j));
    }

    public static Date f(String str, String str2) {
        return g(str, c(str2));
    }

    public static Date g(String str, DateFormat dateFormat) {
        try {
            return dateFormat.parse(str);
        } catch (ParseException e) {
            e.printStackTrace();
            return null;
        }
    }
}
