package defpackage;

import android.net.Uri;
import android.os.Bundle;
import android.text.format.DateUtils;
import android.util.Log;
import androidx.core.app.NotificationCompat;
import com.blankj.utilcode.util.Utils;
import com.hunantv.imgo.net.ImgoErrorStatisticsData;
import com.tencent.mmkv.MMKV;
import com.transsion.athena.data.TrackData;
import com.transsion.dbdata.beans.media.MediaItem;
import com.transsion.dbdata.beans.media.PlayAudioData;
import com.transsion.dbdata.utils.SortUtil;
import com.transsion.privacy.MarkPointUtil;
import java.math.BigDecimal;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;

public abstract class p06 {
    public static final String a = pp3.b();
    public static final String[] b = {"auto pause", "loop list", "loop one", "auto play", "auto random"};
    public static final String[] c = {"loop list", "loop one", "random play"};
    public static final HashSet d;

    static {
        HashSet hashSet = new HashSet();
        d = hashSet;
        hashSet.add("video_play");
        hashSet.add("video_pause");
        hashSet.add("video_play_gesture_forward");
        hashSet.add("video_play_gesture_retreat");
        hashSet.add("video_play_gesture_volume");
        hashSet.add("video_play_gesture_brightness");
    }

    /* JADX WARN: Code duplicated, block: B:37:0x004f  */
    public static String A(int i) {
        String str;
        if (i == 1) {
            str = "vd_his_more_cl";
        } else if (i != 2) {
            str = "vd_nplaylist_list_vmore_cl";
            if (i == 3) {
                f0(null, "vd_nplaylist_list_vmore_cl", 9324L);
                str = "vd_filemg_vmore_cl";
            } else if (i == 13) {
                str = "vd_recent_playlist_amore_cl";
            } else if (i != 30) {
                if (i == 36) {
                    str = "vd_audio_filt_hide_more_cl";
                } else if (i == 41) {
                    str = "vd_recent_playlist_amore_cl";
                } else if (i == 53) {
                    str = "vd_mostlist_cl";
                } else if (i == 21) {
                    str = "vd_audiolist_amore_cl";
                } else if (i == 22) {
                    str = "vd_audio_folder_amore_cl";
                } else if (i == 25) {
                    str = "vd_albumlist_songlist_amore_cl";
                } else if (i == 26) {
                    str = "vd_artistlist_songlist_amore_cl";
                } else if (i == 32) {
                    str = "vd_recent_playlist_amore_cl";
                } else if (i != 33) {
                    str = "";
                }
            }
        } else {
            str = "vd_list_vmore_cl";
        }
        f0(null, str, 9324L);
        return str;
    }

    public static void B(int i, Boolean bool) {
        Bundle bundle = new Bundle();
        TrackData trackData = new TrackData();
        bundle.putString("order_by", s0(bool.booleanValue()));
        trackData.add("order_by", s0(bool.booleanValue()));
        if (i == 2) {
            q0(trackData, bundle, "vd_filemg_order_cl", 9324L);
            return;
        }
        if (i == 30) {
            q0(trackData, bundle, bool.booleanValue() ? "vd_nplaylist_list_order_cl" : "vd_nsonglist_list_order_cl", 9324L);
            return;
        }
        if (i == 33) {
            q0(trackData, bundle, "vd_favorite_order_cl", 9324L);
            return;
        }
        if (i == 21) {
            q0(trackData, bundle, "vd_audiolist_order_cl", 9324L);
            return;
        }
        if (i == 22) {
            q0(trackData, bundle, "vd_audio_folder_order_cl", 9324L);
        } else if (i == 25) {
            q0(trackData, bundle, "vd_albumlist_songlist_order_cl", 9324L);
        } else {
            if (i != 26) {
                return;
            }
            q0(trackData, bundle, "vd_artistlist_songlist_order_cl", 9324L);
        }
    }

