package defpackage;

import com.hisavana.common.constant.ComConstants;
import io.appmetrica.analytics.coreutils.internal.StringUtils;

public class nna {
    public int a;

    public nna(String str, String str2) {
        if ("hh:mm:ss,ms".equalsIgnoreCase(str)) {
            int i = Integer.parseInt(str2.substring(0, 2));
            this.a = Integer.parseInt(str2.substring(9, 12)) + (Integer.parseInt(str2.substring(6, 8)) * 1000) + (Integer.parseInt(str2.substring(3, 5)) * ComConstants.defScheduleTime) + (i * 3600000);
            return;
        }
        if ("h:mm:ss.cs".equalsIgnoreCase(str)) {
            int i2 = Integer.parseInt(str2.substring(0, 1));
            this.a = (Integer.parseInt(str2.substring(8, 10)) * 10) + (Integer.parseInt(str2.substring(5, 7)) * 1000) + (Integer.parseInt(str2.substring(2, 4)) * ComConstants.defScheduleTime) + (i2 * 3600000);
            return;
        }
        if ("h:m:s:f/fps".equalsIgnoreCase(str)) {
            String[] strArrSplit = str2.split("/");
            float f = Float.parseFloat(strArrSplit[1]);
            String[] strArrSplit2 = strArrSplit[0].split(StringUtils.PROCESS_POSTFIX_DELIMITER);
            int i3 = Integer.parseInt(strArrSplit2[0]);
            this.a = ((int) ((Integer.parseInt(strArrSplit2[3]) * 1000) / f)) + (Integer.parseInt(strArrSplit2[2]) * 1000) + (Integer.parseInt(strArrSplit2[1]) * ComConstants.defScheduleTime) + (i3 * 3600000);
        }
    }
}
