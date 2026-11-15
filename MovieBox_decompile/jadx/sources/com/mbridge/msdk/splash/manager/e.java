package com.mbridge.msdk.splash.manager;

import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.core.app.NotificationCompat;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.cloud.tmc.miniapp.prepare.steps.PrepareException;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.DownloadError;
import com.mbridge.msdk.foundation.download.download.H5DownLoadManager;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.entity.CampaignUnit;
import com.mbridge.msdk.foundation.entity.m;
import com.mbridge.msdk.foundation.tools.SameMD5;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.t0;
import com.mbridge.msdk.foundation.tools.w;
import com.mbridge.msdk.foundation.tools.x;
import com.mbridge.msdk.foundation.tools.y0;
import com.mbridge.msdk.foundation.tools.z0;
import com.mbridge.msdk.out.MBridgeIds;
import com.mbridge.msdk.setting.l;
import com.mbridge.msdk.splash.view.MBSplashView;
import java.io.File;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

public class e {
    private static String A = "SplashLoadManager";

    private String f36634a;

    private String f36635b;

    private long f36636c;

    private long f36637d;

    private com.mbridge.msdk.splash.middle.b f36638e;

    private MBSplashView f36640g;

    private l f36641h;

    private boolean f36642i;

    private int f36643j;

    private int f36644k;

    private int f36645l;

    private String f36646m;

    private int f36647n;

    private boolean f36648o;

    private volatile boolean f36649p;

    private com.mbridge.msdk.videocommon.listener.a f36650q;

    private H5DownLoadManager.ZipDownloadListener f36651r;

    private String f36652s;

    private int f36653t;

    private int f36655v;

    private List<CampaignEx> f36656w;

    private String f36654u = "";

    private String f36657x = "";

    private Handler f36658y = new c(Looper.getMainLooper());

    private Runnable f36659z = new d();

    private Context f36639f = com.mbridge.msdk.foundation.controller.c.m().d();

    class c extends Handler {
        c(Looper looper) {
            super(looper);
        }

        @Override
        public void handleMessage(@NonNull Message message) throws Throwable {
            int i10;
            super.handleMessage(message);
            int i11 = message.what;
            if (i11 == 1) {
                Object obj = message.obj;
                int i12 = message.arg1;
                if (obj instanceof CampaignEx) {
                    CampaignEx campaignEx = (CampaignEx) obj;
                    e.this.a(H5DownLoadManager.getInstance().getH5ResAddress(campaignEx.getAdZip()), campaignEx, i12);
                    return;
                }
                return;
            }
            if (i11 != 2) {
                if (i11 != 3) {
                    return;
                }
                Object obj2 = message.obj;
                if (obj2 instanceof CampaignEx) {
                    e eVar = e.this;
                    eVar.h((CampaignEx) obj2, eVar.f36647n);
                    return;
                }
                return;
            }
            Object obj3 = message.obj;
            try {
                if (obj3 instanceof Bundle) {
                    int i13 = ((Bundle) obj3).getInt(NativeComponentConstants.KEY_COMPONENT_TYPE);
                    String string = ((Bundle) obj3).getString(NotificationCompat.CATEGORY_MESSAGE);
                    CampaignEx campaignEx2 = (CampaignEx) ((Bundle) obj3).getSerializable("campaignex");
                    if (i13 == 1) {
                        i10 = 880004;
                    } else {
                        i10 = i13 == 2 ? 880006 : 880027;
                    }
                    com.mbridge.msdk.foundation.error.b bVar = new com.mbridge.msdk.foundation.error.b(i10);
                    bVar.c(string);
                    e eVar2 = e.this;
                    eVar2.a(bVar, eVar2.f36646m, e.this.f36647n, campaignEx2);
                }
            } catch (Exception e10) {
                com.mbridge.msdk.foundation.error.b bVar2 = new com.mbridge.msdk.foundation.error.b(880024);
                bVar2.a((Throwable) e10);
                e eVar3 = e.this;
                eVar3.a(bVar2, eVar3.f36646m, e.this.f36647n, (CampaignEx) null);
            }
        }
    }

    class d implements Runnable {
        d() {
        }

        @Override
        public void run() throws Throwable {
            com.mbridge.msdk.foundation.error.b bVar = new com.mbridge.msdk.foundation.error.b(880010);
            e eVar = e.this;
            eVar.a(bVar, eVar.f36646m, e.this.f36647n, (CampaignEx) null);
        }
    }

    class C0518e extends com.mbridge.msdk.splash.request.b {