    public static void C(long j) {
        int i = (int) (j / 1000);
        Bundle bundle = new Bundle();
        bundle.putInt("vd_video_uploads", i);
        TrackData trackData = new TrackData();
        trackData.add("vd_video_uploads", i);
        q0(trackData, bundle, "vd_video_uploads", 932460000069L);
    }

    public static void D(Bundle bundle, TrackData trackData, long j, long j2, String str, long j3) {
        int i = (int) ((j2 - j) / 1000);
        Log.d("MarkPointAnalysisUtils", "markPointOnPage " + i + str);
        bundle.putInt(str, i);
        trackData.add(str, i);
        q0(trackData, bundle, str, j3);
    }

    public static void E(MediaItem mediaItem, int i) {
        if (mediaItem != null) {
            Bundle bundle = new Bundle();
            TrackData trackData = new TrackData();
            Uri uri = mediaItem.getUri();
            if (uri != null) {
                bundle.putString("ana_url", uri.toString());
                trackData.add("ana_url", uri.toString());
            }
            bundle.putInt("ana_result", i);
            trackData.add("ana_result", i);
            r0(bundle, "vd_net_analysis");
            p0(trackData, "vd_net_analysis", 932460000066L);
        }
    }

    public static void F(MediaItem mediaItem, int i, String str, float f, boolean z, String str2, String str3, boolean z2) {
        if (mediaItem != null) {
            Bundle bundle = new Bundle();
            TrackData trackData = new TrackData();
            bundle.putString("vd_format", mediaItem.mineType);
            bundle.putString("from", str2);
            bundle.putString("name", mediaItem.displayName);
            bundle.putInt("vd_length", ((int) mediaItem.duration) / 1000);
            bundle.putDouble("vd_size", b(mediaItem.size));
            bundle.putInt("error_code", i);
            bundle.putString("Player core", d(z2));
            bundle.putString("play_statue", str3);
            bundle.putString("vd_format", mediaItem.mineType);
            bundle.putString("codec", str);
            bundle.putString("path", z ? mediaItem.originUrl : mediaItem.data);
            trackData.add("vd_format", mediaItem.mineType);
            trackData.add("error_code", i);
            trackData.add("from", str2);
            trackData.add("name", mediaItem.displayName);
            trackData.add("vd_length", ((int) mediaItem.duration) / 1000);
            trackData.add("vd_size", b(mediaItem.size));
            trackData.add("Player core", d(z2));
            trackData.add("play_statue", str3);
            trackData.add("vd_format", mediaItem.mineType);
            trackData.add("codec", str);
            trackData.add("path", z ? mediaItem.originUrl : mediaItem.data);
            if (z2) {
                bundle.putString("resolution", mediaItem.width + "x" + mediaItem.height);
                StringBuilder sb = new StringBuilder();
                sb.append(f);
                sb.append("");
                bundle.putString("fps", sb.toString());
                trackData.add("resolution", mediaItem.width + "x" + mediaItem.height);
                StringBuilder sb2 = new StringBuilder();
                sb2.append(f);
                sb2.append("");
                trackData.add("fps", sb2.toString());
            }
            q0(trackData, bundle, "vd_play_fail", 932460000028L);
        }
    }

    public static void G(float f) {
        Bundle bundle = new Bundle();
        TrackData trackData = new TrackData();
        bundle.putString("vd_speed", String.valueOf(f));
        trackData.add("vd_speed", String.valueOf(f));
        q0(trackData, bundle, "vd_cp_cl", 932460000005L);
    }

    public static void H(int i) {
        TrackData trackData = new TrackData();
        trackData.add("video_loop", i);
        trackData.add(hb0.KEY_NAME_BTN, "video_loop");
        Bundle bundle = new Bundle();
        bundle.putInt("video_loop", i);
        bundle.putString(hb0.KEY_NAME_BTN, "video_loop");
        q0(trackData, bundle, "vd_cp_cl", 932460000005L);
    }

