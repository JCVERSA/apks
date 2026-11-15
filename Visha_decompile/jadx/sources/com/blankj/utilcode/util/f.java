package com.blankj.utilcode.util;

public abstract class f {
    public static final String a = System.getProperty("line.separator");

    public static class a {
        public int a;
        public String b;
        public String c;

        public a(int i, String str, String str2) {
            this.a = i;
            this.b = str;
            this.c = str2;
        }

        public String toString() {
            return "result: " + this.a + "\nsuccessMsg: " + this.b + "\nerrorMsg: " + this.c;
        }
    }

    public static a a(String str, boolean z) {
        return b(new String[]{str}, z, true);
    }

    public static a b(String[] strArr, boolean z, boolean z2) {
        return c(strArr, null, z, z2);
    }

    public static a c(String[] strArr, String[] strArr2, boolean z, boolean z2) {
        return new a(0, "", "");
    }
}
