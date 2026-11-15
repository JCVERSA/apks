package com.cloud.h5update.utils;

import android.content.Context;
import android.os.Bundle;
import com.cloud.h5update.TH5Update;
import com.cloud.h5update.bean.DownloadEntity;
import com.cloud.h5update.bean.PreloadResource;
import com.cloud.h5update.download.DownloadManager;
import com.cloud.h5update.download.DownloadTask;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.text.StringsKt;

public final class a {

    public static final a f20676a = new a();

    private a() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v1, types: [T, com.cloud.h5update.bean.DownloadEntity] */
    /* JADX WARN: Type inference failed for: r6v0, types: [T, com.cloud.h5update.bean.DownloadEntity] */
    public final void a(Context context, PreloadResource preloadResource) {
        Intrinsics.h(context, "context");
        Intrinsics.h(preloadResource, "preloadResource");
        String staticZipUrl = preloadResource.getStaticZipUrl();
        if (staticZipUrl == null || StringsKt.q0(staticZipUrl)) {
            return;
        }
        l lVar = l.f20693a;
        String strI = lVar.i(preloadResource);
        DownloadManager.a aVar = DownloadManager.f20652g;
        DownloadTask downloadTaskH = aVar.a().h(strI);
        Ref.ObjectRef objectRef = new Ref.ObjectRef();
        objectRef.element = new DownloadEntity(preloadResource.getEncryptedStaticZip(), staticZipUrl);
        C0273a c0273a = new C0273a(preloadResource, objectRef, context);
        if (downloadTaskH == null) {
            ((DownloadEntity) objectRef.element).setTaskId(strI);
            DownloadTask downloadTask = new DownloadTask((DownloadEntity) objectRef.element);
            downloadTask.setListener(c0273a);
            v6.b bVarJ = TH5Update.f20622c.j();
            if (bVarJ != null) {
                bVarJ.onZipDownloadStart(preloadResource.getStaticZipUrl());
            }
            new Bundle().putString("url", preloadResource.getStaticZipUrl());
            DownloadManager.c(aVar.a(), downloadTask, false, 2, null);
            return;
        }
        ?? downloadEntity = downloadTaskH.getDownloadEntity();
        if (downloadEntity == 0) {
        }
        objectRef.element = downloadEntity;
        downloadTaskH.setListener(c0273a);
        DownloadManager downloadManagerA = aVar.a();
        switch (downloadEntity.getTaskStatus()) {
            case 0:
                DownloadManager.c(downloadManagerA, downloadTaskH, false, 2, null);
                break;
            case 1:
                DownloadManager.c(downloadManagerA, downloadTaskH, false, 2, null);
                break;
            case 2:
                downloadManagerA.m(downloadTaskH);
                break;
            case 3:
                DownloadManager.c(downloadManagerA, downloadTaskH, false, 2, null);
                break;
            case 4:
                DownloadManager.c(downloadManagerA, downloadTaskH, false, 2, null);
                break;
            case 5:
                DownloadManager.c(downloadManagerA, downloadTaskH, false, 2, null);
                break;
            case 6:
                lVar.n(context, preloadResource);
                break;
        }
    }

    public final void b(String packageName, PreloadResource preloadResource) {
        Intrinsics.h(packageName, "packageName");
        Intrinsics.h(preloadResource, "preloadResource");
        String staticZipUrl = preloadResource.getStaticZipUrl();
        if (staticZipUrl == null || StringsKt.q0(staticZipUrl)) {
            return;
        }
        TH5Update.a aVar = TH5Update.f20622c;
        v6.b bVarJ = aVar.j();
        if (bVarJ != null) {
            String url = preloadResource.getUrl();
            if (url == null) {
                url = "";
            }
            if (!bVarJ.onZipTryDownload(packageName, url, preloadResource.getStaticZipUrl())) {
                return;
            }
        }
        Context contextC = aVar.c();
        if (!StringsKt.W(staticZipUrl, "http://", false, 2, null) && !StringsKt.W(staticZipUrl, "https://", false, 2, null)) {
            rf.b.f71178a.c("error url :" + staticZipUrl);
            v6.b bVarJ2 = aVar.j();
            if (bVarJ2 != null) {
                String staticZipUrl2 = preloadResource.getStaticZipUrl();
                Intrinsics.e(staticZipUrl2);
                bVarJ2.onError(staticZipUrl2, 101, "ERROR_PARAMS");
                return;
            }
            return;
        }
        if (StringsKt.G(staticZipUrl, ".zip", false, 2, null)) {
            a(contextC, preloadResource);
            return;
        }
        rf.b.f71178a.c("error url :" + staticZipUrl);
        v6.b bVarJ3 = aVar.j();
        if (bVarJ3 != null) {
            String staticZipUrl3 = preloadResource.getStaticZipUrl();
            Intrinsics.e(staticZipUrl3);
            bVarJ3.onError(staticZipUrl3, 101, "ERROR_PARAMS");
        }
    }

    public static final class C0273a implements com.cloud.h5update.download.a {

        final PreloadResource f20677a;

        final Ref.ObjectRef f20678b;

        final Context f20679c;

        C0273a(PreloadResource preloadResource, Ref.ObjectRef objectRef, Context context) {
            this.f20677a = preloadResource;
            this.f20678b = objectRef;
            this.f20679c = context;
        }

        @Override
        public void a(DownloadTask downloadTask) {
            v6.b bVarJ = TH5Update.f20622c.j();
            if (bVarJ != null) {
                bVarJ.onZipDownloadCancel(this.f20677a.getStaticZipUrl());
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public void b(DownloadTask downloadTask) {
            v6.b bVarJ = TH5Update.f20622c.j();
            if (bVarJ != null) {
                bVarJ.onDownloadProcess(this.f20677a.getStaticZipUrl(), ((DownloadEntity) this.f20678b.element).getCompletedSize(), ((DownloadEntity) this.f20678b.element).getTotalSize());
            }
        }

        @Override
        public void d(DownloadTask downloadTask, int i10) {
            v6.b bVarJ = TH5Update.f20622c.j();
            if (bVarJ != null) {
                String staticZipUrl = this.f20677a.getStaticZipUrl();
                Intrinsics.e(staticZipUrl);
                bVarJ.onError(staticZipUrl, 103, "ERROR_DOWNLOAD");
            }
        }

        @Override
        public void e(DownloadTask downloadTask) {
            new Bundle().putString("url", this.f20677a.getStaticZipUrl());
            TH5Update.a aVar = TH5Update.f20622c;
            v6.b bVarJ = aVar.j();
            if (bVarJ != null) {
                bVarJ.onZipDownloadFinish(this.f20677a.getStaticZipUrl());
            }
            l.f20693a.n(this.f20679c, this.f20677a);
            aVar.i().put(this.f20677a.getStaticZipUrl(), Boolean.TRUE);
            aVar.a();
        }

        @Override
        public void c(DownloadTask downloadTask) {
        }
    }
}
