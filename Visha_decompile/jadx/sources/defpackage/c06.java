package defpackage;

import android.os.Bundle;
import com.transsion.athena.data.TrackData;

public abstract class c06 extends hb0 {
    public static long a = 0;
    public static String b = "requestId";
    public static int c;
    public static int d;
    public static int e;

    public static void b(int i, String str, String str2) {
        hb0.markTrackThree("vd_ott_h5channel_show", "channelid", Integer.valueOf(i), "channelname", str, "url", str2);
    }

    public static void c(int i, String str, int i2, String str2) {
        hb0.markTrackFour("vd_ott_h5channel_stay_duration", "channelid", Integer.valueOf(i), "channelname", str, "duration", Integer.valueOf(i2), "url", str2);
    }

    public static void d(boolean z) {
        int i = c;
        if (i == 0) {
            c = i + 1;
            hb0.markTrackSingle("vd_ott_show", "status_0", Integer.valueOf(z ? 1 : 0));
        }
    }

    public static void e(boolean z) {
        int i = e;
        if (i == 0) {
            e = i + 1;
            hb0.markTrackSingle("vd_ott_real_show_3", "login_status", Integer.valueOf(z ? 1 : 0));
        }
    }

    public static void f(int i, int i2, long j, String str) {
        Bundle bundle = new Bundle();
        TrackData trackData = new TrackData();
        bundle.putInt("bannerid", i);
        trackData.add("bannerid", i);
        bundle.putInt("bannersort", i2);
        trackData.add("bannersort", i2);
        bundle.putLong("channelid", j);
        trackData.add("channelid", j);
        p06.q0(trackData, bundle, str, 9324L);
    }

    public static void g(int i, int i2, long j, long j2, String str, int i3, String str2) {
        Bundle bundle = new Bundle();
        TrackData trackData = new TrackData();
        bundle.putInt("bannerid", i);
        trackData.add("bannerid", i);
        bundle.putInt("bannersort", i2);
        trackData.add("bannersort", i2);
        bundle.putLong("channelid", j);
        trackData.add("channelid", j);
        bundle.putLong("topicid", j2);
        trackData.add("topicid", j2);
        bundle.putString("sourceid", str);
        trackData.add("sourceid", str);
        bundle.putInt("videoID", i3);
        trackData.add("videoID", i3);
        p06.q0(trackData, bundle, str2, 9324L);
    }

    public static void h(int i, int i2, int i3, String str, String str2) {
        Bundle bundle = new Bundle();
        TrackData trackData = new TrackData();
        bundle.putInt("channelid", i2);
        trackData.add("channelid", i2);
        bundle.putInt("channelsort", i3);
        trackData.add("channelsort", i3);
        bundle.putString("channelname", str);
        trackData.add("channelname", str);
        bundle.putInt("topic_layout", i);
        trackData.add("topic_layout", i);
        p06.q0(trackData, bundle, str2, 9324L);
    }

    public static void i(int i, int i2, int i3) {
        Bundle bundle = new Bundle();
        TrackData trackData = new TrackData();
        bundle.putInt("channelid", i2);
        trackData.add("channelid", i2);
        bundle.putInt("channelq", i3);
        trackData.add("channelq", i3);
        bundle.putInt("duration", i);
        trackData.add("duration", i);
        p06.q0(trackData, bundle, "vd_ott_channel_stay_duration", 9324L);
    }

    public static void j(int i, String str) {
        Bundle bundle = new Bundle();
        TrackData trackData = new TrackData();
        bundle.putInt("channelid", i);
        trackData.add("channelid", i);
        bundle.putString("channelname", str);
        trackData.add("channelname", str);
        p06.q0(trackData, bundle, "vd_ott_morevideobottom_cl", 9324L);
    }

    public static void k(long j, String str, long j2, String str2, long j3, int i) {
        Bundle bundle = new Bundle();
        TrackData trackData = new TrackData();
        bundle.putLong("videoID", j);
        bundle.putString("videoname", str);
        bundle.putLong("channelid", j2);
        bundle.putString(b, str2);
        bundle.putLong("topicid", j3);
        bundle.putInt("ispay", i);
        trackData.add("ispay", i);
        trackData.add("videoID", j);
        trackData.add("videoname", str);
        trackData.add("channelid", j2);
        trackData.add(b, str2);
        trackData.add("topicid", j3);
        p06.q0(trackData, bundle, "vd_ott_video_show", 9324L);
    }

    public static void l(int i) {
        Bundle bundle = new Bundle();
        TrackData trackData = new TrackData();
        bundle.putInt("clicktype", i);
        trackData.add("clicktype", i);
        p06.q0(trackData, bundle, "vd_ott_cl", 9324L);
    }

    public static void m(String str, String str2, long j, String str3) {
        Bundle bundle = new Bundle();
        TrackData trackData = new TrackData();
        bundle.putString(hb0.KEY_NAME_VK_SOURCE_ID, str);
        bundle.putString("videoname", str2);
        bundle.putLong("channelid", j);
        bundle.putString(b, str3);
        trackData.add(hb0.KEY_NAME_VK_SOURCE_ID, str);
        trackData.add("videoname", str2);
        trackData.add("channelid", j);
        trackData.add(b, str3);
        p06.q0(trackData, bundle, "vd_ott_video_show", 9324L);
    }

    public static void n(boolean z, int i, int i2, int i3, String str) {
        if (z) {
            h(i, i2, i3, str, "vd_ott_channel_show");
            a = System.currentTimeMillis();
        } else if (a != 0) {
            int iCurrentTimeMillis = ((int) (System.currentTimeMillis() - a)) / 1000;
            if (iCurrentTimeMillis > 0) {
                i(iCurrentTimeMillis, i2, i3);
            }
            a = 0L;
        }
    }

    public static void o(long j, String str) {
    }

    public static void p(boolean z) {
        int i = d;
        if (i == 0) {
            d = i + 1;
            hb0.markTrackSingle("vd_ott_real_show", "login_status", Integer.valueOf(z ? 1 : 0));
        }
    }

    public static void q(String str, int i) {
        hb0.markTrackTwo("vd_ott_tab_refresh", "refreshtype", str, "channelid", Integer.valueOf(i));
    }

    public static void r(int i, String str) {
        hb0.markTrackTwo("vd_ott_ttchannel_show", "channelid", Integer.valueOf(i), "channelname", str);
    }

    public static void s(int i, String str, int i2) {
        hb0.markTrackThree("vd_ott_ttchannel_stay_duration", "channelid", Integer.valueOf(i), "channelname", str, "duration", Integer.valueOf(i2));
    }

    public static void t() {
        c = 0;
        d = 0;
        e = 0;
    }
}
