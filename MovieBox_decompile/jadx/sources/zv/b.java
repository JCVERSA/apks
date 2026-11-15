package zv;

import java.text.SimpleDateFormat;
import java.util.TimeZone;
import kotlin.jvm.internal.Intrinsics;

public final class b {

    public static final b f76932a = new b();

    private b() {
    }

    public final String a(long j10) {
        SimpleDateFormat simpleDateFormat = j10 >= 3600000 ? new SimpleDateFormat("H:mm:ss") : new SimpleDateFormat("mm:ss");
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("GMT+0:00"));
        String str = simpleDateFormat.format(Long.valueOf(j10));
        Intrinsics.g(str, "format(...)");
        return str;
    }
}
