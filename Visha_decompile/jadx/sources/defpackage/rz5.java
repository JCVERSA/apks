package defpackage;

import com.hisavana.common.tracking.TrackingKey;
import com.transsion.athena.data.TrackData;
import kotlin.jvm.internal.DefaultConstructorMarker;

public abstract class rz5 {
    public static final a a = new a(null);

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final void a(int i) {
            TrackData trackData = new TrackData();
            trackData.add("ad_placement", i);
            p06.y0("vd_ad_click", trackData, 9324L);
        }

        public final void b(int i, int i2, long j) {
            TrackData trackData = new TrackData();
            trackData.add("ad_placement", i);
            trackData.add("close_type", i2);
            trackData.add("duration", String.valueOf(j));
            p06.y0("vd_ad_close", trackData, 9324L);
        }

        public final void c(int i) {
            TrackData trackData = new TrackData();
            trackData.add("ad_placement", i);
            p06.y0("vd_ad_request", trackData, 9324L);
        }

        public final void d(int i, int i2, long j, String str) {
            TrackData trackData = new TrackData();
            trackData.add("ad_placement", i);
            trackData.add("ad_result", i2);
            trackData.add("ad_time", String.valueOf(j));
            if (str == null) {
                str = "";
            }
            trackData.add("ad_fail", str);
            p06.y0("vd_ad_response", trackData, 9324L);
        }

        public final void e(int i, String str) {
            TrackData trackData = new TrackData();
            trackData.add("ad_placement", i);
            if (str == null) {
                str = "";
            }
            trackData.add("ad_fail", str);
            p06.y0("vd_ad_show", trackData, 9324L);
        }

        public final void f(int i, long j) {
            TrackData trackData = new TrackData();
            trackData.add("ad_placement", i);
            trackData.add("duration", String.valueOf(j));
            p06.y0("vd_ad_skip", trackData, 9324L);
        }

        public final void g(String str, String str2, String str3, int i) {
            TrackData trackData = new TrackData();
            trackData.add("ad_placement", 0);
            if (str == null || str.length() == 0) {
                str = "";
            }
            trackData.add("ad_strategy_id", str);
            if (str2 == null || str2.length() == 0) {
                str2 = "";
            }
            trackData.add(TrackingKey.AD_TITLE, str2);
            if (str3 == null || str3.length() == 0) {
                str3 = "";
            }
            trackData.add("ad_btn", str3);
            trackData.add("page_type", i);
            p06.y0("vd_ad_click", trackData, 9324L);
        }

        public final void h(String str, String str2, String str3, int i, String str4) {
            TrackData trackData = new TrackData();
            trackData.add("ad_placement", 0);
            if (str == null || str.length() == 0) {
                str = "";
            }
            trackData.add("ad_strategy_id", str);
            if (str2 == null || str2.length() == 0) {
                str2 = "";
            }
            trackData.add(TrackingKey.AD_TITLE, str2);
            if (str3 == null || str3.length() == 0) {
                str3 = "";
            }
            trackData.add("ad_btn", str3);
            trackData.add("page_type", i);
            if (str4 == null) {
                str4 = "";
            }
            trackData.add("ad_fail", str4);
            p06.y0("vd_ad_show", trackData, 9324L);
        }

        public a() {
        }
    }
}
