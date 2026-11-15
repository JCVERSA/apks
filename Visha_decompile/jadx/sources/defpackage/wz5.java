package defpackage;

import android.text.TextUtils;
import android.util.Log;
import androidx.core.app.NotificationCompat;
import com.transsion.playercommon.data.SheetDialogParamsConstant;
import java.util.HashMap;
import java.util.Map;

public abstract class wz5 extends hb0 {
    public static long a;

    public static void A() {
        hb0.markDirect("vd_ott_nodata_show");
    }

    public static void B(long j, long j2, boolean z) {
        HashMap map = new HashMap();
        map.put("videoID", Long.valueOf(j));
        map.put(hb0.KEY_NAME_SERIALSID, Long.valueOf(j2));
        p06.b0(z ? "vd_ott_detail_tryopenvip_cl" : "vd_ott_detail_openvip_cl", map);
    }

    public static void C(long j, long j2, long j3, String str, long j4) {
        if (t(j)) {
            return;
        }
        HashMap map = new HashMap();
        map.put("duration", Integer.valueOf(f(j)));
        map.put("channelid", Long.valueOf(j2));
        map.put("topicid", Long.valueOf(j3));
        map.put("videoID", Long.valueOf(j4));
        map.put(hb0.KEY_NAME_SERIALSID, str);
        p06.b0("vd_ott_detail_stay_duration", map);
    }

    public static void D(long j, long j2, long j3) {
        if (t(j3)) {
            return;
        }
        HashMap map = new HashMap();
        map.put("videoID", Long.valueOf(j));
        map.put(hb0.KEY_NAME_SERIALSID, Long.valueOf(j2));
        map.put("duration", Long.valueOf(j3 / 1000));
        p06.b0("vd_ott_pause_duration", map);
    }

    public static void E() {
        hb0.markDirect("vd_ott_vip_buy_s_order_back_cl");
    }

    public static void F(String str, int i) {
        HashMap map = new HashMap();
        map.put(NotificationCompat.CATEGORY_MESSAGE, str);
        map.put("status", Integer.valueOf(i));
        p06.b0("vd_ott_vip_buy_c_billing_launch", map);
        p06.b0("vd_ott_vip_buy_c_google_connect", map);
    }

    public static void G(String str, String str2, String str3, int i) {
        HashMap map = new HashMap();
        map.put(NotificationCompat.CATEGORY_MESSAGE, str3);
        map.put("status", Integer.valueOf(i));
        map.put("order", str2);
        p06.b0(str, map);
    }

    public static void H(String str, String str2, String str3, String str4, int i) {
        HashMap map = new HashMap();
        map.put(NotificationCompat.CATEGORY_MESSAGE, str4);
        map.put("status", Integer.valueOf(i));
        map.put("type", str3);
        map.put("order", str2);
        p06.b0(str, map);
    }

    public static void I(String str) {
        HashMap map = new HashMap();
        map.put("order", str);
        p06.b0("vd_ott_vip_buy_c_cashier_show", map);
    }

    public static void J(String str, int i) {
        HashMap map = new HashMap();
        map.put("status", Integer.valueOf(i));
        map.put("order", str);
        p06.b0("vd_ott_vip_buy_c_vip_receive", map);
    }

    public static void K(String str, Map map) {
        p06.b0(str, map);
    }

    public static void L(String str, String str2) {
        HashMap map = new HashMap();
        map.put("order", str);
        map.put("sku", str2);
        p06.b0("vd_ott_vip_buy_c_skuid_get", map);
    }

    public static void M(long j, long j2, String str, String str2, String str3) {
        HashMap map = new HashMap();
        map.put("error", str);
        map.put(NotificationCompat.CATEGORY_EVENT, str3);
        map.put(hb0.KEY_NAME_SERIALSID, Long.valueOf(j));
        map.put("videoID", Long.valueOf(j2));
        map.put(hb0.KEY_NAME_SUB_ERROR_CODE, str2);
        p06.b0("vd_ott_detail_miniplayer_error", map);
    }

