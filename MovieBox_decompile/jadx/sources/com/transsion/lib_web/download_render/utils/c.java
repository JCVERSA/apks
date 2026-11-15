package com.transsion.lib_web.download_render.utils;

import android.net.Uri;
import com.blankj.utilcode.util.Utils;
import java.io.File;
import java.io.FileFilter;
import java.util.List;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

public final class c {

    public static final c f44820a = new c();

    private c() {
    }

    public static final boolean d(File file) {
        return file.isDirectory();
    }

    public final File b(String url, String fileUrl, String fileMd5, String str) {
        int iV0;
        Intrinsics.h(url, "url");
        Intrinsics.h(fileUrl, "fileUrl");
        Intrinsics.h(fileMd5, "fileMd5");
        File file = new File(Utils.a().getFilesDir(), "DownloadRender");
        if (!file.exists()) {
            file.mkdirs();
        }
        File file2 = new File(file, wg.a.f74277a.a(url));
        if (!file2.exists()) {
            file2.mkdirs();
        }
        Uri uri = Uri.parse(fileUrl);
        Intrinsics.g(uri, "parse(this)");
        String lastPathSegment = uri.getLastPathSegment();
        String strQ = "";
        if (lastPathSegment == null) {
            lastPathSegment = "";
        }
        int iV1 = StringsKt.v0(lastPathSegment, ".", 0, false, 6, null);
        if (iV1 != -1) {
            strQ = lastPathSegment.substring(iV1, lastPathSegment.length());
            Intrinsics.g(strQ, "substring(...)");
        }
        if (strQ.length() == 0 && str != null && (iV0 = StringsKt.v0(str, "/", 0, false, 6, null)) != -1) {
            String strSubstring = str.substring(iV0, str.length());
            Intrinsics.g(strSubstring, "substring(...)");
            strQ = StringsKt.Q(strSubstring, "/", ".", false, 4, null);
        }
        return new File(file2, fileMd5 + ((Object) strQ));
    }

    public final List c(String path) {
        List listG0;
        Intrinsics.h(path, "path");
        File file = new File(path);
        if (!file.exists() || !file.isDirectory()) {
            return CollectionsKt.l();
        }
        File[] fileArrListFiles = file.listFiles(new FileFilter() {
            @Override
            public final boolean accept(File file2) {
                return c.d(file2);
            }
        });
        return (fileArrListFiles == null || (listG0 = ArraysKt.G0(fileArrListFiles)) == null) ? CollectionsKt.l() : listG0;
    }
}
