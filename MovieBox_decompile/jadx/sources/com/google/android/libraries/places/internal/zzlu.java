package com.google.android.libraries.places.internal;

public final class zzlu {
    public static String zza(String str) {
        int length = str.length();
        int i10 = 0;
        while (i10 < length) {
            if (zzb(str.charAt(i10))) {
                char[] charArray = str.toCharArray();
                while (i10 < length) {
                    char c10 = charArray[i10];
                    if (zzb(c10)) {
                        charArray[i10] = (char) (c10 ^ ' ');
                    }
                    i10++;
                }
                return String.valueOf(charArray);
            }
            i10++;
        }
        return str;
    }

    public static boolean zzb(char c10) {
        return c10 >= 'A' && c10 <= 'Z';
    }
}
