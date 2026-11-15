package com.google.firebase.crashlytics.internal.common;

public enum DeliveryMechanism {
    DEVELOPER(1),
    USER_SIDELOAD(2),
    TEST_DISTRIBUTION(3),
    APP_STORE(4);


    private final int f30309id;

    DeliveryMechanism(int i10) {
        this.f30309id = i10;
    }

    public static DeliveryMechanism determineFrom(String str) {
        return str != null ? APP_STORE : DEVELOPER;
    }

    public int getId() {
        return this.f30309id;
    }

    @Override
    public String toString() {
        return Integer.toString(this.f30309id);
    }
}