    public static void N(String str) {
        Log.i("playEvent", "vk playEvent: " + str);
        HashMap map = new HashMap();
        map.put(str, str);
        p06.b0("vd_ott_player_cl", map);
    }

    public static void O(String str, String str2) {
        Log.i("playEvent", "vk playEvent: " + str + ", " + str2);
        HashMap map = new HashMap();
        map.put(str, str2);
        p06.b0("vd_ott_player_cl", map);
    }

    public static void P(String str, long j, int i, int i2, long j2, long j3) {
        if (t(j)) {
            return;
        }
        HashMap map = new HashMap();
        map.put("duration", Long.valueOf(j));
        map.put("status", Integer.valueOf(i));
        if (i2 > -1) {
            map.put("admode", Integer.valueOf(i2));
        }
        map.put("videoID", Long.valueOf(j3));
        map.put(hb0.KEY_NAME_SERIALSID, Long.valueOf(j2));
        p06.b0(str, map);
    }

    public static void Q(boolean z, String str) {
        HashMap map = new HashMap();
        map.put(hb0.KEY_NAME_MODE, "video");
        map.put("videomode", str);
        p06.b0(z ? "vd_ott_player_playlist_show" : "vd_ott_player_playlist_cl", map);
    }

    public static void R(long j, long j2, String str, String str2) {
        HashMap map = new HashMap();
        map.put(hb0.KEY_NAME_SERIALSID, Long.valueOf(j));
        map.put("videoID", Long.valueOf(j2));
        map.put(hb0.KEY_NAME_SERIALSID, str);
        map.put("videoID", str2);
        p06.b0("vd_ott_player_playlist_cl", map);
    }

    public static Map S(long j, long j2, long j3, String str, long j4, long j5, long j6, String str2, String str3, String str4, String str5, String str6, String str7, String str8) {
        if (t(j)) {
            return null;
        }
        if (System.currentTimeMillis() - a <= 2000) {
            a = System.currentTimeMillis();
            return null;
        }
        HashMap map = new HashMap();
        map.put("duration", Integer.valueOf(f(j)));
        map.put("mini_duration", Integer.valueOf(f(j2)));
        map.put("pip_duration", Integer.valueOf(f(j3)));
        map.put("videoID", Long.valueOf(j4));
        map.put(hb0.KEY_NAME_SERIALSID, str);
        map.put("channelid", Long.valueOf(j5));
        map.put("topicid", Long.valueOf(j6));
        map.put("videoname", str2);
        map.put("topicname", str3);
        map.put("channelname", str4);
        map.put(SheetDialogParamsConstant.FROM_PAGE, "ott_tab_show");
        map.put(d06.u, str5);
        map.put("completion_rate", str6);
        map.put("source", str7);
        map.put(hb0.KEY_NAME_VK_SOURCE_ID, str8);
        if (ea.c.get(Long.valueOf(j6)) != null) {
            map.put("group_id", ea.c.get(Long.valueOf(j6)));
        }
        if (ea.b.get(Long.valueOf(j6)) != null) {
            map.put(d06.t, ea.b.get(Long.valueOf(j6)));
        }
        p06.b0("vd_ott_video_duration", map);
        return map;
    }

    public static void T(String str, String str2) {
        HashMap map = new HashMap();
        map.put("disrupt_event", str);
        map.put(NotificationCompat.CATEGORY_EVENT, str2);
        p06.b0("vd_ott_player_close", map);
    }

    public static void U(long j, long j2) {
        HashMap map = new HashMap();
        map.put("topicid", Long.valueOf(j));
        map.put("channelid", Long.valueOf(j2));
        p06.b0("vd_ott_video_algorithm_change", map);
    }

    public static void V(boolean z) {
        HashMap map = new HashMap();
        map.put("search", z ? "youtube" : "library");
        p06.b0("vd_ott_search_resultswitch_cl", map);
    }

    public static void W(boolean z, int i) {
        HashMap map = new HashMap();
        map.put("duration", Integer.valueOf(i));
        p06.b0(z ? "vd_ott_player_seekbar_forward" : "vd_ott_player_seekbar_retreat", map);
    }

