package defpackage;

import java.text.SimpleDateFormat;
import java.time.Instant;
import java.time.LocalDateTime;
import java.time.ZoneId;
import java.time.format.DateTimeFormatter;
import java.util.Date;
import java.util.Locale;

public abstract class ykb {
    public static final SimpleDateFormat a = new SimpleDateFormat("yyyyMMddHHmmss");
    public static final DateTimeFormatter b = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss.SSS").withLocale(Locale.US);

    public static long a() {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH");
        try {
            return simpleDateFormat.parse(simpleDateFormat.format(new Date(System.currentTimeMillis()))).getTime();
        } catch (Exception unused) {
            return 0L;
        }
    }

    public static String b(long j) {
        return a.format(new Date(j));
    }

    public static String c(long j) {
        return LocalDateTime.ofInstant(Instant.ofEpochMilli(j), ZoneId.systemDefault()).format(b);
    }
}
