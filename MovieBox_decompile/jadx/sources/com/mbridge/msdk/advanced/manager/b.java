package com.mbridge.msdk.advanced.manager;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.http.SslError;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.webkit.SslErrorHandler;
import android.webkit.WebView;
import androidx.annotation.NonNull;
import androidx.core.app.NotificationCompat;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.cloud.tmc.miniapp.prepare.steps.PrepareException;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.advanced.view.MBNativeAdvancedView;
import com.mbridge.msdk.advanced.view.MBNativeAdvancedWebview;
import com.mbridge.msdk.foundation.download.download.H5DownLoadManager;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.entity.CampaignUnit;
import com.mbridge.msdk.foundation.tools.SameMD5;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.t0;
import com.mbridge.msdk.foundation.tools.w;
import com.mbridge.msdk.foundation.tools.y0;
import com.mbridge.msdk.foundation.tools.z0;
import com.mbridge.msdk.out.MBridgeIds;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

public class b {

    private static String f33254z = "NativeAdvancedLoadManager";

    private String f33255a;

    private String f33256b;

    private long f33257c;

    private com.mbridge.msdk.advanced.middle.b f33258d;

    private MBNativeAdvancedView f33260f;

    private com.mbridge.msdk.setting.l f33261g;

    private List<CampaignEx> f33262h;

    private CampaignEx f33263i;

    private int f33264j;

    private int f33265k;

    private int f33266l;

    private int f33267m;

    private String f33268n;

    private int f33269o;

    private boolean f33270p;

    private volatile boolean f33271q;

    private com.mbridge.msdk.videocommon.listener.a f33272r;

    private H5DownLoadManager.ZipDownloadListener f33273s;

    private H5DownLoadManager.ZipDownloadListener f33274t;

    private String f33275u;

    private int f33276v;

    private String f33277w = "";

    private Handler f33278x = new e(Looper.getMainLooper());

    private Runnable f33279y = new f();

    private Context f33259e = com.mbridge.msdk.foundation.controller.c.m().d();

    class a implements H5DownLoadManager.ZipDownloadListener {

        final CampaignEx f33280a;

        final int f33281b;

        a(CampaignEx campaignEx, int i10) {
            this.f33280a = campaignEx;
            this.f33281b = i10;
        }

        @Override
        public void onFailed(String str, String str2) {
            o0.a(b.f33254z, "zip 下载失败： " + str2 + " " + str);
            Message messageObtain = Message.obtain();
            messageObtain.what = 2;
            Bundle bundle = new Bundle();
            bundle.putSerializable("campaignex", this.f33280a);
            bundle.putString(NotificationCompat.CATEGORY_MESSAGE, str);
            bundle.putInt(NativeComponentConstants.KEY_COMPONENT_TYPE, 3);
            messageObtain.obj = bundle;
            b.this.f33278x.sendMessage(messageObtain);
            b.this.a(this.f33280a, str2, false, str);
        }

        @Override
        public void onSuccess(String str, String str2, boolean z10) {
            o0.a(b.f33254z, "zip 下载成功： " + str);
            Message messageObtain = Message.obtain();
            messageObtain.what = 1;
            messageObtain.obj = this.f33280a;
            messageObtain.arg1 = this.f33281b;
            b.this.f33278x.sendMessage(messageObtain);
            if (z10) {
                return;
            }
            b.this.a(this.f33280a, str, true, "");
        }
    }

    class c implements Runnable {

        final MBNativeAdvancedWebview f33287a;

        final String f33288b;

        c(MBNativeAdvancedWebview mBNativeAdvancedWebview, String str) {
            this.f33287a = mBNativeAdvancedWebview;
            this.f33288b = str;
        }

        @Override
        public void run() {
            this.f33287a.loadUrl(this.f33288b);
        }
    }

    class e extends Handler {
        e(Looper looper) {
            super(looper);
        }

        @Override
        public void handleMessage(@NonNull Message message) throws Throwable {
            int i10;
            Object obj;
            super.handleMessage(message);
            int i11 = message.what;
            if (i11 == 1) {
                Object obj2 = message.obj;
                int i12 = message.arg1;
                if (obj2 == null || !(obj2 instanceof CampaignEx)) {
                    return;
                }
                CampaignEx campaignEx = (CampaignEx) obj2;
                b.this.a(H5DownLoadManager.getInstance().getH5ResAddress(campaignEx.getAdZip()), campaignEx, i12);
                return;
            }
            if (i11 == 2) {
                Object obj3 = message.obj;
                try {
                    if (obj3 instanceof Bundle) {
                        int i13 = ((Bundle) obj3).getInt(NativeComponentConstants.KEY_COMPONENT_TYPE);
                        if (i13 == 1) {
                            i10 = 880004;
                        } else if (i13 == 2) {
                            i10 = 880007;
                        } else {
                            i10 = i13 == 3 ? 880006 : 880024;
                        }
                        com.mbridge.msdk.foundation.error.b bVar = new com.mbridge.msdk.foundation.error.b(i10);
                        String string = ((Bundle) obj3).getString(NotificationCompat.CATEGORY_MESSAGE);
                        CampaignEx campaignEx2 = (CampaignEx) ((Bundle) obj3).getSerializable("campaignex");
                        bVar.c(string);
                        bVar.a(campaignEx2);
                        b bVar2 = b.this;
                        bVar2.a(bVar, bVar2.f33268n, b.this.f33269o, campaignEx2);
                        return;
                    }
                    return;
                } catch (Exception e10) {
                    com.mbridge.msdk.foundation.error.b bVar3 = new com.mbridge.msdk.foundation.error.b(880000);
                    bVar3.a((Throwable) e10);
                    b bVar4 = b.this;
                    bVar4.a(bVar3, bVar4.f33268n, b.this.f33269o, (CampaignEx) null);
                    return;
                }
            }
            if (i11 == 3) {
                Object obj4 = message.obj;
                if (obj4 == null || !(obj4 instanceof CampaignEx)) {
                    return;
                }
                b bVar5 = b.this;
                bVar5.i((CampaignEx) obj4, bVar5.f33269o);
                return;
            }
            if (i11 != 4) {
                if (i11 == 5 && (obj = message.obj) != null && (obj instanceof CampaignEx)) {
                    if (b.this.f33260f != null) {
                        b.this.f33260f.setVideoReady(true);
                    }
                    b bVar6 = b.this;
                    bVar6.i((CampaignEx) obj, bVar6.f33269o);
                    return;
                }
                return;
            }
            Object obj5 = message.obj;
            if (obj5 == null || !(obj5 instanceof CampaignEx)) {
                return;
            }
            if (b.this.f33260f != null) {
                b.this.f33260f.setEndCardReady(true);
            }
            b bVar7 = b.this;
            bVar7.i((CampaignEx) obj5, bVar7.f33269o);
        }
    }

