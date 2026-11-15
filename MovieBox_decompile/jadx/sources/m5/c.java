package m5;

import com.cloud.tmc.miniutils.constant.TimeConstants;

public class c {

    public int f66266a;

    public c(String str, String str2) {
        int i10;
        int i11;
        int i12;
        int i13;
        if (str.equalsIgnoreCase("hh:mm:ss,ms")) {
            int i14 = Integer.parseInt(str2.substring(0, 2));
            this.f66266a = Integer.parseInt(str2.substring(9, 12)) + (Integer.parseInt(str2.substring(6, 8)) * 1000) + (Integer.parseInt(str2.substring(3, 5)) * 60000) + (i14 * TimeConstants.HOUR);
            return;
        }
        if (!str.equalsIgnoreCase("h:mm:ss.cs")) {
            if (str.equalsIgnoreCase("h:m:s:f/fps")) {
                String[] strArrSplit = str2.split("/");
                float f10 = Float.parseFloat(strArrSplit[1]);
                String[] strArrSplit2 = strArrSplit[0].split(":");
                int i15 = Integer.parseInt(strArrSplit2[0]);
                this.f66266a = ((int) ((Integer.parseInt(strArrSplit2[3]) * 1000) / f10)) + (Integer.parseInt(strArrSplit2[2]) * 1000) + (Integer.parseInt(strArrSplit2[1]) * 60000) + (i15 * TimeConstants.HOUR);
                return;
            }
            return;
        }
        String[] strArrSplit3 = str2.split(":");
        if (strArrSplit3.length == 4) {
            i12 = Integer.parseInt(strArrSplit3[0]);
            i10 = Integer.parseInt(strArrSplit3[1]);
            i11 = Integer.parseInt(strArrSplit3[2]);
            i13 = Integer.parseInt(strArrSplit3[3]);
        } else {
            int i16 = Integer.parseInt(str2.substring(0, 1));
            i10 = Integer.parseInt(str2.substring(2, 4));
            int i17 = Integer.parseInt(str2.substring(5, 7));
            int i18 = Integer.parseInt(str2.substring(8, 10));
            i11 = i17;
            i12 = i16;
            i13 = i18;
        }
        this.f66266a = (i13 * 10) + (i11 * 1000) + (i10 * 60000) + (i12 * TimeConstants.HOUR);
    }
}
