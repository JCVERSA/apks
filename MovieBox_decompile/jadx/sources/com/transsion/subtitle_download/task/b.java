package com.transsion.subtitle_download.task;

import android.app.Application;
import android.os.Environment;
import com.blankj.utilcode.util.Utils;
import com.transsion.subtitle_download.SubtitleDownloadManager;
import com.transsion.subtitle_download.db.SubtitleDownloadDatabase;
import com.transsion.subtitle_download.db.SubtitleDownloadTable;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.concurrent.TimeUnit;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Unit;
import kotlin.io.CloseableKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.ResponseBody;

public abstract class b {

    public static final a f52981a = new a(0 == true ? 1 : 0);

    private static final String f52982b;

    private static final String f52983c;

    private static final Lazy f52984d;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final OkHttpClient b() {
            return (OkHttpClient) b.f52984d.getValue();
        }

        public final String c() {
            return b.f52982b;
        }

        public final String d() {
            return b.f52983c;
        }

        private a() {
        }
    }

    public static final class C0645b implements Callback {

        final SubtitleDownloadTable f52986b;

        final Function0 f52987c;

        C0645b(SubtitleDownloadTable subtitleDownloadTable, Function0 function0) {
            this.f52986b = subtitleDownloadTable;
            this.f52987c = function0;
        }

        @Override
        public void onFailure(Call call, IOException e10) {
            Intrinsics.h(call, "call");
            Intrinsics.h(e10, "e");
            b.this.h(this.f52986b, new RuntimeException(e10.getMessage()));
            this.f52987c.invoke();
        }

        @Override
        public void onResponse(Call call, Response response) {
            int iCode;
            Intrinsics.h(call, "call");
            Intrinsics.h(response, "response");
            if (response.isSuccessful()) {
                b.this.i(response, this.f52986b);
                this.f52987c.invoke();
            } else if (response.code() != 404 && 400 <= (iCode = response.code()) && iCode < 600) {
                b.this.g(response, this.f52986b, this.f52987c);
            } else {
                b.this.h(this.f52986b, new RuntimeException(response.message()));
                this.f52987c.invoke();
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    static {
        File externalFilesDir = Utils.a().getExternalFilesDir(Environment.DIRECTORY_DOWNLOADS);
        String absolutePath = externalFilesDir != null ? externalFilesDir.getAbsolutePath() : null;
        char c10 = File.separatorChar;
        f52982b = absolutePath + c10 + "subtitle";
        File externalFilesDir2 = Utils.a().getExternalFilesDir(Environment.DIRECTORY_DOWNLOADS);
        f52983c = (externalFilesDir2 != null ? externalFilesDir2.getAbsolutePath() : null) + c10 + "subtitle_zip";
        f52984d = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return b.f();
            }
        });
    }

    public static final OkHttpClient f() {
        OkHttpClient.Builder builder = new OkHttpClient.Builder();
        TimeUnit timeUnit = TimeUnit.SECONDS;
        return builder.connectTimeout(30L, timeUnit).writeTimeout(30L, timeUnit).readTimeout(30L, timeUnit).cache(null).build();
    }

    public final void g(Response response, SubtitleDownloadTable subtitleDownloadTable, Function0 function0) {
        h(subtitleDownloadTable, new RuntimeException(response.message()));
        function0.invoke();
    }

    public final void h(SubtitleDownloadTable dbBean, Exception e10) {
        Intrinsics.h(dbBean, "dbBean");
        Intrinsics.h(e10, "e");
        dbBean.setFailCount(dbBean.getFailCount() + 1);
        com.transsion.subtitle_download.utils.b bVar = com.transsion.subtitle_download.utils.b.f53009a;
        bVar.b(l() + " --> disposeOnFailure() --> e = " + e10.getMessage() + " -- getSubtitleInfo = " + dbBean.getSubtitleInfo() + " --> dbBean.failCount = " + dbBean.getFailCount());
        dbBean.setStatus(6);
        if (dbBean.getType() == 2 || dbBean.getType() == 4 || dbBean.getType() == 5 || dbBean.getFailCount() > 5) {
            bVar.b(l() + " --> disposeOnFailure() --> delete(dbBean) --> 如果是搜索字幕，下载失败就从数据库移除 --> getSubtitleInfo = " + dbBean.getSubtitleInfo() + " --> failCount = " + dbBean.getFailCount());
            SubtitleDownloadDatabase.Companion companion = SubtitleDownloadDatabase.INSTANCE;
            Application applicationA = Utils.a();
            Intrinsics.g(applicationA, "getApp(...)");
            companion.b(applicationA).l0().g(dbBean);
        } else {
            SubtitleDownloadDatabase.Companion companion2 = SubtitleDownloadDatabase.INSTANCE;
            Application applicationA2 = Utils.a();
            Intrinsics.g(applicationA2, "getApp(...)");
            companion2.b(applicationA2).l0().f(dbBean);
        }
        SubtitleDownloadManager.f52963a.o(e10, dbBean);
    }

    public abstract void i(Response response, SubtitleDownloadTable subtitleDownloadTable);

    public boolean j(Response response, String destination, long j10, SubtitleDownloadTable dbBean, Function1 progressCallback, Function0 completeCallback) {
        Intrinsics.h(response, "response");
        Intrinsics.h(destination, "destination");
        Intrinsics.h(dbBean, "dbBean");
        Intrinsics.h(progressCallback, "progressCallback");
        Intrinsics.h(completeCallback, "completeCallback");
        if (j10 <= 0 && !dbBean.isOpenSbNewApi()) {
            h(dbBean, new RuntimeException(l() + " --> disposeOutputStream --> length <= 0 --> length = " + j10));
            return false;
        }
        com.transsion.subtitle_download.utils.e eVar = com.transsion.subtitle_download.utils.e.f53012a;
        eVar.a(f52982b);
        eVar.a(f52983c);
        try {
            ResponseBody responseBodyBody = response.body();
            InputStream inputStreamByteStream = responseBodyBody != null ? responseBodyBody.byteStream() : null;
            try {
                FileOutputStream fileOutputStream = new FileOutputStream(destination);
                try {
                    byte[] bArr = new byte[102400];
                    dbBean.setStatus(2);
                    int i10 = 0;
                    int i11 = 0;
                    while (true) {
                        if (inputStreamByteStream != null && (i10 = inputStreamByteStream.read(bArr)) == -1) {
                            Unit unit = Unit.f64096a;
                            CloseableKt.a(fileOutputStream, null);
                            CloseableKt.a(inputStreamByteStream, null);
                            return true;
                        }
                        fileOutputStream.write(bArr, 0, i10);
                        i11 += i10;
                        int i12 = (int) (((i11 * 1.0f) / j10) * 100);
                        progressCallback.invoke(Integer.valueOf(i12));
                        if (i12 >= 100) {
                            completeCallback.invoke();
                        }
                        try {
                            throw th;
                        } catch (Throwable th2) {
                            CloseableKt.a(inputStreamByteStream, th);
                            throw th2;
                        }
                    }
                } catch (Throwable th3) {
                    try {
                        throw th3;
                    } catch (Throwable th4) {
                        CloseableKt.a(fileOutputStream, th3);
                        throw th4;
                    }
                }
            } catch (Throwable th5) {
                throw th5;
            }
        } catch (Exception e10) {
            h(dbBean, new RuntimeException(l() + " --> disposeOutputStream --> 字幕下载出问题了,e = " + e10.getMessage()));
            return false;
        }
    }

    public final void k(SubtitleDownloadTable dbBean, Function0 callback) {
        Intrinsics.h(dbBean, "dbBean");
        Intrinsics.h(callback, "callback");
        com.transsion.subtitle_download.utils.b bVar = com.transsion.subtitle_download.utils.b.f53009a;
        bVar.a(l() + " --> download() --> 字幕下载 --> 开始执行下载任务了 --> getSubtitleInfo = " + dbBean.getSubtitleInfo());
        bVar.a("开始执行下载任务了 --> url = " + dbBean.getUrl());
        Request.Builder builder = new Request.Builder();
        String url = dbBean.getUrl();
        if (url == null) {
            url = "";
        }
        f52981a.b().newCall(builder.url(url).build()).enqueue(new C0645b(dbBean, callback));
    }

    public final String l() {
        String simpleName = getClass().getSimpleName();
        Intrinsics.g(simpleName, "getSimpleName(...)");
        return simpleName;
    }
}
