package defpackage;

import com.lzy.okgo.model.Progress;
import io.appmetrica.analytics.BuildConfig;
import kotlin.jvm.internal.DefaultConstructorMarker;

public abstract class bz5 extends hb0 {
    public static final a a = new a(null);

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static void b(a aVar, String str, String str2, int i, Object obj) {
            if ((i & 1) != 0) {
                str = "video";
            }
            aVar.a(str, str2);
        }

        public static void e(a aVar, int i, String str, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                i = 1;
            }
            aVar.d(i, str);
        }

        public final void a(String str, String str2) {
            y45.j(str, "fileType");
            y45.j(str2, Progress.FILE_NAME);
            hb0.markTrackTwo("cloud_share_cl", hb0.KEY_NAME_FILE_TYPE, str, "file_name", str2);
        }

        public final void c(int i) {
            String str;
            if (i != 7) {
                str = i != 30 ? "forever" : "month";
            } else {
                str = "week";
            }
            hb0.markTrackTwo("cloud_share_copy_cl", "share_scope", BuildConfig.SDK_BUILD_FLAVOR, "expire_time", str);
        }

        public final void d(int i, String str) {
            y45.j(str, "shareLink");
            hb0.markTrackSingle("cloud_share_open", "video_count", Integer.valueOf(i));
            hb0.markTrackTwo("cloud_share_open", "video_count", Integer.valueOf(i), "share_link", str);
        }

        public final void f() {
            hb0.markDirect("cloud_share_setting_show");
        }

        public a() {
        }
    }
}
