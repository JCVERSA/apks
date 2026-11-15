package b5;

import com.alibaba.fastjson.JSONObject;
import com.alibaba.fastjson.serializer.SerializerFeature;
import com.alibaba.fastjson.util.TypeUtils;
import java.lang.reflect.Type;
import java.time.Duration;
import java.time.Instant;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.LocalTime;
import java.time.OffsetDateTime;
import java.time.OffsetTime;
import java.time.Period;
import java.time.ZoneId;
import java.time.ZonedDateTime;
import java.time.format.DateTimeFormatter;
import java.time.temporal.TemporalAccessor;
import java.util.Locale;
import java.util.TimeZone;
import okhttp3.internal.connection.RealConnection;

public class y1 extends e implements c5.z0, c5.a0, b2 {

    public static final y1 f15569a = new y1();

    private static final DateTimeFormatter f15570b = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");

    private static final DateTimeFormatter f15571c = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss.SSS");

    private static final DateTimeFormatter f15572d = DateTimeFormatter.ofPattern("yyyy/MM/dd HH:mm:ss");

    private static final DateTimeFormatter f15573e = DateTimeFormatter.ofPattern("yyyy年M月d日 HH:mm:ss");

    private static final DateTimeFormatter f15574f = DateTimeFormatter.ofPattern("yyyy年M月d日 H时m分s秒");

    private static final DateTimeFormatter f15575g = DateTimeFormatter.ofPattern("yyyy년M월d일 HH:mm:ss");

    private static final DateTimeFormatter f15576h = DateTimeFormatter.ofPattern("MM/dd/yyyy HH:mm:ss");

    private static final DateTimeFormatter f15577i = DateTimeFormatter.ofPattern("dd/MM/yyyy HH:mm:ss");

    private static final DateTimeFormatter f15578j = DateTimeFormatter.ofPattern("dd.MM.yyyy HH:mm:ss");

    private static final DateTimeFormatter f15579k = DateTimeFormatter.ofPattern("dd-MM-yyyy HH:mm:ss");

    private static final DateTimeFormatter f15580l = DateTimeFormatter.ofPattern("yyyyMMdd");

    private static final DateTimeFormatter f15581m = DateTimeFormatter.ofPattern("yyyy/MM/dd");

    private static final DateTimeFormatter f15582n = DateTimeFormatter.ofPattern("yyyy年M月d日");

    private static final DateTimeFormatter f15583o = DateTimeFormatter.ofPattern("yyyy년M월d일");

    private static final DateTimeFormatter f15584p = DateTimeFormatter.ofPattern("MM/dd/yyyy");

    private static final DateTimeFormatter f15585q = DateTimeFormatter.ofPattern("dd/MM/yyyy");

    private static final DateTimeFormatter f15586r = DateTimeFormatter.ofPattern("dd.MM.yyyy");

    private static final DateTimeFormatter f15587s = DateTimeFormatter.ofPattern("dd-MM-yyyy");

    private static final DateTimeFormatter f15588t = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss").withZone(ZoneId.systemDefault());

    private static final DateTimeFormatter f15589u = DateTimeFormatter.ofPattern("yyyy-MM-dd'T'HH:mm:ss");

    public static Object f(Object obj, String str) {
        if (obj == null) {
            return null;
        }
        if (str == null) {
            str = "yyyy-MM-dd HH:mm:ss";
        }
        return LocalDateTime.parse(obj.toString(), DateTimeFormatter.ofPattern(str));
    }

