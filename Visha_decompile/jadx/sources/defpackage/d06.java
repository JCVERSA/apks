package defpackage;

import android.os.Bundle;
import com.transsion.athena.data.TrackData;
import com.transsion.playercommon.data.SheetDialogParamsConstant;
import java.util.HashMap;
import java.util.Map;

public abstract class d06 extends hb0 {
    public static String a = "vd_ott_topic_show";
    public static String b = "vd_ott_topic_video_cl";
    public static String c = "vd_ott_video_cl";
    public static String d = "vd_ott_topic_more_cl";
    public static String e = "vd_ott_topic_more_slideinto";
    public static String f = "vd_ott_topic_sl";
    public static String g = "vd_ott_topic_expand_cl";
    public static String h = "vd_ott_topic_close_cl";
    public static String i = "vd_ott_cardset_snackbar_show";
    public static String j = "vd_ott_cardset_snackbar_cl";
    public static String k = "topicid";
    public static String l = "videosort";
    public static String m = "topicsort";
    public static String n = "channelid";
    public static String o = "ispay";
    public static String p = "topicmode";
    public static String q = "topicname";
    public static String r = "videoname";
    public static String s = "channelname";
    public static String t = "biz_group_id";
    public static String u = "requestId";

    public static void b(boolean z, long j2, int i2) {
        HashMap map = new HashMap();
        map.put("respondresult", !z ? "fail" : "success");
        map.put("duration", Long.valueOf(j2));
        map.put("respondtype", Integer.valueOf(i2));
        p06.b0("vd_ott_api_algorithm", map);
    }

    public static void c(long j2, String str, String str2) {
        Bundle bundle = new Bundle();
        TrackData trackData = new TrackData();
        bundle.putLong(k, j2);
        trackData.add(k, j2);
        bundle.putString(q, str);
        trackData.add(q, str);
        p06.q0(trackData, bundle, str2, 9324L);
    }

    public static Map d(long j2, long j3, int i2, String str, int i3, String str2, int i4, String str3) {
        HashMap map = new HashMap();
        map.put(k, Long.valueOf(j2));
        map.put(m, Integer.valueOf(i2));
        map.put(n, Long.valueOf(j3));
        map.put("video_list", str);
        map.put("is_more", Integer.valueOf(i3));
        map.put(SheetDialogParamsConstant.FROM_PAGE, "ott_tab_show");
        map.put(u, str3);
        if (ea.c.get(Long.valueOf(j2)) != null) {
            map.put("group_id", ea.c.get(Long.valueOf(j2)));
        }
        if (ea.b.get(Long.valueOf(j2)) != null) {
            map.put(t, ea.b.get(Long.valueOf(j2)));
        }
        map.put("recommend_part", Integer.valueOf(i4));
        p06.b0(a, map);
        return map;
    }

    public static void e(long j2, long j3, String str) {
        Bundle bundle = new Bundle();
        TrackData trackData = new TrackData();
        bundle.putLong(k, j2);
        trackData.add(k, j2);
        bundle.putLong(n, j3);
        trackData.add(n, j3);
        p06.q0(trackData, bundle, str, 9324L);
    }

    public static void f(long j2, long j3, String str) {
        Bundle bundle = new Bundle();
        TrackData trackData = new TrackData();
        bundle.putLong(n, j2);
        trackData.add(n, j2);
        bundle.putLong(k, j3);
        trackData.add(k, j3);
        bundle.putString(q, str);
        trackData.add(q, str);
        p06.q0(trackData, bundle, f, 9324L);
    }

    public static Map g(long j2, long j3, int i2, int i3, long j4, String str, int i4, int i5, String str2, String str3, String str4, String str5) {
        HashMap map = new HashMap();
        map.put(k, Long.valueOf(j2));
        map.put("videoID", Long.valueOf(j3));
        map.put(l, Integer.valueOf(i2));
        map.put(m, Integer.valueOf(i3));
        map.put(n, Long.valueOf(j4));
        map.put(q, str);
        map.put(o, hb0.checkPayType(i4));
        map.put(p, hb0.checkHorizontalFlag(i5));
        map.put(r, str2);
        map.put(s, str3);
        map.put(t, str4);
        map.put(u, str5);
        if (ea.b.get(Long.valueOf(j2)) != null) {
            map.put(t, ea.b.get(Long.valueOf(j2)));
        }
        p06.b0(b, map);
        return map;
    }

    public static void h(long j2, long j3, String str, int i2) {
        HashMap map = new HashMap();
        map.put("videoID", Long.valueOf(j3));
        map.put("from", str);
        map.put("isvip", Integer.valueOf(i2));
        if (j2 != 0 && ea.b.get(Long.valueOf(j2)) != null) {
            map.put(t, ea.b.get(Long.valueOf(j2)));
        }
        if (j2 != 0 && ea.c.get(Long.valueOf(j2)) != null) {
            map.put("group_id", ea.c.get(Long.valueOf(j2)));
        }
        p06.b0(c, map);
    }

    public static void i(String str, String str2) {
        HashMap map = new HashMap();
        map.put(hb0.KEY_NAME_VK_SOURCE_ID, str);
        map.put("from", str2);
        p06.b0(c, map);
    }
}
