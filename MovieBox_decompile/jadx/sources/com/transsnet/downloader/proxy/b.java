package com.transsnet.downloader.proxy;

import android.content.Context;
import com.danikula.videocache.HttpProxyCacheServer;
import com.danikula.videocache.q;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsnet.downloader.manager.DownloadEsHelper;
import java.io.File;
import kotlin.jvm.internal.Intrinsics;
import ui.m0;

public final class b {

    private HttpProxyCacheServer f57365a;

    private DownloadFileCache f57366b;

    private boolean f57367c;

    private String f57368d = "";

    public final void a(String resourceId, c callback) {
        Intrinsics.h(resourceId, "resourceId");
        Intrinsics.h(callback, "callback");
        DownloadFileCache downloadFileCache = this.f57366b;
        if (downloadFileCache != null) {
            downloadFileCache.f(resourceId, callback);
        }
    }

    public final void b() {
        DownloadFileCache downloadFileCache = this.f57366b;
        if (downloadFileCache != null) {
            downloadFileCache.B();
        }
    }

    public final void c() {
        HttpProxyCacheServer httpProxyCacheServer = this.f57365a;
        if (httpProxyCacheServer != null) {
            httpProxyCacheServer.g();
        }
    }

    public final DownloadBean d() {
        DownloadFileCache downloadFileCache;
        DownloadFileCache downloadFileCache2 = this.f57366b;
        if ((downloadFileCache2 == null || !downloadFileCache2.l()) && (downloadFileCache = this.f57366b) != null) {
            return downloadFileCache.i();
        }
        return null;
    }

    public final m0 e() {
        DownloadFileCache downloadFileCache = this.f57366b;
        if (downloadFileCache != null) {
            return downloadFileCache.j();
        }
        return null;
    }

    public final String f(DownloadBean bean) {
        DownloadFileCache downloadFileCache;
        String strJ;
        Intrinsics.h(bean, "bean");
        DownloadFileCache downloadFileCache2 = this.f57366b;
        DownloadBean downloadBeanI = downloadFileCache2 != null ? downloadFileCache2.i() : null;
        if ((downloadBeanI == null || !Intrinsics.c(downloadBeanI.getResourceId(), bean.getResourceId())) && (downloadFileCache = this.f57366b) != null) {
            downloadFileCache.q(bean);
        }
        String resourceId = bean.getResourceId();
        if (resourceId == null) {
            resourceId = "";
        }
        this.f57368d = resourceId;
        HttpProxyCacheServer httpProxyCacheServer = this.f57365a;
        return (httpProxyCacheServer == null || (strJ = httpProxyCacheServer.j(bean.getUrl(), bean.getPath(), true)) == null) ? bean.getUrl() : strJ;
    }

    public final void g(Context context) {
        Intrinsics.h(context, "context");
        if (this.f57367c) {
            return;
        }
        this.f57367c = true;
        q.d(false);
        this.f57366b = new DownloadFileCache();
        this.f57365a = new HttpProxyCacheServer.a(context).c(new File(DownloadEsHelper.f57201m.a().h().getAbsolutePath())).d(this.f57366b).a();
    }

    public final void h() {
        this.f57368d = "";
        DownloadFileCache downloadFileCache = this.f57366b;
        if (downloadFileCache != null) {
            downloadFileCache.o();
        }
    }

    public final void i(String resourceId) {
        Intrinsics.h(resourceId, "resourceId");
        DownloadFileCache downloadFileCache = this.f57366b;
        if (downloadFileCache != null) {
            downloadFileCache.n(resourceId);
        }
    }

    public final void j(String contentType, String resourceId) {
        Intrinsics.h(contentType, "contentType");
        Intrinsics.h(resourceId, "resourceId");
        if (this.f57368d.length() <= 0 || Intrinsics.c(this.f57368d, resourceId)) {
            DownloadFileCache downloadFileCache = this.f57366b;
            if (downloadFileCache != null) {
                downloadFileCache.p(contentType);
            }
            q.a("setCurDownloadContentType, contentType = " + contentType);
        }
    }
}
