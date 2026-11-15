package defpackage;

public abstract class i6d {
    public static boolean a(CharSequence charSequence) {
        return charSequence == null || charSequence.length() == 0;
    }

    public static boolean b(CharSequence charSequence, CharSequence charSequence2) {
        return c(charSequence, g(charSequence2));
    }

    public static boolean c(CharSequence charSequence, char[] cArr) {
        if (!a(charSequence) && !e(cArr)) {
            int length = charSequence.length();
            int length2 = cArr.length;
            int i = length - 1;
            int i2 = length2 - 1;
            for (int i3 = 0; i3 < length; i3++) {
                char cCharAt = charSequence.charAt(i3);
                for (int i4 = 0; i4 < length2; i4++) {
                    if (cArr[i4] == cCharAt) {
                        if (!Character.isHighSurrogate(cCharAt) || i4 == i2) {
                            return true;
                        }
                        if (i3 < i && cArr[i4 + 1] == charSequence.charAt(i3 + 1)) {
                            return true;
                        }
                    }
                }
            }
        }
        return false;
    }

    public static boolean d(CharSequence charSequence, CharSequence[] charSequenceArr) {
        boolean z = false;
        for (int i = 0; i < 2; i++) {
            z = z || charSequenceArr[i].equals(charSequence);
        }
        return z;
    }

    public static boolean e(char[] cArr) {
        return cArr == null || cArr.length == 0;
    }

    public static int f(CharSequence charSequence, CharSequence charSequence2) {
        int length = 0;
        if (a(charSequence) || a(charSequence2)) {
            return 0;
        }
        int i = 0;
        while (true) {
            int iIndexOf = charSequence.toString().indexOf(charSequence2.toString(), length);
            if (iIndexOf == -1) {
                return i;
            }
            i++;
            length = iIndexOf + charSequence2.length();
        }
    }

    public static char[] g(CharSequence charSequence) {
        if (charSequence instanceof String) {
            return ((String) charSequence).toCharArray();
        }
        int length = charSequence.length();
        char[] cArr = new char[charSequence.length()];
        for (int i = 0; i < length; i++) {
            cArr[i] = charSequence.charAt(i);
        }
        return cArr;
    }
}
