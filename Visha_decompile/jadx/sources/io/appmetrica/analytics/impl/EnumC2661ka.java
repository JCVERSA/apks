package io.appmetrica.analytics.impl;

public enum EnumC2661ka {
    UNKNOWN(0),
    FIRST_OCCURRENCE(1),
    NON_FIRST_OCCURENCE(2);

    public final int a;

    EnumC2661ka(int i) {
        this.a = i;
    }

    public static EnumC2661ka a(Integer num) {
        if (num != null) {
            for (EnumC2661ka enumC2661ka : values()) {
                if (enumC2661ka.a == num.intValue()) {
                    return enumC2661ka;
                }
            }
        }
        return UNKNOWN;
    }
}