    private void j(c5.j1 j1Var, TemporalAccessor temporalAccessor, String str) {
        Instant instant;
        if ("unixtime".equals(str)) {
            if (m1.a(temporalAccessor)) {
                j1Var.e0((int) p1.a(temporalAccessor).toEpochSecond());
                return;
            } else if (n1.a(temporalAccessor)) {
                j1Var.e0((int) i1.a(temporalAccessor).atZone(com.alibaba.fastjson.a.defaultTimeZone.toZoneId()).toEpochSecond());
                return;
            }
        }
        if ("millis".equals(str)) {
            if (m1.a(temporalAccessor)) {
                instant = p1.a(temporalAccessor).toInstant();
            } else {
                instant = n1.a(temporalAccessor) ? i1.a(temporalAccessor).atZone(com.alibaba.fastjson.a.defaultTimeZone.toZoneId()).toInstant() : null;
            }
            if (instant != null) {
                j1Var.g0(instant.toEpochMilli());
                return;
            }
        }
        j1Var.o0((str == "yyyy-MM-dd'T'HH:mm:ss" ? f15589u : DateTimeFormatter.ofPattern(str)).format(temporalAccessor));
    }

    @Override
    public void a(c5.o0 o0Var, Object obj, c5.p pVar) {
        j(o0Var.f16619k, x1.a(obj), pVar.b());
    }

    @Override
    public int b() {
        return 4;
    }

    @Override
    public void c(c5.o0 o0Var, Object obj, Object obj2, Type type, int i10) {
        c5.j1 j1Var = o0Var.f16619k;
        if (obj == null) {
            j1Var.h0();
            return;
        }
        if (type == null) {
            type = obj.getClass();
        }
        if (type != x0.a()) {
            j1Var.o0(obj.toString());
            return;
        }
        SerializerFeature serializerFeature = SerializerFeature.UseISO8601DateFormat;
        int mask = serializerFeature.getMask();
        LocalDateTime localDateTimeA = i1.a(obj);
        String strO = o0Var.o();
        if (strO == null) {
            strO = "yyyy-MM-dd'T'HH:mm:ss";
            if ((i10 & mask) == 0 && !o0Var.t(serializerFeature)) {
                if (o0Var.t(SerializerFeature.WriteDateUseDateFormat)) {
                    strO = (o0Var.p() == null || o0Var.p().length() <= 0) ? com.alibaba.fastjson.a.DEFFAULT_DATE_FORMAT : o0Var.p();
                } else {
                    int nano = localDateTimeA.getNano();
                    if (nano != 0) {
                        strO = nano % 1000000 == 0 ? "yyyy-MM-dd'T'HH:mm:ss.SSS" : "yyyy-MM-dd'T'HH:mm:ss.SSSSSSSSS";
                    }
                }
            }
        }
        if (strO != null) {
            j(j1Var, localDateTimeA, strO);
        } else {
            j1Var.g0(localDateTimeA.atZone(com.alibaba.fastjson.a.defaultTimeZone.toZoneId()).toInstant().toEpochMilli());
        }
    }