        final String f36667e;

        final int f36668f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C0518e(int i10, String str, int i11) {
            super(i10);
            this.f36667e = str;
            this.f36668f = i11;
        }

        @Override
        public void a(CampaignUnit campaignUnit, int i10) throws Throwable {
            try {
                e eVar = e.this;
                eVar.a(campaignUnit, i10, eVar.f36634a, this.f36667e);
                e.this.f36654u = campaignUnit.getRequestId();
                e.this.f36656w = campaignUnit.getAds();
            } catch (Exception e10) {
                e10.printStackTrace();
                com.mbridge.msdk.foundation.error.b bVar = new com.mbridge.msdk.foundation.error.b(880003);
                bVar.a((Throwable) e10);
                e.this.a(bVar, this.f36667e, i10, (campaignUnit == null || campaignUnit.getAds() == null || campaignUnit.getAds().size() == 0) ? null : campaignUnit.getAds().get(0));
                e.this.f();
            }
        }

        @Override
        public void b(int i10, String str) throws Throwable {
            o0.b(e.A, str);
            com.mbridge.msdk.foundation.error.b bVar = new com.mbridge.msdk.foundation.error.b(880002);
            bVar.c(str);
            e.this.a(bVar, this.f36667e, this.f36668f, (CampaignEx) null);
            e.this.f();
        }
    }

    class f extends com.mbridge.msdk.foundation.same.c.a {

        final CampaignEx f36670a;

        f(CampaignEx campaignEx, com.mbridge.msdk.foundation.same.report.metrics.callback.a aVar) {
            this.f36670a = campaignEx;
        }

        @Override
        public void a(String str, com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
            com.mbridge.msdk.splash.report.a.a(str, cVar, this.f36670a, e.this.f36639f, (com.mbridge.msdk.foundation.same.report.metrics.callback.a) null);
        }
    }

    class g implements Runnable {

        final CampaignEx f36672a;

        g(CampaignEx campaignEx) {
            this.f36672a = campaignEx;
        }

        @Override
        public void run() {
            com.mbridge.msdk.foundation.db.j.a(com.mbridge.msdk.foundation.db.g.a(e.this.f36639f)).a();
            w.a(e.this.f36639f, this.f36672a);
        }
    }

    class h implements com.mbridge.msdk.splash.view.nativeview.a {

        final CampaignEx f36674a;

        final int f36675b;

        h(CampaignEx campaignEx, int i10) {
            this.f36674a = campaignEx;
            this.f36675b = i10;
        }

        @Override
        public void a() {
            if (this.f36674a.isDynamicView() && e.this.f36640g != null) {
                e.this.f36640g.setImageReady(true);
                e.this.f(this.f36674a, this.f36675b);
            }
            e.this.h(this.f36674a, this.f36675b);
        }

        @Override
        public void b() throws Throwable {
            if (!this.f36674a.isDynamicView() || e.this.f36640g == null) {
                return;
            }
            e.this.f36640g.setImageReady(false);
            com.mbridge.msdk.foundation.error.b bVar = new com.mbridge.msdk.foundation.error.b(880027);
            e eVar = e.this;
            eVar.a(bVar, eVar.f36646m, this.f36675b, this.f36674a);
        }
    }

    class i implements x.c {

        final CampaignEx f36677a;

        i(CampaignEx campaignEx) {
            this.f36677a = campaignEx;
        }

        @Override
        public void a(String str, String str2, String str3, String str4, boolean z10) {
            if (z10) {
                return;
            }
            e.this.a(this.f36677a, str, true, "");
        }

        @Override
        public void a(String str, DownloadError downloadError) {
            String message = "";
            if (downloadError != null) {
                try {
                    if (downloadError.getException() != null) {
                        message = downloadError.getException().getMessage();
                    }
                } catch (Exception e10) {
                    if (MBridgeConstans.DEBUG) {
                        e10.printStackTrace();
                        return;
                    }
                    return;
                }
            }
            e.this.a(this.f36677a, str, false, message);
        }
    }

    class j implements H5DownLoadManager.ZipDownloadListener {

        final CampaignEx f36679a;

        final int f36680b;

        j(CampaignEx campaignEx, int i10) {
            this.f36679a = campaignEx;
            this.f36680b = i10;
        }

