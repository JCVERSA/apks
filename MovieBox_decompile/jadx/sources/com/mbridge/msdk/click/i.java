package com.mbridge.msdk.click;

import android.text.TextUtils;
import android.webkit.URLUtil;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.alibaba.sdk.android.oss.common.utils.HttpHeaders;
import com.google.firebase.perf.network.FirebasePerfUrlConnection;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.same.net.MBridgeHostnameVerifier;
import com.mbridge.msdk.foundation.tools.k0;
import com.mbridge.msdk.foundation.tools.o0;
import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.URL;
import java.net.URLConnection;
import java.util.zip.GZIPInputStream;
import javax.net.ssl.HttpsURLConnection;

public class i {

    private static final String f33501f = "i";

    private com.mbridge.msdk.setting.g f33502a;

    private String f33503b;

    private boolean f33504c = true;

    private final int f33505d = 3145728;

    private com.mbridge.msdk.click.entity.a f33506e;

    public i() {
        com.mbridge.msdk.setting.g gVarD = com.mbridge.msdk.setting.h.b().d(com.mbridge.msdk.foundation.controller.c.m().b());
        this.f33502a = gVarD;
        if (gVarD == null) {
            this.f33502a = com.mbridge.msdk.setting.h.b().a();
        }
    }

    public com.mbridge.msdk.click.entity.a a(String str, boolean z10, boolean z11, CampaignEx campaignEx) {
        int i10;
        HttpsURLConnection httpsURLConnection = null;
        if (!URLUtil.isNetworkUrl(str)) {
            return null;
        }
        String strReplace = str.replace(" ", "%20");
        this.f33506e = new com.mbridge.msdk.click.entity.a();
        try {
            HttpsURLConnection httpsURLConnection2 = (HttpsURLConnection) ((URLConnection) FirebasePerfUrlConnection.instrument(new URL(strReplace).openConnection()));
            try {
                httpsURLConnection2.setHostnameVerifier(new MBridgeHostnameVerifier(strReplace));
                httpsURLConnection2.setRequestMethod("GET");
                if ((!z10 && !z11) || campaignEx == null) {
                    httpsURLConnection2.setRequestProperty("User-Agent", k0.i());
                }
                if (z10 && campaignEx != null && campaignEx.getcUA() == 1) {
                    httpsURLConnection2.setRequestProperty("User-Agent", k0.i());
                }
                if (z11 && campaignEx != null && campaignEx.getImpUA() == 1) {
                    httpsURLConnection2.setRequestProperty("User-Agent", k0.i());
                }
                httpsURLConnection2.setRequestProperty("Accept-Encoding", "gzip");
                if (this.f33502a.I0() && !TextUtils.isEmpty(this.f33503b)) {
                    httpsURLConnection2.setRequestProperty(RequestParameters.SUBRESOURCE_REFERER, this.f33503b);
                }
                httpsURLConnection2.setConnectTimeout(60000);
                httpsURLConnection2.setReadTimeout(60000);
                httpsURLConnection2.setInstanceFollowRedirects(false);
                httpsURLConnection2.connect();
                this.f33506e.f33479a = httpsURLConnection2.getHeaderField(HttpHeaders.LOCATION);
                this.f33506e.f33482d = httpsURLConnection2.getHeaderField("Referer");
                this.f33506e.f33484f = httpsURLConnection2.getResponseCode();
                this.f33506e.f33480b = httpsURLConnection2.getContentType();
                this.f33506e.f33483e = httpsURLConnection2.getContentLength();
                this.f33506e.f33481c = httpsURLConnection2.getContentEncoding();
                boolean zEqualsIgnoreCase = "gzip".equalsIgnoreCase(this.f33506e.f33481c);
                com.mbridge.msdk.click.entity.a aVar = this.f33506e;
                if (aVar.f33484f == 200 && this.f33504c && (i10 = aVar.f33483e) > 0 && i10 < 3145728 && !TextUtils.isEmpty(strReplace)) {
                    try {
                        String strA = a(httpsURLConnection2.getInputStream(), zEqualsIgnoreCase);
                        if (!TextUtils.isEmpty(strA)) {
                            byte[] bytes = strA.getBytes();
                            if (bytes.length > 0 && bytes.length < 3145728) {
                                this.f33506e.f33485g = strA.trim();
                            }
                        }
                    } catch (Throwable th2) {
                        o0.b(f33501f, th2.getMessage());
                    }
                }
                this.f33503b = strReplace;
                httpsURLConnection2.disconnect();
                return this.f33506e;
            } catch (Throwable th3) {
                th = th3;
                httpsURLConnection = httpsURLConnection2;
                try {
                    this.f33506e.f33486h = th.getMessage();
                    return this.f33506e;
                } finally {
                    if (httpsURLConnection != null) {
                        httpsURLConnection.disconnect();
                    }
                }
            }
        } catch (Throwable th4) {
            th = th4;
        }
    }

