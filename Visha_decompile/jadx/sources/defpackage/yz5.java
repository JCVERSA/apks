package defpackage;

import android.os.Bundle;
import com.transsion.athena.data.TrackData;

public abstract class yz5 extends hb0 {
    public static String a = "vd_ott_videostartplaying";
    public static String b = "vd_ott_player_janky";
    public static String c = "vd_ott_channel_video_duration";
    public static String d = "videoID";
    public static String e = "duration";
    public static String f = "channelid";
    public static String g = "topicid";
    public static String h = "banner";
    public static String i = "topic";
    public static String j = "live";
    public static long k;
    public static long l;
    public static long m;
    public static long n;

    public static String b(int i2) {
        if (i2 == 5) {
            return j;
        }
        if (i2 == 1) {
            return h;
        }
        return i2 == 7 ? i : i;
    }

    public static void c(long j2, long j3, long j4, long j5, String str) {
        Bundle bundle = new Bundle();
        TrackData trackData = new TrackData();
        bundle.putLong(e, j2);
        bundle.putLong(d, j3);
        bundle.putLong(f, j4);
        bundle.putLong(g, j5);
        bundle.putString("type", str);
        trackData.add(e, j2);
        trackData.add(d, j3);
        trackData.add(f, j4);
        trackData.add(g, j5);
        trackData.add("type", str);
        p06.q0(trackData, bundle, c, 9324L);
    }

    public static void d(long j2, long j3, String str, String str2) {
        Bundle bundle = new Bundle();
        TrackData trackData = new TrackData();
        bundle.putLong(e, j2);
        bundle.putLong(f, j3);
        bundle.putString("type", str);
        bundle.putString(hb0.KEY_NAME_VK_SOURCE_ID, str2);
        trackData.add(e, j2);
        trackData.add(f, j3);
        trackData.add("type", str);
        trackData.add(hb0.KEY_NAME_VK_SOURCE_ID, str2);
        p06.q0(trackData, bundle, c, 9324L);
    }

    public static void e(long j2, long j3, String str, long j4, long j5, long j6, String str2, String str3, String str4, String str5) {
        wz5.S(j2, j3, k, str, j4, j5, j6, str2, str3, str4, str5, "", "5", null);
    }

    public static void f() {
        n = System.currentTimeMillis();
    }

    public static void g() {
        l = System.currentTimeMillis();
    }

    public static void h(long j2) {
        m = System.currentTimeMillis() - n;
        hb0.markTrackTwo(b, d, Long.valueOf(j2), e, Long.valueOf(m));
    }

    public static void i() {
        k = System.currentTimeMillis() - l;
    }
}
