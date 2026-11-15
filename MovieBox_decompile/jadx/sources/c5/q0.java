package c5;

import b5.b2;
import com.alibaba.fastjson.JSONObject;
import com.alibaba.fastjson.serializer.SerializerFeature;
import com.alibaba.fastjson.util.TypeUtils;
import java.lang.reflect.Type;
import java.util.Locale;
import java.util.TimeZone;
import org.joda.time.DateTime;
import org.joda.time.DateTimeZone;
import org.joda.time.Duration;
import org.joda.time.Instant;
import org.joda.time.LocalDate;
import org.joda.time.LocalDateTime;
import org.joda.time.LocalTime;
import org.joda.time.Period;
import org.joda.time.ReadablePartial;
import org.joda.time.format.DateTimeFormat;
import org.joda.time.format.DateTimeFormatter;

public class q0 implements z0, a0, b2 {

    public static final q0 f16640a = new q0();

    private static final DateTimeFormatter f16641b = DateTimeFormat.forPattern("yyyy-MM-dd HH:mm:ss");

    private static final DateTimeFormatter f16642c = DateTimeFormat.forPattern("yyyy-MM-dd HH:mm:ss.SSS");

    private static final DateTimeFormatter f16643d = DateTimeFormat.forPattern("yyyy/MM/dd HH:mm:ss");

    private static final DateTimeFormatter f16644e = DateTimeFormat.forPattern("yyyy年M月d日 HH:mm:ss");

    private static final DateTimeFormatter f16645f = DateTimeFormat.forPattern("yyyy年M月d日 H时m分s秒");

    private static final DateTimeFormatter f16646g = DateTimeFormat.forPattern("yyyy년M월d일 HH:mm:ss");

    private static final DateTimeFormatter f16647h = DateTimeFormat.forPattern("MM/dd/yyyy HH:mm:ss");

    private static final DateTimeFormatter f16648i = DateTimeFormat.forPattern("dd/MM/yyyy HH:mm:ss");

    private static final DateTimeFormatter f16649j = DateTimeFormat.forPattern("dd.MM.yyyy HH:mm:ss");

    private static final DateTimeFormatter f16650k = DateTimeFormat.forPattern("dd-MM-yyyy HH:mm:ss");

    private static final DateTimeFormatter f16651l = DateTimeFormat.forPattern("yyyyMMdd");

    private static final DateTimeFormatter f16652m = DateTimeFormat.forPattern("yyyy/MM/dd");

    private static final DateTimeFormatter f16653n = DateTimeFormat.forPattern("yyyy年M月d日");

    private static final DateTimeFormatter f16654o = DateTimeFormat.forPattern("yyyy년M월d일");

    private static final DateTimeFormatter f16655p = DateTimeFormat.forPattern("MM/dd/yyyy");

    private static final DateTimeFormatter f16656q = DateTimeFormat.forPattern("dd/MM/yyyy");

    private static final DateTimeFormatter f16657r = DateTimeFormat.forPattern("dd.MM.yyyy");

    private static final DateTimeFormatter f16658s = DateTimeFormat.forPattern("dd-MM-yyyy");

    private static final DateTimeFormatter f16659t = DateTimeFormat.forPattern("yyyy-MM-dd HH:mm:ss").withZone(DateTimeZone.getDefault());

    private static final DateTimeFormatter f16660u = DateTimeFormat.forPattern("yyyy-MM-dd'T'HH:mm:ss");

    private void i(j1 j1Var, ReadablePartial readablePartial, String str) {
        j1Var.o0((str.equals("yyyy-MM-dd'T'HH:mm:ss") ? f16660u : DateTimeFormat.forPattern(str)).print(readablePartial));
    }

    @Override
    public void a(o0 o0Var, Object obj, p pVar) {
        i(o0Var.f16619k, (ReadablePartial) obj, pVar.b());
    }

    @Override
    public int b() {
        return 4;
    }

