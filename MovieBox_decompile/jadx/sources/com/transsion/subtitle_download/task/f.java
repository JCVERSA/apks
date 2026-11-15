package com.transsion.subtitle_download.task;

import android.app.Application;
import com.blankj.utilcode.util.Utils;
import com.cloud.tmc.kernel.utils.UrlUtils;
import com.transsion.subtitle_download.SubtitleDownloadManager;
import com.transsion.subtitle_download.db.SubtitleDownloadDatabase;
import com.transsion.subtitle_download.db.SubtitleDownloadTable;
import java.io.File;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import okhttp3.Response;
import okhttp3.ResponseBody;

public final class f extends b {
    public static final Unit o(SubtitleDownloadTable subtitleDownloadTable, int i10) {
        SubtitleDownloadManager.f52963a.p(i10, subtitleDownloadTable);
        return Unit.f64096a;
    }

    public static final Unit p(SubtitleDownloadTable subtitleDownloadTable, String str, f fVar) {
        subtitleDownloadTable.setPath(str);
        com.transsion.subtitle_download.utils.e.f53012a.j(subtitleDownloadTable);
        subtitleDownloadTable.setStatus(5);
        SubtitleDownloadDatabase.Companion companion = SubtitleDownloadDatabase.INSTANCE;
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        companion.b(applicationA).l0().f(subtitleDownloadTable);
        com.transsion.subtitle_download.utils.b.f53009a.a(fVar.l() + " --> disposeOnResponse() --> 文件保存在 = " + str + " -- resourceId = " + subtitleDownloadTable.getResourceId() + " --> getSubtitleInfo = " + subtitleDownloadTable.getSubtitleInfo());
        SubtitleDownloadManager.f52963a.n(subtitleDownloadTable);
        return Unit.f64096a;
    }

    @Override
    public void i(Response response, final SubtitleDownloadTable dbBean) {
        String str;
        String str2;
        String strH1;
        Intrinsics.h(response, "response");
        Intrinsics.h(dbBean, "dbBean");
        ResponseBody responseBodyBody = response.body();
        long contentLength = responseBodyBody != null ? responseBodyBody.getContentLength() : 0L;
        if (response.body() == null) {
            com.transsion.subtitle_download.utils.b.f53009a.b(l() + " --> disposeOnResponse() --> null == response.body --> headers = " + response.headers());
        }
        String url = dbBean.getUrl();
        String strF1 = null;
        if (url != null && (strH1 = StringsKt.h1(url, UrlUtils.QUESTION_MARK, null, 2, null)) != null) {
            strF1 = StringsKt.f1(strH1, ".", null, 2, null);
        }
        String strValueOf = String.valueOf(strF1);
        if (dbBean.getEp() > 0) {
            str = dbBean.getSubjectFileName() + "_S" + dbBean.getSe() + "_E" + dbBean.getEp() + "_" + dbBean.getLanName() + "." + strValueOf;
        } else {
            str = dbBean.getSubjectFileName() + "_" + dbBean.getLanName() + "." + strValueOf;
        }
        if (dbBean.getEp() > 0) {
            str2 = b.f52981a.c() + File.separatorChar + dbBean.getSubjectFileName() + "_S" + dbBean.getSe() + "_E" + dbBean.getEp();
        } else {
            str2 = b.f52981a.c() + File.separatorChar + dbBean.getSubjectFileName();
        }
        com.transsion.subtitle_download.utils.e eVar = com.transsion.subtitle_download.utils.e.f53012a;
        eVar.a(str2);
        final String path = eVar.h(str2, str).getPath();
        com.transsion.subtitle_download.utils.b.f53009a.a(l() + " --> disposeOnResponse() --> 接口请求成功 开始保存数据到本 --> " + dbBean.getName() + "." + dbBean.getResourceId() + ",文件大小 = " + contentLength + " --> destination = " + path);
        Intrinsics.e(path);
        j(response, path, contentLength, dbBean, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return f.o(dbBean, ((Integer) obj).intValue());
            }
        }, new Function0() {
            @Override
            public final Object invoke() {
                return f.p(dbBean, path, this);
            }
        });
    }
}
