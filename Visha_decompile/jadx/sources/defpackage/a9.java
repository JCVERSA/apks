package defpackage;

import android.os.Bundle;
import com.transsion.athena.data.TrackData;

public abstract class a9 {
    public static void a(String str, int i, String str2) {
        Bundle bundle = new Bundle();
        TrackData trackData = new TrackData();
        bundle.putInt("ad_id", i);
        trackData.add("ad_id", i);
        if (str != null) {
            bundle.putString("duration", str);
            trackData.add("duration", str);
        }
        p06.y0(str2, trackData, 9324L);
    }

    public static void b(String str, int i, String str2) {
        Bundle bundle = new Bundle();
        TrackData trackData = new TrackData();
        if (str != null) {
            bundle.putString("redirect_url", str);
            trackData.add("redirect_url", str);
        }
        bundle.putInt("ad_id", i);
        trackData.add("ad_id", i);
        p06.y0(str2, trackData, 9324L);
    }
}