    public static void I(int i) {
        Bundle bundle = new Bundle();
        TrackData trackData = new TrackData();
        bundle.putString("type", i == 1 ? "video" : "audio");
        trackData.add("type", i == 1 ? "video" : "audio");
        q0(trackData, bundle, "search_s_cl", 9324L);
    }

    public static void J(int i) {
        String str;
        Bundle bundle = new Bundle();
        TrackData trackData = new TrackData();
        String str2 = "tomp3";
        if (i == 1) {
            str = "video";
        } else {
            str = i == 2 ? "audio" : "tomp3";
        }
        bundle.putString("type", str);
        if (i == 1) {
            str2 = "video";
        } else if (i == 2) {
            str2 = "audio";
        }
        trackData.add("type", str2);
        q0(trackData, bundle, "search_cl", 9324L);
    }

    public static void K(String str) {
        TrackData trackData = new TrackData();
        trackData.add("name", str);
        Bundle bundle = new Bundle();
        bundle.putString("name", str);
        q0(trackData, bundle, "skin_setup_results", 932460000101L);
    }

    public static void L(String str, String str2) {
        Bundle bundle = new Bundle();
        TrackData trackData = new TrackData();
        bundle.putString("from", str);
        trackData.add("from", str);
        q0(trackData, bundle, str2, 9324L);
    }

    public static void M(boolean z) {
        String strG = g(z);
        Bundle bundle = new Bundle();
        TrackData trackData = new TrackData();
        bundle.putString("order_by", strG);
        trackData.add("order_by", strG);
        q0(trackData, bundle, "vd_list_order_cl", 932460000049L);
    }

    public static void N(String str, int i) {
        Bundle bundle = new Bundle();
        TrackData trackData = new TrackData();
        bundle.putString(hb0.KEY_NAME_MODE, str);
        trackData.add(hb0.KEY_NAME_MODE, str);
        if (i == 1) {
            q0(trackData, bundle, "vd_history_show_cl", 9324L);
            return;
        }
        if (i == 2) {
            q0(trackData, bundle, "vd_list_show_cl", 9324L);
        } else if (i == 3) {
            q0(trackData, bundle, "vd_filemg_show_cl", 9324L);
        } else {
            if (i != 30) {
                return;
            }
            q0(trackData, bundle, "vd_nplaylist_list_show_cl", 9324L);
        }
    }

    public static void O(int i) {
        Bundle bundle = new Bundle();
        TrackData trackData = new TrackData();
        bundle.putInt("status", i);
        trackData.add("status", i);
        q0(trackData, bundle, "version_cl", 9324L);
    }

    public static void P(String str, String str2, String str3) {
        Bundle bundle = new Bundle();
        TrackData trackData = new TrackData();
        bundle.putString("version", str);
        trackData.add("version", str);
        bundle.putString("oldversion", str2);
        trackData.add("oldversion", str2);
        q0(trackData, bundle, str3, 9324L);
    }

    public static void Q(String str, int i, boolean z) {
        Bundle bundle = new Bundle();
        TrackData trackData = new TrackData();
        bundle.putString(hb0.KEY_NAME_MODE, str);
        trackData.add(hb0.KEY_NAME_MODE, str);
        if (i == 2) {
            bundle.putString("order_by", s0(true));
            trackData.add("order_by", s0(true));
            bundle.putBoolean("new_label", z);
            trackData.add("new_label", z);
            q0(trackData, bundle, "vd_list_video_cl", 9324L);
            return;
        }
        if (i == 3) {
            q0(trackData, bundle, "vd_filemg_video_cl", 9324L);
        } else if (i == 14) {
            q0(trackData, bundle, "vd_short_video_cl", 9324L);
        } else {
            if (i != 30) {
                return;
            }
            q0(trackData, bundle, "vd_nplaylist_list_video_cl", 9324L);
        }
    }

    public static void R(String str) {
        Bundle bundle = new Bundle();
        TrackData trackData = new TrackData();
        bundle.putString("address", str);
        trackData.add("address", str);
        q0(trackData, bundle, "dl_brower_address_jump", 9324L);
    }

