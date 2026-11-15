package com.transsion.subtitle_download.utils;

import android.os.Build;
import com.blankj.utilcode.util.Utils;
import com.blankj.utilcode.util.m;
import com.transsion.subtitle_download.SubtitleDownloadManager;
import com.transsion.subtitle_download.db.SubtitleDownloadTable;
import java.io.File;
import java.util.Locale;
import java.util.Random;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

public final class e {

    public static final e f53012a = new e();

    private e() {
    }

    private final String d() {
        String simpleName = e.class.getSimpleName();
        Intrinsics.g(simpleName, "getSimpleName(...)");
        return simpleName;
    }

    public final void a(String directoryPath) {
        Intrinsics.h(directoryPath, "directoryPath");
        File file = new File(directoryPath);
        if (file.exists()) {
            return;
        }
        file.mkdirs();
    }

    public final void b(String str) {
        Object objM453constructorimpl;
        String str2;
        try {
            Result.Companion companion = Result.INSTANCE;
            File file = new File(str == null ? "" : str);
            if (file.exists()) {
                str2 = file.delete() ? "文件删除成功" : "文件删除失败";
            } else {
                str2 = "文件不存在";
            }
            b.f53009a.a(f53012a.d() + " --> deleteFile() --> " + str2 + " --> path = " + str);
            objM453constructorimpl = Result.m453constructorimpl(Unit.f64096a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
        }
        Throwable thM456exceptionOrNullimpl = Result.m456exceptionOrNullimpl(objM453constructorimpl);
        if (thM456exceptionOrNullimpl == null) {
            return;
        }
        b.f53009a.b(f53012a.d() + " --> deleteFile() --> 删除文件发生异常 --> it = " + thM456exceptionOrNullimpl);
    }

    public final String c(int i10) {
        Random random = new Random();
        StringBuilder sb2 = new StringBuilder();
        for (int i11 = 0; i11 < i10; i11++) {
            sb2.append("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789".charAt(random.nextInt(62)));
        }
        return sb2.toString();
    }

    public final String e() {
        return "en";
    }

    public final String f() {
        Object objM453constructorimpl;
        try {
            Result.Companion companion = Result.INSTANCE;
            String strG = SubtitleDownloadManager.f52963a.g();
            Locale locale = Build.VERSION.SDK_INT >= 24 ? Utils.a().getResources().getConfiguration().getLocales().get(0) : Utils.a().getResources().getConfiguration().locale;
            objM453constructorimpl = Result.m453constructorimpl((Intrinsics.c(locale.getLanguage(), strG) || strG == null || strG.length() <= 0) ? locale.getLanguage() : new Locale(strG, locale.getCountry()).getLanguage());
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
        }
        if (Result.m456exceptionOrNullimpl(objM453constructorimpl) != null) {
            objM453constructorimpl = "";
        }
        return (String) objM453constructorimpl;
    }

    public final String g() {
        return wg.a.f74277a.a(System.currentTimeMillis() + c(10));
    }

    public final File h(String directory, String fileName) {
        Intrinsics.h(directory, "directory");
        Intrinsics.h(fileName, "fileName");
        String strK1 = StringsKt.k1(fileName, '.', null, 2, null);
        String str = "";
        String strC1 = StringsKt.c1(fileName, '.', "");
        if (strC1.length() > 0) {
            str = "." + strC1;
        }
        File file = new File(directory, fileName);
        int i10 = 1;
        while (file.exists()) {
            file = new File(directory, strK1 + "_" + i10 + str);
            i10++;
        }
        return file;
    }

    public final boolean i(String str) {
        if (str != null) {
            return new File(str).exists();
        }
        return false;
    }

    public final boolean j(SubtitleDownloadTable subtitleBean) {
        Intrinsics.h(subtitleBean, "subtitleBean");
        String path = subtitleBean.getPath();
        if (path == null) {
            path = "";
        }
        if (!new File(path).exists()) {
            return false;
        }
        try {
            String path2 = subtitleBean.getPath();
            Intrinsics.e(path2);
            String strB = gy.a.b(m.b(path2), true);
            b.f53009a.a(d() + " --> parseFileCharsetName() --> fileCharsetName = " + strB);
            Intrinsics.e(strB);
            if (strB.length() <= 0) {
                return true;
            }
            subtitleBean.setFileCharsetName(strB);
            return true;
        } catch (Throwable th2) {
            th2.printStackTrace();
            return false;
        }
    }
}
