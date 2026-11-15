package defpackage;

import android.util.Log;
import com.cloud.hisavana.sdk.data.bean.response.AdResponseBody;
import java.text.SimpleDateFormat;
import java.util.Date;

public abstract class ie9 {
    public static void a(AdResponseBody adResponseBody) {
        if (adResponseBody == null || adResponseBody.getData() == null) {
            return;
        }
        try {
            Date date = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss SSS Z").parse(adResponseBody.getData().getTime());
            o9.e().q("services_time_difference_value", System.currentTimeMillis() - (date == null ? 0L : date.getTime()));
        } catch (Exception e) {
            ikd.b().e(Log.getStackTraceString(e));
        }
    }
}