    public static void S(String str, String str2, String str3, String str4) {
        Bundle bundle = new Bundle();
        TrackData trackData = new TrackData();
        bundle.putString(NotificationCompat.CATEGORY_MESSAGE, str2);
        trackData.add(NotificationCompat.CATEGORY_MESSAGE, str2);
        if (str3 != null) {
            bundle.putString(hb0.KEY_NAME_MAINURL, str3);
            trackData.add(hb0.KEY_NAME_MAINURL, str3);
        }
        if (str4 != null) {
            bundle.putString("video_url", str4);
            trackData.add("video_url", str4);
        }
        q0(trackData, bundle, str, 9324L);
    }

    public static void T(int i, int i2) {
        Bundle bundle = new Bundle();
        TrackData trackData = new TrackData();
        int iAbs = Math.abs(i2 - i) / 1000;
        bundle.putInt("duration", iAbs);
        trackData.add("duration", iAbs);
        q0(trackData, bundle, i2 > i ? "vd_play_seekbar_forward" : "vd_play_seekbar_retreat", 9324L);
    }

    public static void U(int i) {
        Bundle bundle = new Bundle();
        TrackData trackData = new TrackData();
        bundle.putInt(hb0.KEY_NAME_NUM, i);
        trackData.add(hb0.KEY_NAME_NUM, i);
        q0(trackData, bundle, "setup_setuppage_max_s", 9324L);
    }

    public static void V(int i, int i2, int i3) {
        Bundle bundle = new Bundle();
        TrackData trackData = new TrackData();
        bundle.putInt("type", i);
        trackData.add("type", i);
        bundle.putInt("status_amount", i2);
        trackData.add("status_amount", i2);
        bundle.putInt("from", i3);
        trackData.add("from", i3);
        q0(trackData, bundle, "dl_brower_sniff_downloading_sniff_cl", 9324L);
    }

    public static void W(String str, String str2, String str3) {
        Bundle bundle = new Bundle();
        TrackData trackData = new TrackData();
        bundle.putString(NotificationCompat.CATEGORY_MESSAGE, str2);
        trackData.add(NotificationCompat.CATEGORY_MESSAGE, str2);
        bundle.putString("video_url", str3);
        trackData.add("video_url", str3);
        q0(trackData, bundle, str, 9324L);
    }

    public static void X(int i) {
        Bundle bundle = new Bundle();
        TrackData trackData = new TrackData();
        bundle.putInt("page_queue", i);
        trackData.add("page_queue", i);
        q0(trackData, bundle, "guide_startup_show", 9324L);
    }

    public static void Y(boolean z, String str, long j, String str2, String str3) {
        Bundle bundle = new Bundle();
        TrackData trackData = new TrackData();
        bundle.putString(hb0.KEY_NAME_SNIFF_RESULT_DOWNLOAD_RESOLUTION, str);
        bundle.putInt(ImgoErrorStatisticsData.AD_RES_PIC, z ? 1 : 0);
        bundle.putDouble(PlayAudioData.TAG_SIZE, b(j));
        bundle.putString("format", str2);
        bundle.putString("video_url", str3);
        trackData.add(hb0.KEY_NAME_SNIFF_RESULT_DOWNLOAD_RESOLUTION, str);
        trackData.add(ImgoErrorStatisticsData.AD_RES_PIC, z ? 1 : 0);
        trackData.add(PlayAudioData.TAG_SIZE, b(j));
        trackData.add("format", str2);
        trackData.add("video_url", str3);
        q0(trackData, bundle, "dl_brower_rp_vpage_dl_cl", 9324L);
    }

    public static void Z(int i, boolean z) {
        Bundle bundle = new Bundle();
        TrackData trackData = new TrackData();
        bundle.putInt("status", i);
        trackData.add("status", i);
        q0(trackData, bundle, z ? "vd_tab_right_slip" : "vd_tab_left_slip", 9324L);
    }

