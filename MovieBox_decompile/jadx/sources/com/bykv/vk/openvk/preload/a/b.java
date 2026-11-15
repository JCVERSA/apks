package com.bykv.vk.openvk.preload.a;

import java.lang.reflect.Field;
import java.util.Locale;

/* JADX WARN: $VALUES field not found */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
public abstract class b implements c {

    public static final b f19694a = new b("IDENTITY") {
        {
            byte b10 = 0;
        }

        @Override
        public final String a(Field field) {
            return field.getName();
        }
    };

    private static b f19695b = new b("UPPER_CAMEL_CASE") {
        {
            int i10 = 1;
            byte b10 = 0;
        }

        @Override
        public final String a(Field field) {
            return b.a(field.getName());
        }
    };

    private static b f19696c = new b("UPPER_CAMEL_CASE_WITH_SPACES") {
        {
            int i10 = 2;
            byte b10 = 0;
        }

        @Override
        public final String a(Field field) {
            return b.a(b.a(field.getName(), " "));
        }
    };

    private static b f19697d = new b("LOWER_CASE_WITH_UNDERSCORES") {
        {
            int i10 = 3;
            byte b10 = 0;
        }

        @Override
        public final String a(Field field) {
            return b.a(field.getName(), "_").toLowerCase(Locale.ENGLISH);
        }
    };

    private static b f19698e = new b("LOWER_CASE_WITH_DASHES") {
        {
            int i10 = 4;
            byte b10 = 0;
        }

        @Override
        public final String a(Field field) {
            return b.a(field.getName(), "-").toLowerCase(Locale.ENGLISH);
        }
    };

    private static b f19699f = new b("LOWER_CASE_WITH_DOTS") {
        {
            int i10 = 5;
            byte b10 = 0;
        }

        @Override
        public final String a(Field field) {
            return b.a(field.getName(), ".").toLowerCase(Locale.ENGLISH);
        }
    };

    private b(String str, int i10) {
        super(str, i10);
    }

    static String a(String str, String str2) {
        StringBuilder sb2 = new StringBuilder();
        int length = str.length();
        for (int i10 = 0; i10 < length; i10++) {
            char cCharAt = str.charAt(i10);
            if (Character.isUpperCase(cCharAt) && sb2.length() != 0) {
                sb2.append(str2);
            }
            sb2.append(cCharAt);
        }
        return sb2.toString();
    }

    b(String str, int i10, byte b10) {
        this(str, i10);
    }

    static String a(String str) {
        int length = str.length() - 1;
        int i10 = 0;
        while (!Character.isLetter(str.charAt(i10)) && i10 < length) {
            i10++;
        }
        char cCharAt = str.charAt(i10);
        if (Character.isUpperCase(cCharAt)) {
            return str;
        }
        char upperCase = Character.toUpperCase(cCharAt);
        if (i10 == 0) {
            return upperCase + str.substring(1);
        }
        return str.substring(0, i10) + upperCase + str.substring(i10 + 1);
    }
}
