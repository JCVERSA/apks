package com.yandex.div.evaluable.types;

import com.hisavana.common.constant.ComConstants;
import defpackage.c74;
import defpackage.j1a;
import defpackage.y45;
import defpackage.yi5;
import java.util.Calendar;
import java.util.SimpleTimeZone;
import java.util.TimeZone;
import kotlin.LazyThreadSafetyMode;
import kotlin.b;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class DateTime implements Comparable {
    public static final a g = new a(null);
    public static final SimpleTimeZone h = new SimpleTimeZone(0, "UTC");
    public final long b;
    public final TimeZone c;
    public final yi5 d;
    public final int e;
    public final long f;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final String a(Calendar calendar) {
            y45.j(calendar, "c");
            return String.valueOf(calendar.get(1)) + '-' + j1a.x0(String.valueOf(calendar.get(2) + 1), 2, '0') + '-' + j1a.x0(String.valueOf(calendar.get(5)), 2, '0') + ' ' + j1a.x0(String.valueOf(calendar.get(11)), 2, '0') + ':' + j1a.x0(String.valueOf(calendar.get(12)), 2, '0') + ':' + j1a.x0(String.valueOf(calendar.get(13)), 2, '0');
        }

        public a() {
        }
    }

    public DateTime(long j, TimeZone timeZone) {
        y45.j(timeZone, "timezone");
        this.b = j;
        this.c = timeZone;
        this.d = b.b(LazyThreadSafetyMode.NONE, new c74() {
            {
                super(0);
            }

            @Override
            public final Calendar invoke() {
                Calendar calendar = Calendar.getInstance(DateTime.h);
                calendar.setTimeInMillis(this.this$0.e());
                return calendar;
            }
        });
        int rawOffset = timeZone.getRawOffset() / 60;
        this.e = rawOffset;
        this.f = j - ((long) (rawOffset * ComConstants.defScheduleTime));
    }

    @Override
    public int compareTo(DateTime dateTime) {
        y45.j(dateTime, "other");
        return y45.m(this.f, dateTime.f);
    }

    public final Calendar d() {
        return (Calendar) this.d.getValue();
    }

    public final long e() {
        return this.b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof DateTime) && this.f == ((DateTime) obj).f;
    }

    public final TimeZone f() {
        return this.c;
    }

    public int hashCode() {
        return Long.hashCode(this.f);
    }

    public String toString() {
        a aVar = g;
        Calendar calendarD = d();
        y45.i(calendarD, "calendar");
        return aVar.a(calendarD);
    }
}
