package com.bytedance.adsdk.Sj.sP.HiB;

public class Sj {
    public static boolean EjP(char c10) {
        return '+' == c10 || '-' == c10 || '*' == c10 || '/' == c10 || '%' == c10 || '=' == c10 || '>' == c10 || '<' == c10 || '!' == c10 || '&' == c10 || '|' == c10 || '?' == c10 || ':' == c10;
    }

    public static boolean Sj(char c10) {
        return c10 == ' ';
    }

    public static boolean TKC(char c10) {
        return c10 >= '0' && c10 <= '9';
    }

    public static boolean sP(char c10) {
        if (c10 < 'A' || c10 > 'Z') {
            return c10 >= 'a' && c10 <= 'z';
        }
        return true;
    }
}
