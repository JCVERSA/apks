package defpackage;

import android.os.Bundle;
import com.transsion.athena.data.TrackData;

public abstract class et7 extends hb0 {
    public static void b(long j, int i, long j2, String str, String str2, String str3) {
        Bundle bundle = new Bundle();
        TrackData trackData = new TrackData();
        bundle.putLong("topicid", j);
        trackData.add("topicid", j);
        bundle.putInt("labelsort", i);
        trackData.add("labelsort", i);
        bundle.putLong("channelid", j2);
        trackData.add("channelid", j2);
        bundle.putString("labelname", str);
        trackData.add("labelname", str);
        bundle.putString("channelname", str2);
        trackData.add("channelname", str2);
        bundle.putString("topicname", str3);
        trackData.add("topicname", str3);
        p06.q0(trackData, bundle, "vd_ott_label_cl", 9324L);
    }

    public static void c(String str, String str2) {
        Bundle bundle = new Bundle();
        TrackData trackData = new TrackData();
        bundle.putString("topicname", str);
        trackData.add("topicname", str);
        bundle.putString("labelname", str2);
        trackData.add("labelname", str2);
        p06.q0(trackData, bundle, "vd_ott_label_more_cl", 9324L);
    }

    public static void d(long j, String str) {
        Bundle bundle = new Bundle();
        TrackData trackData = new TrackData();
        bundle.putLong("topicid", j);
        trackData.add("topicid", j);
        bundle.putString("topicname", str);
        trackData.add("topicname", str);
        p06.q0(trackData, bundle, "vd_ott_label_show", 9324L);
    }

    public static void e(String str, int i, int i2, String str2, String str3) {
        Bundle bundle = new Bundle();
        TrackData trackData = new TrackData();
        bundle.putString("videoname", str);
        trackData.add("videoname", str);
        bundle.putInt("videoID", i);
        trackData.add("videoID", i);
        bundle.putInt("videosort", i2);
        trackData.add("videosort", i2);
        bundle.putString("labelname", str2);
        trackData.add("labelname", str2);
        bundle.putString("ispay", str3);
        trackData.add("ispay", str3);
        p06.q0(trackData, bundle, "vd_ott_label_more_video_cl", 9324L);
    }
}