    public static void X(long j, long j2, String str, int i, long j3, int i2, String str2, int i3, int i4, int i5, String str3, String str4) {
        HashMap map = new HashMap();
        map.put(hb0.KEY_NAME_SERIALSID, Long.valueOf(j));
        map.put("videoID", Long.valueOf(j2));
        map.put("fromcard", str);
        map.put("org_duration", Integer.valueOf(i));
        map.put("topicid", Long.valueOf(j3));
        map.put("topicsort", Integer.valueOf(i2));
        map.put("season", str2);
        map.put("ismulseason", Integer.valueOf(i3));
        map.put("ismulserial", Integer.valueOf(i4));
        map.put("isrelated", Integer.valueOf(i5));
        map.put("play_source", str3);
        map.put("vip", str4);
        p06.b0("vd_ott_detail_show", map);
    }

    public static void Y() {
        hb0.markDirect("vd_ott_detail_serial_morepage_show");
    }

    public static void Z(long j, long j2, long j3, long j4, int i, String str) {
        HashMap map = new HashMap();
        map.put(hb0.KEY_NAME_SERIALSID, Long.valueOf(j));
        map.put("videoID", Long.valueOf(j2));
        map.put("vd_length", Long.valueOf(j3));
        map.put("topicid", Long.valueOf(j4));
        map.put("topicsort", Integer.valueOf(i));
        map.put("play_source", str);
        p06.b0("vd_ott_player_show", map);
    }

    public static void a0(String str) {
        HashMap map = new HashMap();
        map.put("type", str);
        p06.b0("vd_ott_vip_submg_cancel", map);
    }

    public static void b() {
        hb0.markDirect("vd_ott_detail_allowcellular_cl");
    }

    public static void b0() {
        hb0.markDirect("vd_ott_vip_submg_jumpgp");
    }

    public static void c() {
        hb0.markDirect("vd_ott_detail_guide_back");
    }

    public static void c0() {
        hb0.markDirect("vd_ott_vip_submg_show");
    }

    public static void d() {
        hb0.markDirect("vd_ott_player_detail_rotation_gravity");
    }

    public static void d0(String str) {
        HashMap map = new HashMap();
        map.put("ccname", str);
        p06.b0("vd_ott_player_cc_cl", map);
    }

    public static void e(long j, long j2, long j3) {
        if (t(j3)) {
            return;
        }
        HashMap map = new HashMap();
        map.put("videoID", Long.valueOf(j));
        map.put(hb0.KEY_NAME_SERIALSID, Long.valueOf(j2));
        map.put("duration", Long.valueOf(j3));
        p06.b0("vd_ott_buffer_duration", map);
    }

    public static void e0(String str, long j, long j2) {
        if (System.currentTimeMillis() - a > 2000) {
            HashMap map = new HashMap();
            map.put("ccname", str);
            map.put("videoID", Long.valueOf(j2));
            map.put(hb0.KEY_NAME_SERIALSID, Long.valueOf(j));
            p06.b0("vd_ott_player_cc_more_cl", map);
        }
        a = System.currentTimeMillis();
    }

    public static int f(long j) {
        return (int) Math.ceil(j / 1000.0f);
    }

    public static void f0(String str) {
        HashMap map = new HashMap();
        map.put("ccname", str);
        p06.b0("vd_ott_player_cc_show", map);
    }

    public static void g() {
        hb0.markDirect("vd_ott_player_clarity_show");
    }

    public static void g0(String str, String str2, long j, int i) {
        HashMap map = new HashMap();
        map.put("labelname", str2);
        map.put("labelid", Integer.valueOf(i));
        map.put("videoID", Long.valueOf(j));
        p06.b0(str, map);
    }

    public static void h(String str) {
        HashMap map = new HashMap();
        map.put("clarityname", str);
        p06.b0("vd_ott_player_clarity_cl", map);
    }

    public static void h0(long j, String str, String str2, boolean z) {
        HashMap map = new HashMap();
        map.put("videoID", Long.valueOf(j));
        map.put("videoname", str);
        map.put("clipname", str2);
        p06.b0(!z ? "vd_ott_detail_clip_cl" : "vd_ott_player_clip_cl", map);
    }