        @Override
        public void onFailed(String str, String str2) throws Throwable {
            com.mbridge.msdk.foundation.error.b bVar = new com.mbridge.msdk.foundation.error.b(880006);
            e eVar = e.this;
            eVar.a(bVar, eVar.f36646m, this.f36680b, this.f36679a);
            Message messageObtain = Message.obtain();
            messageObtain.what = 2;
            Bundle bundle = new Bundle();
            bundle.putSerializable("campaignex", this.f36679a);
            bundle.putString(NotificationCompat.CATEGORY_MESSAGE, str);
            bundle.putInt(NativeComponentConstants.KEY_COMPONENT_TYPE, 2);
            messageObtain.obj = bundle;
            e.this.f36658y.sendMessage(messageObtain);
            e.this.a(this.f36679a, str2, false, str);
        }

        @Override
        public void onSuccess(String str, String str2, boolean z10) {
            Message messageObtain = Message.obtain();
            messageObtain.what = 1;
            messageObtain.obj = this.f36679a;
            messageObtain.arg1 = this.f36680b;
            e.this.f36658y.sendMessage(messageObtain);
            if (z10) {
                return;
            }
            CampaignEx campaignEx = this.f36679a;
            e.this.a(this.f36679a, campaignEx != null ? campaignEx.getAdZip() : "", true, "");
        }
    }

    class k implements com.mbridge.msdk.splash.inter.a {

        final CampaignEx f36682a;

        final int f36683b;

        k(CampaignEx campaignEx, int i10) {
            this.f36682a = campaignEx;
            this.f36683b = i10;
        }

        @Override
        public void a(View view) {
            if (e.this.f36640g != null) {
                e.this.f36640g.setDynamicView(true);
                e.this.f36640g.setSplashNativeView(view);
                e.this.h(this.f36682a, this.f36683b);
            }
        }

        @Override
        public void onError(String str) throws Throwable {
            com.mbridge.msdk.foundation.error.b bVar = new com.mbridge.msdk.foundation.error.b(880034);
            bVar.c(str);
            e eVar = e.this;
            eVar.a(bVar, eVar.f36646m, this.f36683b, this.f36682a);
        }
    }

    public e(String str, String str2, long j10) {
        this.f36635b = str;
        this.f36634a = str2;
        this.f36637d = j10;
    }

    public void h(CampaignEx campaignEx, int i10) {
        if (!com.mbridge.msdk.splash.manager.d.a(this.f36640g, campaignEx) || this.f36649p) {
            return;
        }
        b();
        if (this.f36648o) {
            com.mbridge.msdk.splash.manager.d.a(campaignEx, this.f36634a);
        }
        this.f36649p = true;
        com.mbridge.msdk.splash.middle.b bVar = this.f36638e;
        if (bVar != null) {
            bVar.a(campaignEx, i10);
        }
    }

    private void i(CampaignEx campaignEx, int i10) throws Throwable {
        MBSplashView mBSplashView = this.f36640g;
        if (mBSplashView != null) {
            mBSplashView.setDynamicView(false);
        }
        if (campaignEx.isDynamicView()) {
            c(campaignEx, i10);
        } else {
            MBSplashView mBSplashView2 = this.f36640g;
            if (mBSplashView2 != null) {
                mBSplashView2.setSplashWebView();
            }
        }
        if (com.mbridge.msdk.splash.manager.d.a(this.f36640g, campaignEx)) {
            h(campaignEx, i10);
        } else {
            a(campaignEx, i10);
        }
    }

    class a implements com.mbridge.msdk.splash.manager.g.c {

        final CampaignEx f36660a;

        final int f36661b;

        a(CampaignEx campaignEx, int i10) {
            this.f36660a = campaignEx;
            this.f36661b = i10;
        }

        @Override
        public void a() {
            if (this.f36660a.isHasMBTplMark()) {
                return;
            }
            e.this.g(this.f36660a, this.f36661b);
        }

        @Override
        public void onError(String str) throws Throwable {
            e.this.a(str, this.f36661b, this.f36660a);
        }

        @Override
        public void a(int i10) throws Throwable {
            if (i10 == 1) {
                e.this.g(this.f36660a, this.f36661b);
            } else {
                e.this.a("readyState 2", this.f36661b, this.f36660a);
            }
        }
    }

    public void f() {
        this.f36653t = 0;
    }

