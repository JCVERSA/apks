package v7;

import d8.c;

public class b implements a {
    private static String b(String str) {
        StringBuilder sb2 = new StringBuilder(str.length() + 10);
        String[] strArrSplit = str.split(c.f58921a);
        int length = strArrSplit.length;
        for (int i10 = 0; i10 < length; i10++) {
            if (i10 != 0) {
                sb2.append(c.f58921a);
            }
            String str2 = strArrSplit[i10];
            sb2.append((char) 9553);
            sb2.append(str2);
        }
        return sb2.toString();
    }

    @Override
    public String a(String[] strArr) {
        if (strArr == null || strArr.length == 0) {
            return "";
        }
        String[] strArr2 = new String[strArr.length];
        int i10 = 0;
        for (String str : strArr) {
            if (str != null) {
                strArr2[i10] = str;
                i10++;
            }
        }
        if (i10 == 0) {
            return "";
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("╔═══════════════════════════════════════════════════════════════════════════════════════════════════");
        sb2.append(c.f58921a);
        for (int i11 = 0; i11 < i10; i11++) {
            sb2.append(b(strArr2[i11]));
            if (i11 != i10 - 1) {
                sb2.append(c.f58921a);
                sb2.append("╟───────────────────────────────────────────────────────────────────────────────────────────────────");
                sb2.append(c.f58921a);
            } else {
                sb2.append(c.f58921a);
                sb2.append("╚═══════════════════════════════════════════════════════════════════════════════════════════════════");
            }
        }
        return sb2.toString();
    }
}
