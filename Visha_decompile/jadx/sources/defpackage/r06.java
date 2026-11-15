package defpackage;

import android.os.Bundle;
import android.util.Log;
import com.transsion.athena.data.TrackData;
import com.transsion.utils.BaseConstant;

public abstract class r06 {
    public static void a(BaseConstant.SCREEN_TYPE screen_type, int i) {
        Bundle bundle = new Bundle();
        TrackData trackData = new TrackData();
        bundle.putInt("page_queue", i);
        trackData.add("page_queue", i);
        g(screen_type, trackData, bundle, "guide_dl_lp_show", 9324L);
    }

    public static void b(BaseConstant.SCREEN_TYPE screen_type, String str, String str2) {
        Bundle bundle = new Bundle();
        TrackData trackData = new TrackData();
        bundle.putString("from", str2);
        trackData.add("from", str2);
        g(screen_type, trackData, bundle, str, 9324L);
    }

    public static void c(BaseConstant.SCREEN_TYPE screen_type, String str) {
        Log.w("MarkPointForHdUtils", "markPointPageShowScreenTypeChange screen_type:" + screen_type + ",pageName:" + str);
        e(screen_type, str, "vd_foldable", 9324L);
    }

    public static void d(BaseConstant.SCREEN_TYPE screen_type, String str) {
        e(screen_type, null, str, 9324L);
    }

    public static void e(BaseConstant.SCREEN_TYPE screen_type, String str, String str2, long j) {
        Bundle bundle = new Bundle();
        TrackData trackData = new TrackData();
        if (str != null) {
            bundle.putString("action", str);
            trackData.add("action", str);
        }
        if (ydc.g()) {
            Log.w("MarkPointForHdUtils", "sendClickEventBoth screen_type:" + screen_type + ",action:" + str2 + ",tid:" + j);
            StringBuilder sb = new StringBuilder();
            sb.append("");
            sb.append(screen_type);
            bundle.putString("foldStatus", sb.toString());
            trackData.add("foldStatus", "" + screen_type);
        }
        p06.y0(str2, trackData, j);
    }

    public static void f(BaseConstant.SCREEN_TYPE screen_type, String str, String str2, int i) {
        Bundle bundle = new Bundle();
        TrackData trackData = new TrackData();
        bundle.putInt(str2, i);
        trackData.add(str2, i);
        g(screen_type, trackData, bundle, str, 9324L);
    }

    public static void g(BaseConstant.SCREEN_TYPE screen_type, TrackData trackData, Bundle bundle, String str, long j) {
        if (ydc.g()) {
            Log.e("MarkPointForHdUtils", "sendVirtualEventBoth screen_type:" + screen_type + ",action:" + str + ",tid:" + j);
            StringBuilder sb = new StringBuilder();
            sb.append("");
            sb.append(screen_type);
            bundle.putString("foldStatus", sb.toString());
            trackData.add("foldStatus", "" + screen_type);
        }
        p06.y0(str, trackData, j);
    }
}
