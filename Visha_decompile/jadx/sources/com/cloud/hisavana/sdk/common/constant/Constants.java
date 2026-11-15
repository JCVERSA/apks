package com.cloud.hisavana.sdk.common.constant;

public abstract class Constants {
    public static String a = "0";
    public static String b = "smsto:";
    public static String c = "sms_body";

    public enum AdDisplayRule {
        UNIVERSAL,
        RU
    }

    public enum CURRENCY {
        RMB,
        USD
    }

    public static boolean a(int i) {
        return i == 3 || i == 5 || i == 1 || i == 8;
    }
}
