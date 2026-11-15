package c5;

import b5.b2;
import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.serializer.SerializerFeature;
import com.alibaba.fastjson.util.TypeUtils;
import com.google.android.material.timepicker.TimeModel;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.io.IOException;
import java.lang.reflect.Type;
import java.math.BigDecimal;
import java.sql.Date;
import java.sql.Time;
import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.TimeZone;

public class c0 extends b5.b implements z0, b2 {

    public static final c0 f16511a = new c0();

    @Override
    public int b() {
        return 2;
    }

    @Override
    public void c(o0 o0Var, Object obj, Object obj2, Type type, int i10) throws IOException {
        char[] charArray;
        j1 j1Var = o0Var.f16619k;
        if (obj == null) {
            j1Var.h0();
            return;
        }
        Class<?> cls = obj.getClass();
        if (cls == Date.class && !j1Var.o(SerializerFeature.WriteDateUseDateFormat)) {
            long time = ((Date) obj).getTime();
            if ((time + ((long) o0Var.f16627s.getOffset(time))) % 86400000 == 0 && !SerializerFeature.isEnabled(j1Var.f16592c, i10, SerializerFeature.WriteClassName)) {
                j1Var.o0(obj.toString());
                return;
            }
        }
        if (cls == Time.class) {
            long time2 = ((Time) obj).getTime();
            if ("unixtime".equals(o0Var.o())) {
                j1Var.g0(time2 / 1000);
                return;
            } else if ("millis".equals(o0Var.o())) {
                j1Var.g0(time2);
                return;
            } else if (time2 < 86400000) {
                j1Var.o0(obj.toString());
                return;
            }
        }
        int nanos = cls == Timestamp.class ? ((Timestamp) obj).getNanos() : 0;
        java.util.Date dateO = obj instanceof java.util.Date ? (java.util.Date) obj : TypeUtils.o(obj);
        if ("unixtime".equals(o0Var.o())) {
            j1Var.g0(dateO.getTime() / 1000);
            return;
        }
        if ("millis".equals(o0Var.o())) {
            j1Var.g0(dateO.getTime());
            return;
        }
        if (j1Var.o(SerializerFeature.WriteDateUseDateFormat)) {
            DateFormat dateFormatN = o0Var.n();
            if (dateFormatN == null) {
                String strP = o0Var.p();
                if (strP == null) {
                    strP = com.alibaba.fastjson.a.DEFFAULT_DATE_FORMAT;
                }
                SimpleDateFormat simpleDateFormat = new SimpleDateFormat(strP, o0Var.f16628t);
                simpleDateFormat.setTimeZone(o0Var.f16627s);
                dateFormatN = simpleDateFormat;
            }
            j1Var.o0(dateFormatN.format(dateO));
            return;
        }
        if (j1Var.o(SerializerFeature.WriteClassName) && cls != type) {
            if (cls == java.util.Date.class) {
                j1Var.write("new Date(");
                j1Var.g0(((java.util.Date) obj).getTime());
                j1Var.write(41);
                return;
            } else {
                j1Var.write(Sdk$SDKError.Reason.INVALID_RI_ENDPOINT_VALUE);
                j1Var.u(com.alibaba.fastjson.a.DEFAULT_TYPE_KEY);
                o0Var.B(cls.getName());
                j1Var.y(',', "val", ((java.util.Date) obj).getTime());
                j1Var.write(Sdk$SDKError.Reason.INVALID_METRICS_ENDPOINT_VALUE);
                return;
            }
        }
        long time3 = dateO.getTime();
        if (!j1Var.o(SerializerFeature.UseISO8601DateFormat)) {
            j1Var.g0(time3);
            return;
        }
        int i11 = j1Var.o(SerializerFeature.UseSingleQuotes) ? 39 : 34;
        j1Var.write(i11);
        Calendar calendar = Calendar.getInstance(o0Var.f16627s, o0Var.f16628t);
        calendar.setTimeInMillis(time3);
        int i12 = calendar.get(1);
        int i13 = calendar.get(2) + 1;
        int i14 = calendar.get(5);
        int i15 = calendar.get(11);
        int i16 = calendar.get(12);
        int i17 = calendar.get(13);
        int i18 = calendar.get(14);
        if (nanos > 0) {
            charArray = "0000-00-00 00:00:00.000000000".toCharArray();
            com.alibaba.fastjson.util.f.h(nanos, 29, charArray);
            com.alibaba.fastjson.util.f.h(i17, 19, charArray);
            com.alibaba.fastjson.util.f.h(i16, 16, charArray);
            com.alibaba.fastjson.util.f.h(i15, 13, charArray);
            com.alibaba.fastjson.util.f.h(i14, 10, charArray);
            com.alibaba.fastjson.util.f.h(i13, 7, charArray);
            com.alibaba.fastjson.util.f.h(i12, 4, charArray);
        } else if (i18 != 0) {
            char[] charArray2 = "0000-00-00T00:00:00.000".toCharArray();
            com.alibaba.fastjson.util.f.h(i18, 23, charArray2);
            com.alibaba.fastjson.util.f.h(i17, 19, charArray2);
            com.alibaba.fastjson.util.f.h(i16, 16, charArray2);
            com.alibaba.fastjson.util.f.h(i15, 13, charArray2);
            com.alibaba.fastjson.util.f.h(i14, 10, charArray2);
            com.alibaba.fastjson.util.f.h(i13, 7, charArray2);
            com.alibaba.fastjson.util.f.h(i12, 4, charArray2);
            charArray = charArray2;
        } else if (i17 == 0 && i16 == 0 && i15 == 0) {
            char[] charArray3 = "0000-00-00".toCharArray();
            com.alibaba.fastjson.util.f.h(i14, 10, charArray3);
            com.alibaba.fastjson.util.f.h(i13, 7, charArray3);
            com.alibaba.fastjson.util.f.h(i12, 4, charArray3);
            charArray = charArray3;
        } else {
            charArray = "0000-00-00T00:00:00".toCharArray();
            com.alibaba.fastjson.util.f.h(i17, 19, charArray);
            com.alibaba.fastjson.util.f.h(i16, 16, charArray);
            com.alibaba.fastjson.util.f.h(i15, 13, charArray);
            com.alibaba.fastjson.util.f.h(i14, 10, charArray);
            com.alibaba.fastjson.util.f.h(i13, 7, charArray);
            com.alibaba.fastjson.util.f.h(i12, 4, charArray);
        }
        if (nanos > 0) {
            int i19 = 0;
            while (i19 < 9 && charArray[(charArray.length - i19) - 1] == '0') {
                i19++;
            }
            j1Var.write(charArray, 0, charArray.length - i19);
            j1Var.write(i11);
            return;
        }
        j1Var.write(charArray);
        float offset = calendar.getTimeZone().getOffset(calendar.getTimeInMillis()) / 3600000.0f;
        int i20 = (int) offset;
        if (i20 == 0.0d) {
            j1Var.write(90);
        } else {
            if (i20 > 9) {
                j1Var.write(43);
                j1Var.e0(i20);
            } else if (i20 > 0) {
                j1Var.write(43);
                j1Var.write(48);
                j1Var.e0(i20);
            } else if (i20 < -9) {
                j1Var.write(45);
                j1Var.e0(-i20);
            } else if (i20 < 0) {
                j1Var.write(45);
                j1Var.write(48);
                j1Var.e0(-i20);
            }
            j1Var.write(58);
            j1Var.append(String.format(TimeModel.ZERO_LEADING_NUMBER_FORMAT, Integer.valueOf((int) (Math.abs(offset - i20) * 60.0f))));
        }
        j1Var.write(i11);
    }