    public static void a(String str, boolean z, int i, int i2, boolean z2) {
        Bundle bundle = new Bundle();
        TrackData trackData = new TrackData();
        bundle.putString("from", str);
        bundle.putInt("data", z ? 1 : 0);
        bundle.putInt(hb0.KEY_NAME_NUM, i);
        bundle.putInt("breakpoint", i2);
        bundle.putInt("data_play", z2 ? 1 : 0);
        trackData.add("from", str);
        trackData.add("data", z ? 1 : 0);
        trackData.add(hb0.KEY_NAME_NUM, i);
        trackData.add("breakpoint", i2);
        trackData.add("data_play", z2 ? 1 : 0);
        q0(trackData, bundle, "setup_setuppage_show", 9324L);
    }

    public static void a0(String str, String str2, String str3) {
        TrackData trackData = new TrackData();
        trackData.add(str2, str3);
        Bundle bundle = new Bundle();
        bundle.putString(str2, str3);
        q0(trackData, bundle, str, 9324L);
    }

    public static double b(long j) {
        return new BigDecimal(j / 1048576.0d).setScale(2, 4).doubleValue();
    }

    public static void b0(String str, Map map) {
        TrackData trackData = new TrackData();
        Bundle bundle = new Bundle();
        if (map != null && map.keySet() != null) {
            for (String str2 : map.keySet()) {
                String strValueOf = String.valueOf(map.get(str2));
                trackData.add(str2, strValueOf);
                bundle.putString(str2, strValueOf);
            }
        }
        q0(trackData, bundle, str, 9324L);
    }

    public static String c() {
        int iD = w6c.d(Utils.a(), "audio_play_repeat_mode", 1);
        if (iD == 0) {
            return "";
        }
        int i = iD - 1;
        String[] strArr = c;
        return i >= strArr.length ? "" : strArr[i];
    }

    public static void c0(String str, String str2, long j) {
        Bundle bundle = new Bundle();
        TrackData trackData = new TrackData();
        bundle.putString("type", str);
        trackData.add("type", str);
        y0(str2, trackData, j);
    }

    public static String d(boolean z) {
        if (pp3.j()) {
            return "bsp";
        }
        return (pp3.w() && z) ? "vlc" : "system";
    }

    public static void d0(String str) {
        f0(null, str, 9324L);
    }

    public static String e(int i) {
        if (i == 1) {
            return "vd_history_video_cl";
        }
        if (i == 2) {
            return "vd_list_video_cl";
        }
        if (i == 3) {
            return "vd_filemg_video_cl";
        }
        if (i == 30) {
            return "vd_nplaylist_list_video_cl";
        }
        if (i != 35) {
            return i != 42 ? "0" : "PRIVACY_FILE_LIST";
        }
        return "dl_manager_downloaded_video_cl";
    }

    public static void e0(String str, String str2) {
        f0(str, str2, 9324L);
    }

    public static String f() {
        int iH = w6c.h(Utils.a());
        if (iH < 0) {
            return "";
        }
        String[] strArr = b;
        return iH <= strArr.length + (-1) ? strArr[iH] : "";
    }

    public static void f0(String str, String str2, long j) {
        Bundle bundle = new Bundle();
        TrackData trackData = new TrackData();
        if (str != null) {
            bundle.putString("action", str);
            trackData.add("action", str);
        }
        y0(str2, trackData, j);
    }

    public static String g(boolean z) {
        return SortUtil.f(z);
    }

    public static void g0(String str, String str2) {
    }

    public static void h(String str, String str2) {
        Bundle bundle = new Bundle();
        TrackData trackData = new TrackData();
        bundle.putString("from", str2);
        trackData.add("from", str2);
        q0(trackData, bundle, str, 9324L);
    }

    public static void h0(String str) {
        TrackData trackData = new TrackData();
        trackData.add(hb0.KEY_NAME_BTN, str);
        p0(trackData, "vd_audio_play", 9324L);
    }

