package org.schabi.newpipe.extractor.localization;

import java.io.Serializable;
import java.time.OffsetDateTime;
import java.time.ZoneOffset;
import java.util.Calendar;
import java.util.GregorianCalendar;

public class DateWrapper implements Serializable {
    private final boolean isApproximation;
    private final OffsetDateTime offsetDateTime;

    @Deprecated
    public DateWrapper(Calendar calendar) {
        this(calendar, false);
    }

    @Deprecated
    public Calendar date() {
        return GregorianCalendar.from(this.offsetDateTime.toZonedDateTime());
    }

    public boolean isApproximation() {
        return this.isApproximation;
    }

    public OffsetDateTime offsetDateTime() {
        return this.offsetDateTime;
    }

    @Deprecated
    public DateWrapper(Calendar calendar, boolean z) {
        this(OffsetDateTime.ofInstant(calendar.toInstant(), ZoneOffset.UTC), z);
    }

    public DateWrapper(OffsetDateTime offsetDateTime) {
        this(offsetDateTime, false);
    }

    public DateWrapper(OffsetDateTime offsetDateTime, boolean z) {
        this.offsetDateTime = offsetDateTime.withOffsetSameInstant(ZoneOffset.UTC);
        this.isApproximation = z;
    }
}
