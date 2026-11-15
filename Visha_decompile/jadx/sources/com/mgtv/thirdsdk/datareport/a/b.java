package com.mgtv.thirdsdk.datareport.a;

import android.text.TextUtils;
import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.hunantv.imgo.net.RequestParams;
import com.hunantv.imgo.util.n;
import com.hunantv.imgo.util.p;
import com.mgtv.downloader.p2p.mg.DownloadFacadeEnum;
import com.mgtv.thirdsdk.playcore.callback.ImgoPlayerReportInterface;
import java.io.IOException;
import java.net.URL;

public class b extends a {
    public static int c;
    ImgoPlayerReportInterface a;
    public boolean b;
    private int d;
    private int e;
    private String f;
    private int g;
    private int h;
    private String i;
    private boolean j;
    private int k;
    private String l;
    private String m;
    private com.hunantv.imgo.report.d n;

    public b(boolean z, String str, boolean z2, int i, int i2, ImgoPlayerReportInterface imgoPlayerReportInterface, Object obj, String str2) {
        super(Long.MAX_VALUE, 300000L);
        this.b = false;
        this.d = 0;
        this.g = 0;
        this.l = "";
        this.n = com.hunantv.imgo.report.d.a();
        this.f = str;
        this.k = z2 ? 2 : 1;
        this.h = i;
        this.e = i2;
        this.a = imgoPlayerReportInterface;
        this.i = str2;
        this.j = z;
    }

    private void f(String str) {
        String str2;
        int i = this.h;
        if (i == 6 || i == 3) {
            a(1, e(this.f), this.h, this.f, 2, "", this.e, str, this.l);
            return;
        }
        int i2 = this.g;
        String strE = e(this.f);
        int i3 = this.h;
        String str3 = this.f;
        if (this.a == null) {
            str2 = "";
        } else {
            str2 = f() + "";
        }
        a(i2, strE, i3, str3, 2, str2, this.e, str, this.l);
    }

    private void h() {
        String str;
        String strE = e(this.f);
        int i = this.h;
        String str2 = this.f;
        if (this.a == null) {
            str = "";
        } else {
            str = f() + "";
        }
        a(1, strE, i, str2, 0, str, this.e, "", this.l);
    }

    @Override
    public void a(long j) {
        if (this.d > 0) {
            g();
        }
        this.d++;
    }

    public void b(String str) {
        c(str);
        a();
    }

    @Override
    public void c() {
    }

    public void d() {
        b();
        g();
    }

    public void e() {
        int i = this.g + 1;
        this.g = i;
        if (i == 1) {
            h();
        }
    }

    public void g() {
        if (this.h == 6) {
            a(0, e(this.f), this.h, this.f, 1, "", this.e, "", this.l);
        } else {
            a(this.g, e(this.f), this.h, this.f, 1, "", this.e, "", this.l);
        }
        this.g = 0;
    }

    private void c(String str, String str2) {
        int i = this.h;
        if (i == 6 || i == 3) {
            a(1, e(str), this.h, str, 4, "", this.e, str2, this.l);
        } else {
            a(this.g, e(str), this.h, str, 4, "", this.e, str2, this.l);
        }
    }

    private String b(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        String[] strArrSplit = str.split(str2);
        if (strArrSplit.length == 2) {
            return strArrSplit[1];
        }
        return strArrSplit[0];
    }

    private String e(String str) {
        try {
            return new URL(str).getHost();
        } catch (IOException e) {
            e.printStackTrace();
            return "";
        }
    }

    public void d(String str) {
        this.l = str;
    }

    public void a(String str, String str2) {
        c(str, str2);
    }

    public void a(String str) {
        f(str);
    }

    public void c(String str) {
        String strValueOf = "";
        if (this.h != 6) {
            if (this.a != null) {
                strValueOf = f() + "";
            }
            int i = c;
            if (i > 0 && this.h == 8) {
                strValueOf = String.valueOf(i);
            }
        }
        a(this.g, e(this.f), this.h, this.f, 3, strValueOf, this.e, "", str);
        this.g = 0;
        this.d = 0;
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
    private void a(int i, String str, int i2, String str2, int i3, String str3, int i4, String str4, String str5) {
        n.a("sunli", "r = " + i3 + " |o=" + str3);
        if (i2 == 1) {
            str3 = "";
        }
        String strB = com.hunantv.imgo.util.b.b(this.j);
        RequestParams requestParams = new RequestParams();
        requestParams.put(TtmlNode.TAG_P, "3");
        requestParams.put("v", strB);
        requestParams.put("u", com.hunantv.imgo.util.b.K());
        requestParams.put("f", i);
        requestParams.put(CmcdData.STREAMING_FORMAT_HLS, str);
        requestParams.put("t", i2);
        requestParams.put("cv", "20170105");
        requestParams.put("r", i3);
        requestParams.put("t", i2);
        requestParams.put("c", 1);
        requestParams.put("o", str3);
        requestParams.put("b", i4);
        requestParams.put("e", str4);
        requestParams.put("ex", str5);
        requestParams.put("sv", com.hunantv.imgo.util.b.r());
        requestParams.put(DownloadFacadeEnum.USER_MF, com.hunantv.imgo.util.b.s());
        requestParams.put(DownloadFacadeEnum.USER_MOD, com.hunantv.imgo.util.b.p());
        requestParams.put(CmcdData.OBJECT_TYPE_MANIFEST, com.hunantv.imgo.util.b.J());
        requestParams.put("pt", this.i);
        requestParams.put(CmcdData.STREAM_TYPE_LIVE, b(str2, str));
        requestParams.put("ml", this.k);
        requestParams.put(DownloadFacadeEnum.USER_NET, p.d());
        requestParams.put("uvip", com.hunantv.imgo.data.a.a().b() ? 1 : 0);
        requestParams.put("src", com.hunantv.imgo.util.b.O());
        requestParams.put("tk", this.m);
        requestParams.put(DownloadFacadeEnum.USER_CH, com.hunantv.imgo.util.b.x());
        requestParams.put("$channel", com.hunantv.imgo.util.b.z());
        if (i2 == 1) {
            this.n.a("hw-play.log.mgtv.com/info.php", requestParams);
        } else {
            this.n.a(com.hunantv.imgo.report.c.t(), requestParams);
        }
    }

    public int f() {
        ImgoPlayerReportInterface imgoPlayerReportInterface = this.a;
        if (imgoPlayerReportInterface == null) {
            return 0;
        }
        try {
            if (imgoPlayerReportInterface.isCompletion()) {
                return this.a.getDuration();
            }
            return this.a.getCurrentPosition();
        } catch (Exception e) {
            e.printStackTrace();
            return 0;
        }
    }
}
