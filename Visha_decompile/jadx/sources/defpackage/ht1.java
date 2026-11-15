package defpackage;

import com.yandex.div.evaluable.types.DateTime;
import java.util.Calendar;
import java.util.Date;

public abstract class ht1 {
    public static final Calendar a(DateTime dateTime) {
        y45.j(dateTime, "<this>");
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeZone(dateTime.f());
        calendar.setTimeInMillis(dateTime.e());
        y45.i(calendar, "calendar");
        return calendar;
    }

    public static final Date b(DateTime dateTime) {
        y45.j(dateTime, "<this>");
        return new Date(dateTime.e() - ((long) dateTime.f().getRawOffset()));
    }
}
