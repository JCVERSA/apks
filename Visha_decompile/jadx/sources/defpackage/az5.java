package defpackage;

import android.os.Bundle;
import com.transsion.athena.data.TrackData;
import java.util.HashMap;
import java.util.Map;
import kotlin.jvm.internal.DefaultConstructorMarker;

public abstract class az5 extends hb0 {
    public static final a a = new a(null);

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final void A(int i) {
            Bundle bundle = new Bundle();
            bundle.putInt("file_count", i);
            TrackData trackData = new TrackData();
            trackData.add("file_count", i);
            hb0.markDirect("cloud_file_delete_cl", trackData, bundle);
        }

        public final void B(int i) {
            Bundle bundle = new Bundle();
            bundle.putInt("file_count", i);
            TrackData trackData = new TrackData();
            trackData.add("file_count", i);
            hb0.markDirect("cloud_file_delete_confirm_cl", trackData, bundle);
        }

        public final void C(String str) {
            Bundle bundle = new Bundle();
            bundle.putString("file_name", str);
            TrackData trackData = new TrackData();
            trackData.add("file_name", str);
            hb0.markDirect("cloud_file_rename_cl", trackData, bundle);
        }

        public final void D(String str, long j) {
            y45.j(str, "eventName");
            TrackData trackData = new TrackData();
            trackData.add("space", cz5.a(j, false));
            p06.q0(trackData, null, str, 9324L);
        }

        public final void E(String str, String str2, String str3) {
            y45.j(str, "from");
            Bundle bundle = new Bundle();
            bundle.putString("from", str);
            bundle.putString("keyword", str2);
            bundle.putString("source", str3);
            TrackData trackData = new TrackData();
            trackData.add("from", str);
            trackData.add("keyword", str2);
            trackData.add("source", str3);
            hb0.markDirect("cloud_search_global_cl", trackData, bundle);
        }

        public final void F(String str, String str2, String str3, String str4) {
            hb0.markTrackMap("vd_mlpage_cl_c", a(str, str2, str3, str4));
        }

        public final void G(String str, String str2, String str3, String str4) {
            hb0.markTrackMap("vd_mlpage_cl_unc", a(str, str2, str3, str4));
        }

        public final void H(String str, String str2, String str3, String str4) {
            hb0.markTrackMap("vd_mlpage_cl_more", a(str, str2, str3, str4));
        }

        public final void I(String str, String str2, String str3, String str4) {
            hb0.markTrackMap("vd_mlpage_cl_report", a(str, str2, str3, str4));
        }

        public final void J(String str, String str2, String str3, String str4) {
            hb0.markTrackMap("vd_mlpage_cl_share", a(str, str2, str3, str4));
        }

        public final void K(String str, String str2, String str3, String str4, String str5, String str6) {
            Map mapA = a(str, str2, str3, str4);
            mapA.put("video_id", str5);
            mapA.put("video_title", str6);
            hb0.markTrackMap("vd_mlpage_cl_v", mapA);
        }

        public final void L(String str, String str2, String str3, String str4, String str5) {
            Map mapA = a(str, str2, str3, str4);
            mapA.put("source", str5);
            hb0.markTrackMap("vd_mlpage_show", mapA);
        }

        public final void M(String str) {
            Bundle bundle = new Bundle();
            bundle.putString("source", str);
            TrackData trackData = new TrackData();
            trackData.add("source", str);
            hb0.markDirect("dl_brower_address_input", trackData, bundle);
        }

        public final void N(int i, int i2, String str) {
            Bundle bundle = new Bundle();
            TrackData trackData = new TrackData();
            bundle.putInt("from", i);
            bundle.putInt("status", i2);
            bundle.putString("source", str);
            trackData.add("from", i);
            trackData.add("status", i2);
            trackData.add("source", str);
            hb0.markDirect("vd_dl_pv_switch", trackData, bundle);
        }

