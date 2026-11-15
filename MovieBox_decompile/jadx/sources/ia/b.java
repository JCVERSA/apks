package ia;

import android.text.TextUtils;

final class b {

    public final int f62003a;

    public final int f62004b;

    public final int f62005c;

    public final int f62006d;

    public final int f62007e;

    private b(int i10, int i11, int i12, int i13, int i14) {
        this.f62003a = i10;
        this.f62004b = i11;
        this.f62005c = i12;
        this.f62006d = i13;
        this.f62007e = i14;
    }

    public static b a(String str) {
        com.google.android.exoplayer2.util.a.a(str.startsWith("Format:"));
        String[] strArrSplit = TextUtils.split(str.substring(7), ",");
        int i10 = -1;
        int i11 = -1;
        int i12 = -1;
        int i13 = -1;
        for (int i14 = 0; i14 < strArrSplit.length; i14++) {
            String strE = com.google.common.base.a.e(strArrSplit[i14].trim());
            strE.hashCode();
            switch (strE) {
                case "end":
                    i11 = i14;
                    break;
                case "text":
                    i13 = i14;
                    break;
                case "start":
                    i10 = i14;
                    break;
                case "style":
                    i12 = i14;
                    break;
            }
        }
        if (i10 == -1 || i11 == -1 || i13 == -1) {
            return null;
        }
        return new b(i10, i11, i12, i13, strArrSplit.length);
    }
}