    class f implements Runnable {
        f() {
        }

        @Override
        public void run() throws Throwable {
            com.mbridge.msdk.foundation.error.b bVar = new com.mbridge.msdk.foundation.error.b(880010);
            b bVar2 = b.this;
            bVar2.a(bVar, bVar2.f33268n, b.this.f33269o, (CampaignEx) null);
        }
    }

    class g extends com.mbridge.msdk.advanced.request.b {

        final String f33294e;

        final int f33295f;

        class a implements Runnable {

            final Exception f33297a;

            final int f33298b;

            final CampaignUnit f33299c;

            a(Exception exc, int i10, CampaignUnit campaignUnit) {
                this.f33297a = exc;
                this.f33298b = i10;
                this.f33299c = campaignUnit;
            }

            @Override
            public void run() throws Throwable {
                com.mbridge.msdk.foundation.error.b bVar = new com.mbridge.msdk.foundation.error.b(880003);
                bVar.a((Throwable) this.f33297a);
                g gVar = g.this;
                b bVar2 = b.this;
                String str = gVar.f33294e;
                int i10 = this.f33298b;
                CampaignUnit campaignUnit = this.f33299c;
                bVar2.a(bVar, str, i10, (campaignUnit == null || campaignUnit.getAds() == null || this.f33299c.getAds().size() == 0) ? null : this.f33299c.getAds().get(0));
            }
        }

        class RunnableC0443b implements Runnable {

            final String f33301a;

            RunnableC0443b(String str) {
                this.f33301a = str;
            }

            @Override
            public void run() throws Throwable {
                com.mbridge.msdk.foundation.error.b bVar = new com.mbridge.msdk.foundation.error.b(880002);
                bVar.c(this.f33301a);
                g gVar = g.this;
                b.this.a(bVar, gVar.f33294e, gVar.f33295f, (CampaignEx) null);
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        g(int i10, String str, int i11) {
            super(i10);
            this.f33294e = str;
            this.f33295f = i11;
        }

        @Override
        public void a(CampaignUnit campaignUnit, int i10) throws Throwable {
            try {
                b bVar = b.this;
                bVar.a(campaignUnit, i10, bVar.f33255a, this.f33294e);
                b.this.f33277w = campaignUnit.getRequestId();
                b.this.f33262h = campaignUnit.getAds();
            } catch (Exception e10) {
                o0.b(b.f33254z, e10.getMessage());
                o0.c(b.f33254z, "onLoadCompaginSuccess 数据刚请求失败");
                if (b.this.f33278x != null) {
                    b.this.f33278x.post(new a(e10, i10, campaignUnit));
                }
                b.this.f();
            }
        }

        @Override
        public void b(int i10, String str) {
            o0.b(b.f33254z, str);
            o0.c(b.f33254z, "onLoadCompaginFailed load failed errorCode:" + i10 + " msg:" + str);
            if (b.this.f33278x != null) {
                b.this.f33278x.post(new RunnableC0443b(str));
            }
            b.this.f();
        }
    }

    class h extends com.mbridge.msdk.foundation.same.c.a {

        final CampaignEx f33303a;

        h(CampaignEx campaignEx, com.mbridge.msdk.foundation.same.report.metrics.callback.a aVar) {
            this.f33303a = campaignEx;
        }

        @Override
        public void a(String str, com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
            com.mbridge.msdk.advanced.report.a.a(str, cVar, this.f33303a, b.this.f33259e, null);
        }
    }

    class i implements Runnable {

        final CampaignEx f33305a;

        i(CampaignEx campaignEx) {
            this.f33305a = campaignEx;
        }

        @Override
        public void run() {
            com.mbridge.msdk.foundation.db.j.a(com.mbridge.msdk.foundation.db.g.a(b.this.f33259e)).a();
            w.a(b.this.f33259e, this.f33305a);
        }
    }

    class j implements com.mbridge.msdk.foundation.same.image.c {

        final CampaignEx f33307a;

        final int f33308b;

        class a implements Runnable {
            a() {
            }

            @Override
            public void run() {
                j jVar = j.this;
                b.this.i(jVar.f33307a, jVar.f33308b);
            }
        }

        class RunnableC0444b implements Runnable {
            RunnableC0444b() {
            }

            @Override
            public void run() {
                j jVar = j.this;
                b.this.i(jVar.f33307a, jVar.f33308b);
            }
        }

        j(CampaignEx campaignEx, int i10) {
            this.f33307a = campaignEx;
            this.f33308b = i10;
        }

        @Override
        public void onFailedLoad(String str, String str2) {
            o0.a(b.f33254z, "gifurl 下载失败： " + str2);
            if (b.this.f33278x != null) {
                b.this.f33278x.post(new RunnableC0444b());
            }
        }

