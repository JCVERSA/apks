package io.appmetrica.analytics.impl;

public enum M8 {
    NONE(0),
    EXTERNALLY_ENCRYPTED_EVENT_CRYPTER(1),
    AES_VALUE_ENCRYPTION(2);

    public final int a;

    M8(int i) {
        this.a = i;
    }

    public static M8 a(Integer num) {
        if (num != null) {
            for (M8 m8 : values()) {
                if (m8.a == num.intValue()) {
                    return m8;
                }
            }
        }
        return NONE;
    }
}
