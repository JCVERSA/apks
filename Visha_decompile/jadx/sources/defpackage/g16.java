package defpackage;

import android.os.Bundle;
import com.transsion.athena.data.TrackData;

public abstract class g16 extends hb0 {
    public static void b(long j, long j2, int i, int i2, String str) {
        Bundle bundle = new Bundle();
        TrackData trackData = new TrackData();
        bundle.putLong("topicid", j);
        trackData.add("topicid", j);
        bundle.putInt("videonum", i);
        trackData.add("videonum", i);
        bundle.putLong("videoID", j2);
        trackData.add("videoID", j2);
        bundle.putInt("datatype", i2);
        trackData.add("datatype", i2);
        bundle.putString("ispay", str);
        trackData.add("ispay", str);
        p06.q0(trackData, bundle, "vd_ott_topic_more_video_cl", 9324L);
    }

    public static void c(long j, int i) {
        Bundle bundle = new Bundle();
        TrackData trackData = new TrackData();
        bundle.putLong("topicid", j);
        trackData.add("topicid", j);
        bundle.putInt("datatype", i);
        trackData.add("datatype", i);
        p06.q0(trackData, bundle, "vd_ott_topic_more_show", 9324L);
    }

    public static void d(long j, float f, int i) {
        Bundle bundle = new Bundle();
        TrackData trackData = new TrackData();
        bundle.putLong("topicid", j);
        trackData.add("topicid", j);
        bundle.putFloat("duration", f);
        trackData.add("duration", f);
        bundle.putInt("topicq", i);
        trackData.add("topicq", i);
        p06.q0(trackData, bundle, "vd_ott_topic_stay_duration", 9324L);
    }
}