    public static void i(boolean z) {
        Bundle bundle = new Bundle();
        TrackData trackData = new TrackData();
        bundle.putInt("data", z ? 1 : 0);
        trackData.add("data", z ? 1 : 0);
        q0(trackData, bundle, "setup_setuppage_data_cl", 9324L);
    }

    public static void i0(String str, String str2, boolean z) {
        TrackData trackData = new TrackData();
        trackData.add(z ? hb0.KEY_NAME_BTN : "status", str2);
        Bundle bundle = new Bundle();
        bundle.putString(z ? hb0.KEY_NAME_BTN : "status", str2);
        q0(trackData, bundle, str, 9324L);
    }

    public static void j(int i, int i2) {
        Bundle bundle = new Bundle();
        TrackData trackData = new TrackData();
        bundle.putInt("status", i);
        bundle.putInt("rotate_status", i2);
        trackData.add("status", i);
        trackData.add("rotate_status", i2);
        q0(trackData, bundle, "vd_cp_autorotate", 9324L);
    }

    public static void j0(String str) {
        if (d.contains(str)) {
            if (DateUtils.isToday(MMKV.p().i(str, 0L))) {
                return;
            } else {
                MMKV.p().u(str, System.currentTimeMillis());
            }
        }
        TrackData trackData = new TrackData();
        trackData.add(hb0.KEY_NAME_BTN, str);
        p0(trackData, "vd_cp_cl", 932460000005L);
    }

    public static void k(boolean z) {
        Bundle bundle = new Bundle();
        TrackData trackData = new TrackData();
        bundle.putInt("TYPE", !z ? 1 : 0);
        trackData.add("TYPE", !z ? 1 : 0);
        q0(trackData, bundle, "dl_bm_popup_cancel_cl", 9324L);
    }

    public static void k0(String str, String str2) {
        if (d.contains(str)) {
            if (DateUtils.isToday(MMKV.p().i(str, 0L))) {
                return;
            } else {
                MMKV.p().u(str, System.currentTimeMillis());
            }
        }
        TrackData trackData = new TrackData();
        trackData.add(hb0.KEY_NAME_BTN, str);
        if (!r0a.i(str2)) {
            trackData.add("act_from", str2);
        }
        p0(trackData, "vd_cp_cl", 932460000005L);
    }

    public static void l(boolean z) {
        Bundle bundle = new Bundle();
        TrackData trackData = new TrackData();
        bundle.putInt("TYPE", !z ? 1 : 0);
        trackData.add("TYPE", !z ? 1 : 0);
        q0(trackData, bundle, "dl_bm_popup_ok_cl", 9324L);
    }

    public static void l0(String str) {
        Log.d("MarkPointAnalysisUtils", "sendClickVdInnerClAthena " + str);
        TrackData trackData = new TrackData();
        trackData.add(hb0.KEY_NAME_BTN, str);
        p0(trackData, "vd_inner_cl", 932460000026L);
        g0(null, str);
    }

    public static void m(boolean z) {
        Bundle bundle = new Bundle();
        TrackData trackData = new TrackData();
        bundle.putInt("TYPE", !z ? 1 : 0);
        trackData.add("TYPE", !z ? 1 : 0);
        q0(trackData, bundle, "dl_bm_popup_show", 9324L);
    }

    public static void m0(String str, boolean z) {
        TrackData trackData = new TrackData();
        trackData.add(hb0.KEY_NAME_BTN, str);
        Bundle bundle = new Bundle();
        bundle.putString(hb0.KEY_NAME_BTN, str);
        if (z) {
            q0(trackData, bundle, "vd_noti_cl", 932460000025L);
        } else {
            q0(trackData, bundle, "vd_audio_noti_cl", 9324L);
        }
    }

