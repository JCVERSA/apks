package defpackage;

import android.os.Bundle;
import com.transsion.athena.data.TrackData;
import com.transsion.dbdata.utils.SortUtil;

public abstract class h16 extends hb0 {
    public static String a = "更多菜单";

    public static String b(SortUtil.SortType sortType, boolean z) {
        if (sortType == SortUtil.SortType.DATE) {
            return z ? "time_ascend" : "time_descend";
        }
        if (sortType == SortUtil.SortType.NAME) {
            return z ? "name_ascend" : "name_descend";
        }
        if (sortType == SortUtil.SortType.SIZE) {
            return z ? "size_ascend" : "size_descend";
        }
        if (sortType == SortUtil.SortType.COUNT) {
            return z ? "frequency_ascend" : "frequency_descend";
        }
        return z ? "duration_ascend" : "duration_descend";
    }

    public static void c() {
        SortUtil.SortType sortTypeC = SortUtil.c();
        boolean zM = SortUtil.m();
        Bundle bundle = new Bundle();
        TrackData trackData = new TrackData();
        bundle.putString("order_by", b(sortTypeC, zM));
        trackData.add("order_by", b(sortTypeC, zM));
        p06.q0(trackData, bundle, "moretab_tomp3_listpage_order_cl", 9324L);
    }

    public static void d(String str, String str2, String str3) {
        Bundle bundle = new Bundle();
        TrackData trackData = new TrackData();
        bundle.putString(str2, str3);
        trackData.add(str2, str3);
        bundle.putString("from", a);
        trackData.add("from", a);
        p06.q0(trackData, bundle, str, 9324L);
    }

    public static void e(String str) {
        a = str;
    }
}