        @Override
        public void onSuccessLoad(Bitmap bitmap, String str) {
            o0.a(b.f33254z, "giturl 下载成功： " + str);
            if (b.this.f33278x != null) {
                b.this.f33278x.post(new a());
            }
        }
    }

    class k implements H5DownLoadManager.ZipDownloadListener {

        final CampaignEx f33312a;

        final int f33313b;

        k(CampaignEx campaignEx, int i10) {
            this.f33312a = campaignEx;
            this.f33313b = i10;
        }

        @Override
        public void onFailed(String str, String str2) {
            o0.a(b.f33254z, "endcard 下载失败： " + str2);
            if (b.this.f33260f != null) {
                b.this.f33260f.setEndCardReady(false);
            }
            Message messageObtain = Message.obtain();
            messageObtain.what = 2;
            Bundle bundle = new Bundle();
            bundle.putSerializable("campaignex", this.f33312a);
            bundle.putString(NotificationCompat.CATEGORY_MESSAGE, str);
            bundle.putInt(NativeComponentConstants.KEY_COMPONENT_TYPE, 2);
            messageObtain.obj = bundle;
            b.this.f33278x.sendMessage(messageObtain);
        }

        @Override
        public void onSuccess(String str, String str2, boolean z10) {
            o0.a(b.f33254z, "endcard 下载成功： " + str);
            if (b.this.f33278x != null) {
                Message messageObtain = Message.obtain();
                messageObtain.what = 4;
                messageObtain.obj = this.f33312a;
                messageObtain.arg1 = this.f33313b;
                b.this.f33278x.sendMessage(messageObtain);
            }
        }
    }

    class l implements com.mbridge.msdk.foundation.same.image.c {

        final CampaignEx f33315a;

        final int f33316b;

        class a implements Runnable {
            a() {
            }

            @Override
            public void run() {
                l lVar = l.this;
                b.this.i(lVar.f33315a, lVar.f33316b);
            }
        }

        class RunnableC0445b implements Runnable {
            RunnableC0445b() {
            }

            @Override
            public void run() {
                l lVar = l.this;
                b.this.i(lVar.f33315a, lVar.f33316b);
            }
        }

        l(CampaignEx campaignEx, int i10) {
            this.f33315a = campaignEx;
            this.f33316b = i10;
        }

        @Override
        public void onFailedLoad(String str, String str2) {
            o0.a(b.f33254z, "image 下载失败： " + str2);
            if (b.this.f33278x != null) {
                b.this.f33278x.post(new RunnableC0445b());
            }
        }

        @Override
        public void onSuccessLoad(Bitmap bitmap, String str) {
            o0.a(b.f33254z, "image 下载成功： " + str);
            if (b.this.f33278x != null) {
                b.this.f33278x.post(new a());
            }
        }
    }

    class m implements Runnable {

        final File f33320a;

        final CampaignEx f33321b;

        final int f33322c;

        m(File file, CampaignEx campaignEx, int i10) {
            this.f33320a = file;
            this.f33321b = campaignEx;
            this.f33322c = i10;
        }

        @Override
        public void run() throws Throwable {
            b.this.a("file:////" + this.f33320a.getAbsolutePath(), this.f33321b, this.f33322c);
        }
    }

    public b(String str, String str2, long j10) {
        this.f33256b = str;
        this.f33255a = str2;
    }

    public void i(CampaignEx campaignEx, int i10) {
        if (!com.mbridge.msdk.advanced.manager.d.a(this.f33260f, campaignEx, this.f33256b, this.f33255a) || this.f33271q) {
            return;
        }
        b();
        com.mbridge.msdk.advanced.manager.d.a(campaignEx, this.f33255a);
        this.f33271q = true;
        com.mbridge.msdk.advanced.middle.b bVar = this.f33258d;
        if (bVar != null) {
            bVar.a(campaignEx, i10);
        }
    }

    private void j(CampaignEx campaignEx, int i10) throws Throwable {
        this.f33263i = campaignEx;
        if (com.mbridge.msdk.advanced.manager.d.a(this.f33260f, campaignEx, this.f33256b, this.f33255a)) {
            i(campaignEx, i10);
        } else {
            e(campaignEx, i10);
        }
    }

    public void f() {
        this.f33276v = 0;
    }

