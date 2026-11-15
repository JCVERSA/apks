package com.transsion.subtitle.helper;

import com.alibaba.sdk.android.oss.common.utils.HttpHeaders;
import com.blankj.utilcode.util.o;
import com.cloud.config.utils.ConstantsKt;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.google.firebase.perf.network.FirebasePerfUrlConnection;
import com.mbridge.msdk.playercommon.exoplayer2.DefaultLoadControl;
import com.transsion.subtitle.bean.OpenSubtitleData;
import com.transsion.subtitle.bean.OpenSubtitleDownloadInfo;
import com.transsion.subtitle.bean.OpenSubtitleResponse;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.ProtocolException;
import java.net.URL;
import java.net.URLConnection;
import java.nio.charset.StandardCharsets;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.TimeoutException;
import javax.net.ssl.SSLHandshakeException;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.text.Regex;

public final class b {

    public static final b f52865a = new b();

    private b() {
    }

    private final String a(String str) {
        int iHashCode = str.hashCode();
        if (iHashCode == 3588) {
            return !str.equals("pt") ? str : "pt-pt";
        }
        if (iHashCode != 3886) {
            return (iHashCode == 100341365 && str.equals("in_id")) ? "id" : str;
        }
        return !str.equals("zh") ? str : "zh-cn";
    }

