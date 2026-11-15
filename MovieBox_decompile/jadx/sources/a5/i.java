package a5;

public class i {

    private final String[] f209a;

    private final int f210b;

    public i(int i10) {
        this.f210b = i10 - 1;
        this.f209a = new String[i10];
        a("$ref", 0, 4, 1185263);
        String str = com.alibaba.fastjson.a.DEFAULT_TYPE_KEY;
        a(str, 0, str.length(), com.alibaba.fastjson.a.DEFAULT_TYPE_KEY.hashCode());
    }

    private static String d(String str, int i10, int i11) {
        char[] cArr = new char[i11];
        str.getChars(i10, i11 + i10, cArr, 0);
        return new String(cArr);
    }

    public String a(String str, int i10, int i11, int i12) {
        return b(str, i10, i11, i12, false);
    }

    public String b(String str, int i10, int i11, int i12, boolean z10) {
        int i13 = this.f210b & i12;
        String str2 = this.f209a[i13];
        if (str2 == null) {
            if (i11 != str.length()) {
                str = d(str, i10, i11);
            }
            String strIntern = str.intern();
            this.f209a[i13] = strIntern;
            return strIntern;
        }
        if (i12 == str2.hashCode() && i11 == str2.length() && str.startsWith(str2, i10)) {
            return str2;
        }
        String strD = d(str, i10, i11);
        if (z10) {
            this.f209a[i13] = strD;
        }
        return strD;
    }

    public String c(char[] cArr, int i10, int i11, int i12) {
        int i13 = this.f210b & i12;
        String str = this.f209a[i13];
        if (str == null) {
            String strIntern = new String(cArr, i10, i11).intern();
            this.f209a[i13] = strIntern;
            return strIntern;
        }
        if (i12 == str.hashCode() && i11 == str.length()) {
            for (int i14 = 0; i14 < i11; i14++) {
                if (cArr[i10 + i14] == str.charAt(i14)) {
                }
            }
            return str;
        }
        return new String(cArr, i10, i11);
    }
}
