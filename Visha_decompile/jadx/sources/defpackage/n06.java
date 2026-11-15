package defpackage;

import android.os.Bundle;
import com.transsion.athena.data.TrackData;

public abstract class n06 {
    public static void a() {
        p06.q0(new TrackData(), new Bundle(), "vd_most_playlist_inner_cl", 9324L);
    }

    public static void b(int i) {
        Bundle bundle = new Bundle();
        TrackData trackData = new TrackData();
        trackData.add("audio_amount", i);
        bundle.putInt("audio_amount", i);
        p06.q0(trackData, bundle, "vd_most_playlist_show_p", 9324L);
    }
}
