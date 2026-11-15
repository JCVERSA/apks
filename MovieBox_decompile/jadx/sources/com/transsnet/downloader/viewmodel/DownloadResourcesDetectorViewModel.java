package com.transsnet.downloader.viewmodel;

import androidx.p009lifecycle.t0;
import androidx.p009lifecycle.u0;
import com.blankj.utilcode.util.Utils;
import com.transsion.moviedetailapi.bean.ShortTVFavInfo;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsnet.downloader.R$string;
import com.transsnet.downloader.manager.DownloadEsHelper;
import com.transsnet.downloader.util.DownloadSDCardUtil;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;

public final class DownloadResourcesDetectorViewModel extends t0 {

    public static final a f57790x = new a(null);

    private final Lazy f57791a = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return DownloadResourcesDetectorViewModel.J();
        }
    });

    private n0 f57792b = o0.a(y0.b());

    private final androidx.p009lifecycle.b0 f57793c = new androidx.p009lifecycle.b0();

    private final androidx.p009lifecycle.b0 f57794d = new androidx.p009lifecycle.b0();

    private final androidx.p009lifecycle.b0 f57795e = new androidx.p009lifecycle.b0();

    private final androidx.p009lifecycle.b0 f57796f = new androidx.p009lifecycle.b0();

    private final androidx.p009lifecycle.b0 f57797g = new androidx.p009lifecycle.b0();

    private final androidx.p009lifecycle.b0 f57798h = new androidx.p009lifecycle.b0();

    private final androidx.p009lifecycle.b0 f57799i = new androidx.p009lifecycle.b0();

    private final androidx.p009lifecycle.b0 f57800j = new androidx.p009lifecycle.b0();

    private final androidx.p009lifecycle.b0 f57801k = new androidx.p009lifecycle.b0();

    private final androidx.p009lifecycle.b0 f57802l = new androidx.p009lifecycle.b0();

    private final androidx.p009lifecycle.b0 f57803m = new androidx.p009lifecycle.b0();

    private final androidx.p009lifecycle.b0 f57804n = new androidx.p009lifecycle.b0();

    private final androidx.p009lifecycle.b0 f57805o = new androidx.p009lifecycle.b0();

    private final androidx.p009lifecycle.b0 f57806p = new androidx.p009lifecycle.b0();

    private final androidx.p009lifecycle.b0 f57807q = new androidx.p009lifecycle.b0();

    private final androidx.p009lifecycle.b0 f57808r = new androidx.p009lifecycle.b0();

    private final androidx.p009lifecycle.b0 f57809s = new androidx.p009lifecycle.b0();

    private final androidx.p009lifecycle.b0 f57810t = new androidx.p009lifecycle.b0();

    private final androidx.p009lifecycle.b0 f57811u = new androidx.p009lifecycle.b0();

    private final androidx.p009lifecycle.b0 f57812v = new androidx.p009lifecycle.b0();

    private final androidx.p009lifecycle.b0 f57813w = new androidx.p009lifecycle.b0();

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public final cx.a C() {
        return (cx.a) this.f57791a.getValue();
    }

    public static final cx.a J() {
        return (cx.a) kg.c.f63982e.a().h(cx.a.class);
    }

    public final void q() {
        boolean z10;
        char c10;
        wf.a.C0922a c0922a = wf.a.f74274a;
        wf.a.C0922a.f(c0922a, "DownloadReDetector", "--- getPathInfo", false, 4, null);
        ArrayList arrayList = new ArrayList();
        List listA = DownloadSDCardUtil.f57674a.a();
        DownloadEsHelper.a aVar = DownloadEsHelper.f57201m;
        aVar.a().i();
        String strE = ui.b.f73084a.e();
        String strT = aVar.a().t();
        wf.a.C0922a.v(c0922a, "DownloadReDetector", "--- savedPath = " + strT, false, 4, null);
        Iterator it = listA.iterator();
        while (true) {
            if (!it.hasNext()) {
                z10 = false;
                break;
            }
            yw.b bVar = (yw.b) it.next();
            if (Intrinsics.c(bVar.b(), strT)) {
                bVar.g(true);
                z10 = true;
                break;
            }
        }
        long jA = com.blankj.utilcode.util.w.a();
        ui.b.a aVar2 = ui.b.f73084a;
        String strA = aVar2.a();
        if (Intrinsics.c(strT, strE) || (listA.isEmpty() && !Intrinsics.c(strT, strA))) {
            c10 = 1;
        } else {
            c10 = z10 ? (char) 2 : (char) 3;
        }
        String string = Utils.a().getString(R$string.str_download_dialog_path_moviebox_folder);
        Intrinsics.g(string, "getString(...)");
        yw.b bVar2 = new yw.b(strE, "", string, 1, jA, 1);
        r19.g(c10 == 1);
        String strB = aVar2.b();
        String string2 = Utils.a().getString(R$string.str_download_dialog_path_albums);
        Intrinsics.g(string2, "getString(...)");
        yw.b bVar3 = new yw.b(strA, strB, string2, 3, jA, 2);
        bVar3.g(c10 == 3);
        arrayList.add(bVar2);
        arrayList.add(bVar3);
        arrayList.addAll(listA);
        this.f57797g.n(arrayList);
    }

    public final void w(String str) {
        wf.a.C0922a.f(wf.a.f74274a, "DownloadReDetector", "--- getDownloadSavePathInfo, savedRootPath = " + str, false, 4, null);
        ArrayList arrayList = new ArrayList();
        long jA = com.blankj.utilcode.util.w.a();
        ui.b.a aVar = ui.b.f73084a;
        aVar.e();
        String strA = aVar.a();
        String strB = aVar.b();
        String string = Utils.a().getString(R$string.str_download_dialog_path_albums);
        Intrinsics.g(string, "getString(...)");
        yw.b bVar = new yw.b(strA, strB, string, 3, jA, 2);
        bVar.g(Intrinsics.c(strA, str));
        List<yw.b> listA = DownloadSDCardUtil.f57674a.a();
        DownloadEsHelper.f57201m.a().i();
        for (yw.b bVar2 : listA) {
            if (Intrinsics.c(bVar2.b(), str)) {
                bVar2.g(true);
                break;
            }
        }
        arrayList.add(bVar);
        arrayList.addAll(listA);
        this.f57798h.n(arrayList);
    }

    public final androidx.p009lifecycle.b0 A() {
        return this.f57799i;
    }

    public final androidx.p009lifecycle.b0 B() {
        return this.f57796f;
    }

    public final androidx.p009lifecycle.b0 D() {
        return this.f57810t;
    }

    public final androidx.p009lifecycle.b0 E() {
        return this.f57812v;
    }

    public final androidx.p009lifecycle.b0 F() {
        return this.f57807q;
    }

    public final androidx.p009lifecycle.b0 G() {
        return this.f57808r;
    }

    public final androidx.p009lifecycle.b0 H() {
        return this.f57811u;
    }

    public final androidx.p009lifecycle.b0 I() {
        return this.f57809s;
    }

    public final void K(String type) {
        Intrinsics.h(type, "type");
        this.f57809s.q(type);
    }

    public final void L(yw.c item) {
        Intrinsics.h(item, "item");
        Map linkedHashMap = (Map) this.f57807q.f();
        if (linkedHashMap == null) {
            linkedHashMap = new LinkedHashMap();
        }
        if (item.d()) {
            linkedHashMap.remove(Integer.valueOf(item.a()));
        } else {
            linkedHashMap.put(Integer.valueOf(item.a()), item);
        }
        this.f57807q.q(linkedHashMap);
    }

    public final void f(Subject subject) {
        ShortTVFavInfo shortTVFavInfo;
        if (subject == null || (shortTVFavInfo = subject.getShortTVFavInfo()) == null) {
            return;
        }
        kotlinx.coroutines.k.d(u0.a(this), null, null, new DownloadResourcesDetectorViewModel$favorite$1(subject, shortTVFavInfo.getHasFavorite(), this, shortTVFavInfo, null), 3, null);
    }

    public final androidx.p009lifecycle.b0 g() {
        return this.f57804n;
    }

    public final androidx.p009lifecycle.b0 h() {
        return this.f57801k;
    }

    public final androidx.p009lifecycle.b0 i() {
        return this.f57795e;
    }

    public final void j(String str, String str2, int i10, String nextPage, int i11, int i12, int i13, int i14, int i15, int i16, int i17) {
        Intrinsics.h(nextPage, "nextPage");
        kotlinx.coroutines.k.d(o0.a(y0.b()), null, null, new DownloadResourcesDetectorViewModel$getDownloadList$1(i17, str, i12, i13, i10, this, nextPage, i11, i14, i15, i16, str2, null), 3, null);
    }

    public final void l(String savedRootPath) {
        Intrinsics.h(savedRootPath, "savedRootPath");
        kotlinx.coroutines.k.d(this.f57792b, null, null, new DownloadResourcesDetectorViewModel$getDownloadSavePathInfo$1(this, savedRootPath, null), 3, null);
    }

    public final androidx.p009lifecycle.b0 m() {
        return this.f57794d;
    }

    public final androidx.p009lifecycle.b0 n() {
        return this.f57803m;
    }

    public final androidx.p009lifecycle.b0 o() {
        return this.f57805o;
    }

    public final androidx.p009lifecycle.b0 p() {
        return this.f57793c;
    }

    public final androidx.p009lifecycle.b0 r() {
        return this.f57797g;
    }

    public final androidx.p009lifecycle.b0 s() {
        return this.f57806p;
    }

    public final void t(String subjectId) {
        Intrinsics.h(subjectId, "subjectId");
        kotlinx.coroutines.k.d(u0.a(this), null, null, new DownloadResourcesDetectorViewModel$getResourceAllLangInfo$1(this, subjectId, null), 3, null);
    }

    public final void u(String subjectId) {
        Intrinsics.h(subjectId, "subjectId");
        kotlinx.coroutines.k.d(u0.a(this), null, null, new DownloadResourcesDetectorViewModel$getResourcesSeasonInfo$1(this, subjectId, null), 3, null);
    }

    public final void v() {
        kotlinx.coroutines.k.d(this.f57792b, null, null, new DownloadResourcesDetectorViewModel$getSDCardPathInfo$1(this, null), 3, null);
    }

    public final androidx.p009lifecycle.b0 x() {
        return this.f57798h;
    }

    public final androidx.p009lifecycle.b0 y() {
        return this.f57800j;
    }

    public final androidx.p009lifecycle.b0 z() {
        return this.f57802l;
    }
}
