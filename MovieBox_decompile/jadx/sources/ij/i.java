package ij;

import java.text.DecimalFormat;

public abstract class i {
    public static final String a(int i10) {
        return "E" + new DecimalFormat("00").format(Integer.valueOf(i10));
    }

    public static final String b(int i10, int i11, Integer num) {
        DecimalFormat decimalFormat = new DecimalFormat("00");
        boolean z10 = (num != null && num.intValue() == 2) || (num != null && num.intValue() == 3) || (num != null && num.intValue() == 6);
        if (num != null && num.intValue() == 5) {
            return "Lesson " + i10;
        }
        if (i11 <= 0) {
            return (z10 ? "E" : "Ch") + decimalFormat.format(Integer.valueOf(i10));
        }
        return "S" + decimalFormat.format(Integer.valueOf(i11)) + (z10 ? " E" : " Ch") + decimalFormat.format(Integer.valueOf(i10));
    }

    public static final String c(int i10, boolean z10) {
        return (z10 ? " E" : " Ch") + new DecimalFormat("00").format(Integer.valueOf(i10));
    }

    public static final String d(String str) {
        if (str == null || str.length() == 0) {
            return "";
        }
        return " · " + str;
    }
}
