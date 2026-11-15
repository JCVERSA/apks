package com.bykv.vk.openvk.preload.a.b;

public final class d {

    private static final int f19822a;

    static {
        String property = System.getProperty("java.version");
        int iA = a(property);
        if (iA == -1) {
            iA = b(property);
        }
        if (iA == -1) {
            iA = 6;
        }
        f19822a = iA;
    }

    private static int a(String str) {
        try {
            String[] strArrSplit = str.split("[._]");
            int i10 = Integer.parseInt(strArrSplit[0]);
            return (i10 != 1 || strArrSplit.length <= 1) ? i10 : Integer.parseInt(strArrSplit[1]);
        } catch (NumberFormatException unused) {
            return -1;
        }
    }

    private static int b(String str) {
        try {
            StringBuilder sb2 = new StringBuilder();
            for (int i10 = 0; i10 < str.length(); i10++) {
                char cCharAt = str.charAt(i10);
                if (!Character.isDigit(cCharAt)) {
                    break;
                }
                sb2.append(cCharAt);
            }
            return Integer.parseInt(sb2.toString());
        } catch (NumberFormatException unused) {
            return -1;
        }
    }

    public static int a() {
        return f19822a;
    }

    public static boolean b() {
        return f19822a >= 9;
    }
}
