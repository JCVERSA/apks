package defpackage;

import android.os.Bundle;
import com.hunantv.imgo.net.ImgoErrorStatisticsData;
import com.transsion.athena.data.TrackData;
import com.transsion.dbdata.beans.media.PlayAudioData;
import com.transsion.livecaption.constant.ICode;
import java.util.HashMap;

public abstract class e16 extends hb0 {
    public static int a;
    public static int b;
    public static String c;
    public static String d;
    public static int e;
    public static String f;
    public static String g;
    public static String h;

    public static void b(String str) {
        HashMap map = new HashMap();
        map.put(ICode.CALL.CALL_KEY_CONTENT, str);
        p06.b0("dl_brower_cycle_search", map);
    }

    public static void c() {
        hb0.markDirect("dl_brower_hot_show");
    }

    public static void d(String str, String str2, int i, String str3, int i2) {
        Bundle bundle = new Bundle();
        TrackData trackData = new TrackData();
        bundle.putString("video_url", str);
        trackData.add("video_url", str);
        bundle.putString("name", str2);
        trackData.add("name", str2);
        bundle.putInt("from", i);
        trackData.add("from", i);
        bundle.putString("type", str3);
        trackData.add("type", str3);
        bundle.putString(hb0.KEY_NAME_MAINURL, d);
        trackData.add(hb0.KEY_NAME_MAINURL, d);
        bundle.putString(hb0.KEY_NAME_SNIFF_RESULT_DOWNLOAD_RESOLUTION, hb0.sniffDownloadResolution);
        trackData.add(hb0.KEY_NAME_SNIFF_RESULT_DOWNLOAD_RESOLUTION, hb0.sniffDownloadResolution);
        bundle.putInt(hb0.KEY_NAME_SNIFF_RESULT_DLG_TYPE, hb0.sniffDlgType);
        trackData.add(hb0.KEY_NAME_SNIFF_RESULT_DLG_TYPE, hb0.sniffDlgType);
        bundle.putInt("download_source", i2);
        trackData.add("download_source", i2);
        p06.q0(trackData, bundle, "dl_brower_rp_add", 9324L);
    }

    public static void e(String str, String str2, String str3, int i) {
        hb0.markTrackFour("dl_manager_downloading_finish", "video_url", str, hb0.KEY_NAME_MAINURL, str2 != null ? str2 : "", "type", str3 != null ? str3 : "", "download_source", Integer.valueOf(i));
    }

    public static void f() {
        hb0.markDirect("vd_dl_show");
    }

    public static void g(int i) {
        Bundle bundle = new Bundle();
        TrackData trackData = new TrackData();
        bundle.putInt("from", i);
        trackData.add("from", i);
        p06.q0(trackData, bundle, "dl_brower_add", 9324L);
    }

    public static void h() {
        Bundle bundle = new Bundle();
        TrackData trackData = new TrackData();
        bundle.putInt(hb0.KEY_NAME_NUM, hb0.num);
        bundle.putInt("pic_num", b);
        bundle.putInt("from", a);
        bundle.putString(hb0.KEY_NAME_MAINURL, d);
        bundle.putInt(hb0.KEY_NAME_SNIFF_RESULT_DLG_TYPE, hb0.sniffDlgType);
        trackData.add(hb0.KEY_NAME_NUM, hb0.num);
        trackData.add("pic_num", b);
        trackData.add("from", a);
        trackData.add(hb0.KEY_NAME_MAINURL, d);
        trackData.add(hb0.KEY_NAME_SNIFF_RESULT_DLG_TYPE, hb0.sniffDlgType);
        p06.q0(trackData, bundle, "dl_brower_rp_vlist_show", 9324L);
    }

    public static void i(String str) {
        Bundle bundle = new Bundle();
        TrackData trackData = new TrackData();
        bundle.putInt("from", a);
        bundle.putString("video_url", str);
        bundle.putInt(hb0.KEY_NAME_SNIFF_RESULT_DLG_TYPE, hb0.sniffDlgType);
        bundle.putString(hb0.KEY_NAME_SNIFF_RESULT_DOWNLOAD_RESOLUTION, hb0.sniffDownloadResolution);
        trackData.add("from", a);
        trackData.add("video_url", str);
        trackData.add(hb0.KEY_NAME_SNIFF_RESULT_DLG_TYPE, hb0.sniffDlgType);
        trackData.add(hb0.KEY_NAME_SNIFF_RESULT_DOWNLOAD_RESOLUTION, hb0.sniffDownloadResolution);
        bundle.putString(hb0.KEY_NAME_MAINURL, d);
        trackData.add(hb0.KEY_NAME_MAINURL, d);
        p06.q0(trackData, bundle, "dl_brower_rp_vlist_dl_cl", 9324L);
    }

    public static void j() {
        Bundle bundle = new Bundle();
        TrackData trackData = new TrackData();
        bundle.putInt(ImgoErrorStatisticsData.AD_RES_PIC, e);
        bundle.putString(PlayAudioData.TAG_SIZE, f);
        bundle.putString(hb0.KEY_NAME_SNIFF_RESULT_DOWNLOAD_RESOLUTION, g);
        bundle.putString("format", h);
        trackData.add(ImgoErrorStatisticsData.AD_RES_PIC, e);
        trackData.add(PlayAudioData.TAG_SIZE, f);
        trackData.add(hb0.KEY_NAME_SNIFF_RESULT_DOWNLOAD_RESOLUTION, g);
        trackData.add("format", h);
        p06.q0(trackData, bundle, "dl_brower_rp_vpage_show_p", 9324L);
    }

    public static void k() {
        Bundle bundle = new Bundle();
        TrackData trackData = new TrackData();
        bundle.putString("from", c);
        trackData.add("from", c);
        bundle.putString(hb0.KEY_NAME_MAINURL, d);
        trackData.add(hb0.KEY_NAME_MAINURL, d);
        p06.q0(trackData, bundle, "dl_brower_rp_vpage_show", 9324L);
    }

    public static void l() {
        hb0.markDirect("dl_wa_content_preview_back");
    }

    public static void m() {
        hb0.markDirect("dl_wa_content_preview_dl_cl");
    }

    public static void n() {
        hb0.markDirect("dl_wa_content_preview_dl_show");
    }

    public static void o(int i) {
        HashMap map = new HashMap();
        map.put("type", Integer.valueOf(i));
        p06.b0("dl_wa_content_preview_play", map);
    }

    public static void p(int i) {
        HashMap map = new HashMap();
        map.put("type", Integer.valueOf(i));
        p06.b0("dl_wa_content_preview_show", map);
    }

    public static void q() {
        hb0.markDirect("dl_wa_content_preview_slide");
    }

    public static void r() {
        hb0.markDirect("dl_wa_content_preview_zoom");
    }
}
