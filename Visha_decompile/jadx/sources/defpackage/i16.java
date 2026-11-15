package defpackage;

import android.util.Log;
import com.hunantv.media.player.libnative.ImgoMediaPlayerLib;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.collections.a;

public final class i16 {
    public static final i16 a = new i16();

    public static final Map a(String str, String str2, String str3) {
        i16 i16Var = a;
        String strM = i16Var.m(str2);
        LinkedHashMap linkedHashMapO = a.o(abb.a(ImgoMediaPlayerLib.OnNativeInvokeListener.ARG_PLAYER_EVENT_TYPE_INT, i16Var.m(str)), abb.a("status", strM));
        if (y45.e(strM, "fail")) {
            linkedHashMapO.put("fail_type", i16Var.m(str3));
        }
        return linkedHashMapO;
    }

    public static final Map b(String str, String str2, String str3, String str4) {
        i16 i16Var = a;
        return a.o(abb.a("doc_id", i16Var.m(str)), abb.a("req_id", i16Var.m(str2)), abb.a("dt", i16Var.m(str3)), abb.a("country", i16Var.m(str4)));
    }

    public static final Map c(String str, String str2, String str3, String str4, long j, int i) {
        LinkedHashMap linkedHashMap = new LinkedHashMap(b(str, str2, str3, str4));
        linkedHashMap.put("duration", String.valueOf(Math.max(0L, j)));
        linkedHashMap.put("percent", String.valueOf(i));
        return linkedHashMap;
    }

    public static final void f(String str, String str2, String str3) {
        Map mapA = a(str, str2, str3);
        Log.d("MarkTtShortVideo", "visha_tt_action_log_result " + mapA);
        hb0.markTrackMap("visha_tt_action_log_result", mapA);
    }

    public static final void g(String str, String str2, String str3, String str4) {
        a.d("visha_tt_client_show", str, str2, str3, str4);
    }

    public static final void h(String str, String str2, String str3, String str4, long j, int i) {
        a.e("visha_tt_video_over_auto", str, str2, str3, str4, j, i);
    }

    public static final void i(String str, String str2, String str3, String str4, long j, int i) {
        a.e("visha_tt_video_over_draw", str, str2, str3, str4, j, i);
    }

    public static final void j(String str, String str2, String str3, String str4) {
        a.d("visha_tt_video_play_auto", str, str2, str3, str4);
    }

    public static final void k(String str, String str2, String str3, String str4) {
        a.d("visha_tt_video_play_draw", str, str2, str3, str4);
    }

    public static final void l(String str, String str2, long j, long j2) {
        Log.d("MarkTtShortVideo", "markTtVideoView " + str + StringUtils.COMMA + str2 + StringUtils.COMMA + j + ",," + j2);
        if (j2 <= 1) {
            return;
        }
        i16 i16Var = a;
        hb0.markKV("visha_tt_video_view", new hb0.a("video_id", i16Var.m(str)), new hb0.a("video_type", i16Var.m(str2)), new hb0.a("video_dur", String.valueOf(Math.max(0L, j))), new hb0.a("watch_dur", String.valueOf(Math.max(0L, j2))));
    }

    public final void d(String str, String str2, String str3, String str4, String str5) {
        Map mapB = b(str2, str3, str4, str5);
        Log.d("MarkTtShortVideo", str + " " + mapB);
        hb0.markKV(str, new hb0.a("doc_id", a.m(mapB, "doc_id")), new hb0.a("req_id", a.m(mapB, "req_id")), new hb0.a("dt", a.m(mapB, "dt")), new hb0.a("country", a.m(mapB, "country")));
    }

    public final void e(String str, String str2, String str3, String str4, String str5, long j, int i) {
        Map mapC = c(str2, str3, str4, str5, j, i);
        Log.d("MarkTtShortVideo", str + " " + mapC);
        hb0.markKV(str, new hb0.a("doc_id", a.m(mapC, "doc_id")), new hb0.a("req_id", a.m(mapC, "req_id")), new hb0.a("dt", a.m(mapC, "dt")), new hb0.a("country", a.m(mapC, "country")), new hb0.a("duration", a.m(mapC, "duration")), new hb0.a("percent", a.m(mapC, "percent")));
    }

    public final String m(String str) {
        return str == null ? "" : str;
    }
}