    @Override
    public Object e(a5.a aVar, Type type, Object obj, String str, int i10) {
        Long l10;
        DateTimeFormatter dateTimeFormatterOfPattern;
        a5.b bVar = aVar.f141f;
        if (bVar.t0() == 8) {
            bVar.d0();
            return null;
        }
        if (bVar.t0() == 4) {
            String strO0 = bVar.o0();
            bVar.d0();
            if (str != null) {
                dateTimeFormatterOfPattern = "yyyy-MM-dd HH:mm:ss".equals(str) ? f15570b : DateTimeFormatter.ofPattern(str);
            } else {
                dateTimeFormatterOfPattern = null;
            }
            if ("".equals(strO0)) {
                return null;
            }
            if (type == x0.a()) {
                return (strO0.length() == 10 || strO0.length() == 8) ? LocalDateTime.of(h(strO0, str, dateTimeFormatterOfPattern), LocalTime.MIN) : g(strO0, dateTimeFormatterOfPattern);
            }
            if (type == w0.a()) {
                if (strO0.length() != 23) {
                    return h(strO0, str, dateTimeFormatterOfPattern);
                }
                LocalDateTime localDateTime = LocalDateTime.parse(strO0);
                return LocalDate.of(localDateTime.getYear(), localDateTime.getMonthValue(), localDateTime.getDayOfMonth());
            }
            int i11 = 0;
            if (type == s.a()) {
                if (strO0.length() == 23) {
                    LocalDateTime localDateTime2 = LocalDateTime.parse(strO0);
                    return LocalTime.of(localDateTime2.getHour(), localDateTime2.getMinute(), localDateTime2.getSecond(), localDateTime2.getNano());
                }
                while (i11 < strO0.length()) {
                    char cCharAt = strO0.charAt(i11);
                    if (cCharAt < '0' || cCharAt > '9') {
                        return LocalTime.parse(strO0);
                    }
                    i11++;
                }
                if (strO0.length() > 8 && strO0.length() < 19) {
                    return LocalDateTime.ofInstant(Instant.ofEpochMilli(Long.parseLong(strO0)), com.alibaba.fastjson.a.defaultTimeZone.toZoneId()).toLocalTime();
                }
                return LocalTime.parse(strO0);
            }
            if (type == d0.a()) {
                if (dateTimeFormatterOfPattern == f15570b) {
                    dateTimeFormatterOfPattern = f15588t;
                }
                if (dateTimeFormatterOfPattern == null && strO0.length() <= 19) {
                    a5.e eVar = new a5.e(strO0);
                    TimeZone timeZoneP0 = aVar.f141f.p0();
                    eVar.o1(timeZoneP0);
                    if (eVar.x1(false)) {
                        return ZonedDateTime.ofInstant(eVar.J0().getTime().toInstant(), timeZoneP0.toZoneId());
                    }
                }
                return i(strO0, dateTimeFormatterOfPattern);
            }
            if (type == g0.a()) {
                return OffsetDateTime.parse(strO0);
            }
            if (type == i0.a()) {
                return OffsetTime.parse(strO0);
            }
            if (type == l0.a()) {
                return ZoneId.of(strO0);
            }
            if (type == o0.a()) {
                return Period.parse(strO0);
            }
            if (type == q0.a()) {
                return Duration.parse(strO0);
            }
            if (type == s0.a()) {
                while (i11 < strO0.length()) {
                    char cCharAt2 = strO0.charAt(i11);
                    if (cCharAt2 < '0' || cCharAt2 > '9') {
                        return Instant.parse(strO0);
                    }
                    i11++;
                }
                if (strO0.length() > 8 && strO0.length() < 19) {
                    return Instant.ofEpochMilli(Long.parseLong(strO0));
                }
                return Instant.parse(strO0);
            }
        } else {
            if (bVar.t0() == 2) {
                long jL = bVar.l();
                bVar.d0();
                if ("unixtime".equals(str)) {
                    jL *= 1000;
                } else if ("yyyyMMddHHmmss".equals(str)) {
                    int i12 = (int) (jL / RealConnection.IDLE_CONNECTION_HEALTHY_NS);
                    int i13 = (int) ((jL / 100000000) % 100);
                    int i14 = (int) ((jL / 1000000) % 100);
                    int i15 = (int) ((jL / 10000) % 100);
                    int i16 = (int) ((jL / 100) % 100);
                    int i17 = (int) (jL % 100);
                    if (type == x0.a()) {
                        return LocalDateTime.of(i12, i13, i14, i15, i16, i17);
                    }
                }
                if (type == x0.a()) {
                    return LocalDateTime.ofInstant(Instant.ofEpochMilli(jL), com.alibaba.fastjson.a.defaultTimeZone.toZoneId());
                }
                if (type == w0.a()) {
                    return LocalDateTime.ofInstant(Instant.ofEpochMilli(jL), com.alibaba.fastjson.a.defaultTimeZone.toZoneId()).toLocalDate();
                }
                if (type == s.a()) {
                    return LocalDateTime.ofInstant(Instant.ofEpochMilli(jL), com.alibaba.fastjson.a.defaultTimeZone.toZoneId()).toLocalTime();
                }
                if (type == d0.a()) {
                    return ZonedDateTime.ofInstant(Instant.ofEpochMilli(jL), com.alibaba.fastjson.a.defaultTimeZone.toZoneId());
                }
                if (type == s0.a()) {
                    return Instant.ofEpochMilli(jL);
                }
                throw new UnsupportedOperationException();
            }
            if (bVar.t0() != 12) {
                throw new UnsupportedOperationException();
            }
            JSONObject jSONObjectH0 = aVar.h0();
            if (type == s0.a()) {
                Object obj2 = jSONObjectH0.get("epochSecond");
                Object obj3 = jSONObjectH0.get("nano");
                boolean z10 = obj2 instanceof Number;
                if (z10 && (obj3 instanceof Number)) {
                    return Instant.ofEpochSecond(TypeUtils.D0((Number) obj2), TypeUtils.D0((Number) obj3));
                }
                if (z10) {
                    return Instant.ofEpochSecond(TypeUtils.D0((Number) obj2));
                }
            } else if (type == q0.a() && (l10 = jSONObjectH0.getLong("seconds")) != null) {
                return Duration.ofSeconds(l10.longValue(), jSONObjectH0.getLongValue("nano"));
            }
        }
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:52:0x00ea  */
    protected LocalDateTime g(String str, DateTimeFormatter dateTimeFormatter) {
        DateTimeFormatter dateTimeFormatter2;
        if (dateTimeFormatter == null) {
            if (str.length() == 19) {
                char cCharAt = str.charAt(4);
                char cCharAt2 = str.charAt(7);
                char cCharAt3 = str.charAt(10);
                char cCharAt4 = str.charAt(13);
                char cCharAt5 = str.charAt(16);
                if (cCharAt4 != ':' || cCharAt5 != ':') {
                    dateTimeFormatter2 = dateTimeFormatter;
                } else if (cCharAt == '-' && cCharAt2 == '-') {
                    if (cCharAt3 == 'T') {
                        dateTimeFormatter2 = DateTimeFormatter.ISO_LOCAL_DATE_TIME;
                    } else if (cCharAt3 == ' ') {
                        dateTimeFormatter2 = f15570b;
                    } else {
                        dateTimeFormatter2 = dateTimeFormatter;
                    }
                } else if (cCharAt == '/' && cCharAt2 == '/') {
                    dateTimeFormatter2 = f15572d;
                } else {
                    char cCharAt6 = str.charAt(0);
                    char cCharAt7 = str.charAt(1);
                    char cCharAt8 = str.charAt(2);
                    char cCharAt9 = str.charAt(3);
                    char cCharAt10 = str.charAt(5);
                    if (cCharAt8 == '/' && cCharAt10 == '/') {
                        int i10 = ((cCharAt9 - '0') * 10) + (cCharAt - '0');
                        if (((cCharAt6 - '0') * 10) + (cCharAt7 - '0') > 12) {
                            dateTimeFormatter2 = f15577i;
                        } else if (i10 > 12) {
                            dateTimeFormatter2 = f15576h;
                        } else {
                            String country = Locale.getDefault().getCountry();
                            if (country.equals("US")) {
                                dateTimeFormatter2 = f15576h;
                            } else if (country.equals("BR") || country.equals("AU")) {
                                dateTimeFormatter2 = f15577i;
                            } else {
                                dateTimeFormatter2 = dateTimeFormatter;
                            }
                        }
                    } else if (cCharAt8 == '.' && cCharAt10 == '.') {
                        dateTimeFormatter2 = f15578j;
                    } else if (cCharAt8 == '-' && cCharAt10 == '-') {
                        dateTimeFormatter2 = f15579k;
                    } else {
                        dateTimeFormatter2 = dateTimeFormatter;
                    }
                }
            } else if (str.length() == 23) {
                char cCharAt11 = str.charAt(4);
                char cCharAt12 = str.charAt(7);
                char cCharAt13 = str.charAt(10);
                char cCharAt14 = str.charAt(13);
                char cCharAt15 = str.charAt(16);
                char cCharAt16 = str.charAt(19);
                if (cCharAt14 == ':' && cCharAt15 == ':' && cCharAt11 == '-' && cCharAt12 == '-' && cCharAt13 == ' ' && cCharAt16 == '.') {
                    dateTimeFormatter2 = f15571c;
                } else {
                    dateTimeFormatter2 = dateTimeFormatter;
                }
            } else {
                dateTimeFormatter2 = dateTimeFormatter;
            }
            if (str.length() >= 17) {
                char cCharAt17 = str.charAt(4);
                if (cCharAt17 == 24180) {
                    dateTimeFormatter2 = str.charAt(str.length() - 1) == 31186 ? f15574f : f15573e;
                } else if (cCharAt17 == 45380) {
                    dateTimeFormatter2 = f15575g;
                }
            }
        } else {
            dateTimeFormatter2 = dateTimeFormatter;
        }
        if (dateTimeFormatter2 == null) {
            a5.e eVar = new a5.e(str);
            if (eVar.x1(false)) {
                return LocalDateTime.ofInstant(eVar.J0().toInstant(), ZoneId.systemDefault());
            }
            for (int i11 = 0; i11 < str.length(); i11++) {
                char cCharAt18 = str.charAt(i11);
                if (cCharAt18 >= '0' && cCharAt18 <= '9') {
                }
            }
            if (str.length() > 8 && str.length() < 19) {
                return LocalDateTime.ofInstant(Instant.ofEpochMilli(Long.parseLong(str)), com.alibaba.fastjson.a.defaultTimeZone.toZoneId());
            }
        }
        return dateTimeFormatter2 == null ? LocalDateTime.parse(str) : LocalDateTime.parse(str, dateTimeFormatter2);
    }

    protected LocalDate h(String str, String str2, DateTimeFormatter dateTimeFormatter) {
        DateTimeFormatter dateTimeFormatter2;
        DateTimeFormatter dateTimeFormatter3;
        if (dateTimeFormatter == null) {
            if (str.length() == 8) {
                dateTimeFormatter = f15580l;
            }
            if (str.length() == 10) {
                char cCharAt = str.charAt(4);
                char cCharAt2 = str.charAt(7);
                if (cCharAt == '/' && cCharAt2 == '/') {
                    dateTimeFormatter = f15581m;
                }
                char cCharAt3 = str.charAt(0);
                char cCharAt4 = str.charAt(1);
                char cCharAt5 = str.charAt(2);
                char cCharAt6 = str.charAt(3);
                char cCharAt7 = str.charAt(5);
                if (cCharAt5 == '/' && cCharAt7 == '/') {
                    int i10 = ((cCharAt6 - '0') * 10) + (cCharAt - '0');
                    if (((cCharAt3 - '0') * 10) + (cCharAt4 - '0') > 12) {
                        dateTimeFormatter3 = f15585q;
                    } else if (i10 > 12) {
                        dateTimeFormatter3 = f15584p;
                    } else {
                        String country = Locale.getDefault().getCountry();
                        if (country.equals("US")) {
                            dateTimeFormatter3 = f15584p;
                        } else if (country.equals("BR") || country.equals("AU")) {
                            dateTimeFormatter3 = f15585q;
                        }
                    }
                    dateTimeFormatter = dateTimeFormatter3;
                } else if (cCharAt5 == '.' && cCharAt7 == '.') {
                    dateTimeFormatter = f15586r;
                } else if (cCharAt5 == '-' && cCharAt7 == '-') {
                    dateTimeFormatter = f15587s;
                }
            }
            if (str.length() >= 9) {
                char cCharAt8 = str.charAt(4);
                if (cCharAt8 == 24180) {
                    dateTimeFormatter2 = f15582n;
                } else if (cCharAt8 == 45380) {
                    dateTimeFormatter2 = f15583o;
                }
                dateTimeFormatter = dateTimeFormatter2;
            }
            for (int i11 = 0; i11 < str.length(); i11++) {
                char cCharAt9 = str.charAt(i11);
                if (cCharAt9 >= '0' && cCharAt9 <= '9') {
                }
            }
            if (str.length() > 8 && str.length() < 19) {
                return LocalDateTime.ofInstant(Instant.ofEpochMilli(Long.parseLong(str)), com.alibaba.fastjson.a.defaultTimeZone.toZoneId()).toLocalDate();
            }
        }
        return dateTimeFormatter == null ? LocalDate.parse(str) : LocalDate.parse(str, dateTimeFormatter);
    }

    /* JADX WARN: Code duplicated, block: B:45:0x00b9  */
    protected ZonedDateTime i(String str, DateTimeFormatter dateTimeFormatter) {
        DateTimeFormatter dateTimeFormatter2;
        if (dateTimeFormatter == null) {
            if (str.length() == 19) {
                char cCharAt = str.charAt(4);
                char cCharAt2 = str.charAt(7);
                char cCharAt3 = str.charAt(10);
                char cCharAt4 = str.charAt(13);
                char cCharAt5 = str.charAt(16);
                if (cCharAt4 != ':' || cCharAt5 != ':') {
                    dateTimeFormatter2 = dateTimeFormatter;
                } else if (cCharAt == '-' && cCharAt2 == '-') {
                    if (cCharAt3 == 'T') {
                        dateTimeFormatter2 = DateTimeFormatter.ISO_LOCAL_DATE_TIME;
                    } else if (cCharAt3 == ' ') {
                        dateTimeFormatter2 = f15570b;
                    } else {
                        dateTimeFormatter2 = dateTimeFormatter;
                    }
                } else if (cCharAt == '/' && cCharAt2 == '/') {
                    dateTimeFormatter2 = f15572d;
                } else {
                    char cCharAt6 = str.charAt(0);
                    char cCharAt7 = str.charAt(1);
                    char cCharAt8 = str.charAt(2);
                    char cCharAt9 = str.charAt(3);
                    char cCharAt10 = str.charAt(5);
                    if (cCharAt8 == '/' && cCharAt10 == '/') {
                        int i10 = ((cCharAt9 - '0') * 10) + (cCharAt - '0');
                        if (((cCharAt6 - '0') * 10) + (cCharAt7 - '0') > 12) {
                            dateTimeFormatter2 = f15577i;
                        } else if (i10 > 12) {
                            dateTimeFormatter2 = f15576h;
                        } else {
                            String country = Locale.getDefault().getCountry();
                            if (country.equals("US")) {
                                dateTimeFormatter2 = f15576h;
                            } else if (country.equals("BR") || country.equals("AU")) {
                                dateTimeFormatter2 = f15577i;
                            } else {
                                dateTimeFormatter2 = dateTimeFormatter;
                            }
                        }
                    } else if (cCharAt8 == '.' && cCharAt10 == '.') {
                        dateTimeFormatter2 = f15578j;
                    } else if (cCharAt8 == '-' && cCharAt10 == '-') {
                        dateTimeFormatter2 = f15579k;
                    } else {
                        dateTimeFormatter2 = dateTimeFormatter;
                    }
                }
            } else {
                dateTimeFormatter2 = dateTimeFormatter;
            }
            if (str.length() >= 17) {
                char cCharAt11 = str.charAt(4);
                if (cCharAt11 == 24180) {
                    dateTimeFormatter2 = str.charAt(str.length() - 1) == 31186 ? f15574f : f15573e;
                } else if (cCharAt11 == 45380) {
                    dateTimeFormatter2 = f15575g;
                }
            }
            for (int i11 = 0; i11 < str.length(); i11++) {
                char cCharAt12 = str.charAt(i11);
                if (cCharAt12 >= '0' && cCharAt12 <= '9') {
                }
            }
            if (str.length() > 8 && str.length() < 19) {
                return ZonedDateTime.ofInstant(Instant.ofEpochMilli(Long.parseLong(str)), com.alibaba.fastjson.a.defaultTimeZone.toZoneId());
            }
        } else {
            dateTimeFormatter2 = dateTimeFormatter;
        }
        return dateTimeFormatter2 == null ? ZonedDateTime.parse(str) : ZonedDateTime.parse(str, dateTimeFormatter2);
    }
}
