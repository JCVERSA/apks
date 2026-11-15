package defpackage;

import android.os.Bundle;
import com.google.gson.Gson;
import com.transsion.athena.data.TrackData;
import java.util.Map;

public abstract class hb0 {
    public static final String CLOUD = "cloud";
    public static final String EVENT_NAME_VD_CP_PLAYLIST_VIDEO_SLIDE = "vd_cp_playlist_video_slide";
    public static final String KEY_NAME_BTN = "btn";
    public static final String KEY_NAME_COUNTRY_CODE = "country_code";
    public static final String KEY_NAME_DURATION = "duration";
    public static final String KEY_NAME_ERROR_CODE = "err_code";
    public static final String KEY_NAME_FILE_TYPE = "file_type";
    public static final String KEY_NAME_FROM = "from";
    public static final String KEY_NAME_MAINURL = "main_url";
    public static final String KEY_NAME_MODE = "mode";
    public static final String KEY_NAME_NAME = "name";
    public static final String KEY_NAME_NUM = "num";
    public static final String KEY_NAME_REGION_ID = "region_id";
    public static final String KEY_NAME_SERIALSID = "serialsID";
    public static final String KEY_NAME_SNIFF_RESULT_DLG_TYPE = "dlg_type";
    public static final String KEY_NAME_SNIFF_RESULT_DOWNLOAD_RESOLUTION = "definition";
    public static final String KEY_NAME_STATUE = "status";
    public static final String KEY_NAME_SUB_ERROR_CODE = "sub_err_code";
    public static final String KEY_NAME_TYPE = "type";
    public static final String KEY_NAME_VERSION_CODE = "version_code";
    public static final String KEY_NAME_VERSION_NAME = "version_name";
    public static final String KEY_NAME_VK_SOURCE_ID = "source_id";
    public static final String LOCAL = "local";
    public static final String OFF = "off";
    public static final String ON = "on";
    public static final int VALUE_SNIFF_RESULT_DLG_TYPE_NORMAL = 0;
    public static final int VALUE_SNIFF_RESULT_DLG_TYPE_RESOLUTION = 1;
    public static long duration;
    public static String name;
    public static int num;
    public static int sniffDlgType;
    public static String sniffDownloadResolution;
    public static int status;

    public static class a {
        public final String a;
        public final Object b;

        public a(String str, Object obj) {
            this.a = str;
            this.b = obj;
        }
    }

    public static void a(Bundle bundle, TrackData trackData, String str, Object obj) {
        if (obj instanceof String) {
            String str2 = (String) obj;
            bundle.putString(str, str2);
            trackData.add(str, str2);
            return;
        }
        if (obj instanceof Integer) {
            Integer num2 = (Integer) obj;
            bundle.putInt(str, num2.intValue());
            trackData.add(str, num2);
            return;
        }
        if (obj instanceof Long) {
            Long l = (Long) obj;
            bundle.putLong(str, l.longValue());
            trackData.add(str, l);
        } else if (obj instanceof Float) {
            Float f = (Float) obj;
            bundle.putFloat(str, f.floatValue());
            trackData.add(str, f);
        } else if (!(obj instanceof Double)) {
            bundle.putString(str, new Gson().toJson(obj));
            trackData.add(str, new Gson().toJson(obj));
        } else {
            Double d = (Double) obj;
            bundle.putDouble(str, d.doubleValue());
            trackData.add(str, d);
        }
    }

    public static String checkHorizontalFlag(int i) {
        if (i != 0) {
            return i != 1 ? "" : "imgx";
        }
        return "imgy";
    }

    public static String checkPayType(int i) {
        if (i == 0) {
            return "free";
        }
        if (i != 1) {
            return i != 2 ? "" : "vipdiscount";
        }
        return "vip";
    }

    public static void markDirect(String str) {
        p06.q0(null, null, str, 9324L);
    }

    public static <T> void markKV(String str, a... aVarArr) {
        if (aVarArr == null) {
            return;
        }
        Bundle bundle = new Bundle();
        TrackData trackData = new TrackData();
        for (a aVar : aVarArr) {
            a(bundle, trackData, aVar.a, aVar.b);
        }
        p06.q0(trackData, bundle, str, 9324L);
    }

    public static <T, R> void markTrackFour(String str, String str2, T t, String str3, R r, String str4, R r2, String str5, R r3) {
        Bundle bundle = new Bundle();
        TrackData trackData = new TrackData();
        a(bundle, trackData, str2, t);
        a(bundle, trackData, str3, r);
        a(bundle, trackData, str4, r2);
        a(bundle, trackData, str5, r3);
        p06.q0(trackData, bundle, str, 9324L);
    }

    public static <T> void markTrackMap(String str, Map<String, T> map) {
        Bundle bundle = new Bundle();
        TrackData trackData = new TrackData();
        if (map != null) {
            for (String str2 : map.keySet()) {
                a(bundle, trackData, str2, map.get(str2));
            }
        }
        p06.q0(trackData, bundle, str, 9324L);
    }

    public static <T> void markTrackSingle(String str, String str2, T t) {
        Bundle bundle = new Bundle();
        TrackData trackData = new TrackData();
        a(bundle, trackData, str2, t);
        p06.q0(trackData, bundle, str, 9324L);
    }

    public static <T, R> void markTrackThree(String str, String str2, T t, String str3, R r, String str4, R r2) {
        Bundle bundle = new Bundle();
        TrackData trackData = new TrackData();
        a(bundle, trackData, str2, t);
        a(bundle, trackData, str3, r);
        a(bundle, trackData, str4, r2);
        p06.q0(trackData, bundle, str, 9324L);
    }

    public static <T, R> void markTrackTwo(String str, String str2, T t, String str3, R r) {
        Bundle bundle = new Bundle();
        TrackData trackData = new TrackData();
        a(bundle, trackData, str2, t);
        a(bundle, trackData, str3, r);
        p06.q0(trackData, bundle, str, 9324L);
    }

    public static void markDirect(String str, TrackData trackData, Bundle bundle) {
        if (bundle != null) {
            bundle.putInt(KEY_NAME_VERSION_CODE, ydc.a());
            bundle.putString(KEY_NAME_VERSION_NAME, ydc.b());
        }
        if (trackData != null) {
            trackData.add(KEY_NAME_VERSION_CODE, ydc.a());
            trackData.add(KEY_NAME_VERSION_NAME, ydc.b());
        }
        p06.q0(trackData, bundle, str, 9324L);
    }
}
