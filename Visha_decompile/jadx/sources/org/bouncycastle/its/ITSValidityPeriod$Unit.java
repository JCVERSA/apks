package org.bouncycastle.its;

public enum ITSValidityPeriod$Unit {
    microseconds(0),
    milliseconds(1),
    seconds(2),
    minutes(3),
    hours(4),
    sixtyHours(5),
    years(6);

    private final int unitTag;

    ITSValidityPeriod$Unit(int i) {
        this.unitTag = i;
    }
}
