package mi;

public abstract class a {
    public static String a(long j10) {
        long j11;
        long j12;
        Object objValueOf;
        Object objValueOf2;
        String str;
        long j13 = j10 / 1000;
        try {
            long j14 = j13 % 3600;
            if (j13 > 3600) {
                j12 = j13 / 3600;
                if (j14 == 0) {
                    j11 = 0;
                    j14 = 0;
                } else if (j14 > 60) {
                    j11 = j14 / 60;
                    j14 = j14 % 60 != 0 ? j14 % 60 : 0L;
                } else {
                    j11 = 0;
                }
            } else {
                j11 = j13 / 60;
                if (j13 % 60 != 0) {
                    j14 = j13 % 60;
                    j12 = 0;
                } else {
                    j12 = 0;
                    j14 = 0;
                }
            }
            StringBuilder sb2 = new StringBuilder();
            if (j12 < 10) {
                objValueOf = "0" + j12;
            } else {
                objValueOf = Long.valueOf(j12);
            }
            sb2.append(objValueOf);
            sb2.append(":");
            String string = sb2.toString();
            StringBuilder sb3 = new StringBuilder();
            if (j11 < 10) {
                objValueOf2 = "0" + j11;
            } else {
                objValueOf2 = Long.valueOf(j11);
            }
            sb3.append(objValueOf2);
            sb3.append(":");
            String string2 = sb3.toString();
            if (j14 < 10) {
                str = "0" + j14;
            } else {
                str = j14 + "";
            }
            if (j12 == 0) {
                string = "";
            }
            if (j12 == 0 && j11 == 60) {
                string = "01:";
                string2 = "00:";
            }
            return string + string2 + str;
        } catch (Exception unused) {
            return "";
        }
    }
}
