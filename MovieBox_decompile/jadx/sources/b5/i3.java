package b5;

import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.util.TypeUtils;
import java.lang.reflect.Type;
import java.math.BigDecimal;
import java.sql.Timestamp;
import java.text.ParseException;
import java.util.Date;

public class i3 extends b implements b2 {

    public static final i3 f15551b = new i3();

    public static final i3 f15552c = new i3(true);

    private boolean f15553a = false;

    public i3() {
    }

    @Override
    public int b() {
        return 2;
    }

    @Override
    protected Object f(a5.a aVar, Type type, Object obj, Object obj2) {
        long timeInMillis;
        if (this.f15553a) {
            return g(aVar, type, obj, obj2);
        }
        if (obj2 == null) {
            return null;
        }
        if (obj2 instanceof Date) {
            return new java.sql.Date(((Date) obj2).getTime());
        }
        if (obj2 instanceof BigDecimal) {
            return new java.sql.Date(TypeUtils.E0((BigDecimal) obj2));
        }
        if (obj2 instanceof Number) {
            return new java.sql.Date(((Number) obj2).longValue());
        }
        if (!(obj2 instanceof String)) {
            throw new JSONException("parse error : " + obj2);
        }
        String str = (String) obj2;
        if (str.length() == 0) {
            return null;
        }
        a5.e eVar = new a5.e(str);
        try {
            if (eVar.w1()) {
                timeInMillis = eVar.J0().getTimeInMillis();
            } else {
                try {
                    java.sql.Date date = new java.sql.Date(aVar.o().parse(str).getTime());
                    eVar.close();
                    return date;
                } catch (ParseException unused) {
                    timeInMillis = Long.parseLong(str);
                }
            }
            eVar.close();
            return new java.sql.Date(timeInMillis);
        } catch (Throwable th2) {
            eVar.close();
            throw th2;
        }
    }

    protected Object g(a5.a aVar, Type type, Object obj, Object obj2) {
        long timeInMillis;
        if (obj2 == null) {
            return null;
        }
        if (obj2 instanceof Date) {
            return new Timestamp(((Date) obj2).getTime());
        }
        if (obj2 instanceof BigDecimal) {
            return new Timestamp(TypeUtils.E0((BigDecimal) obj2));
        }
        if (obj2 instanceof Number) {
            return new Timestamp(((Number) obj2).longValue());
        }
        if (!(obj2 instanceof String)) {
            throw new JSONException("parse error");
        }
        String str = (String) obj2;
        if (str.length() == 0) {
            return null;
        }
        a5.e eVar = new a5.e(str);
        try {
            if (str.length() > 19 && str.charAt(4) == '-' && str.charAt(7) == '-' && str.charAt(10) == ' ' && str.charAt(13) == ':' && str.charAt(16) == ':' && str.charAt(19) == '.') {
                String strN = aVar.n();
                if (strN.length() != str.length() && strN == com.alibaba.fastjson.a.DEFFAULT_DATE_FORMAT) {
                    Timestamp timestampValueOf = Timestamp.valueOf(str);
                    eVar.close();
                    return timestampValueOf;
                }
            }
            if (eVar.x1(false)) {
                timeInMillis = eVar.J0().getTimeInMillis();
            } else {
                try {
                    Timestamp timestamp = new Timestamp(aVar.o().parse(str).getTime());
                    eVar.close();
                    return timestamp;
                } catch (ParseException unused) {
                    timeInMillis = Long.parseLong(str);
                }
            }
            eVar.close();
            return new Timestamp(timeInMillis);
        } catch (Throwable th2) {
            eVar.close();
            throw th2;
        }
    }

    public i3(boolean z10) {
    }
}
