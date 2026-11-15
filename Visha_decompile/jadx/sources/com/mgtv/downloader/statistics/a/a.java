package com.mgtv.downloader.statistics.a;

import android.content.Context;
import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.hunantv.imgo.b.c;
import com.hunantv.imgo.util.b;
import com.hunantv.imgo.util.d;
import com.hunantv.imgo.util.f;
import com.hunantv.imgo.util.p;
import com.mgtv.downloader.net.RequestParams;
import com.mgtv.downloader.p2p.mg.DownloadFacadeEnum;
import java.io.IOException;
import java.net.URL;

public class a extends com.mgtv.downloader.statistics.a {
    private c d;

    private a(Context context) {
        super(context);
        this.c = context;
        this.d = c.a();
    }

    public static a a(Context context) {
        return new a(context);
    }

    private RequestParams b() {
        RequestParams requestParams = new RequestParams();
        requestParams.put("c", "1");
        requestParams.put(CmcdData.OBJECT_TYPE_MANIFEST, b.J());
        requestParams.put(DownloadFacadeEnum.USER_MF, b.s());
        requestParams.put(DownloadFacadeEnum.USER_MOD, b.p());
        requestParams.put(DownloadFacadeEnum.USER_NET, p.d());
        requestParams.put("sv", b.r());
        requestParams.put("v", b.b(d.a));
        requestParams.put("u", b.K());
        requestParams.put(DownloadFacadeEnum.USER_DID, b.t());
        requestParams.put("time", f.b(System.currentTimeMillis()));
        requestParams.put(DownloadFacadeEnum.USER_CH, b.y());
        requestParams.put("suuid", c.a().f);
        requestParams.put(DownloadFacadeEnum.USER_SVER, b.r());
        requestParams.put(DownloadFacadeEnum.USER_AVER, b.b(d.a));
        return requestParams;
    }

    public void a(int i, int i2, String str, int i3, String str2, int i4, String str3, String str4, long j, int i5, boolean z, String str5) {
        RequestParams requestParamsB = b();
        requestParamsB.put(TtmlNode.TAG_P, "3");
        requestParamsB.put("f", i2);
        requestParamsB.put("z", i3);
        requestParamsB.put("s", i);
        requestParamsB.put("type", i - 1);
        requestParamsB.put(CmcdData.STREAMING_FORMAT_HLS, b(str2));
        requestParamsB.put(CmcdData.OBJECT_TYPE_AUDIO_ONLY, i4);
        requestParamsB.put("si", str3);
        requestParamsB.put("t", "6");
        requestParamsB.put("n", j);
        requestParamsB.put(CmcdData.OBJECT_TYPE_INIT_SEGMENT, str5);
        requestParamsB.put("ex", str4);
        requestParamsB.put("e", str);
        requestParamsB.put("cv", "20160120");
        requestParamsB.put("b", i5);
        requestParamsB.put("pt", "");
        requestParamsB.put(CmcdData.STREAM_TYPE_LIVE, a(str2));
        requestParamsB.put("ml", z ? 2 : 1);
        requestParamsB.put("uvip", 0);
        this.a.a("https://hw-v2.log.mgtv.com/info.php", requestParamsB);
    }

    public void b(int i, int i2, String str, int i3, String str2, int i4, String str3, String str4, long j, int i5, boolean z, String str5) {
        RequestParams requestParamsB = b();
        requestParamsB.put(TtmlNode.TAG_P, "3");
        requestParamsB.put("r", "3");
        requestParamsB.put("f", i2);
        requestParamsB.put("z", i3);
        requestParamsB.put("s", i);
        requestParamsB.put("type", i - 1);
        requestParamsB.put(CmcdData.STREAMING_FORMAT_HLS, b(str2));
        requestParamsB.put(CmcdData.OBJECT_TYPE_AUDIO_ONLY, i4);
        requestParamsB.put("si", str3);
        requestParamsB.put("t", "6");
        requestParamsB.put("n", j);
        requestParamsB.put(CmcdData.OBJECT_TYPE_INIT_SEGMENT, str5);
        requestParamsB.put("ex", str4);
        requestParamsB.put("e", str);
        requestParamsB.put("cv", "20160120");
        requestParamsB.put("b", i5);
        requestParamsB.put("pt", "");
        requestParamsB.put(CmcdData.STREAM_TYPE_LIVE, a(str2));
        requestParamsB.put("ml", z ? 2 : 1);
        requestParamsB.put("uvip", 0);
        this.a.a("http://v1.play.log.hunantv.com/info.php", requestParamsB);
    }

    private String a(String str) {
        if (str == null) {
            return "";
        }
        try {
            String[] strArrSplit = str.split(b(str));
            if (strArrSplit.length == 2) {
                return strArrSplit[1];
            }
            return strArrSplit[0];
        } catch (Exception unused) {
            return "";
        }
    }

    private String b(String str) {
        if (str == null) {
            return "";
        }
        try {
            return new URL(str).getHost();
        } catch (IOException e) {
            e.printStackTrace();
            return "";
        }
    }
}