    public static void n(boolean z, String str, String str2) {
        Bundle bundle = new Bundle();
        TrackData trackData = new TrackData();
        bundle.putInt("status", z ? 1 : 2);
        bundle.putString(hb0.KEY_NAME_MAINURL, str);
        bundle.putString("video_url", str2);
        trackData.add("status", z ? 1 : 2);
        trackData.add(hb0.KEY_NAME_MAINURL, str);
        trackData.add("video_url", str2);
        q0(trackData, bundle, "dl_brower_rp_c_adl_cl", 9324L);
    }

    public static void n0(String str, String str2, int i) {
        Bundle bundle = new Bundle();
        TrackData trackData = new TrackData();
        bundle.putInt(str2, i);
        trackData.add(str2, i);
        q0(trackData, bundle, str, 9324L);
    }

    public static void o(int i) {
        Bundle bundle = new Bundle();
        TrackData trackData = new TrackData();
        bundle.putInt("page_queue", i);
        trackData.add("page_queue", i);
        q0(trackData, bundle, "guide_dl_lp_close_cl", 9324L);
    }

    public static void o0(String str, String str2, String str3) {
        Bundle bundle = new Bundle();
        TrackData trackData = new TrackData();
        bundle.putString(str2, str3);
        trackData.add(str2, str3);
        q0(trackData, bundle, str, 9324L);
    }

    public static void p(int i) {
        Bundle bundle = new Bundle();
        TrackData trackData = new TrackData();
        bundle.putInt("page_queue", i);
        trackData.add("page_queue", i);
        q0(trackData, bundle, "guide_dl_lp_next_cl", 9324L);
    }

    public static void p0(TrackData trackData, String str, long j) {
        y0(str, trackData, j);
    }

    public static void q(String str, String str2) {
        Bundle bundle = new Bundle();
        TrackData trackData = new TrackData();
        bundle.putString(hb0.KEY_NAME_MAINURL, str);
        bundle.putString("video_url", str2);
        trackData.add(hb0.KEY_NAME_MAINURL, str);
        trackData.add("video_url", str2);
        q0(trackData, bundle, "dl_brower_rp_c_adl_swift", 9324L);
    }

    public static void q0(TrackData trackData, Bundle bundle, String str, long j) {
        y0(str, trackData, j);
    }

    public static void r() {
        q0(null, null, "vd_audio_mv_play_cl", 9324L);
    }

    public static void r0(Bundle bundle, String str) {
    }

    public static void s(int i, int i2) {
        Bundle bundle = new Bundle();
        TrackData trackData = new TrackData();
        bundle.putInt("duration", i);
        bundle.putInt("rotate_status", i2);
        trackData.add("duration", i);
        trackData.add("rotate_status", i2);
        q0(trackData, bundle, "vd_cp_lp_p", 9324L);
    }

    public static String s0(boolean z) {
        return SortUtil.g(z);
    }

    public static void t(float f) {
        Bundle bundle = new Bundle();
        TrackData trackData = new TrackData();
        bundle.putFloat("speed", f);
        trackData.add("speed", f);
        q0(trackData, bundle, "vd_cp_lp_disc_speed_select", 9324L);
    }

    public static void t0(String str, String str2) {
        TrackData trackData = new TrackData();
        Bundle bundle = new Bundle();
        trackData.add("file", str);
        bundle.putString("file", str);
        trackData.add("actfrom", str2);
        bundle.putString("actfrom", str2);
        q0(trackData, bundle, "vd_audio_addlist_cl", 9324L);
    }

    public static void u(int i, int i2) {
        Bundle bundle = new Bundle();
        TrackData trackData = new TrackData();
        if (i2 >= 5) {
            i2 = 5;
        }
        bundle.putInt("sort", i);
        bundle.putInt("number", i2);
        trackData.add("sort", i);
        trackData.add("number", i2);
        q0(trackData, bundle, "vd_lisi_history_cl", 9324L);
    }

    public static void u0(int i, String str, String str2) {
        TrackData trackData = new TrackData();
        Bundle bundle = new Bundle();
        trackData.add("favorite_statue", i);
        bundle.putString("favorite_statue", i + "");
        trackData.add("file", str);
        bundle.putString("file", str);
        trackData.add("actfrom", str2);
        bundle.putString("actfrom", str2);
        q0(trackData, bundle, "vd_audio_favorite_cl", 9324L);
    }

