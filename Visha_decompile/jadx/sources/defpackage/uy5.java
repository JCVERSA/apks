package defpackage;

import android.os.Bundle;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.tencent.mmkv.MMKV;
import com.transsion.athena.data.TrackData;
import com.transsion.dbdata.beans.media.PlayVideoData;
import com.transsion.dbdata.utils.AudioFilterUtils;
import com.transsion.utils.BaseConstant;
import java.util.List;
import java.util.Set;
import org.mozilla.javascript.ES6Iterator;

public abstract class uy5 extends hb0 {
    public static String b(int i) {
        if (i == 14) {
            return "cancel";
        }
        switch (i) {
            case 1:
                return "hide";
            case 2:
                return "rename";
            case 3:
                return "add";
            case 4:
                return "share";
            case 5:
                return "delete";
            case 6:
                return TtmlNode.TAG_INFORMATION;
            case 7:
                return PlayVideoData.TAG_FAVORITE;
            case 8:
                return ES6Iterator.NEXT_METHOD;
            case 9:
                return "later";
            case 10:
                return "transMp3";
            default:
                return "";
        }
    }

    public static int c() {
        Set set = AudioFilterUtils.e;
        if (set != null) {
            return set.size();
        }
        return 0;
    }

    public static int d() {
        List list = AudioFilterUtils.d;
        if (list != null) {
            return list.size();
        }
        return 0;
    }

    public static String e(int i) {
        if (i == 0) {
            return TtmlNode.COMBINE_ALL;
        }
        if (i != 1) {
            return i != 2 ? "cancel" : "500k";
        }
        return "100k";
    }

    public static String f(int i) {
        if (i == 0) {
            return TtmlNode.COMBINE_ALL;
        }
        if (i == 1) {
            return "10s";
        }
        if (i != 2) {
            return i != 3 ? "cancel" : "60s";
        }
        return "30s";
    }

    public static void g(String str, BaseConstant.SCREEN_TYPE screen_type, String str2, boolean z, boolean z2) {
        Bundle bundle;
        Bundle bundle2 = new Bundle();
        TrackData trackData = new TrackData();
        bundle2.putString(ES6Iterator.VALUE_PROPERTY, e(MMKV.p().g("filter_size", 0)));
        bundle2.putString("value_1", f(MMKV.p().g("filter_duration", 0)));
        bundle2.putInt("value_2", d());
        bundle2.putInt("value_3", c());
        bundle2.putString("locmusic_statue", str);
        bundle2.putString("from", str2);
        bundle2.putInt("shortcut_statue", z ? 1 : 0);
        bundle2.putInt("widget_statue", z2 ? 1 : 0);
        trackData.add(ES6Iterator.VALUE_PROPERTY, e(MMKV.p().g("filter_size", 0)));
        trackData.add("value_1", f(MMKV.p().g("filter_duration", 0)));
        trackData.add("value_2", d());
        trackData.add("value_3", c());
        trackData.add("from", str2);
        trackData.add("locmusic_statue", str);
        trackData.add("shortcut_statue", z ? 1 : 0);
        trackData.add("widget_statue", z2 ? 1 : 0);
        if (ydc.g()) {
            bundle = bundle2;
            bundle.putString("foldStatus", "" + screen_type);
            trackData.add("foldStatus", "" + screen_type);
        } else {
            bundle = bundle2;
        }
        p06.q0(trackData, bundle, "vd_audio_show", 9324L);
    }

    public static void h(int i) {
        Bundle bundle = new Bundle();
        TrackData trackData = new TrackData();
        bundle.putString("option", f(i));
        trackData.add("option", f(i));
        p06.q0(trackData, bundle, "vd_audio_filt_time_op_cl", 9324L);
    }

    public static void i(int i) {
        Bundle bundle = new Bundle();
        TrackData trackData = new TrackData();
        bundle.putInt("status", i);
        trackData.add("status", i);
        p06.q0(trackData, bundle, "vd_audio_filt_fd_hide_cl", 9324L);
    }

    public static void j(int i) {
        Bundle bundle = new Bundle();
        TrackData trackData = new TrackData();
        bundle.putString(hb0.KEY_NAME_BTN, b(i));
        trackData.add(hb0.KEY_NAME_BTN, b(i));
        p06.q0(trackData, bundle, "vd_audio_filt_hide_more_btn_cl", 9324L);
    }

    public static void k(int i) {
        Bundle bundle = new Bundle();
        TrackData trackData = new TrackData();
        bundle.putString("option", e(i));
        trackData.add("option", e(i));
        p06.q0(trackData, bundle, "vd_audio_filt_size_op_cl", 9324L);
    }

    public static void l(String str) {
        Bundle bundle = new Bundle();
        TrackData trackData = new TrackData();
        bundle.putString("type", str);
        trackData.add("type", str);
        p06.q0(trackData, bundle, "search_more_cl", 9324L);
    }
}
