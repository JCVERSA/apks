package defpackage;

import android.util.JsonWriter;
import androidx.core.app.NotificationCompat;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.internal.util.zze;
import java.io.IOException;
import java.io.StringWriter;
import java.util.Iterator;
import java.util.List;

public final class dng {
    public final fy0 a;

    public dng(fy0 fy0Var) {
        this.a = fy0Var;
    }

    public final void a(List list, String str, String str2, Object... objArr) {
        if (((Boolean) b0f.a.e()).booleanValue()) {
            long jCurrentTimeMillis = this.a.currentTimeMillis();
            StringWriter stringWriter = new StringWriter();
            JsonWriter jsonWriter = new JsonWriter(stringWriter);
            try {
                jsonWriter.beginObject();
                jsonWriter.name("timestamp").value(jCurrentTimeMillis);
                jsonWriter.name("source").value(str);
                jsonWriter.name(NotificationCompat.CATEGORY_EVENT).value(str2);
                jsonWriter.name("components").beginArray();
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    jsonWriter.value(it.next().toString());
                }
                jsonWriter.endArray();
                jsonWriter.name("params").beginArray();
                int length = objArr.length;
                for (int i = 0; i < length; i++) {
                    Object obj = objArr[i];
                    jsonWriter.value(obj != null ? obj.toString() : null);
                }
                jsonWriter.endArray();
                jsonWriter.endObject();
                jsonWriter.flush();
                jsonWriter.close();
            } catch (IOException e) {
                int i2 = zze.zza;
                zzo.zzh("unable to log", e);
            }
            String strValueOf = String.valueOf(stringWriter.toString());
            int i3 = zze.zza;
            zzo.zzi("AD-DBG ".concat(strValueOf));
        }
    }
}
