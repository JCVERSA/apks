package defpackage;

import android.os.Bundle;
import com.transsion.athena.data.TrackData;

public abstract class m06 {
    public static void a(String str) {
        Bundle bundle = new Bundle();
        TrackData trackData = new TrackData();
        trackData.add("keyword", str);
        bundle.putString("keyword", str);
        p06.q0(trackData, bundle, "vd_audio_aicall_execute", 9324L);
    }

    public static void b() {
        p06.q0(new TrackData(), new Bundle(), "vd_audio_aicall_receive", 9324L);
    }

    public static void c(String str) {
        Bundle bundle = new Bundle();
        TrackData trackData = new TrackData();
        trackData.add("status", str);
        bundle.putString("status", str);
        p06.q0(trackData, bundle, "vd_audio_aicall_result", 9324L);
    }
}
