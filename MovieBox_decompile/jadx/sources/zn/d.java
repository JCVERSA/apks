package zn;

import android.view.View;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.moviedetailapi.bean.PostSubjectItem;
import com.transsion.postdetail.layer.local.LocalUiType;
import com.transsion.subtitle.VideoSubtitleControl;
import com.transsion.videofloat.bean.FloatActionType;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;

public interface d {

    public static final class a {
        public static View a(d dVar) {
            return null;
        }

        public static void b(d dVar, View rootView, boolean z10) {
            Intrinsics.h(rootView, "rootView");
        }

        public static void c(d dVar, DownloadBean bean) {
            Intrinsics.h(bean, "bean");
        }

        public static void d(d dVar, boolean z10) {
        }

        public static void e(d dVar) {
        }

        public static void f(d dVar, LocalUiType newConfig) {
            Intrinsics.h(newConfig, "newConfig");
        }

        public static void g(d dVar) {
        }

        public static void h(d dVar, boolean z10, String requestKey) {
            Intrinsics.h(requestKey, "requestKey");
        }

        public static void i(d dVar) {
        }

        public static void j(d dVar, String subjectId, String resourceId) {
            Intrinsics.h(subjectId, "subjectId");
            Intrinsics.h(resourceId, "resourceId");
        }

        public static void k(d dVar, boolean z10) {
        }

        public static void l(d dVar, String str, long j10, int i10, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: showToast");
            }
            if ((i10 & 2) != 0) {
                j10 = 3000;
            }
            dVar.i(str, j10);
        }

        public static void m(d dVar, PostSubjectItem postSubjectItem) {
        }

        public static void n(d dVar, int i10) {
        }

        public static void o(d dVar, float f10) {
        }
    }

    void A();

    void B(VideoSubtitleControl videoSubtitleControl);

    void C(int i10);

    void D(DownloadBean downloadBean);

    void E(c cVar);

    void a(LocalUiType localUiType);

    void b(boolean z10, boolean z11);

    void c();

    void d();

    boolean e(FloatActionType floatActionType);

    void f(boolean z10, String str);

    void g();

    void h(String str, String str2);

    void i(String str, long j10);

    boolean isVisible();

    void j(boolean z10);

    void k(DownloadBean downloadBean, String str, boolean z10);

    void l(Map map);

    void m(LocalUiType localUiType);

    void n(b bVar);

    void o();

    void onBackPressed();

    void onViewPause();

    void onViewResume();

    void p(float f10);

    void q(String str, String str2, String str3, boolean z10, boolean z11);

    void r(int i10, int i11);

    void s(View view, LocalUiType localUiType);

    void t();

    void u(boolean z10);

    void updateTitle(String str);

    void v(String str, String str2);

    void w(boolean z10);

    void x(PostSubjectItem postSubjectItem);

    void y(String str);

    void z(View view, boolean z10);
}