        public final void O(String str, float f, String str2) {
            Bundle bundle = new Bundle();
            TrackData trackData = new TrackData();
            bundle.putString("file_name", str);
            bundle.putFloat("file_size", f);
            bundle.putString("source", str2);
            trackData.add("file_name", str);
            trackData.add("file_size", Float.valueOf(f));
            trackData.add("source", str2);
            hb0.markDirect("cloud_searchresult_cloud_cl", trackData, bundle);
        }

        public final void P(String str, float f, String str2) {
            Bundle bundle = new Bundle();
            TrackData trackData = new TrackData();
            bundle.putString("file_name", str);
            bundle.putFloat("file_size", f);
            bundle.putString("source", str2);
            trackData.add("file_name", str);
            trackData.add("file_size", Float.valueOf(f));
            trackData.add("source", str2);
            hb0.markDirect("cloud_searchresult_cloud_show", trackData, bundle);
        }

        public final void Q(String str, String str2, String str3, String str4, String str5, String str6) {
            Bundle bundle = new Bundle();
            TrackData trackData = new TrackData();
            bundle.putString("video_id", str);
            bundle.putString("video_title", str2);
            bundle.putString("medialibrary_id", str3);
            bundle.putString("medialibrary_title", str4);
            bundle.putString("source", str5);
            bundle.putString("click_type", str6);
            trackData.add("video_id", str);
            trackData.add("video_title", str2);
            trackData.add("medialibrary_id", str3);
            trackData.add("medialibrary_title", str4);
            trackData.add("source", str5);
            trackData.add("click_type", str6);
            hb0.markDirect("cloud_searchresult_ml_cl", trackData, bundle);
        }

        public final void R(String str, String str2) {
            Bundle bundle = new Bundle();
            TrackData trackData = new TrackData();
            bundle.putString("address", str);
            bundle.putString("source", str2);
            trackData.add("address", str);
            trackData.add("source", str2);
            hb0.markDirect("dl_brower_address_jump", trackData, bundle);
        }

        public final void S(String str, String str2, String str3, String str4, String str5) {
            Bundle bundle = new Bundle();
            TrackData trackData = new TrackData();
            bundle.putString("video_id", str);
            bundle.putString("video_title", str2);
            bundle.putString("medialibrary_id", str3);
            bundle.putString("medialibrary_title", str4);
            bundle.putString("source", str5);
            trackData.add("video_id", str);
            trackData.add("video_title", str2);
            trackData.add("medialibrary_id", str3);
            trackData.add("medialibrary_title", str4);
            trackData.add("source", str5);
            hb0.markDirect("cloud_searchresult_ml_show", trackData, bundle);
        }

        public final void T(String str, String str2) {
            Bundle bundle = new Bundle();
            TrackData trackData = new TrackData();
            bundle.putString("history_address", str);
            bundle.putString("source", str2);
            trackData.add("history_address", str);
            trackData.add("source", str2);
            hb0.markDirect("dl_brower_history_cl", trackData, bundle);
        }

        public final Map a(String str, String str2, String str3, String str4) {
            HashMap map = new HashMap();
            map.put("medialibrary_id", str);
            map.put("medialibrary_title", str2);
            map.put("user_name", str3);
            map.put("user_avatar", str4);
            return map;
        }

        public final void b() {
            hb0.markDirect("vd_dl_cloud_cl");
        }

        public final void c(String str, String str2, String str3, String str4, String str5, String str6) {
            Bundle bundle = new Bundle();
            TrackData trackData = new TrackData();
            if (str != null) {
                bundle.putString("medialibrary_id", str);
                trackData.add("medialibrary_id", str);
            }
            if (str2 != null) {
                bundle.putString("medialibrary_title", str2);
                trackData.add("medialibrary_title", str2);
            }
            if (str3 != null) {
                bundle.putString("user_name", str3);
                trackData.add("user_name", str3);
            }
            if (str4 != null) {
                bundle.putString("user_avatar", str4);
                trackData.add("user_avatar", str4);
            }
            if (str5 != null) {
                bundle.putString("video_id", str5);
                trackData.add("video_id", str5);
            }
            if (str6 != null) {
                bundle.putString("video_title", str6);
                trackData.add("video_title", str6);
            }
            hb0.markDirect("cloud_collectml_cl_video", trackData, bundle);
        }