    private void g() {
        try {
            int i10 = this.f36653t + 1;
            this.f36653t = i10;
            l lVar = this.f36641h;
            if (lVar != null && i10 <= lVar.y()) {
                return;
            }
            this.f36653t = 0;
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public String d() {
        return this.f36654u;
    }

    public void e() {
        if (this.f36638e != null) {
            this.f36638e = null;
        }
        if (this.f36650q != null) {
            this.f36650q = null;
        }
        if (this.f36651r != null) {
            this.f36651r = null;
        }
    }

    /* JADX WARN: Code duplicated, block: B:40:0x00d3 A[Catch: Exception -> 0x011b, TRY_ENTER, TryCatch #3 {Exception -> 0x011b, blocks: (B:52:0x0117, B:53:0x011a, B:40:0x00d3, B:42:0x00d7, B:44:0x00dd, B:46:0x00e3, B:48:0x00e9, B:49:0x0109, B:32:0x00b4), top: B:58:0x000a }] */
    /* JADX WARN: Code duplicated, block: B:44:0x00dd A[Catch: Exception -> 0x011b, TryCatch #3 {Exception -> 0x011b, blocks: (B:52:0x0117, B:53:0x011a, B:40:0x00d3, B:42:0x00d7, B:44:0x00dd, B:46:0x00e3, B:48:0x00e9, B:49:0x0109, B:32:0x00b4), top: B:58:0x000a }] */
    private void d(CampaignEx campaignEx, int i10) throws Throwable {
        File file;
        Exception e10;
        FileOutputStream fileOutputStream;
        Exception e11;
        FileOutputStream fileOutputStream2 = null;
        try {
            try {
                try {
                    com.mbridge.msdk.foundation.same.report.g.a("m_download_start", campaignEx, "", this.f36634a, PrepareException.ERROR_NO_URL);
                    File file2 = new File(campaignEx.getAdHtml());
                    try {
                        try {
                            if (!file2.exists()) {
                                String strB = com.mbridge.msdk.foundation.same.directory.e.b(com.mbridge.msdk.foundation.same.directory.c.MBRIDGE_700_HTML);
                                String md5 = SameMD5.getMD5(z0.b(campaignEx.getAdHtml()));
                                if (TextUtils.isEmpty(md5)) {
                                    md5 = String.valueOf(System.currentTimeMillis());
                                }
                                file = new File(strB, md5.concat(".html"));
                                try {
                                    if (!file.exists()) {
                                        fileOutputStream = new FileOutputStream(file);
                                        try {
                                            String strA = oe.b.a(MBridgeConstans.OMID_JS_SERVICE_CONTENT, "<script>" + com.mbridge.msdk.setting.util.a.a().b() + "</script>" + campaignEx.getAdHtml());
                                            if (campaignEx.isActiveOm()) {
                                                strA = com.mbridge.msdk.omsdk.b.a(strA);
                                            }
                                            fileOutputStream.write(strA.getBytes());
                                            fileOutputStream.flush();
                                            fileOutputStream2 = fileOutputStream;
                                        } catch (Exception e12) {
                                            e10 = e12;
                                            file2 = file;
                                            FileOutputStream fileOutputStream3 = fileOutputStream;
                                            e11 = e10;
                                            fileOutputStream2 = fileOutputStream3;
                                            e11.printStackTrace();
                                            campaignEx.setMraid("");
                                            com.mbridge.msdk.foundation.same.report.g.a("m_download_end", campaignEx, e11.getMessage(), this.f36634a, PrepareException.ERROR_NO_URL);
                                            if (fileOutputStream2 != null) {
                                                fileOutputStream2.close();
                                            }
                                            file = file2;
                                            if (!file.exists()) {
                                            }
                                            a(new com.mbridge.msdk.foundation.error.b(880013), this.f36646m, i10, campaignEx);
                                        } catch (Throwable th2) {
                                            th = th2;
                                            if (fileOutputStream != null) {
                                                fileOutputStream.close();
                                            }
                                            throw th;
                                        }
                                    }
                                } catch (Exception e13) {
                                    e11 = e13;
                                    file2 = file;
                                    e11.printStackTrace();
                                    campaignEx.setMraid("");
                                    com.mbridge.msdk.foundation.same.report.g.a("m_download_end", campaignEx, e11.getMessage(), this.f36634a, PrepareException.ERROR_NO_URL);
                                    if (fileOutputStream2 != null) {
                                        fileOutputStream2.close();
                                    }
                                    file = file2;
                                }
                                if (!file.exists() && file.isFile() && file.canRead()) {
                                    campaignEx.setAdHtml(file.getAbsolutePath());
                                    a("file:////" + file.getAbsolutePath(), campaignEx, i10);
                                    return;
                                }
                                a(new com.mbridge.msdk.foundation.error.b(880013), this.f36646m, i10, campaignEx);
                            }
                            file = file2;
                            com.mbridge.msdk.foundation.same.report.g.a("m_download_end", campaignEx, "", this.f36634a, PrepareException.ERROR_NO_URL);
                            if (fileOutputStream2 != null) {
                                fileOutputStream2.close();
                            }
                        } catch (Exception e14) {
                            fileOutputStream = fileOutputStream2;
                            e10 = e14;
                            file2 = file;
                            FileOutputStream fileOutputStream4 = fileOutputStream;
                            e11 = e10;
                            fileOutputStream2 = fileOutputStream4;
                            e11.printStackTrace();
                            campaignEx.setMraid("");
                            com.mbridge.msdk.foundation.same.report.g.a("m_download_end", campaignEx, e11.getMessage(), this.f36634a, PrepareException.ERROR_NO_URL);
                            if (fileOutputStream2 != null) {
                                fileOutputStream2.close();
                            }
                            file = file2;
                        }
                    } catch (Exception e15) {
                        e11 = e15;
                    }
                } catch (Throwable th3) {
                    th = th3;
                    fileOutputStream = null;
                }
            } catch (Exception e16) {
                file = null;
                e10 = e16;
                fileOutputStream = null;
            }
            if (!file.exists()) {
            }
            a(new com.mbridge.msdk.foundation.error.b(880013), this.f36646m, i10, campaignEx);
        } catch (Exception unused) {
            a(new com.mbridge.msdk.foundation.error.b(880013), this.f36646m, i10, campaignEx);
        }
    }

    public void f(CampaignEx campaignEx, int i10) {
        if (campaignEx.isDynamicView()) {
            com.mbridge.msdk.splash.common.c.a aVar = new com.mbridge.msdk.splash.common.c.a();
            aVar.b(this.f36634a).a(this.f36635b).a(this.f36642i).a(campaignEx).c(this.f36643j).f(this.f36655v);
            try {
                if (!TextUtils.isEmpty(campaignEx.getAdZip())) {
                    Uri uri = Uri.parse(campaignEx.getAdZip());
                    String queryParameter = uri.getQueryParameter("hdbtn");
                    String queryParameter2 = uri.getQueryParameter("alecfc");
                    String queryParameter3 = uri.getQueryParameter("hdinfo");
                    String queryParameter4 = uri.getQueryParameter("shake_show");
                    String queryParameter5 = uri.getQueryParameter("shake_strength");
                    String queryParameter6 = uri.getQueryParameter("shake_time");
                    String queryParameter7 = uri.getQueryParameter("n_logo");
                    if (!TextUtils.isEmpty(queryParameter)) {
                        aVar.b(Integer.parseInt(queryParameter));
                    }
                    if (!TextUtils.isEmpty(queryParameter2)) {
                        aVar.e(Integer.parseInt(queryParameter2));
                    }
                    if (!TextUtils.isEmpty(queryParameter3)) {
                        aVar.a(Integer.parseInt(queryParameter3));
                    }
                    if (!TextUtils.isEmpty(queryParameter4)) {
                        aVar.g(Integer.parseInt(queryParameter4));
                    }
                    if (!TextUtils.isEmpty(queryParameter5)) {
                        aVar.h(Integer.parseInt(queryParameter5));
                    }
                    if (!TextUtils.isEmpty(queryParameter6)) {
                        aVar.i(Integer.parseInt(queryParameter6));
                    }
                    if (!TextUtils.isEmpty(queryParameter7)) {
                        aVar.d(Integer.parseInt(queryParameter7) == 0 ? 0 : 1);
                    }
                }
            } catch (Throwable th2) {
                o0.b(A, th2.getMessage());
            }
            com.mbridge.msdk.splash.manager.c.a().a(this.f36640g, aVar.a(), new k(campaignEx, i10));
        }
    }

    public void b(int i10) {
        this.f36655v = i10;
    }

    public String c() {
        return com.mbridge.msdk.foundation.same.c.b(this.f36656w);
    }

    private void b() {
        this.f36658y.removeCallbacks(this.f36659z);
    }

    private void c(CampaignEx campaignEx, int i10) {
        com.mbridge.msdk.splash.manager.d.a(this.f36640g, campaignEx, new h(campaignEx, i10));
    }

    class b implements com.mbridge.msdk.videocommon.listener.a {

        final CampaignEx f36663a;

        b(CampaignEx campaignEx) {
            this.f36663a = campaignEx;
        }

        @Override
        public void a(String str) {
            e.this.f36640g.setVideoReady(true);
            Message messageObtain = Message.obtain();
            messageObtain.obj = this.f36663a;
            messageObtain.what = 3;
            e.this.f36658y.sendMessage(messageObtain);
        }

        @Override
        public void a(String str, String str2) throws Throwable {
            e.this.f36640g.setVideoReady(false);
            com.mbridge.msdk.foundation.error.b bVar = new com.mbridge.msdk.foundation.error.b(880004);
            bVar.c(str);
            e eVar = e.this;
            eVar.a(bVar, eVar.f36646m, e.this.f36647n, this.f36663a);
            Message messageObtain = Message.obtain();
            Bundle bundle = new Bundle();
            bundle.putSerializable("campaignex", this.f36663a);
            bundle.putString(NotificationCompat.CATEGORY_MESSAGE, str);
            bundle.putInt(NativeComponentConstants.KEY_COMPONENT_TYPE, 1);
            messageObtain.obj = bundle;
            messageObtain.what = 2;
            e.this.f36658y.sendMessage(messageObtain);
        }
    }

    private void b(CampaignEx campaignEx, int i10) {
        this.f36650q = new b(campaignEx);
        CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList = new CopyOnWriteArrayList<>();
        copyOnWriteArrayList.add(campaignEx);
        com.mbridge.msdk.videocommon.download.b.getInstance().createUnitCache(this.f36639f, this.f36634a, copyOnWriteArrayList, 297, this.f36650q);
        if (!com.mbridge.msdk.videocommon.download.b.getInstance().b(297, this.f36634a, campaignEx.isBidCampaign())) {
            com.mbridge.msdk.videocommon.download.b.getInstance().load(this.f36634a);
        } else {
            this.f36640g.setVideoReady(true);
            h(campaignEx, i10);
        }
    }

    public void g(CampaignEx campaignEx, int i10) {
        if (this.f36640g.isH5Ready()) {
            return;
        }
        this.f36640g.setH5Ready(true);
        h(campaignEx, i10);
    }

    private void e(CampaignEx campaignEx, int i10) {
        if (campaignEx.isDynamicView()) {
            x.a(5, "", campaignEx.getAdZip(), new i(campaignEx), campaignEx);
            return;
        }
        this.f36651r = new j(campaignEx, i10);
        com.mbridge.msdk.foundation.same.report.metrics.c cVar = new com.mbridge.msdk.foundation.same.report.metrics.c();
        cVar.a(297);
        cVar.e(2);
        cVar.a(campaignEx);
        cVar.f(campaignEx.getAabEntity() != null ? campaignEx.getAabEntity().h3c : 0);
        H5DownLoadManager.getInstance().downloadH5Res(cVar, campaignEx.getAdZip(), this.f36651r);
    }

    public void a(l lVar) {
        this.f36641h = lVar;
    }

    public void a(MBSplashView mBSplashView) {
        this.f36640g = mBSplashView;
    }

    public void a(boolean z10) {
        this.f36642i = z10;
    }

    public void a(int i10) {
        this.f36643j = i10;
    }

    public void a(int i10, int i11) {
        this.f36645l = i10;
        this.f36644k = i11;
    }

    public void a(String str, int i10) {
        this.f36649p = false;
        this.f36646m = str;
        this.f36647n = i10;
        CampaignEx campaignExA = com.mbridge.msdk.splash.manager.d.a(this.f36640g, this.f36635b, this.f36634a, str, this.f36642i, this.f36643j, false, false);
        long timestamp = campaignExA != null ? campaignExA.getTimestamp() : 0L;
        if (this.f36641h.t() == 1 && i10 != 1 && campaignExA != null) {
            i(campaignExA, i10);
            return;
        }
        this.f36648o = true;
        if (i10 == 1) {
            List<Integer> listC = this.f36641h.c();
            if (listC != null && listC.size() > 0) {
                this.f36636c = listC.get(0).intValue() * 1000;
            } else {
                this.f36636c = 30000L;
            }
        } else {
            long j10 = this.f36637d;
            if (j10 <= 0) {
                this.f36636c = this.f36641h.E();
            } else {
                this.f36636c = j10;
            }
        }
        if (this.f36641h == null || timestamp <= 0 || !TextUtils.isEmpty(str)) {
            a(this.f36636c);
            a(this.f36639f, str, i10);
            return;
        }
        if (System.currentTimeMillis() - timestamp > this.f36641h.v() * 1000) {
            a(this.f36636c);
            a(this.f36639f, str, i10);
        } else {
            i(campaignExA, i10);
        }
    }

    private void a(long j10) {
        this.f36658y.postDelayed(this.f36659z, j10);
    }

    private void a(Context context, String str, int i10) throws Throwable {
        try {
            if (context == null) {
                a(new com.mbridge.msdk.foundation.error.b(880025), str, i10, (CampaignEx) null);
                return;
            }
            if (y0.a(this.f36634a)) {
                a(new com.mbridge.msdk.foundation.error.b(880032), str, i10, (CampaignEx) null);
                return;
            }
            MBridgeIds mBridgeIds = new MBridgeIds(this.f36635b, this.f36634a);
            com.mbridge.msdk.splash.request.f fVar = new com.mbridge.msdk.splash.request.f();
            fVar.d(i10);
            fVar.c(this.f36653t);
            fVar.a(this.f36652s);
            fVar.b(this.f36645l);
            fVar.a(this.f36644k);
            com.mbridge.msdk.foundation.same.net.wrapper.e eVarB = com.mbridge.msdk.splash.request.e.b(context, mBridgeIds, fVar);
            if (eVarB == null) {
                a(new com.mbridge.msdk.foundation.error.b(880001), str, i10, (CampaignEx) null);
                return;
            }
            if (!TextUtils.isEmpty(str)) {
                eVarB.a("token", str);
            }
            String strD = t0.d(this.f36634a);
            if (!TextUtils.isEmpty(strD)) {
                eVarB.a("j", strD);
            }
            com.mbridge.msdk.splash.request.c cVar = new com.mbridge.msdk.splash.request.c(context);
            C0518e c0518e = new C0518e(i10, str, i10);
            c0518e.a(str);
            c0518e.setUnitId(this.f36634a);
            c0518e.setPlacementId(this.f36635b);
            c0518e.setAdType(297);
            cVar.choiceV3OrV5BySetting(1, eVarB, c0518e, str, com.mbridge.msdk.foundation.same.c.a(this.f36636c, 30000L));
        } catch (Exception e10) {
            o0.b(A, e10.getMessage());
            com.mbridge.msdk.foundation.error.b bVar = new com.mbridge.msdk.foundation.error.b(880020);
            bVar.a((Throwable) e10);
            a(bVar, str, i10, (CampaignEx) null);
            f();
        }
    }

    public void a(CampaignUnit campaignUnit, int i10, String str, String str2) throws Throwable {
        com.mbridge.msdk.foundation.error.b bVar;
        List<CampaignEx> listA = a(campaignUnit);
        if (listA != null && listA.size() > 0) {
            g();
            CampaignEx campaignEx = listA.get(0);
            if (TextUtils.isEmpty(campaignEx.getAdZip()) && (TextUtils.isEmpty(campaignEx.getAdHtml()) || !campaignEx.getAdHtml().contains("<MBTPLMARK>"))) {
                campaignEx.setHasMBTplMark(false);
                campaignEx.setIsMraid(true);
            } else {
                campaignEx.setHasMBTplMark(true);
                campaignEx.setIsMraid(false);
            }
            i(campaignEx, i10);
            return;
        }
        if (this.f36657x.contains("INSTALLED")) {
            bVar = new com.mbridge.msdk.foundation.error.b(880021, "APP ALREADY INSTALLED");
        } else {
            bVar = new com.mbridge.msdk.foundation.error.b(880003);
        }
        a(bVar, str2, i10, (campaignUnit == null || campaignUnit.getAds() == null || campaignUnit.getAds().size() == 0) ? null : campaignUnit.getAds().get(0));
    }

    private List<CampaignEx> a(CampaignUnit campaignUnit) {
        if (campaignUnit == null || campaignUnit.getAds() == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        CampaignEx campaignEx = campaignUnit.getAds().get(0);
        campaignEx.setCampaignUnitId(this.f36634a);
        a(campaignEx);
        this.f36652s = campaignUnit.getSessionId();
        if (campaignEx.getOfferType() != 99 && (!TextUtils.isEmpty(campaignEx.getAdZip()) || !TextUtils.isEmpty(campaignEx.getAdHtml()))) {
            if (t0.c(campaignEx)) {
                campaignEx.setRtinsType(t0.c(this.f36639f, campaignEx.getPackageName()) ? 1 : 2);
            }
            if (com.mbridge.msdk.foundation.same.c.b(this.f36639f, campaignEx)) {
                arrayList.add(campaignEx);
            } else {
                t0.a(this.f36634a, campaignEx, com.mbridge.msdk.foundation.same.a.f34520x);
                this.f36657x = "APP ALREADY INSTALLED";
            }
            a(campaignEx, (com.mbridge.msdk.foundation.same.report.metrics.c) null, (com.mbridge.msdk.foundation.same.report.metrics.callback.a) null);
        }
        return arrayList;
    }

    private void a(CampaignEx campaignEx, com.mbridge.msdk.foundation.same.report.metrics.c cVar, com.mbridge.msdk.foundation.same.report.metrics.callback.a aVar) {
        try {
            com.mbridge.msdk.foundation.same.c.a(campaignEx, this.f36639f, cVar, new f(campaignEx, aVar));
        } catch (Exception e10) {
            if (MBridgeConstans.DEBUG) {
                e10.printStackTrace();
            }
        }
    }

    private void a(CampaignEx campaignEx) {
        new Thread(new g(campaignEx)).start();
    }

    public void a(com.mbridge.msdk.splash.middle.b bVar) {
        this.f36638e = bVar;
    }

    public void a(com.mbridge.msdk.foundation.error.b bVar, String str, int i10, CampaignEx campaignEx) throws Throwable {
        if (this.f36648o) {
            this.f36648o = false;
            a(bVar, i10, str, campaignEx);
        } else {
            a(bVar, i10, campaignEx);
        }
    }

    private void a(com.mbridge.msdk.foundation.error.b bVar, int i10, String str, CampaignEx campaignEx) throws Throwable {
        CampaignEx campaignExA = com.mbridge.msdk.splash.manager.d.a(this.f36640g, this.f36635b, this.f36634a, str, this.f36642i, this.f36643j, true, false);
        if (campaignExA != null) {
            i(campaignExA, i10);
        } else {
            a(bVar, i10, campaignEx);
        }
    }

    private void a(com.mbridge.msdk.foundation.error.b bVar, int i10, CampaignEx campaignEx) {
        if (this.f36649p) {
            return;
        }
        b();
        this.f36649p = true;
        if (bVar != null) {
            bVar.a(campaignEx);
        }
        com.mbridge.msdk.splash.middle.b bVar2 = this.f36638e;
        if (bVar2 != null) {
            bVar2.a(bVar, i10);
        }
    }

    private void a(CampaignEx campaignEx, int i10) throws Throwable {
        this.f36640g.clearResState();
        if (!TextUtils.isEmpty(campaignEx.getAdZip())) {
            e(campaignEx, i10);
        }
        if (campaignEx.isDynamicView()) {
            return;
        }
        if (!TextUtils.isEmpty(campaignEx.getAdHtml())) {
            d(campaignEx, i10);
        }
        if (!TextUtils.isEmpty(campaignEx.getVideoUrlEncode())) {
            b(campaignEx, i10);
        }
        if (TextUtils.isEmpty(campaignEx.getImageUrl())) {
            return;
        }
        c(campaignEx, i10);
    }

    public void a(String str, CampaignEx campaignEx, int i10) {
        com.mbridge.msdk.splash.manager.g.d dVar = new com.mbridge.msdk.splash.manager.g.d();
        dVar.c(this.f36634a);
        dVar.b(this.f36635b);
        dVar.a(campaignEx);
        dVar.a(str);
        dVar.a(this.f36642i);
        dVar.a(this.f36643j);
        com.mbridge.msdk.splash.manager.g.a().a(this.f36640g, dVar, new a(campaignEx, i10));
    }

    public void a(String str, int i10, CampaignEx campaignEx) throws Throwable {
        com.mbridge.msdk.foundation.error.b bVar = new com.mbridge.msdk.foundation.error.b(880009);
        bVar.c(str);
        a(bVar, this.f36646m, i10, campaignEx);
    }

    public void a(CampaignEx campaignEx, String str, boolean z10, String str2) {
        try {
            m mVar = new m();
            mVar.e(2);
            mVar.j("m_download_end");
            if (campaignEx != null) {
                mVar.b(campaignEx.isMraid() ? m.N : m.O);
                mVar.o(campaignEx.getRequestIdNotice());
            }
            mVar.b("url", str);
            mVar.b("scenes", "1");
            if (z10) {
                mVar.d(1);
            } else {
                mVar.d(3);
                mVar.m(str2);
            }
            com.mbridge.msdk.foundation.same.report.metrics.d.b().a(mVar, campaignEx);
        } catch (Exception e10) {
            if (MBridgeConstans.DEBUG) {
                o0.b(A, e10.getMessage());
            }
        }
    }
}
