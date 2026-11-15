package tl;

import com.blankj.utilcode.util.o;
import com.transsion.lib_web.download_render.data.FileData;
import com.transsion.lib_web.download_render.data.PageData;
import com.transsion.lib_web.download_render.data.PageListData;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import kotlin.Unit;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.ResponseBody;
import pl.h;

public final class e implements d {

    private final long f72781a;

    private final PageData f72782b;

    private final String f72783c;

    public e(long j10, PageData pageData) {
        Intrinsics.h(pageData, "pageData");
        this.f72781a = j10;
        this.f72782b = pageData;
        this.f72783c = "DR_ManifestDownloadTask";
    }

    @Override
    public void start() {
        PageData pageData;
        String manifestUrl;
        List<PageData> h5Pages;
        PageListData pageListDataL = com.transsion.lib_web.download_render.c.f44800a.l();
        if (pageListDataL == null || (h5Pages = pageListDataL.getH5Pages()) == null) {
            pageData = null;
        } else {
            Iterator<T> it = h5Pages.iterator();
            do {
                if (!it.hasNext()) {
                    throw new NoSuchElementException("Collection contains no element matching the predicate.");
                }
                pageData = (PageData) it.next();
            } while (!Intrinsics.c(pageData.getUrl(), this.f72782b.getUrl()));
        }
        List<FileData> files = pageData != null ? pageData.getFiles() : null;
        if ((files != null && !files.isEmpty()) || pageData == null || (manifestUrl = pageData.getManifestUrl()) == null) {
            return;
        }
        try {
            try {
                h hVar = h.f69205a;
                hVar.a(this.f72783c, "<ManifestDownloadTask> start id:" + this.f72781a);
                Response responseExecute = com.transsion.lib_web.zip.loader.b.f44833a.d().newCall(new Request.Builder().url(manifestUrl).build()).execute();
                try {
                    if (!responseExecute.isSuccessful()) {
                        throw new IOException("Unexpected code " + responseExecute);
                    }
                    ResponseBody responseBodyBody = responseExecute.body();
                    if (responseBodyBody != null) {
                        try {
                            pageData.setFiles(((PageData) o.d(responseBodyBody.string(), PageData.class)).getFiles());
                            com.transsion.lib_web.download_render.c.f44800a.o(pageData);
                            Unit unit = Unit.f64096a;
                            CloseableKt.a(responseBodyBody, null);
                        } catch (Throwable th2) {
                            try {
                                throw th2;
                            } catch (Throwable th3) {
                                CloseableKt.a(responseBodyBody, th2);
                                throw th3;
                            }
                        }
                    }
                    CloseableKt.a(responseExecute, null);
                    hVar.a(this.f72783c, "<ManifestDownloadTask> end id:" + this.f72781a);
                    return;
                } catch (Throwable th4) {
                    try {
                        throw th4;
                    } catch (Throwable th5) {
                        CloseableKt.a(responseExecute, th4);
                        throw th5;
                    }
                }
            } catch (Throwable th6) {
                h.f69205a.f(this.f72783c, "<ManifestDownloadTask> download: " + manifestUrl + " fail, msg:" + th6);
                Unit unit2 = Unit.f64096a;
                return;
            }
            h.f69205a.f(this.f72783c, "<ManifestDownloadTask> download: " + manifestUrl + " fail, msg:" + th6);
            Unit unit3 = Unit.f64096a;
            return;
        } finally {
            h.f69205a.a(this.f72783c, "<ManifestDownloadTask> end id:" + this.f72781a);
        }
    }
}