        public final void d(String str, String str2, String str3, String str4) {
            Bundle bundle = new Bundle();
            TrackData trackData = new TrackData();
            if (str != null) {
                bundle.putString("medialibrary_id", str);
                trackData.add("medialibrary_id", str);
            }
            if (str2 != null) {
                bundle.putString("medialibrary_title", str2);
                trackData.add("medialibrary_title", str2);
            }
            if (str3 != null) {
                bundle.putString("user_name", str3);
                trackData.add("user_name", str3);
            }
            if (str4 != null) {
                bundle.putString("user_avatar", str4);
                trackData.add("user_avatar", str4);
            }
            hb0.markDirect("cloud_collectml_cl_ml", trackData, bundle);
        }

        public final void e(String str, String str2, String str3, String str4) {
            Bundle bundle = new Bundle();
            TrackData trackData = new TrackData();
            if (str != null) {
                bundle.putString("medialibrary_id", str);
                trackData.add("medialibrary_id", str);
            }
            if (str2 != null) {
                bundle.putString("medialibrary_title", str2);
                trackData.add("medialibrary_title", str2);
            }
            if (str3 != null) {
                bundle.putString("user_name", str3);
                trackData.add("user_name", str3);
            }
            if (str4 != null) {
                bundle.putString("user_avatar", str4);
                trackData.add("user_avatar", str4);
            }
            hb0.markDirect("cloud_collectml_show", trackData, bundle);
        }

        public final void f() {
            hb0.markDirect("cloud_collectml_cl_more");
        }

        public final void g(int i, String str, long j, long j2) {
            y45.j(str, "userId");
            Bundle bundle = new Bundle();
            TrackData trackData = new TrackData();
            String strA = cz5.a(j, false);
            String strA2 = cz5.a(j2, false);
            bundle.putString("uniqueId", str);
            bundle.putString("space_used", strA);
            bundle.putString("space_total", strA2);
            trackData.add("uniqueId", str);
            trackData.add("space_used", strA);
            trackData.add("space_total", strA2);
            hb0.markDirect("cloud_content_show", trackData, bundle);
        }

        public final void h(String str) {
            Bundle bundle = new Bundle();
            bundle.putString("file_name", str);
            TrackData trackData = new TrackData();
            trackData.add("file_name", str);
            hb0.markDirect("cloud_file_more_show", trackData, bundle);
        }

        public final void i() {
            hb0.markDirect("cloud_datafrozen_popup_show");
        }

        public final void j() {
            hb0.markDirect("cloud_login_guide_show");
        }

        public final void k() {
            hb0.markDirect("cloud_login_cl");
        }

        public final void l() {
            hb0.markDirect("cloud_login_s");
        }

        public final void m(String str) {
            Bundle bundle = new Bundle();
            bundle.putString("file_name", str == null ? "" : str);
            TrackData trackData = new TrackData();
            if (str == null) {
                str = "";
            }
            trackData.add("file_name", str);
            hb0.markDirect("cloud_video_more_cl", trackData, bundle);
        }

        public final void n(int i) {
            Bundle bundle = new Bundle();
            TrackData trackData = new TrackData();
            bundle.putInt("login_status", i);
            trackData.add("login_status", i);
            hb0.markDirect("cloud_page_show", trackData, bundle);
        }

        public final void o(Float f, String str, String str2) {
            Bundle bundle = new Bundle();
            TrackData trackData = new TrackData();
            if (f != null) {
                float fFloatValue = f.floatValue();
                bundle.putFloat("file_size", fFloatValue);
                trackData.add("file_size", Float.valueOf(fFloatValue));
            }
            if (str != null) {
                bundle.putString("file_name", str);
                trackData.add("file_name", str);
            }
            if (str2 != null) {
                bundle.putString("source_type", str2);
                trackData.add("source_type", str2);
            }
            hb0.markDirect("cloud_recent_cl", trackData, bundle);
        }

