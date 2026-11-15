package defpackage;

import android.content.Context;
import android.content.SharedPreferences;
import android.util.Log;
import androidx.media3.common.C;
import com.transsion.widgetslib.widget.timepicker.OSDateTimePicker;
import java.text.SimpleDateFormat;
import java.util.Date;
import org.json.JSONObject;

public abstract class v4d {
    public static long a;

    public static void a(Context context) {
        String str;
        if (System.currentTimeMillis() - a > C.DEFAULT_MAX_SEEK_TO_PREVIOUS_POSITION_MS) {
            a = System.currentTimeMillis();
            try {
                SharedPreferences sharedPreferences = context.getSharedPreferences("QT", 0);
                SharedPreferences.Editor editorEdit = sharedPreferences.edit();
                JSONObject jSONObjectH = hld.H(context);
                long jOptLong = jSONObjectH.optLong("instime", 0L);
                long jOptLong2 = jSONObjectH.optLong("uptime", 0L);
                long j = sharedPreferences.getLong("lastUpdateTime20230825", 0L);
                if (jOptLong == jOptLong2) {
                    str = "4";
                } else {
                    str = jOptLong2 != j ? "2" : "1";
                }
                editorEdit.putLong("lastUpdateTime20230825", jOptLong2);
                Log.i("truth", "QT_STATUS:" + str + " installTime:" + jOptLong + " updateTime:" + jOptLong2 + " lastUpdateTime:" + j);
                String string = sharedPreferences.getString("__truthinfo2dd__", "");
                String str2 = new SimpleDateFormat(OSDateTimePicker.FORMAT_Y_M_D).format(new Date());
                if (!str.equals("1") || !str2.equals(string)) {
                    editorEdit.putString("__truthinfo2dd__", str2);
                    s4d.c(context, str);
                }
                editorEdit.apply();
            } catch (Throwable th) {
                System.err.println("QtruthExcetion");
                th.printStackTrace();
            }
        }
    }
}