    public static void i(String str, long j, long j2) {
        if (System.currentTimeMillis() - a > 2000) {
            HashMap map = new HashMap();
            map.put("clarityname", str);
            map.put("videoID", Long.valueOf(j2));
            map.put(hb0.KEY_NAME_SERIALSID, Long.valueOf(j));
            p06.b0("vd_ott_player_clarity_more_cl", map);
        }
        a = System.currentTimeMillis();
    }

    public static void i0() {
        hb0.markDirect("vd_ott_detail_clip_show");
    }

    public static void j() {
        hb0.markDirect("vd_ott_detail_serial_morepage_back");
    }

    public static void j0(String str, int i, int i2, String str2, String str3) {
        HashMap map = new HashMap();
        map.put("fromcard", str);
        map.put("org_duration", Integer.valueOf(i));
        map.put("isrelated", Integer.valueOf(i2));
        map.put("play_source", str2);
        map.put(hb0.KEY_NAME_VK_SOURCE_ID, str3);
        p06.b0("vd_ott_detail_show", map);
    }

    public static void k(int i, int i2, long j, long j2, String str) {
        HashMap map = new HashMap();
        map.put("serialcl", Integer.valueOf(i));
        map.put("serial", Integer.valueOf(i2));
        map.put(hb0.KEY_NAME_SERIALSID, Long.valueOf(j));
        map.put("videoID", Long.valueOf(j2));
        map.put("vip", str);
        p06.b0("vd_ott_detail_serial_cl", map);
    }

    public static void l() {
        hb0.markDirect("vd_ott_detail_serial_morebtn_cl");
    }

    public static void m(long j, long j2) {
        HashMap map = new HashMap();
        map.put("videoID", Long.valueOf(j));
        map.put(hb0.KEY_NAME_SERIALSID, Long.valueOf(j2));
        p06.b0("vd_ott_detail_information_cl", map);
    }

    public static void n() {
        hb0.markDirect("vd_ott_detail_information_back");
    }

    public static void o(long j) {
        HashMap map = new HashMap();
        map.put("seasonID", Long.valueOf(j));
        p06.b0("vd_ott_detail_season_cl", map);
    }

    public static void p(int i, long j, long j2, long j3, boolean z) {
        HashMap map = new HashMap();
        map.put("topicid", Long.valueOf(j));
        map.put("channelid", Long.valueOf(j2));
        map.put("videoID", Long.valueOf(j3));
        map.put("clickType", !z ? "add" : "cancel");
        p06.b0(i == 0 ? "vd_ott_detail_favorite_cl" : "vd_ott_topic_favorite_cl", map);
    }

    public static void q() {
        p06.d0("vd_ott_detail_player_rotation_gravity");
    }

    public static void r(String str) {
        HashMap map = new HashMap();
        map.put(str, str);
        p06.b0("vd_ott_detail_serial_morepage_cl", map);
    }

    public static void s(String str, int i) {
        HashMap map = new HashMap();
        map.put(str, Integer.valueOf(i));
        p06.b0("vd_ott_detail_serial_morepage_cl", map);
    }

    public static boolean t(long j) {
        return j > 604800000 || j <= 0 || f(j) <= 0;
    }

    public static void u() {
        hb0.markDirect("vd_ott_detail_information_show");
    }

    public static void v() {
        hb0.markDirect("vd_ott_nodata_retry_cl");
    }

    public static void w() {
        hb0.markDirect("vd_ott_userplay_start");
    }

    public static void x() {
        hb0.markDirect("vd_ott_videodetail_show");
    }

    public static void y(String str, long j, long j2) {
        if (System.currentTimeMillis() - a > 2000) {
            HashMap map = new HashMap();
            if (!TextUtils.isEmpty(str)) {
                map.put(str, str);
            }
            map.put("videoID", Long.valueOf(j2));
            map.put(hb0.KEY_NAME_SERIALSID, Long.valueOf(j));
            p06.b0("vd_ott_player_more_cl", map);
        }
        a = System.currentTimeMillis();
    }

    public static void z() {
        hb0.markDirect("vd_ott_player_more_show");
    }
}