    /* JADX WARN: Code duplicated, block: B:25:0x0036 A[Catch: all -> 0x000f, TryCatch #5 {all -> 0x000f, blocks: (B:4:0x0008, B:9:0x0013, B:23:0x0032, B:25:0x0036, B:26:0x0043), top: B:45:0x0008 }] */
    /* JADX WARN: Code duplicated, block: B:28:0x004e A[Catch: Exception -> 0x002f, TRY_ENTER, TRY_LEAVE, TryCatch #0 {Exception -> 0x002f, blocks: (B:18:0x002b, B:28:0x004e), top: B:41:0x0006 }] */
    /* JADX WARN: Code duplicated, block: B:43:0x0063 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    private String a(InputStream inputStream, boolean z10) throws Throwable {
        BufferedReader bufferedReader;
        Throwable th2;
        Exception e10;
        StringBuilder sb2 = new StringBuilder();
        BufferedReader bufferedReader2 = null;
        try {
            if (z10) {
                try {
                    try {
                        inputStream = new GZIPInputStream(inputStream);
                    } catch (Exception e11) {
                        e10 = e11;
                        if (this.f33506e == null) {
                            com.mbridge.msdk.click.entity.a aVar = new com.mbridge.msdk.click.entity.a();
                            this.f33506e = aVar;
                            aVar.f33486h = e10.getMessage();
                        }
                        o0.b(f33501f, e10.getMessage());
                        if (bufferedReader2 != null) {
                            bufferedReader2.close();
                        }
                        return sb2.toString();
                    }
                } catch (Throwable th3) {
                    th2 = th3;
                    bufferedReader = bufferedReader2;
                    if (bufferedReader != null) {
                        try {
                            bufferedReader.close();
                        } catch (Exception e12) {
                            o0.b(f33501f, e12.getMessage());
                        }
                    }
                    throw th2;
                }
            }
            bufferedReader = new BufferedReader(new InputStreamReader(inputStream));
            while (true) {
                try {
                    String line = bufferedReader.readLine();
                    if (line == null) {
                        break;
                    }
                    sb2.append(line);
                } catch (Exception e13) {
                    e10 = e13;
                    bufferedReader2 = bufferedReader;
                    if (this.f33506e == null) {
                        com.mbridge.msdk.click.entity.a aVar2 = new com.mbridge.msdk.click.entity.a();
                        this.f33506e = aVar2;
                        aVar2.f33486h = e10.getMessage();
                    }
                    o0.b(f33501f, e10.getMessage());
                    if (bufferedReader2 != null) {
                        bufferedReader2.close();
                    }
                    return sb2.toString();
                } catch (Throwable th4) {
                    th2 = th4;
                    if (bufferedReader != null) {
                        bufferedReader.close();
                    }
                    throw th2;
                }
            }
            bufferedReader.close();
        } catch (Exception e14) {
            o0.b(f33501f, e14.getMessage());
        }
        return sb2.toString();
    }
}