        public final void p() {
            hb0.markDirect("cloud_recent_cl_more");
        }

        public final void q() {
            hb0.markDirect("cloud_search_cl");
        }

        public final void r(int i, String str, String str2) {
            Bundle bundle = new Bundle();
            bundle.putInt("result_count", i);
            bundle.putString("keyword", str);
            bundle.putString("source", str2);
            TrackData trackData = new TrackData();
            trackData.add("result_count", i);
            trackData.add("keyword", str);
            trackData.add("source", str2);
            hb0.markDirect("cloud_search_result", trackData, bundle);
        }

        public final void s() {
            hb0.markDirect("vd_dl_cloudtip_show");
        }

        public final void t(String str, String str2, String str3) {
            y45.j(str, "fileSize");
            y45.j(str2, "sourceType");
            Bundle bundle = new Bundle();
            bundle.putString("file_size", str);
            bundle.putString("source_type", str2);
            bundle.putString("file_name", str3 == null ? "" : str3);
            TrackData trackData = new TrackData();
            trackData.add("file_size", str);
            trackData.add("source_type", str2);
            if (str3 == null) {
                str3 = "";
            }
            trackData.add("file_name", str3);
            hb0.markDirect("cloud_allvideos_cl", trackData, bundle);
        }

        public final void u(Float f, String str, String str2) {
            Bundle bundle = new Bundle();
            TrackData trackData = new TrackData();
            if (f != null) {
                float fFloatValue = f.floatValue();
                bundle.putFloat("file_size", fFloatValue);
                trackData.add("file_size", Float.valueOf(fFloatValue));
            }
            if (str != null) {
                bundle.putString("file_name", str);
                trackData.add("file_name", str);
            }
            if (str2 != null) {
                bundle.putString("source_type", str2);
                trackData.add("source_type", str2);
            }
            hb0.markDirect("cloud_recentlist_cl_video", trackData, bundle);
        }

        public final void v(String str, String str2, String str3, String str4) {
            hb0.markTrackMap("vd_collectmllist_cl_ml", a(str, str2, str3, str4));
        }

        public final void w(String str, String str2, String str3, String str4, String str5, String str6) {
            Map mapA = a(str, str2, str3, str4);
            mapA.put("video_id", str5);
            mapA.put("video_title", str6);
            hb0.markTrackMap("vd_collectmllist_cl_video", mapA);
        }

        public final void x(String str, String str2, String str3, String str4) {
            hb0.markTrackMap("vd_dl_ml_cl_ml", a(str, str2, str3, str4));
        }

        public final void y(String str, String str2, String str3, String str4, String str5, String str6) {
            Map mapA = a(str, str2, str3, str4);
            mapA.put("video_id", str5);
            mapA.put("video_title", str6);
            hb0.markTrackMap("vd_dl_ml_cl_video", mapA);
        }

        public final void z(String str, String str2, String str3, String str4) {
            hb0.markTrackMap("vd_dl_ml_show", a(str, str2, str3, str4));
        }

        public a() {
        }
    }

    public static final void b() {
        a.b();
    }

    public static final void c(String str) {
        a.h(str);
    }

    public static final void d() {
        a.s();
    }

    public static final void e(String str, String str2, String str3, String str4) {
        a.x(str, str2, str3, str4);
    }

    public static final void f(String str, String str2, String str3, String str4, String str5, String str6) {
        a.y(str, str2, str3, str4, str5, str6);
    }

    public static final void g(String str, String str2, String str3, String str4) {
        a.z(str, str2, str3, str4);
    }

    public static final void h(int i) {
        a.A(i);
    }

    public static final void i(int i) {
        a.B(i);
    }
}
