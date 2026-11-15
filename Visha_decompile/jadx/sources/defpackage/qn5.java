package defpackage;

import java.time.LocalDateTime;
import java.time.ZoneId;

public final class qn5 {
    public static final qn5 a = new qn5();

    /* JADX WARN: Type inference failed for: r1v3, types: [java.time.ZonedDateTime] */
    /* JADX WARN: Type inference failed for: r1v4, types: [java.time.ZonedDateTime] */
    /* JADX WARN: Type inference failed for: r1v5, types: [java.lang.Object, java.time.LocalDateTime] */
    public final LocalDateTime a(String str) {
        y45.j(str, "zoneId");
        ?? localDateTime = LocalDateTime.now().atZone(ZoneId.systemDefault()).withZoneSameInstant(ZoneId.of(str)).toLocalDateTime();
        y45.i(localDateTime, "toLocalDateTime(...)");
        return localDateTime;
    }
}