    @Override
    public Object f(a5.a aVar, Type type, Object obj, Object obj2) {
        if (obj2 == null) {
            return null;
        }
        if (obj2 instanceof java.util.Date) {
            return obj2;
        }
        if (obj2 instanceof BigDecimal) {
            return new java.util.Date(TypeUtils.E0((BigDecimal) obj2));
        }
        if (obj2 instanceof Number) {
            return new java.util.Date(((Number) obj2).longValue());
        }
        if (!(obj2 instanceof String)) {
            throw new JSONException("parse error");
        }
        String strSubstring = (String) obj2;
        if (strSubstring.length() == 0) {
            return null;
        }
        if (strSubstring.length() == 23 && strSubstring.endsWith(" 000")) {
            strSubstring = strSubstring.substring(0, 19);
        }
        a5.e eVar = new a5.e(strSubstring);
        try {
            if (eVar.x1(false)) {
                Calendar calendarJ0 = eVar.J0();
                if (type == Calendar.class) {
                    eVar.close();
                    return calendarJ0;
                }
                java.util.Date time = calendarJ0.getTime();
                eVar.close();
                return time;
            }
            eVar.close();
            String strN = aVar.n();
            if (strSubstring.length() == strN.length() || ((strSubstring.length() == 22 && strN.equals("yyyyMMddHHmmssSSSZ")) || (strSubstring.indexOf(84) != -1 && strN.contains("'T'") && strSubstring.length() + 2 == strN.length()))) {
                try {
                    return aVar.o().parse(strSubstring);
                } catch (ParseException unused) {
                }
            }
            if (strSubstring.startsWith("/Date(") && strSubstring.endsWith(")/")) {
                strSubstring = strSubstring.substring(6, strSubstring.length() - 2);
            }
            if ("0000-00-00".equals(strSubstring) || "0000-00-00T00:00:00".equalsIgnoreCase(strSubstring) || "0001-01-01T00:00:00+08:00".equalsIgnoreCase(strSubstring)) {
                return null;
            }
            int iLastIndexOf = strSubstring.lastIndexOf(Sdk$SDKError.Reason.INVALID_LOG_ERROR_ENDPOINT_VALUE);
            if (iLastIndexOf > 20) {
                TimeZone timeZone = TimeZone.getTimeZone(strSubstring.substring(iLastIndexOf + 1));
                if (!"GMT".equals(timeZone.getID())) {
                    a5.e eVar2 = new a5.e(strSubstring.substring(0, iLastIndexOf));
                    try {
                        if (eVar2.x1(false)) {
                            Calendar calendarJ1 = eVar2.J0();
                            calendarJ1.setTimeZone(timeZone);
                            return type == Calendar.class ? calendarJ1 : calendarJ1.getTime();
                        }
                    } finally {
                        eVar2.close();
                    }
                }
            }
            return new java.util.Date(Long.parseLong(strSubstring));
        } catch (Throwable th2) {
            eVar.close();
            throw th2;
        }
    }
}
