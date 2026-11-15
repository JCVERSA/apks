package defpackage;

import android.os.Bundle;
import com.transsion.athena.data.TrackData;
import org.greenrobot.greendao.generator.Schema;
import org.mozilla.javascript.ES6Iterator;

public abstract class d16 extends hb0 {
    public static String b(int i) {
        if (i != 0) {
            return i != 2 ? "white" : "black";
        }
        return "custom";
    }

    public static String c(int i) {
        if (i == 0) {
            return "oval";
        }
        if (i == 1) {
            return "star";
        }
        if (i == 2) {
            return "pirate hat";
        }
        if (i == 3) {
            return "beard";
        }
        if (i != 4) {
            return i != 5 ? "" : "fox";
        }
        return "birthday";
    }

    public static String d(int i) {
        if (i == 0) {
            return "custom";
        }
        switch (i) {
            case 2:
                return "chrismas";
            case 3:
                return "animal";
            case 4:
                return "sealife";
            case 5:
                return "pumpkin";
            case 6:
                return "warrior";
            case 7:
                return "emoji";
            case 8:
                return "deepsealife";
            default:
                return Schema.DEFAULT_NAME;
        }
    }

    public static void e(int i) {
        Bundle bundle = new Bundle();
        TrackData trackData = new TrackData();
        bundle.putInt("value_1", i);
        trackData.add("value_1", i);
        p06.q0(trackData, bundle, "skin_diy_edit_bg_object_cl", 9324L);
    }

    public static void f(String str, int i) {
        Bundle bundle = new Bundle();
        TrackData trackData = new TrackData();
        bundle.putInt(ES6Iterator.VALUE_PROPERTY, i);
        trackData.add(ES6Iterator.VALUE_PROPERTY, i);
        p06.q0(trackData, bundle, str, 9324L);
    }

    public static void g(String str) {
        Bundle bundle = new Bundle();
        TrackData trackData = new TrackData();
        bundle.putString("value_2", str);
        trackData.add("value_2", str);
        p06.q0(trackData, bundle, "skin_diy_edit_color_object_cl", 9324L);
    }

    public static void h(boolean z) {
        Bundle bundle = new Bundle();
        TrackData trackData = new TrackData();
        bundle.putInt("status", z ? 1 : 0);
        trackData.add("status", z ? 1 : 0);
        p06.q0(trackData, bundle, "skin_all_list_page_diy_cl", 9324L);
    }

    public static void i(int i, int i2, String str, int i3, int i4, int i5) {
        Bundle bundle = new Bundle();
        TrackData trackData = new TrackData();
        bundle.putString(ES6Iterator.VALUE_PROPERTY, d(i));
        bundle.putString("value_1", b(i2));
        bundle.putString("value_2", str);
        bundle.putInt("value_3", i3);
        bundle.putInt("value_4", i4);
        bundle.putString("value_5", c(i5));
        trackData.add(ES6Iterator.VALUE_PROPERTY, d(i));
        trackData.add("value_1", b(i2));
        trackData.add("value_2", str);
        trackData.add("value_3", i3);
        trackData.add("value_4", i4);
        trackData.add("value_5", c(i5));
        p06.q0(trackData, bundle, "skin_diy_apply", 9324L);
    }

    public static void j(int i, int i2, String str, int i3, int i4) {
        Bundle bundle = new Bundle();
        TrackData trackData = new TrackData();
        bundle.putString(ES6Iterator.VALUE_PROPERTY, d(i));
        bundle.putString("value_1", b(i2));
        bundle.putString("value_2", str);
        bundle.putInt("value_3", i3);
        bundle.putInt("value_4", i4);
        trackData.add(ES6Iterator.VALUE_PROPERTY, d(i));
        trackData.add("value_1", b(i2));
        trackData.add("value_2", str);
        trackData.add("value_3", i3);
        trackData.add("value_4", i4);
        p06.q0(trackData, bundle, "skin_diy_edit_ok", 9324L);
    }

    public static void k(String str, int i) {
        Bundle bundle = new Bundle();
        TrackData trackData = new TrackData();
        bundle.putInt(ES6Iterator.VALUE_PROPERTY, i);
        trackData.add(ES6Iterator.VALUE_PROPERTY, i);
        p06.q0(trackData, bundle, str, 9324L);
    }

    public static void l(int i) {
        Bundle bundle = new Bundle();
        TrackData trackData = new TrackData();
        bundle.putString(ES6Iterator.VALUE_PROPERTY, d(i));
        trackData.add(ES6Iterator.VALUE_PROPERTY, d(i));
        p06.q0(trackData, bundle, "skin_diy_edit_ps_object_cl", 9324L);
    }

    public static void m(int i) {
        Bundle bundle = new Bundle();
        TrackData trackData = new TrackData();
        bundle.putInt(ES6Iterator.VALUE_PROPERTY, i);
        trackData.add(ES6Iterator.VALUE_PROPERTY, i);
        p06.q0(trackData, bundle, "skin_diy_edit_ps_upload_frame_cl", 9324L);
    }
}