    public static void v(String str) {
        Bundle bundle = new Bundle();
        TrackData trackData = new TrackData();
        bundle.putString("time", str);
        trackData.add("time", str);
        q0(trackData, bundle, "vd_history_more_play", 9324L);
    }

    public static void v0(String str, boolean z) {
        String str2 = z ? "video" : "audio";
        TrackData trackData = new TrackData();
        Bundle bundle = new Bundle();
        trackData.add("audiofrom", str2);
        bundle.putString("audiofrom", str2);
        bundle.putString("actfrom", str);
        trackData.add("actfrom", str);
        q0(trackData, bundle, "vd_audio_duration_p", 9324L);
    }

    public static void w(int i, String str) {
        Bundle bundle = new Bundle();
        TrackData trackData = new TrackData();
        bundle.putString("path", str);
        bundle.putInt("audio_amount", i);
        trackData.add("path", str);
        trackData.add("audio_amount", i);
        q0(trackData, bundle, "vd_folder_play_cl", 932460000060L);
    }

    public static void w0(String str, boolean z, boolean z2) {
        String str2;
        if (z2) {
            str2 = "mv";
        } else {
            str2 = z ? "video" : "audio";
        }
        TrackData trackData = new TrackData();
        Bundle bundle = new Bundle();
        trackData.add("audiofrom", str2);
        bundle.putString("audiofrom", str2);
        bundle.putString("actfrom", str);
        trackData.add("actfrom", str);
        q0(trackData, bundle, "vd_audio_duration_p", 9324L);
    }

    public static void x(String str) {
        TrackData trackData = new TrackData();
        trackData.add("status", str);
        Bundle bundle = new Bundle();
        bundle.putString("status", str);
        q0(trackData, bundle, "breakpoint_play", 932460000099L);
    }

    public static void x0(long j, boolean z, boolean z2, String str, int i, int i2) {
        int i3 = (int) (j / 1000);
        String str2 = z2 ? "background" : "foreground";
        TrackData trackData = new TrackData();
        Bundle bundle = new Bundle();
        trackData.add("duration", i3);
        bundle.putInt("duration", i3);
        bundle.putInt("org_duration", i);
        trackData.add("org_duration", i);
        if (!z) {
            q0(trackData, bundle, "vd_audio_duration", 932460000063L);
            return;
        }
        trackData.add("play_type", str2);
        trackData.add("name", str);
        trackData.add("rotate_status", i2);
        bundle.putString("play_type", str2);
        bundle.putString("name", str);
        bundle.putInt("rotate_status", i2);
        q0(trackData, bundle, "vd_video_duration", 932460000062L);
    }

    public static String y(int i, boolean z) {
        return z(i, true, z);
    }

    public static void y0(String str, TrackData trackData, long j) {
        if (oa1.j()) {
            return;
        }
        MarkPointUtil.s(str, trackData, j);
    }

    public static String z(int i, boolean z, boolean z2) {
        String str;
        HashMap map = new HashMap();
        map.put("new_label", Boolean.valueOf(z2));
        if (i == 1) {
            str = "vd_history_more_play";
        } else if (i == 2) {
            str = "vd_list_video_cl";
        } else if (i == 3) {
            str = "vd_filemg_video_cl";
        } else if (i == 21) {
            str = "vd_all_play_cl";
        } else if (i == 30) {
            str = z ? "vd_nplaylist_list_video_cl" : "vd_nsonglist_list_songs_cl";
        } else if (i == 36) {
            str = "vd_audio_filt_hide_play";
        } else if (i != 25) {
            str = i != 26 ? "" : "vd_artistlist_songlist_songs_cl";
        } else {
            str = "vd_albumlist_songlist_songs_cl";
        }
        b0(str, map);
        return str;
    }
}
