package defpackage;

import android.util.JsonReader;
import com.hisavana.common.tracking.TrackingKey;
import java.io.IOException;

public final class jmh {
    public String a;

    /* JADX WARN: Code duplicated, block: B:16:0x0036  */
    public jmh(JsonReader jsonReader) throws IOException {
        byte b;
        jsonReader.beginObject();
        String strNextString = "";
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            int iHashCode = strNextName.hashCode();
            if (iHashCode != -1724546052) {
                if (iHashCode == 3059181 && strNextName.equals(TrackingKey.CODE)) {
                    b = 0;
                } else {
                    b = -1;
                }
            } else if (strNextName.equals("description")) {
                b = 1;
            } else {
                b = -1;
            }
            if (b == 0) {
                jsonReader.nextInt();
            } else if (b != 1) {
                jsonReader.skipValue();
            } else {
                strNextString = jsonReader.nextString();
            }
        }
        jsonReader.endObject();
        this.a = strNextString;
    }

    public final String a() {
        return this.a;
    }
}
