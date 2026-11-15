package com.transsnet.downloader.core.task;

import com.google.firebase.perf.network.FirebasePerfOkHttpClient;
import com.transsion.baselib.db.download.DownloadBean;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.k;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;
import okhttp3.Call;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.ResponseBody;

public final class DownloadFileInfoTask {
    private final void c(DownloadBean downloadBean, long j10) {
        if (j10 <= 0) {
            return;
        }
        wf.a.C0922a c0922a = wf.a.f74274a;
        c0922a.c("download", "-------try_update_download_size, net size = " + downloadBean.getSize() + ", real size = " + j10, true);
        Long size = downloadBean.getSize();
        if (size != null && size.longValue() == j10) {
            return;
        }
        c0922a.c("download", "-------update_download_size, net size = " + downloadBean.getSize() + ", real size = " + j10, true);
        downloadBean.setSize(Long.valueOf(j10));
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object d(DownloadBean downloadBean, a aVar, Continuation continuation) throws Throwable {
        DownloadFileInfoTask$checkWithOkhttp$1 downloadFileInfoTask$checkWithOkhttp$1;
        if (continuation instanceof DownloadFileInfoTask$checkWithOkhttp$1) {
            downloadFileInfoTask$checkWithOkhttp$1 = (DownloadFileInfoTask$checkWithOkhttp$1) continuation;
            int i10 = downloadFileInfoTask$checkWithOkhttp$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                downloadFileInfoTask$checkWithOkhttp$1.label = i10 - Integer.MIN_VALUE;
            } else {
                downloadFileInfoTask$checkWithOkhttp$1 = new DownloadFileInfoTask$checkWithOkhttp$1(this, continuation);
            }
        } else {
            downloadFileInfoTask$checkWithOkhttp$1 = new DownloadFileInfoTask$checkWithOkhttp$1(this, continuation);
        }
        Object obj = downloadFileInfoTask$checkWithOkhttp$1.result;
        Object objF = IntrinsicsKt.f();
        int i11 = downloadFileInfoTask$checkWithOkhttp$1.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            long j10 = 0;
            boolean z10 = false;
            Call callNewCall = null;
            try {
                OkHttpClient okHttpClientC = com.transsnet.downloader.core.b.f56405c.a().c();
                Request.Builder builder = new Request.Builder();
                builder.url(downloadBean.getUrl());
                builder.addHeader("Range", "bytes=0-");
                callNewCall = okHttpClientC.newCall(builder.build());
                Response responseExecute = FirebasePerfOkHttpClient.execute(callNewCall);
                int iCode = responseExecute.code();
                if (iCode == 200 || iCode == 206) {
                    ResponseBody responseBodyBody = responseExecute.body();
                    long contentLength = responseBodyBody != null ? responseBodyBody.getContentLength() : 0L;
                    c(downloadBean, contentLength);
                    z10 = true;
                    j10 = contentLength;
                }
                if (callNewCall != null) {
                    callNewCall.cancel();
                }
                downloadFileInfoTask$checkWithOkhttp$1.label = 1;
                if (aVar.a(z10, j10, downloadFileInfoTask$checkWithOkhttp$1) == objF) {
                    return objF;
                }
            } catch (Throwable th2) {
                try {
                    wf.a.f74274a.i("download", "DownloadFileInfoTask --> checkWithOkhttp --> e = " + th2, true);
                    if (callNewCall != null) {
                        callNewCall.cancel();
                    }
                    downloadFileInfoTask$checkWithOkhttp$1.label = 2;
                    if (aVar.a(false, 0L, downloadFileInfoTask$checkWithOkhttp$1) == objF) {
                        return objF;
                    }
                } catch (Throwable th3) {
                    if (callNewCall != null) {
                        callNewCall.cancel();
                    }
                    downloadFileInfoTask$checkWithOkhttp$1.L$0 = th3;
                    downloadFileInfoTask$checkWithOkhttp$1.label = 3;
                    if (aVar.a(false, 0L, downloadFileInfoTask$checkWithOkhttp$1) == objF) {
                        return objF;
                    }
                    throw th3;
                }
            }
        } else {
            if (i11 != 1 && i11 != 2) {
                if (i11 != 3) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                Throwable th4 = (Throwable) downloadFileInfoTask$checkWithOkhttp$1.L$0;
                ResultKt.b(obj);
                throw th4;
            }
            ResultKt.b(obj);
        }
        return Unit.f64096a;
    }

    public final void b(DownloadBean bean, a callback) {
        Intrinsics.h(bean, "bean");
        Intrinsics.h(callback, "callback");
        k.d(o0.a(y0.b()), null, null, new DownloadFileInfoTask$checkFileInfo$1(this, bean, callback, null), 3, null);
    }
}