    @Override
    public void c(o0 o0Var, Object obj, Object obj2, Type type, int i10) {
        j1 j1Var = o0Var.f16619k;
        if (obj == null) {
            j1Var.h0();
            return;
        }
        if (type == null) {
            type = obj.getClass();
        }
        if (type != LocalDateTime.class) {
            j1Var.o0(obj.toString());
            return;
        }
        SerializerFeature serializerFeature = SerializerFeature.UseISO8601DateFormat;
        int mask = serializerFeature.getMask();
        LocalDateTime localDateTime = (LocalDateTime) obj;
        String strO = o0Var.o();
        if (strO == null) {
            if ((i10 & mask) != 0 || o0Var.t(serializerFeature)) {
                strO = "yyyy-MM-dd'T'HH:mm:ss";
            } else if (o0Var.t(SerializerFeature.WriteDateUseDateFormat)) {
                strO = com.alibaba.fastjson.a.DEFFAULT_DATE_FORMAT;
            } else {
                strO = localDateTime.getMillisOfSecond() == 0 ? "yyyy-MM-dd'T'HH:mm:ss.SSS" : "yyyy-MM-dd'T'HH:mm:ss.SSSSSSSSS";
            }
        }
        if (strO != null) {
            i(j1Var, localDateTime, strO);
        } else {
            j1Var.g0(localDateTime.toDateTime(DateTimeZone.forTimeZone(com.alibaba.fastjson.a.defaultTimeZone)).toInstant().getMillis());
        }
    }

    @Override
    public Object d(a5.a aVar, Type type, Object obj) {
        return e(aVar, type, obj, null, 0);
    }