    private void g() {
        try {
            int i10 = this.f33276v + 1;
            this.f33276v = i10;
            com.mbridge.msdk.setting.l lVar = this.f33261g;
            if (lVar == null || i10 > lVar.y()) {
                o0.c(f33254z, "onload 重置offset为0");
                this.f33276v = 0;
            }
            o0.c(f33254z, "onload 算出 下次的offset是:" + this.f33276v);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void h(CampaignEx campaignEx, int i10) {
        if (this.f33260f.isH5Ready()) {
            i(campaignEx, i10);
            com.mbridge.msdk.advanced.report.a.a(1, "", this.f33255a, campaignEx);
        }
    }

    public String c() {
        return com.mbridge.msdk.foundation.same.c.b(this.f33262h);
    }

    public String d() {
        return this.f33277w;
    }

    public void e() {
        if (this.f33258d != null) {
            this.f33258d = null;
        }
        if (this.f33272r != null) {
            this.f33272r = null;
        }
        if (this.f33273s != null) {
            this.f33273s = null;
        }
    }

    private void c(CampaignEx campaignEx, int i10) {
        com.mbridge.msdk.foundation.same.image.b.a(com.mbridge.msdk.foundation.controller.c.m().d()).a(campaignEx.getImageUrl(), new l(campaignEx, i10));
    }

    /* JADX WARN: Code duplicated, block: B:42:0x00d6 A[Catch: all -> 0x00b8, Exception -> 0x0131, TRY_ENTER, TryCatch #6 {Exception -> 0x0131, blocks: (B:42:0x00d6, B:44:0x00da, B:46:0x00e0, B:48:0x00e6, B:50:0x00ec, B:52:0x00fe, B:53:0x0107, B:32:0x00b4), top: B:84:0x000a }] */
    /* JADX WARN: Code duplicated, block: B:46:0x00e0 A[Catch: all -> 0x00b8, Exception -> 0x0131, TryCatch #6 {Exception -> 0x0131, blocks: (B:42:0x00d6, B:44:0x00da, B:46:0x00e0, B:48:0x00e6, B:50:0x00ec, B:52:0x00fe, B:53:0x0107, B:32:0x00b4), top: B:84:0x000a }] */
    /* JADX WARN: Code duplicated, block: B:53:0x0107 A[Catch: all -> 0x00b8, Exception -> 0x0131, TRY_LEAVE, TryCatch #6 {Exception -> 0x0131, blocks: (B:42:0x00d6, B:44:0x00da, B:46:0x00e0, B:48:0x00e6, B:50:0x00ec, B:52:0x00fe, B:53:0x0107, B:32:0x00b4), top: B:84:0x000a }] */
    /* JADX WARN: Code duplicated, block: B:55:0x011f A[Catch: IOException -> 0x0123, TRY_ENTER, TRY_LEAVE, TryCatch #10 {IOException -> 0x0123, blocks: (B:68:0x013d, B:55:0x011f), top: B:79:0x000a }] */
    /* JADX WARN: Code duplicated, block: B:82:0x014d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:97:? A[RETURN, SYNTHETIC] */
    private void d(CampaignEx campaignEx, int i10) throws Throwable {
        File file;
        Exception e10;
        FileOutputStream fileOutputStream;
        Exception e11;
        FileOutputStream fileOutputStream2 = null;
        try {
            try {
                try {
                    try {
                        try {
                            com.mbridge.msdk.foundation.same.report.g.a("m_download_start", campaignEx, "", this.f33255a, PrepareException.ERROR_MANIFEST_INFO);
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
                                                    com.mbridge.msdk.foundation.same.report.g.a("m_download_end", campaignEx, e11.getMessage(), this.f33255a, PrepareException.ERROR_MANIFEST_INFO);
                                                    if (fileOutputStream2 != null) {
                                                        fileOutputStream2.close();
                                                    }
                                                    file = file2;
                                                    if (!file.exists()) {
                                                        o0.a(f33254z, "渲染 HTML 失败： html file write failed");
                                                        com.mbridge.msdk.foundation.error.b bVar = new com.mbridge.msdk.foundation.error.b(880013);
                                                        a(bVar, this.f33268n, i10, campaignEx);
                                                        a(bVar, this.f33268n, i10, campaignEx);
                                                    } else {
                                                        o0.a(f33254z, "渲染 HTML 失败： html file write failed");
                                                        com.mbridge.msdk.foundation.error.b bVar2 = new com.mbridge.msdk.foundation.error.b(880013);
                                                        a(bVar2, this.f33268n, i10, campaignEx);
                                                        a(bVar2, this.f33268n, i10, campaignEx);
                                                    }
                                                    if (fileOutputStream2 != null) {
                                                        fileOutputStream2.close();
                                                    }
                                                } catch (Throwable th2) {
                                                    th = th2;
                                                    if (fileOutputStream != null) {
                                                        try {
                                                            fileOutputStream.close();
                                                        } catch (Exception unused) {
                                                            fileOutputStream2 = fileOutputStream;
                                                            a(new com.mbridge.msdk.foundation.error.b(880013), this.f33268n, i10, campaignEx);
                                                            if (fileOutputStream2 != null) {
                                                                fileOutputStream2.close();
                                                            }
                                                            return;
                                                        } catch (Throwable th3) {
                                                            th = th3;
                                                            fileOutputStream2 = fileOutputStream;
                                                            if (fileOutputStream2 != null) {
                                                                try {
                                                                    fileOutputStream2.close();
                                                                } catch (IOException e13) {
                                                                    o0.b(f33254z, e13.getMessage());
                                                                }
                                                            }
                                                            throw th;
                                                        }
                                                    }
                                                    throw th;
                                                }
                                            }
                                        } catch (Exception e14) {
                                            e11 = e14;
                                            file2 = file;
                                            e11.printStackTrace();
                                            campaignEx.setMraid("");
                                            com.mbridge.msdk.foundation.same.report.g.a("m_download_end", campaignEx, e11.getMessage(), this.f33255a, PrepareException.ERROR_MANIFEST_INFO);
                                            if (fileOutputStream2 != null) {
                                                fileOutputStream2.close();
                                            }
                                            file = file2;
                                        }
                                        if (!file.exists() && file.isFile() && file.canRead()) {
                                            campaignEx.setAdHtml(file.getAbsolutePath());
                                            o0.a(f33254z, "开始渲染 HTML： ");
                                            Handler handler = this.f33278x;
                                            if (handler != null) {
                                                handler.post(new m(file, campaignEx, i10));
                                            }
                                        } else {
                                            o0.a(f33254z, "渲染 HTML 失败： html file write failed");
                                            com.mbridge.msdk.foundation.error.b bVar3 = new com.mbridge.msdk.foundation.error.b(880013);
                                            a(bVar3, this.f33268n, i10, campaignEx);
                                            a(bVar3, this.f33268n, i10, campaignEx);
                                        }
                                        if (fileOutputStream2 != null) {
                                            fileOutputStream2.close();
                                        }
                                    }
                                    file = file2;
                                    com.mbridge.msdk.foundation.same.report.g.a("m_download_end", campaignEx, "", this.f33255a, PrepareException.ERROR_MANIFEST_INFO);
                                    if (fileOutputStream2 != null) {
                                        fileOutputStream2.close();
                                    }
                                } catch (Exception e15) {
                                    fileOutputStream = fileOutputStream2;
                                    e10 = e15;
                                    file2 = file;
                                    FileOutputStream fileOutputStream4 = fileOutputStream;
                                    e11 = e10;
                                    fileOutputStream2 = fileOutputStream4;
                                    e11.printStackTrace();
                                    campaignEx.setMraid("");
                                    com.mbridge.msdk.foundation.same.report.g.a("m_download_end", campaignEx, e11.getMessage(), this.f33255a, PrepareException.ERROR_MANIFEST_INFO);
                                    if (fileOutputStream2 != null) {
                                        fileOutputStream2.close();
                                    }
                                    file = file2;
                                }
                            } catch (Exception e16) {
                                e11 = e16;
                            }
                        } catch (Throwable th4) {
                            th = th4;
                            fileOutputStream = null;
                        }
                    } catch (Exception e17) {
                        file = null;
                        e10 = e17;
                        fileOutputStream = null;
                    }
                    if (!file.exists()) {
                        o0.a(f33254z, "渲染 HTML 失败： html file write failed");
                        com.mbridge.msdk.foundation.error.b bVar4 = new com.mbridge.msdk.foundation.error.b(880013);
                        a(bVar4, this.f33268n, i10, campaignEx);
                        a(bVar4, this.f33268n, i10, campaignEx);
                    } else {
                        o0.a(f33254z, "渲染 HTML 失败： html file write failed");
                        com.mbridge.msdk.foundation.error.b bVar5 = new com.mbridge.msdk.foundation.error.b(880013);
                        a(bVar5, this.f33268n, i10, campaignEx);
                        a(bVar5, this.f33268n, i10, campaignEx);
                    }
                    if (fileOutputStream2 != null) {
                        fileOutputStream2.close();
                    }
                } catch (IOException e18) {
                    o0.b(f33254z, e18.getMessage());
                }
            } catch (Throwable th5) {
                th = th5;
                if (fileOutputStream2 != null) {
                    fileOutputStream2.close();
                }
                throw th;
            }
        } catch (Exception unused2) {
        }
    }

    private void f(CampaignEx campaignEx, int i10) {
        this.f33272r = new d(campaignEx);
        CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList = new CopyOnWriteArrayList<>();
        copyOnWriteArrayList.add(campaignEx);
        com.mbridge.msdk.videocommon.download.b.getInstance().createUnitCache(this.f33259e, this.f33255a, copyOnWriteArrayList, 298, this.f33272r);
        if (!com.mbridge.msdk.videocommon.download.b.getInstance().b(298, this.f33255a, campaignEx.isBidCampaign())) {
            o0.a(f33254z, " load Video");
            com.mbridge.msdk.videocommon.download.b.getInstance().load(this.f33255a);
        } else {
            o0.a(f33254z, " load Video isReady true");
            this.f33260f.setVideoReady(true);
            i(campaignEx, i10);
        }
    }

    public void b(String str, int i10) throws Throwable {
        CampaignEx campaignExA;
        List<Integer> listC;
        this.f33271q = false;
        this.f33268n = str;
        this.f33269o = i10;
        this.f33263i = null;
        if (this.f33260f == null) {
            a(new com.mbridge.msdk.foundation.error.b(880030), str, i10, (CampaignEx) null);
            return;
        }
        if (TextUtils.isEmpty(str)) {
            campaignExA = com.mbridge.msdk.advanced.manager.d.a(this.f33260f, this.f33256b, this.f33255a, str, this.f33264j, false, false);
        } else {
            campaignExA = com.mbridge.msdk.advanced.manager.d.a(this.f33260f, this.f33256b, this.f33255a, str, this.f33264j, false, true);
        }
        long timestamp = campaignExA != null ? campaignExA.getTimestamp() : 0L;
        com.mbridge.msdk.setting.l lVar = this.f33261g;
        if (lVar != null && lVar.t() == 1 && this.f33260f != null && campaignExA != null) {
            j(campaignExA, i10);
            return;
        }
        this.f33270p = false;
        com.mbridge.msdk.setting.l lVar2 = this.f33261g;
        if (lVar2 != null && (listC = lVar2.c()) != null && listC.size() > 0) {
            this.f33257c = listC.get(0).intValue() * 1000;
        } else {
            this.f33257c = 30000L;
        }
        o0.a(f33254z, "开始从V3请求新的 offer，超时 ：" + this.f33257c);
        if (this.f33261g == null || timestamp <= 0 || !TextUtils.isEmpty(str)) {
            a(this.f33257c);
            a(this.f33259e, str, i10);
        } else if (System.currentTimeMillis() - timestamp > this.f33261g.v() * 1000) {
            a(this.f33257c);
            a(this.f33259e, str, i10);
        } else {
            j(campaignExA, i10);
        }
    }

    class d implements com.mbridge.msdk.videocommon.listener.a {

        final CampaignEx f33290a;

        d(CampaignEx campaignEx) {
            this.f33290a = campaignEx;
        }

        @Override
        public void a(String str) {
            o0.a(b.f33254z, "Video 下载成功： " + str);
            Message messageObtain = Message.obtain();
            messageObtain.obj = this.f33290a;
            messageObtain.what = 5;
            b.this.f33278x.sendMessage(messageObtain);
        }

        @Override
        public void a(String str, String str2) {
            o0.a(b.f33254z, "Video 下载失败： " + str);
            Message messageObtain = Message.obtain();
            Bundle bundle = new Bundle();
            bundle.putSerializable("campaignex", this.f33290a);
            bundle.putString(NotificationCompat.CATEGORY_MESSAGE, str);
            bundle.putInt(NativeComponentConstants.KEY_COMPONENT_TYPE, 1);
            messageObtain.obj = bundle;
            messageObtain.what = 2;
            b.this.f33278x.sendMessage(messageObtain);
        }
    }

    class C0442b extends com.mbridge.msdk.mbsignalcommon.listener.b {

        final CampaignEx f33283a;

        final int f33284b;

        final long f33285c;

        C0442b(CampaignEx campaignEx, int i10, long j10) {
            this.f33283a = campaignEx;
            this.f33284b = i10;
            this.f33285c = j10;
        }

        @Override
        public void a(WebView webView, int i10) throws Throwable {
            super.a(webView, i10);
            o0.b("NativeAdvancedLoadManager", "=========readyState: " + i10);
            if (i10 != 1) {
                b.this.a(this.f33283a, "readyState 2", this.f33284b);
                com.mbridge.msdk.advanced.report.a.a(com.mbridge.msdk.foundation.controller.c.m().d(), this.f33283a, b.this.f33255a, "readyState 2", this.f33285c, 3);
                return;
            }
            b.this.f33260f.setH5Ready(true);
            com.mbridge.msdk.advanced.common.c.a(b.this.f33256b + b.this.f33255a + this.f33283a.getRequestId(), true);
            b.this.h(this.f33283a, this.f33284b);
            com.mbridge.msdk.advanced.report.a.a(com.mbridge.msdk.foundation.controller.c.m().d(), this.f33283a, b.this.f33255a, "", this.f33285c, 1);
        }

        @Override
        public void a(WebView webView, int i10, String str, String str2) throws Throwable {
            super.a(webView, i10, str, str2);
            o0.b("NativeAdvancedLoadManager", "onReceivedError： " + i10 + "  " + str + "  " + str2);
            b.this.a(this.f33283a, str, this.f33284b);
            com.mbridge.msdk.advanced.report.a.a(com.mbridge.msdk.foundation.controller.c.m().d(), this.f33283a, b.this.f33255a, "error code:" + i10 + str, this.f33285c, 3);
        }

        @Override
        public void a(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) throws Throwable {
            super.a(webView, sslErrorHandler, sslError);
            o0.b("NativeAdvancedLoadManager", "onReceivedSslError: " + sslError.getPrimaryError());
            b.this.a(this.f33283a, "onReceivedSslError:" + sslError.getUrl(), this.f33284b);
            com.mbridge.msdk.advanced.report.a.a(com.mbridge.msdk.foundation.controller.c.m().d(), this.f33283a, b.this.f33255a, "error url:" + sslError.getUrl(), this.f33285c, 3);
        }

        @Override
        public void a(WebView webView, String str) {
            super.a(webView, str);
            o0.b("NativeAdvancedLoadManager", "onPageFinished");
            if (!this.f33283a.isHasMBTplMark()) {
                b.this.f33260f.setH5Ready(true);
                o0.b("NativeAdvancedLoadManager", "=======onPageFinished OK");
                com.mbridge.msdk.advanced.common.c.a(b.this.f33256b + b.this.f33255a + this.f33283a.getRequestId(), true);
                b.this.h(this.f33283a, this.f33284b);
                com.mbridge.msdk.advanced.report.a.a(com.mbridge.msdk.foundation.controller.c.m().d(), this.f33283a, b.this.f33255a, "", this.f33285c, 1);
            }
            com.mbridge.msdk.advanced.signal.a.a(webView);
        }
    }

    private void e(CampaignEx campaignEx, int i10) throws Throwable {
        MBNativeAdvancedView mBNativeAdvancedView = this.f33260f;
        if (mBNativeAdvancedView != null) {
            mBNativeAdvancedView.clearResState();
        }
        if (!TextUtils.isEmpty(campaignEx.getAdZip())) {
            o0.a(f33254z, "开始下载zip： " + campaignEx.getAdZip());
            g(campaignEx, i10);
        }
        if (!TextUtils.isEmpty(campaignEx.getAdHtml())) {
            o0.a(f33254z, "开始下载HTML： " + campaignEx.getAdHtml());
            d(campaignEx, i10);
        }
        if (!TextUtils.isEmpty(campaignEx.getVideoUrlEncode())) {
            o0.a(f33254z, "开始下载Video： " + campaignEx.getVideoUrlEncode());
            f(campaignEx, i10);
        }
        if (!TextUtils.isEmpty(campaignEx.getImageUrl())) {
            o0.a(f33254z, "开始下载image： " + campaignEx.getImageUrl());
            c(campaignEx, i10);
        }
        if (!TextUtils.isEmpty(campaignEx.getendcard_url())) {
            o0.a(f33254z, "开始下载EndCard： " + campaignEx.getendcard_url());
            a(campaignEx, i10);
        }
        if (TextUtils.isEmpty(campaignEx.getGifUrl())) {
            return;
        }
        o0.a(f33254z, "开始下载gitUrl： " + campaignEx.getGifUrl());
        b(campaignEx, i10);
    }

    private void g(CampaignEx campaignEx, int i10) {
        String adZip;
        this.f33273s = new a(campaignEx, i10);
        com.mbridge.msdk.foundation.same.report.metrics.c cVar = new com.mbridge.msdk.foundation.same.report.metrics.c();
        cVar.a(campaignEx);
        int i11 = 0;
        if (campaignEx != null) {
            i11 = campaignEx.getAabEntity() != null ? campaignEx.getAabEntity().h3c : 0;
            adZip = campaignEx.getAdZip();
        } else {
            adZip = "";
        }
        cVar.f(i11);
        cVar.e(2);
        H5DownLoadManager.getInstance().downloadH5Res(cVar, adZip, this.f33273s);
    }

    public void a(com.mbridge.msdk.setting.l lVar) {
        this.f33261g = lVar;
    }

    public void a(MBNativeAdvancedView mBNativeAdvancedView) {
        this.f33260f = mBNativeAdvancedView;
    }

    public void a(int i10) {
        this.f33264j = i10;
    }

    public void a(int i10, int i11) {
        this.f33267m = i10;
        this.f33266l = i11;
    }

    private void a(long j10) {
        this.f33278x.postDelayed(this.f33279y, j10);
    }

    private void a(Context context, String str, int i10) throws Throwable {
        try {
            if (context == null) {
                a(new com.mbridge.msdk.foundation.error.b(880025), str, i10, (CampaignEx) null);
                return;
            }
            if (y0.a(this.f33255a)) {
                a(new com.mbridge.msdk.foundation.error.b(880032), str, i10, (CampaignEx) null);
                return;
            }
            try {
                com.mbridge.msdk.advanced.manager.d.b(this.f33255a);
            } catch (Throwable th2) {
                o0.b(f33254z, th2.getMessage());
            }
            o0.c(f33254z, "load 开始准备请求参数");
            MBridgeIds mBridgeIds = new MBridgeIds(this.f33256b, this.f33255a);
            com.mbridge.msdk.advanced.request.f fVar = new com.mbridge.msdk.advanced.request.f();
            fVar.d(i10);
            fVar.c(this.f33276v);
            fVar.a(this.f33275u);
            fVar.b(this.f33267m);
            fVar.a(this.f33266l);
            com.mbridge.msdk.foundation.same.net.wrapper.e eVarB = com.mbridge.msdk.advanced.request.e.b(context, mBridgeIds, fVar);
            if (eVarB == null) {
                o0.c(f33254z, "load 请求参数为空 load失败");
                a(new com.mbridge.msdk.foundation.error.b(880001), str, i10, (CampaignEx) null);
                return;
            }
            if (!TextUtils.isEmpty(str)) {
                eVarB.a("token", str);
            }
            String strD = t0.d(this.f33255a);
            if (!TextUtils.isEmpty(strD)) {
                eVarB.a("j", strD);
            }
            new com.mbridge.msdk.advanced.request.c(context).choiceV3OrV5BySetting(1, eVarB, a(str, i10), str, com.mbridge.msdk.foundation.same.c.a(this.f33257c, 30000L));
        } catch (Exception e10) {
            o0.b(f33254z, e10.getMessage());
            com.mbridge.msdk.foundation.error.b bVar = new com.mbridge.msdk.foundation.error.b(880020);
            bVar.a((Throwable) e10);
            a(bVar, str, i10, (CampaignEx) null);
            f();
        }
    }

    private void b() {
        this.f33278x.removeCallbacks(this.f33279y);
    }

    private void b(CampaignEx campaignEx, int i10) {
        com.mbridge.msdk.foundation.same.image.b.a(com.mbridge.msdk.foundation.controller.c.m().d()).a(campaignEx.getGifUrl(), new j(campaignEx, i10));
    }

    @NonNull
    private com.mbridge.msdk.advanced.request.b a(String str, int i10) {
        g gVar = new g(i10, str, i10);
        gVar.a(str);
        gVar.setUnitId(this.f33255a);
        gVar.setPlacementId(this.f33256b);
        gVar.setAdType(298);
        return gVar;
    }

    public void a(CampaignUnit campaignUnit, int i10, String str, String str2) throws Throwable {
        List<CampaignEx> listA = a(campaignUnit);
        if (listA != null && listA.size() > 0) {
            g();
            o0.c(f33254z, "onload load成功 size:" + listA.size());
            CampaignEx campaignEx = listA.get(0);
            if (TextUtils.isEmpty(campaignEx.getAdZip()) && (TextUtils.isEmpty(campaignEx.getAdHtml()) || !campaignEx.getAdHtml().contains("<MBTPLMARK>"))) {
                campaignEx.setHasMBTplMark(false);
                campaignEx.setIsMraid(true);
            } else {
                campaignEx.setHasMBTplMark(true);
                campaignEx.setIsMraid(false);
            }
            j(campaignEx, i10);
            return;
        }
        o0.c(f33254z, "onload load失败 返回的compaign没有可以用的");
        a(new com.mbridge.msdk.foundation.error.b(880033), str2, i10, (campaignUnit == null || campaignUnit.getAds() == null || campaignUnit.getAds().size() == 0) ? null : campaignUnit.getAds().get(0));
    }

    private List<CampaignEx> a(CampaignUnit campaignUnit) {
        if (campaignUnit == null || campaignUnit.getAds() == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        CampaignEx campaignEx = campaignUnit.getAds().get(0);
        campaignEx.setCampaignUnitId(this.f33255a);
        a(campaignEx);
        this.f33275u = campaignUnit.getSessionId();
        if (campaignEx.getOfferType() != 99 && (!TextUtils.isEmpty(campaignEx.getAdZip()) || !TextUtils.isEmpty(campaignEx.getAdHtml()))) {
            if (t0.c(campaignEx)) {
                campaignEx.setRtinsType(t0.c(this.f33259e, campaignEx.getPackageName()) ? 1 : 2);
            }
            if (com.mbridge.msdk.foundation.same.c.b(this.f33259e, campaignEx)) {
                arrayList.add(campaignEx);
            } else {
                t0.a(this.f33255a, campaignEx, com.mbridge.msdk.foundation.same.a.f34520x);
            }
            a(campaignEx, (com.mbridge.msdk.foundation.same.report.metrics.c) null, (com.mbridge.msdk.foundation.same.report.metrics.callback.a) null);
        }
        return arrayList;
    }

    private void a(CampaignEx campaignEx, com.mbridge.msdk.foundation.same.report.metrics.c cVar, com.mbridge.msdk.foundation.same.report.metrics.callback.a aVar) {
        try {
            com.mbridge.msdk.foundation.same.c.a(campaignEx, this.f33259e, cVar, new h(campaignEx, aVar));
        } catch (Exception e10) {
            if (MBridgeConstans.DEBUG) {
                e10.printStackTrace();
            }
        }
    }

    private void a(CampaignEx campaignEx) {
        new Thread(new i(campaignEx)).start();
    }

    public void a(com.mbridge.msdk.advanced.middle.b bVar) {
        this.f33258d = bVar;
    }

    public void a(com.mbridge.msdk.foundation.error.b bVar, String str, int i10, CampaignEx campaignEx) throws Throwable {
        if (this.f33270p) {
            this.f33270p = false;
            a(bVar, i10, str);
        } else {
            if (bVar != null) {
                bVar.a(campaignEx);
            }
            a(bVar, i10, campaignEx);
        }
    }

    private void a(com.mbridge.msdk.foundation.error.b bVar, int i10, String str) throws Throwable {
        CampaignEx campaignExA = com.mbridge.msdk.advanced.manager.d.a(this.f33260f, this.f33256b, this.f33255a, str, this.f33264j, true, true);
        if (campaignExA != null) {
            o0.b(f33254z, "load failed cache ");
            j(campaignExA, i10);
        } else {
            a(bVar, i10, campaignExA);
        }
    }

    private void a(com.mbridge.msdk.foundation.error.b bVar, int i10, CampaignEx campaignEx) {
        if (this.f33271q) {
            return;
        }
        b();
        if (bVar != null) {
            o0.b(f33254z, "real failed: " + bVar.g());
        }
        this.f33271q = true;
        com.mbridge.msdk.advanced.middle.b bVar2 = this.f33258d;
        if (bVar2 != null) {
            bVar2.a(bVar, i10);
        }
    }

    private void a(CampaignEx campaignEx, int i10) {
        String str;
        this.f33274t = new k(campaignEx, i10);
        int i11 = 0;
        if (campaignEx != null) {
            i11 = campaignEx.getAabEntity() != null ? campaignEx.getAabEntity().h3c : 0;
            str = campaignEx.getendcard_url();
        } else {
            str = "";
        }
        com.mbridge.msdk.foundation.same.report.metrics.c cVar = new com.mbridge.msdk.foundation.same.report.metrics.c();
        cVar.a(campaignEx);
        cVar.f(i11);
        H5DownLoadManager.getInstance().downloadH5Res(cVar, str, this.f33274t);
    }

    public void a(String str, CampaignEx campaignEx, int i10) throws Throwable {
        MBNativeAdvancedView mBNativeAdvancedView = this.f33260f;
        if (mBNativeAdvancedView == null || mBNativeAdvancedView.getAdvancedNativeWebview() == null) {
            return;
        }
        com.mbridge.msdk.advanced.report.a.b(this.f33255a, campaignEx);
        com.mbridge.msdk.advanced.signal.b bVar = new com.mbridge.msdk.advanced.signal.b(this.f33260f.getContext(), this.f33256b, this.f33255a);
        ArrayList arrayList = new ArrayList();
        arrayList.add(campaignEx);
        bVar.a(arrayList);
        bVar.a(this.f33264j);
        bVar.b(this.f33265k);
        this.f33260f.setAdvancedNativeSignalCommunicationImpl(bVar);
        long jCurrentTimeMillis = System.currentTimeMillis();
        MBNativeAdvancedWebview advancedNativeWebview = this.f33260f.getAdvancedNativeWebview();
        if (advancedNativeWebview == null) {
            a(campaignEx, "webview is null", i10);
            return;
        }
        if (advancedNativeWebview.isDestoryed()) {
            a(campaignEx, "webview is destroyed", i10);
            return;
        }
        advancedNativeWebview.setWebViewListener(new C0442b(campaignEx, i10, jCurrentTimeMillis));
        if (!advancedNativeWebview.isDestoryed()) {
            o0.b(f33254z, "=======开始渲染: " + str);
            Handler handler = this.f33278x;
            if (handler != null) {
                handler.post(new c(advancedNativeWebview, str));
                return;
            }
            return;
        }
        a(new com.mbridge.msdk.foundation.error.b(880031), this.f33268n, i10, campaignEx);
        com.mbridge.msdk.advanced.report.a.a(com.mbridge.msdk.foundation.controller.c.m().d(), campaignEx, this.f33255a, "webview had destory", jCurrentTimeMillis, 3);
    }

    public void a(CampaignEx campaignEx, String str, int i10) throws Throwable {
        com.mbridge.msdk.foundation.error.b bVar = new com.mbridge.msdk.foundation.error.b(880009);
        bVar.c(str);
        a(bVar, this.f33268n, i10, campaignEx);
        com.mbridge.msdk.advanced.report.a.a(2, str, this.f33255a, campaignEx);
    }

    public String a(String str) {
        int iJ;
        if (this.f33263i != null) {
            try {
                com.mbridge.msdk.videocommon.download.a aVarA = com.mbridge.msdk.videocommon.download.b.getInstance().a(this.f33255a, this.f33263i.getId() + this.f33263i.getVideoUrlEncode() + this.f33263i.getBidToken());
                if (aVarA == null || (iJ = aVarA.j()) != 5) {
                    return str;
                }
                String strK = aVarA.k();
                if (!new File(strK).exists()) {
                    return str;
                }
                o0.b(f33254z, "本地已下载完 拿本地播放地址：" + strK + " state：" + iJ);
                return strK;
            } catch (Exception e10) {
                o0.b(f33254z, e10.getMessage());
                return str;
            }
        }
        return "";
    }

    public void a(CampaignEx campaignEx, String str, boolean z10, String str2) {
        try {
            com.mbridge.msdk.foundation.entity.m mVar = new com.mbridge.msdk.foundation.entity.m();
            mVar.e(2);
            mVar.j("m_download_end");
            if (campaignEx != null) {
                mVar.b(campaignEx.isMraid() ? com.mbridge.msdk.foundation.entity.m.N : com.mbridge.msdk.foundation.entity.m.O);
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
                o0.b(f33254z, e10.getMessage());
            }
        }
    }
}