    private final String c(InputStream inputStream) {
        try {
            try {
                try {
                    InputStreamReader inputStreamReader = new InputStreamReader(inputStream, "UTF-8");
                    char[] cArr = new char[512];
                    StringBuffer stringBuffer = new StringBuffer();
                    Ref.IntRef intRef = new Ref.IntRef();
                    while (true) {
                        int i10 = inputStreamReader.read(cArr);
                        intRef.element = i10;
                        if (i10 == -1) {
                            break;
                        }
                        stringBuffer.append(cArr, 0, i10);
                    }
                    String string = stringBuffer.toString();
                    try {
                        inputStream.close();
                    } catch (Exception unused) {
                    }
                    return string;
                } catch (Throwable th2) {
                    try {
                        inputStream.close();
                    } catch (Exception unused2) {
                    }
                    throw th2;
                }
            } catch (IOException e10) {
                e10.printStackTrace();
                try {
                    inputStream.close();
                    return null;
                } catch (Exception unused3) {
                    return null;
                }
            }
        } catch (UnsupportedEncodingException e11) {
            e11.printStackTrace();
            inputStream.close();
            return null;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:51:0x00a2 A[RETURN, SYNTHETIC] */
    public final String b(String lan) {
        Intrinsics.h(lan, "lan");
        switch (lan) {
            case "ar":
                return "عربي";
            case "bn":
                return "বাংলা";
            case "en":
                return "English";
            case "fr":
                return "Français";
            case "hi":
                return "हिन्दी";
            case "id":
                return "Indonesia";
            case "ru":
                return "Русский";
            case "sw":
                return "Swahili";
            case "ur":
                return "اردو";
            case "fil":
                return "Filipino";
            case "pt-pt":
                return "Português";
            case "zh-cn":
                return "中文(简体)";
            default:
                return "";
        }
    }

    public final Object d(String str, Continuation continuation) {
        int i10;
        String strC;
        try {
            wf.a.C0922a c0922a = wf.a.f74274a;
            com.transsion.baselib.report.a aVar = com.transsion.baselib.report.a.f42192a;
            c0922a.x(aVar.a(), "Subtitle new api download info start:" + str + " ", true);
            URLConnection uRLConnection = (URLConnection) FirebasePerfUrlConnection.instrument(new URL("https://vip-api.opensubtitles.com/api/v1/download").openConnection());
            Intrinsics.f(uRLConnection, "null cannot be cast to non-null type java.net.HttpURLConnection");
            HttpURLConnection httpURLConnection = (HttpURLConnection) uRLConnection;
            httpURLConnection.setConnectTimeout(DefaultLoadControl.DEFAULT_MIN_BUFFER_MS);
            httpURLConnection.setReadTimeout(DefaultLoadControl.DEFAULT_MIN_BUFFER_MS);
            httpURLConnection.setRequestMethod("POST");
            httpURLConnection.setRequestProperty("User-Agent", "player2024");
            httpURLConnection.setRequestProperty("Api-Key", "ZRN9QpqcTxje5UH3bV1RuugwitxkqB53");
            httpURLConnection.setRequestProperty(HttpHeaders.CONTENT_TYPE, "application/json");
            httpURLConnection.setRequestProperty("Accept", "application/json");
            httpURLConnection.getDoOutput();
            OutputStream outputStream = httpURLConnection.getOutputStream();
            try {
                OutputStreamWriter outputStreamWriter = new OutputStreamWriter(outputStream, StandardCharsets.UTF_8);
                outputStreamWriter.write("{\"file_id\":" + str + "}");
                outputStreamWriter.flush();
                Unit unit = Unit.f64096a;
                CloseableKt.a(outputStream, null);
                InputStream inputStream = httpURLConnection.getInputStream();
                Intrinsics.g(inputStream, "getInputStream(...)");
                if (httpURLConnection.getResponseCode() == 200) {
                    c0922a.c(aVar.a(), "Subtitle new api, download info success ", true);
                    strC = c(inputStream);
                } else {
                    c0922a.x(aVar.a(), "Subtitle new api download info fail ", true);
                    strC = null;
                }
                return (OpenSubtitleDownloadInfo) o.d(strC, OpenSubtitleDownloadInfo.class);
            } catch (Throwable th2) {
                try {
                    throw th2;
                } catch (Throwable th3) {
                    CloseableKt.a(outputStream, th2);
                    throw th3;
                }
            }
        } catch (Throwable th4) {
            com.google.firebase.perf.metrics.h hVarE = rc.e.c().e("https://vip-api.opensubtitles.com/api/v1/download", "GET");
            Intrinsics.g(hVarE, "newHttpMetric(...)");
            if (th4 instanceof SSLHandshakeException) {
                i10 = 87;
            } else if (th4 instanceof ProtocolException) {
                i10 = 86;
            } else if (th4 instanceof IOException) {
                i10 = 88;
            } else {
                i10 = th4 instanceof TimeoutException ? 85 : 89;
            }
            hVarE.a(i10);
            th4.printStackTrace();
            wf.a.f74274a.c(com.transsion.baselib.report.a.f42192a.a(), "Subtitle new api download info fail: " + th4 + " ", true);
            return null;
        }
    }

    public final Object e(String str, String str2, Integer num, Integer num2, Continuation continuation) {
        String str3;
        int i10;
        String strC;
        List<OpenSubtitleData> data;
        String lowerCase = new Regex("[\\\\/:#*?\"<>|&,]").replace(str, "").toLowerCase(Locale.ROOT);
        Intrinsics.g(lowerCase, "toLowerCase(...)");
        String strA = a(str2);
        if (num == null && num2 == null) {
            str3 = "https://vip-api.opensubtitles.com/api/v1/subtitles?query=" + lowerCase + "&languages=" + strA;
        } else {
            str3 = "https://vip-api.opensubtitles.com/api/v1/subtitles?query=" + lowerCase + "&languages=" + strA + "&season_number=" + num + "&episode_number=" + num2;
        }
        try {
            wf.a.C0922a c0922a = wf.a.f74274a;
            com.transsion.baselib.report.a aVar = com.transsion.baselib.report.a.f42192a;
            c0922a.c(aVar.a(), "new api getSubtitleInfo url:" + str3, true);
            URLConnection uRLConnection = (URLConnection) FirebasePerfUrlConnection.instrument(new URL(str3).openConnection());
            Intrinsics.f(uRLConnection, "null cannot be cast to non-null type java.net.HttpURLConnection");
            HttpURLConnection httpURLConnection = (HttpURLConnection) uRLConnection;
            httpURLConnection.setConnectTimeout(DefaultLoadControl.DEFAULT_MIN_BUFFER_MS);
            httpURLConnection.setReadTimeout(DefaultLoadControl.DEFAULT_MIN_BUFFER_MS);
            httpURLConnection.setRequestMethod("GET");
            httpURLConnection.setRequestProperty("User-Agent", "player2024");
            httpURLConnection.setRequestProperty("Api-Key", "ZRN9QpqcTxje5UH3bV1RuugwitxkqB53");
            httpURLConnection.connect();
            InputStream inputStream = httpURLConnection.getInputStream();
            Intrinsics.g(inputStream, "getInputStream(...)");
            if (httpURLConnection.getResponseCode() == 200) {
                c0922a.c(aVar.a(), "Subtitle new api success ", true);
                strC = c(inputStream);
            } else {
                c0922a.x(aVar.a(), "Subtitle new api fail ", true);
                strC = null;
            }
            OpenSubtitleResponse openSubtitleResponse = (OpenSubtitleResponse) o.d(strC, OpenSubtitleResponse.class);
            if (openSubtitleResponse != null && (data = openSubtitleResponse.getData()) != null && !data.isEmpty()) {
                return CollectionsKt.U0(openSubtitleResponse.getData());
            }
            f(3, ConstantsKt.ERROR_1000_MESSAGE);
            return null;
        } catch (Throwable th2) {
            String message = th2.getMessage();
            f(3, message != null ? message : "");
            th2.printStackTrace();
            com.google.firebase.perf.metrics.h hVarE = rc.e.c().e(str3, "GET");
            Intrinsics.g(hVarE, "newHttpMetric(...)");
            if (th2 instanceof SSLHandshakeException) {
                i10 = 87;
            } else if (th2 instanceof ProtocolException) {
                i10 = 86;
            } else if (th2 instanceof IOException) {
                i10 = 88;
            } else {
                i10 = th2 instanceof TimeoutException ? 85 : 89;
            }
            hVarE.a(i10);
            wf.a.f74274a.i(com.transsion.baselib.report.a.f42192a.a(), "new api getSubtitleInfo FAIL :" + th2, true);
            return null;
        }
    }

    public final void f(int i10, String msg) {
        Intrinsics.h(msg, "msg");
        HashMap map = new HashMap();
        map.put("from", String.valueOf(i10));
        map.put(OfflineConstantsKt.TRACK_KEY_PRE_ERROR_MSG, msg);
        qi.h.f69682a.q("subtitle_search", "app_perf", map);
    }
}