    public Object e(a5.a aVar, Type type, Object obj, String str, int i10) {
        a5.b bVar = aVar.f141f;
        if (bVar.t0() == 8) {
            bVar.d0();
            return null;
        }
        if (bVar.t0() == 4) {
            String strO0 = bVar.o0();
            bVar.d0();
            DateTimeFormatter dateTimeFormatterForPattern = str != null ? "yyyy-MM-dd HH:mm:ss".equals(str) ? f16641b : DateTimeFormat.forPattern(str) : null;
            if ("".equals(strO0)) {
                return null;
            }
            if (type == LocalDateTime.class) {
                return (strO0.length() == 10 || strO0.length() == 8) ? g(strO0, str, dateTimeFormatterForPattern).toLocalDateTime(LocalTime.MIDNIGHT) : f(strO0, dateTimeFormatterForPattern);
            }
            if (type == LocalDate.class) {
                return strO0.length() == 23 ? LocalDateTime.parse(strO0).toLocalDate() : g(strO0, str, dateTimeFormatterForPattern);
            }
            if (type == LocalTime.class) {
                return strO0.length() == 23 ? LocalDateTime.parse(strO0).toLocalTime() : LocalTime.parse(strO0);
            }
            if (type == DateTime.class) {
                if (dateTimeFormatterForPattern == f16641b) {
                    dateTimeFormatterForPattern = f16659t;
                }
                return h(strO0, dateTimeFormatterForPattern);
            }
            if (type == DateTimeZone.class) {
                return DateTimeZone.forID(strO0);
            }
            if (type == Period.class) {
                return Period.parse(strO0);
            }
            if (type == Duration.class) {
                return Duration.parse(strO0);
            }
            if (type == Instant.class) {
                for (int i11 = 0; i11 < strO0.length(); i11++) {
                    char cCharAt = strO0.charAt(i11);
                    if (cCharAt < '0' || cCharAt > '9') {
                        return Instant.parse(strO0);
                    }
                }
                if (strO0.length() > 8 && strO0.length() < 19) {
                    return new Instant(Long.parseLong(strO0));
                }
                return Instant.parse(strO0);
            }
            if (type == DateTimeFormatter.class) {
                return DateTimeFormat.forPattern(strO0);
            }
        } else {
            if (bVar.t0() == 2) {
                long jL = bVar.l();
                bVar.d0();
                TimeZone timeZone = com.alibaba.fastjson.a.defaultTimeZone;
                if (timeZone == null) {
                    timeZone = TimeZone.getDefault();
                }
                if (type == DateTime.class) {
                    return new DateTime(jL, DateTimeZone.forTimeZone(timeZone));
                }
                LocalDateTime localDateTime = new LocalDateTime(jL, DateTimeZone.forTimeZone(timeZone));
                if (type == LocalDateTime.class) {
                    return localDateTime;
                }
                if (type == LocalDate.class) {
                    return localDateTime.toLocalDate();
                }
                if (type == LocalTime.class) {
                    return localDateTime.toLocalTime();
                }
                if (type == Instant.class) {
                    return new Instant(jL);
                }
                throw new UnsupportedOperationException();
            }
            if (bVar.t0() != 12) {
                throw new UnsupportedOperationException();
            }
            JSONObject jSONObjectH0 = aVar.h0();
            if (type == Instant.class) {
                Object obj2 = jSONObjectH0.get("epochSecond");
                if (obj2 instanceof Number) {
                    return Instant.ofEpochSecond(TypeUtils.D0((Number) obj2));
                }
                Object obj3 = jSONObjectH0.get("millis");
                if (obj3 instanceof Number) {
                    return Instant.ofEpochMilli(TypeUtils.D0((Number) obj3));
                }
            }
        }
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:52:0x00e8  */
    protected LocalDateTime f(String str, DateTimeFormatter dateTimeFormatter) {
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
                        dateTimeFormatter2 = f16660u;
                    } else if (cCharAt3 == ' ') {
                        dateTimeFormatter2 = f16641b;
                    } else {
                        dateTimeFormatter2 = dateTimeFormatter;
                    }
                } else if (cCharAt == '/' && cCharAt2 == '/') {
                    dateTimeFormatter2 = f16643d;
                } else {
                    char cCharAt6 = str.charAt(0);
                    char cCharAt7 = str.charAt(1);
                    char cCharAt8 = str.charAt(2);
                    char cCharAt9 = str.charAt(3);
                    char cCharAt10 = str.charAt(5);
                    if (cCharAt8 == '/' && cCharAt10 == '/') {
                        int i10 = ((cCharAt9 - '0') * 10) + (cCharAt - '0');
                        if (((cCharAt6 - '0') * 10) + (cCharAt7 - '0') > 12) {
                            dateTimeFormatter2 = f16648i;
                        } else if (i10 > 12) {
                            dateTimeFormatter2 = f16647h;
                        } else {
                            String country = Locale.getDefault().getCountry();
                            if (country.equals("US")) {
                                dateTimeFormatter2 = f16647h;
                            } else if (country.equals("BR") || country.equals("AU")) {
                                dateTimeFormatter2 = f16648i;
                            } else {
                                dateTimeFormatter2 = dateTimeFormatter;
                            }
                        }
                    } else if (cCharAt8 == '.' && cCharAt10 == '.') {
                        dateTimeFormatter2 = f16649j;
                    } else if (cCharAt8 == '-' && cCharAt10 == '-') {
                        dateTimeFormatter2 = f16650k;
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
                    dateTimeFormatter2 = f16642c;
                } else {
                    dateTimeFormatter2 = dateTimeFormatter;
                }
            } else {
                dateTimeFormatter2 = dateTimeFormatter;
            }
            if (str.length() >= 17) {
                char cCharAt17 = str.charAt(4);
                if (cCharAt17 == 24180) {
                    dateTimeFormatter2 = str.charAt(str.length() - 1) == 31186 ? f16645f : f16644e;
                } else if (cCharAt17 == 45380) {
                    dateTimeFormatter2 = f16646g;
                }
            }
            for (int i11 = 0; i11 < str.length(); i11++) {
                char cCharAt18 = str.charAt(i11);
                if (cCharAt18 >= '0' && cCharAt18 <= '9') {
                }
            }
            if (str.length() > 8 && str.length() < 19) {
                return new LocalDateTime(Long.parseLong(str), DateTimeZone.forTimeZone(com.alibaba.fastjson.a.defaultTimeZone));
            }
        } else {
            dateTimeFormatter2 = dateTimeFormatter;
        }
        return dateTimeFormatter2 == null ? LocalDateTime.parse(str) : LocalDateTime.parse(str, dateTimeFormatter2);
    }

    protected LocalDate g(String str, String str2, DateTimeFormatter dateTimeFormatter) {
        DateTimeFormatter dateTimeFormatter2;
        DateTimeFormatter dateTimeFormatter3;
        if (dateTimeFormatter == null) {
            if (str.length() == 8) {
                dateTimeFormatter = f16651l;
            }
            if (str.length() == 10) {
                char cCharAt = str.charAt(4);
                char cCharAt2 = str.charAt(7);
                if (cCharAt == '/' && cCharAt2 == '/') {
                    dateTimeFormatter = f16652m;
                }
                char cCharAt3 = str.charAt(0);
                char cCharAt4 = str.charAt(1);
                char cCharAt5 = str.charAt(2);
                char cCharAt6 = str.charAt(3);
                char cCharAt7 = str.charAt(5);
                if (cCharAt5 == '/' && cCharAt7 == '/') {
                    int i10 = ((cCharAt6 - '0') * 10) + (cCharAt - '0');
                    if (((cCharAt3 - '0') * 10) + (cCharAt4 - '0') > 12) {
                        dateTimeFormatter3 = f16656q;
                    } else if (i10 > 12) {
                        dateTimeFormatter3 = f16655p;
                    } else {
                        String country = Locale.getDefault().getCountry();
                        if (country.equals("US")) {
                            dateTimeFormatter3 = f16655p;
                        } else if (country.equals("BR") || country.equals("AU")) {
                            dateTimeFormatter3 = f16656q;
                        }
                    }
                    dateTimeFormatter = dateTimeFormatter3;
                } else if (cCharAt5 == '.' && cCharAt7 == '.') {
                    dateTimeFormatter = f16657r;
                } else if (cCharAt5 == '-' && cCharAt7 == '-') {
                    dateTimeFormatter = f16658s;
                }
            }
            if (str.length() >= 9) {
                char cCharAt8 = str.charAt(4);
                if (cCharAt8 == 24180) {
                    dateTimeFormatter2 = f16653n;
                } else if (cCharAt8 == 45380) {
                    dateTimeFormatter2 = f16654o;
                }
                dateTimeFormatter = dateTimeFormatter2;
            }
            for (int i11 = 0; i11 < str.length(); i11++) {
                char cCharAt9 = str.charAt(i11);
                if (cCharAt9 >= '0' && cCharAt9 <= '9') {
                }
            }
            if (str.length() > 8 && str.length() < 19) {
                return new LocalDateTime(Long.parseLong(str), DateTimeZone.forTimeZone(com.alibaba.fastjson.a.defaultTimeZone)).toLocalDate();
            }
        }
        return dateTimeFormatter == null ? LocalDate.parse(str) : LocalDate.parse(str, dateTimeFormatter);
    }

    protected DateTime h(String str, DateTimeFormatter dateTimeFormatter) {
        if (dateTimeFormatter == null) {
            if (str.length() == 19) {
                char cCharAt = str.charAt(4);
                char cCharAt2 = str.charAt(7);
                char cCharAt3 = str.charAt(10);
                char cCharAt4 = str.charAt(13);
                char cCharAt5 = str.charAt(16);
                if (cCharAt4 == ':' && cCharAt5 == ':') {
                    if (cCharAt == '-' && cCharAt2 == '-') {
                        if (cCharAt3 == 'T') {
                            dateTimeFormatter = f16660u;
                        } else if (cCharAt3 == ' ') {
                            dateTimeFormatter = f16641b;
                        }
                    } else if (cCharAt == '/' && cCharAt2 == '/') {
                        dateTimeFormatter = f16643d;
                    } else {
                        char cCharAt6 = str.charAt(0);
                        char cCharAt7 = str.charAt(1);
                        char cCharAt8 = str.charAt(2);
                        char cCharAt9 = str.charAt(3);
                        char cCharAt10 = str.charAt(5);
                        if (cCharAt8 == '/' && cCharAt10 == '/') {
                            int i10 = ((cCharAt9 - '0') * 10) + (cCharAt - '0');
                            if (((cCharAt6 - '0') * 10) + (cCharAt7 - '0') > 12) {
                                dateTimeFormatter = f16648i;
                            } else if (i10 > 12) {
                                dateTimeFormatter = f16647h;
                            } else {
                                String country = Locale.getDefault().getCountry();
                                if (country.equals("US")) {
                                    dateTimeFormatter = f16647h;
                                } else if (country.equals("BR") || country.equals("AU")) {
                                    dateTimeFormatter = f16648i;
                                }
                            }
                        } else if (cCharAt8 == '.' && cCharAt10 == '.') {
                            dateTimeFormatter = f16649j;
                        } else if (cCharAt8 == '-' && cCharAt10 == '-') {
                            dateTimeFormatter = f16650k;
                        }
                    }
                }
            }
            if (str.length() >= 17) {
                char cCharAt11 = str.charAt(4);
                if (cCharAt11 == 24180) {
                    dateTimeFormatter = str.charAt(str.length() - 1) == 31186 ? f16645f : f16644e;
                } else if (cCharAt11 == 45380) {
                    dateTimeFormatter = f16646g;
                }
            }
        }
        return dateTimeFormatter == null ? DateTime.parse(str) : DateTime.parse(str, dateTimeFormatter);
    }
}
