package l3;

import android.text.TextUtils;

final class a {

    public final int f65593a;

    public final int f65594b;

    public final int f65595c;

    public final int f65596d;

    public final int f65597e;

    private a(int i10, int i11, int i12, int i13, int i14) {
        this.f65593a = i10;
        this.f65594b = i11;
        this.f65595c = i12;
        this.f65596d = i13;
        this.f65597e = i14;
    }

    public static a a(String str) {
        androidx.media3.common.util.a.a(str.startsWith("Format:"));
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
        return new a(i10, i11, i12, i13, strArrSplit.length);
    }
}
