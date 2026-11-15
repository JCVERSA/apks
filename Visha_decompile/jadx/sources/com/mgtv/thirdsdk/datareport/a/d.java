package com.mgtv.thirdsdk.datareport.a;

import android.content.Context;
import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.hunantv.imgo.log.e;
import com.hunantv.imgo.net.RequestParams;
import com.hunantv.imgo.util.f;
import com.hunantv.imgo.util.p;
import com.mgtv.downloader.p2p.mg.DownloadFacadeEnum;
import java.io.IOException;
import java.net.URL;

public class d extends com.hunantv.imgo.a.b {
    private static final String d = "com.mgtv.thirdsdk.datareport.a.d";
    private boolean e;
    private String f;

    private d(Context context) {
        super(context);
        this.c = context;
    }

    public static d a(Context context) {
        return new d(context);
    }

    private String b(String str) {
        if (str == null) {
            return "";
        }
        try {
            return new URL(str).getHost();
        } catch (IOException e) {
            e.d(d, e.getMessage(), true);
            return "";
        }
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public void a(int i, int i2, int i3, String str, String str2, int i4, int i5, int i6, String str3, String str4, boolean z, int i7, int i8) {
        RequestParams requestParamsA = a();
        requestParamsA.put(TtmlNode.TAG_P, "3");
        requestParamsA.put("f", i2);
        requestParamsA.put("s", i);
        requestParamsA.put("type", i8);
        requestParamsA.put(CmcdData.STREAMING_FORMAT_HLS, b(str4));
        requestParamsA.put("t", i3);
        requestParamsA.put("e", str);
        requestParamsA.put("cv", "20170105");
        requestParamsA.put(CmcdData.OBJECT_TYPE_AUDIO_ONLY, i5);
        requestParamsA.put("b", i6);
        requestParamsA.put("n", "");
        requestParamsA.put(CmcdData.OBJECT_TYPE_INIT_SEGMENT, "");
        requestParamsA.put("si", str3);
        requestParamsA.put("ex", str2);
        requestParamsA.put("z", i4);
        if (i7 != -1) {
            requestParamsA.put("pt", i7);
        }
        requestParamsA.put(CmcdData.STREAM_TYPE_LIVE, a(str4));
        requestParamsA.put("ml", z ? 2 : 1);
        requestParamsA.put("uvip", com.hunantv.imgo.data.a.a().b() ? 1 : 0);
        a(requestParamsA, i3);
        if (i3 == 4) {
            this.a.a("https://v2.res.log.hunantv.com/info.php", requestParamsA);
        } else if (i3 == 1) {
            this.a.a("hw-v2.log.mgtv.com/info.php", requestParamsA);
        } else {
            this.a.a(com.hunantv.imgo.report.c.u(), requestParamsA);
        }
    }

    private RequestParams a() {
        RequestParams requestParams = new RequestParams();
        requestParams.put("c", "1");
        requestParams.put(CmcdData.OBJECT_TYPE_MANIFEST, com.hunantv.imgo.util.b.J());
        requestParams.put(DownloadFacadeEnum.USER_MF, com.hunantv.imgo.util.b.s());
        requestParams.put(DownloadFacadeEnum.USER_MOD, com.hunantv.imgo.util.b.p());
        requestParams.put(DownloadFacadeEnum.USER_NET, p.d());
        requestParams.put("sv", com.hunantv.imgo.util.b.r());
        requestParams.put("v", com.hunantv.imgo.util.b.b(this.e));
        requestParams.put("u", com.hunantv.imgo.util.b.K());
        requestParams.put(DownloadFacadeEnum.USER_DID, com.hunantv.imgo.util.b.t());
        requestParams.put("time", f.b(System.currentTimeMillis()));
        requestParams.put(DownloadFacadeEnum.USER_CH, com.hunantv.imgo.util.b.x());
        requestParams.put("suuid", com.hunantv.imgo.b.c.a().f);
        requestParams.put(DownloadFacadeEnum.USER_SVER, com.hunantv.imgo.util.b.r());
        requestParams.put(DownloadFacadeEnum.USER_AVER, com.hunantv.imgo.util.b.b(this.e));
        requestParams.put("src", com.hunantv.imgo.util.b.O());
        requestParams.put("tk", this.f);
        return requestParams;
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public void a(boolean z, int i, int i2, int i3, String str, String str2, int i4, int i5, int i6, String str3, String str4, boolean z2, int i7, int i8, int i9) {
        e.a(d, "sendPlayThirdData:t=" + i3 + "; s=" + i, true);
        RequestParams requestParamsA = a();
        requestParamsA.put("v", com.hunantv.imgo.util.b.b(z));
        requestParamsA.put(DownloadFacadeEnum.USER_AVER, com.hunantv.imgo.util.b.b(z));
        requestParamsA.put(TtmlNode.TAG_P, "3");
        requestParamsA.put("f", i2);
        requestParamsA.put("s", i);
        requestParamsA.put("type", i9);
        requestParamsA.put(CmcdData.STREAMING_FORMAT_HLS, b(str4));
        requestParamsA.put("t", i3);
        requestParamsA.put("e", str);
        requestParamsA.put("cv", "20170105");
        requestParamsA.put(CmcdData.OBJECT_TYPE_AUDIO_ONLY, i5);
        requestParamsA.put("b", i6);
        requestParamsA.put("n", "");
        requestParamsA.put(CmcdData.OBJECT_TYPE_INIT_SEGMENT, "");
        requestParamsA.put("si", str3);
        requestParamsA.put("ex", str2);
        requestParamsA.put("z", i4);
        requestParamsA.put("pt", i7);
        requestParamsA.put("ct", i8);
        requestParamsA.put(CmcdData.STREAM_TYPE_LIVE, a(str4));
        requestParamsA.put("ml", z2 ? 2 : 1);
        requestParamsA.put("uvip", com.hunantv.imgo.data.a.a().b() ? 1 : 0);
        a(requestParamsA, i3);
        if (i3 == 1) {
            this.a.a("hw-v2.log.mgtv.com/info.php", requestParamsA);
        } else {
            this.a.a(com.hunantv.imgo.report.c.u(), requestParamsA);
        }
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

    private RequestParams a(RequestParams requestParams, int i) {
        if (8 == i) {
            requestParams.put("suuid", "");
        }
        return requestParams;
    }

    public void a(boolean z) {
        this.e = z;
    }
}
