package com.google.android.material.datepicker;

import java.util.Calendar;
import java.util.TimeZone;

class r {

    private static final r f28085c = new r(null, null);

    private final Long f28086a;

    private final TimeZone f28087b;

    private r(Long l10, TimeZone timeZone) {
        this.f28086a = l10;
        this.f28087b = timeZone;
    }

    static r c() {
        return f28085c;
    }

    Calendar a() {
        return b(this.f28087b);
    }

    Calendar b(TimeZone timeZone) {
        Calendar calendar = timeZone == null ? Calendar.getInstance() : Calendar.getInstance(timeZone);
        Long l10 = this.f28086a;
        if (l10 != null) {
            calendar.setTimeInMillis(l10.longValue());
        }
        return calendar;
    }
}
