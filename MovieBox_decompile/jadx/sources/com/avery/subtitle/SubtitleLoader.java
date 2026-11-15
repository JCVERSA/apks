package com.avery.subtitle;

import android.text.TextUtils;
import com.avery.subtitle.exception.FatalParsingException;
import com.google.firebase.perf.network.FirebasePerfUrlConnection;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.coroutines.k;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;
import m5.d;

public final class SubtitleLoader {

    public static final SubtitleLoader f19263a = new SubtitleLoader();

    private static final String f19264b = SubtitleLoader.class.getSimpleName();

    private static n0 f19265c = o0.a(y0.b());

    public interface a {
        void a(d dVar);

        void b(Exception exc);
    }

    private SubtitleLoader() {
    }

    private final d c(InputStream inputStream, String str, String str2) throws IOException, FatalParsingException {
        String strSubstring = str.substring(StringsKt.v0(str, "/", 0, false, 6, null) + 1);
        Intrinsics.g(strSubstring, "this as java.lang.String).substring(startIndex)");
        String strSubstring2 = strSubstring.substring(StringsKt.v0(strSubstring, ".", 0, false, 6, null));
        Intrinsics.g(strSubstring2, "this as java.lang.String).substring(startIndex)");
        StringBuilder sb2 = new StringBuilder();
        sb2.append("parse: name = ");
        sb2.append(strSubstring);
        sb2.append(", ext = ");
        sb2.append(strSubstring2);
        if (StringsKt.H(".srt", strSubstring2, true)) {
            d dVarA = new l5.b().a(strSubstring, str2, inputStream);
            Intrinsics.g(dVarA, "FormatSRT().parseFile(fileName, unicode, `is`)");
            return dVarA;
        }
        if (StringsKt.H(".ass", strSubstring2, true) || StringsKt.H(".ssa", strSubstring2, true)) {
            d dVarB = new l5.a().b(strSubstring, str2, inputStream);
            Intrinsics.g(dVarB, "FormatASS().parseFile(fileName, unicode, `is`)");
            return dVarB;
        }
        if (StringsKt.H(".stl", strSubstring2, true)) {
            d dVarB2 = new l5.c().b(strSubstring, str2, inputStream);
            Intrinsics.g(dVarB2, "FormatSTL().parseFile(fileName, unicode, `is`)");
            return dVarB2;
        }
        if (StringsKt.H(".ttml", strSubstring2, true)) {
            d dVarB3 = new l5.c().b(strSubstring, str2, inputStream);
            Intrinsics.g(dVarB3, "FormatSTL().parseFile(fileName, unicode, `is`)");
            return dVarB3;
        }
        if (StringsKt.H(".sub", strSubstring2, true)) {
            return new l5.d().b(strSubstring, str2, inputStream);
        }
        d dVarA2 = new l5.b().a(strSubstring, str2, inputStream);
        Intrinsics.g(dVarA2, "FormatSRT().parseFile(fileName, unicode, `is`)");
        return dVarA2;
    }

    public final d d(String str, String str2) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("parseLocal: localSubtitlePath = ");
        sb2.append(str);
        File file = new File(str);
        FileInputStream fileInputStream = new FileInputStream(file);
        String path = file.getPath();
        Intrinsics.g(path, "file.path");
        return c(fileInputStream, path, str2);
    }

    private final void e(String str, String str2, a aVar) {
        k.d(f19265c, null, null, new SubtitleLoader$loadFromLocalAsync$1(str, str2, aVar, null), 3, null);
    }

    public final d f(String str, String str2) throws IOException {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("parseRemote: remoteSubtitlePath = ");
        sb2.append(str);
        URL url = new URL(str);
        InputStream inputStreamOpenStream = FirebasePerfUrlConnection.openStream(url);
        Intrinsics.g(inputStreamOpenStream, "url.openStream()");
        String path = url.getPath();
        Intrinsics.g(path, "url.path");
        return c(inputStreamOpenStream, path, str2);
    }

    private final void g(String str, String str2, a aVar) {
        k.d(f19265c, null, null, new SubtitleLoader$loadFromRemoteAsync$1(str, str2, aVar, null), 3, null);
    }

    public final void h(String path, String unicode, a callback) {
        Intrinsics.h(path, "path");
        Intrinsics.h(unicode, "unicode");
        Intrinsics.h(callback, "callback");
        if (TextUtils.isEmpty(path)) {
            return;
        }
        if (StringsKt.W(path, "http://", false, 2, null) || StringsKt.W(path, "https://", false, 2, null)) {
            g(path, unicode, callback);
        } else {
            e(path, unicode, callback);
        }
    }
}
