package tl;

import com.transsion.lib_web.download_render.data.FileData;
import com.transsion.lib_web.download_render.data.PageData;
import com.transsion.lib_web.download_render.data.PageListData;
import com.transsion.lib_web.download_render.task.compare.CompareRequest;
import com.transsion.lib_web.download_render.task.compare.CompareResponse;
import com.transsion.lib_web.download_render.utils.ReportUtil;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import pl.h;

public final class c implements d {

    private final long f72776a;

    private final PageData f72777b;

    private final String f72778c;

    private final ul.a f72779d;

    private final List f72780e;

    public c(long j10, PageData pageData) {
        Intrinsics.h(pageData, "pageData");
        this.f72776a = j10;
        this.f72777b = pageData;
        this.f72778c = "DR_FileDownloadTask";
        this.f72779d = new ul.a(CollectionsKt.o(new vl.b(), new vl.a()), 0, 2, null);
        this.f72780e = new ArrayList();
    }

    public static final Unit b(Ref.BooleanRef booleanRef, Ref.IntRef intRef, Ref.LongRef longRef, boolean z10, String loadingUrl, int i10, long j10) {
        Intrinsics.h(loadingUrl, "loadingUrl");
        com.transsion.lib_web.download_render.utils.a.f44818a.m(loadingUrl);
        booleanRef.element = z10;
        intRef.element = i10;
        longRef.element = j10;
        return Unit.f64096a;
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0057  */
    @Override
    public void start() {
        PageData pageData;
        boolean z10;
        List<PageData> h5Pages;
        h.f69205a.a(this.f72778c, "<FileDownloadTask> start id:" + this.f72776a);
        PageListData pageListDataL = com.transsion.lib_web.download_render.c.f44800a.l();
        if (pageListDataL == null || (h5Pages = pageListDataL.getH5Pages()) == null) {
            pageData = new PageData(null, null, null, null, null, null, null, null, null, 511, null);
        } else {
            Iterator<T> it = h5Pages.iterator();
            do {
                if (!it.hasNext()) {
                    throw new NoSuchElementException("Collection contains no element matching the predicate.");
                }
                pageData = (PageData) it.next();
            } while (!Intrinsics.c(pageData.getUrl(), this.f72777b.getUrl()));
            if (pageData == null) {
                pageData = new PageData(null, null, null, null, null, null, null, null, null, 511, null);
            }
        }
        List<FileData> files = pageData.getFiles();
        if (files == null || files.isEmpty()) {
            h.f69205a.f(this.f72778c, "<FileDownloadTask> end id:" + this.f72776a + ", pageData.files.isNullOrEmpty");
            return;
        }
        String url = pageData.getUrl();
        if (url == null) {
            h.f69205a.f(this.f72778c, "<FileDownloadTask> end id:" + this.f72776a + ", pageData.url.isNull");
            return;
        }
        String versionCode = pageData.getVersionCode();
        if (versionCode == null) {
            h.f69205a.f(this.f72778c, "<FileDownloadTask> end id:" + this.f72776a + ", pageData.versionCode.isNull");
            return;
        }
        com.transsion.lib_web.download_render.c cVar = com.transsion.lib_web.download_render.c.f44800a;
        PageData pageDataG = cVar.g(url);
        if (pageDataG == null) {
            pageDataG = new PageData(null, null, null, null, null, null, null, null, null, 511, null);
        }
        final Ref.BooleanRef booleanRef = new Ref.BooleanRef();
        long jCurrentTimeMillis = System.currentTimeMillis();
        final Ref.IntRef intRef = new Ref.IntRef();
        final Ref.LongRef longRef = new Ref.LongRef();
        CompareResponse compareResponseA = this.f72779d.a(new CompareRequest(pageDataG, pageData));
        cVar.u(url);
        cVar.w(url, versionCode);
        if (compareResponseA.getRemoveFileList().isEmpty() && compareResponseA.getCopyFileList().isEmpty() && compareResponseA.getDownloadFileList().isEmpty()) {
            z10 = false;
        } else {
            cVar.t(url);
            cVar.s(url, false);
            z10 = true;
        }
        this.f72780e.add(new wl.b(url, versionCode, compareResponseA.getRemoveFileList()));
        this.f72780e.add(new wl.a(url, versionCode, compareResponseA.getCopyFileList()));
        this.f72780e.add(new wl.c(url, versionCode, compareResponseA.getDownloadFileList(), new Function4() {
            @Override
            public final Object invoke(Object obj, Object obj2, Object obj3, Object obj4) {
                return c.b(booleanRef, intRef, longRef, ((Boolean) obj).booleanValue(), (String) obj2, ((Integer) obj3).intValue(), ((Long) obj4).longValue());
            }
        }));
        Iterator it2 = this.f72780e.iterator();
        while (it2.hasNext()) {
            ((wl.d) it2.next()).invoke();
        }
        if (intRef.element == compareResponseA.getDownloadFileList().size()) {
            com.transsion.lib_web.download_render.c.f44800a.s(url, true);
        }
        if (z10) {
            ReportUtil reportUtil = ReportUtil.f44816a;
            String versionCode2 = pageData.getVersionCode();
            if (versionCode2 == null) {
                versionCode2 = "";
            }
            int size = compareResponseA.getRemoveFileList().size();
            int size2 = compareResponseA.getCopyFileList().size();
            int size3 = compareResponseA.getDownloadFileList().size();
            List<FileData> files2 = pageData.getFiles();
            reportUtil.b(url, versionCode2, size, size2, size3, files2 != null ? files2.size() : 0, intRef.element, System.currentTimeMillis() - jCurrentTimeMillis, booleanRef.element, compareResponseA.getTotalFileSize(), longRef.element);
        }
        h.f69205a.a(this.f72778c, "<FileDownloadTask> end id:" + this.f72776a);
    }
}
