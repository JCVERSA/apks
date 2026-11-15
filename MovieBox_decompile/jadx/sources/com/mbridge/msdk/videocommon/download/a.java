package com.mbridge.msdk.videocommon.download;

import android.content.Context;
import android.text.TextUtils;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.db.m;
import com.mbridge.msdk.foundation.db.n;
import com.mbridge.msdk.foundation.download.DownloadError;
import com.mbridge.msdk.foundation.download.DownloadMessage;
import com.mbridge.msdk.foundation.download.DownloadPriority;
import com.mbridge.msdk.foundation.download.DownloadProgress;
import com.mbridge.msdk.foundation.download.DownloadResourceType;
import com.mbridge.msdk.foundation.download.DownloadStatus;
import com.mbridge.msdk.foundation.download.MBDownloadManager;
import com.mbridge.msdk.foundation.download.OnDownloadStateListener;
import com.mbridge.msdk.foundation.download.OnProgressStateListener;
import com.mbridge.msdk.foundation.download.core.DownloadRequest;
import com.mbridge.msdk.foundation.download.utils.Objects;
import com.mbridge.msdk.foundation.download.utils.Utils;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.m0;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.q0;
import com.mbridge.msdk.foundation.tools.t0;
import java.io.File;
import java.io.Serializable;
import java.net.URL;
import java.util.concurrent.CopyOnWriteArrayList;

public class a implements Serializable {
    private int A;
    private File B;
    private int D;
    private int E;
    private int F;
    private boolean G;
    private com.mbridge.msdk.setting.l H;
    private com.mbridge.msdk.videocommon.setting.c I;
    private com.mbridge.msdk.setting.l J;

    private int f39043b;

    private int f39044c;

    private com.mbridge.msdk.videocommon.listener.a f39048g;

    private com.mbridge.msdk.videocommon.listener.a f39049h;

    private CampaignEx f39050i;

    private String f39051j;

    private Context f39052k;

    private long f39053l;

    private String f39054m;

    private String f39055n;

    private String f39057p;

    private long f39059r;

    private m f39062u;

    private String f39064w;

    private DownloadRequest f39065x;

    private int f39066y;

    private boolean f39067z;

    private boolean f39042a = false;

    private boolean f39045d = false;

    private volatile int f39046e = 0;

    private CopyOnWriteArrayList<c> f39047f = new CopyOnWriteArrayList<>();

    private long f39056o = 0;

    private boolean f39058q = false;

    private int f39060s = 100;

    private boolean f39061t = false;

    private boolean f39063v = false;
    private int C = 1;
    private boolean K = false;
    private boolean L = false;
    private boolean M = false;
    private boolean N = false;
    private boolean O = false;
    private boolean P = false;
    private boolean Q = false;
    private OnDownloadStateListener R = new C0549a();
    private OnProgressStateListener S = new b();

    class C0549a implements OnDownloadStateListener {
        C0549a() {
        }

        @Override
        public void onCancelDownload(DownloadMessage downloadMessage) {
        }

        @Override
        public void onDownloadComplete(DownloadMessage downloadMessage) {
            String str;
            try {
                o0.b("CampaignDownLoadTask", "onDownloadComplete callback : " + a.this.f39056o + "    " + a.this.f39053l);
                if (a.this.f39062u == null) {
                    a.this.f39062u = m.a(com.mbridge.msdk.foundation.db.g.a(com.mbridge.msdk.foundation.controller.c.m().d()));
                }
                a.this.f39062u.a(a.this.f39054m, a.this.f39056o, 5);
                if (downloadMessage != null) {
                    try {
                        str = (String) downloadMessage.getExtra("responseHeaders");
                    } catch (Throwable th2) {
                        o0.b("CampaignDownLoadTask", th2.getMessage());
                        str = "";
                    }
                } else {
                    str = "";
                }
                a aVar = a.this;
                aVar.a(aVar.f39056o, true, str);
                a.this.f39062u.a(a.this.f39054m, a.this.f39056o, 5);
                a aVar2 = a.this;
                aVar2.a(aVar2.f39056o, true, "");
                a.this.a(1, true, "");
            } catch (Exception e10) {
                o0.b("CampaignDownLoadTask", e10.getMessage());
            }
        }

        @Override
        public void onDownloadError(DownloadMessage downloadMessage, DownloadError downloadError) {
            if (a.this.f39065x == null || a.this.f39065x.getStatus() == DownloadStatus.CANCELLED) {
                return;
            }
            com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
            eVar.a("cache", a.this.f39065x.get("cache", "2"));
            a aVar = a.this;
            aVar.a(aVar.f39050i, eVar);
            String message = (downloadError == null || downloadError.getException() == null) ? "Video Download Error" : downloadError.getException().getMessage();
            a.this.m();
            a.this.a(3, message, "");
            a.this.b(message);
            a aVar2 = a.this;
            aVar2.a(3, aVar2.f39067z, message);
        }

        @Override
        public void onDownloadStart(DownloadMessage downloadMessage) {
            a.this.f39046e = 1;
            if (a.this.f39062u == null) {
                a.this.f39062u = m.a(com.mbridge.msdk.foundation.db.g.a(com.mbridge.msdk.foundation.controller.c.m().d()));
            }
            a.this.f39062u.a(a.this.f39050i, a.this.f39053l, a.this.f39057p, a.this.f39046e);
        }
    }

    class b implements OnProgressStateListener {
        b() {
        }

        @Override
        public void onProgress(DownloadMessage downloadMessage, DownloadProgress downloadProgress) {
            try {
                com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
                eVar.a("cache", a.this.f39065x.get("cache", "2"));
                a aVar = a.this;
                aVar.a(aVar.f39050i, eVar);
                a.this.f39056o = downloadProgress.getCurrent();
                a.this.f39053l = downloadProgress.getTotal();
                a.this.f39066y = downloadProgress.getCurrentDownloadRate();
                if (a.this.f39060s != 100 && downloadProgress.getCurrentDownloadRate() >= a.this.f39060s) {
                    o0.b("CampaignDownLoadTask", "Rate : " + downloadProgress.getCurrentDownloadRate() + " ReadyRate & cdRate = " + a.this.f39060s + " " + a.this.f39044c);
                    if (a.this.f39045d) {
                        return;
                    }
                    a.this.f39045d = true;
                    if (!a.this.f39067z) {
                        a.this.a(1, true, "");
                        a.this.a(downloadProgress.getCurrent(), false, "");
                    }
                    if (a.this.f39065x == null || a.this.C != 2 || a.this.f39067z) {
                        return;
                    }
                    a.this.f39065x.cancel(downloadMessage);
                }
            } catch (Exception e10) {
                o0.b("CampaignDownLoadTask", e10.getMessage());
            }
        }
    }

    public a(Context context, CampaignEx campaignEx, String str, int i10) {
        this.f39043b = 1;
        this.G = false;
        if (context == null && campaignEx == null) {
            return;
        }
        com.mbridge.msdk.setting.g gVarB = com.mbridge.msdk.setting.h.b().b(com.mbridge.msdk.foundation.controller.c.m().b());
        if (gVarB != null) {
            this.G = gVarB.D0();
        }
        this.D = com.mbridge.msdk.foundation.same.a.f34517u;
        this.E = com.mbridge.msdk.foundation.same.a.f34518v;
        this.F = com.mbridge.msdk.foundation.same.a.f34516t;
        this.f39059r = System.currentTimeMillis();
        this.f39052k = com.mbridge.msdk.foundation.controller.c.m().d();
        this.f39050i = campaignEx;
        this.f39051j = str;
        this.f39043b = i10;
        if (campaignEx != null) {
            this.f39054m = campaignEx.getVideoUrlEncode();
        }
        this.f39064w = m0.d(this.f39054m);
        this.f39055n = com.mbridge.msdk.foundation.same.directory.e.b(com.mbridge.msdk.foundation.same.directory.c.MBRIDGE_VC) + File.separator;
        this.f39057p = this.f39055n + this.f39064w;
        o0.c("CampaignDownLoadTask", this.f39050i.getAppName() + " videoLocalPath:" + this.f39057p + " videoUrl: " + this.f39050i.getVideoUrlEncode() + " " + this.f39060s);
        l();
    }

    private void u() {
        m mVarA = m.a(com.mbridge.msdk.foundation.db.g.a(com.mbridge.msdk.foundation.controller.c.m().d()));
        com.mbridge.msdk.foundation.entity.l lVarB = mVarA.b(this.f39054m, "");
        if (lVarB != null) {
            this.f39056o = lVarB.c();
            if (this.f39046e != 2) {
                this.f39046e = lVarB.b();
            }
            if (this.f39046e == 1) {
                this.f39046e = 2;
            }
            this.f39053l = lVarB.d();
            if (lVarB.a() > 0) {
                this.f39059r = lVarB.a();
            }
            if (this.f39046e == 5) {
                if (Objects.exists(new File(this.f39055n + this.f39064w), this.f39055n, this.f39064w)) {
                    this.f39057p = this.f39055n + this.f39064w;
                } else {
                    a();
                }
            } else if (this.f39046e != 0) {
                this.f39057p = this.f39055n + this.f39064w;
            }
        } else {
            mVarA.a(this.f39054m, this.f39059r);
        }
        try {
            long j10 = this.f39053l;
            if (j10 <= 0 || this.f39056o * 100 < j10 * ((long) c(this.f39050i))) {
                return;
            }
            if (c(this.f39050i) != 100 && this.f39046e != 5) {
                return;
            }
            com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
            eVar.a("cache", 1);
            a(this.f39050i, eVar);
        } catch (Exception e10) {
            if (MBridgeConstans.DEBUG) {
                e10.printStackTrace();
            }
        }
    }

    public boolean o() {
        return this.f39063v;
    }

    public boolean p() {
        return this.L;
    }

    public boolean q() {
        return this.Q;
    }

    public boolean r() {
        return this.N;
    }

    public boolean s() {
        return this.M;
    }

    public void t() {
        if (this.f39047f != null) {
            this.f39047f = null;
        }
    }

    public void v() {
        if (this.Q) {
            return;
        }
        try {
            this.f39067z = true;
            if (this.C == 1) {
                o0.b("CampaignDownLoadTask", "Can not call resume(), because videoCtnType = " + this.C);
                return;
            }
            if (this.f39043b == 3) {
                o0.b("CampaignDownLoadTask", "Can not call resume(), because dlnet = " + this.f39043b);
                return;
            }
            o0.b("CampaignDownLoadTask", "resume()");
            this.O = false;
            this.P = false;
            DownloadMessage downloadMessage = new DownloadMessage(new Object(), this.f39054m, this.f39064w, 100, DownloadResourceType.DOWNLOAD_RESOURCE_TYPE_VIDEO);
            downloadMessage.setUseCronetDownload(a(this.f39050i));
            DownloadRequest<?> downloadRequestA = a(downloadMessage, this.R, this.S, "2");
            this.f39065x = downloadRequestA;
            downloadRequestA.start();
        } catch (Exception e10) {
            o0.b("CampaignDownLoadTask", e10.getMessage());
        }
    }

    public void w() {
        o0.b("CampaignDownLoadTask", "start()");
        try {
            if (TextUtils.isEmpty(this.f39054m)) {
                return;
            }
            if (d() != null) {
                o0.b("CampaignDownLoadTask", new URL(d()).getPath());
            }
            if (this.f39060s == 0 && this.C == 2) {
                o0.b("CampaignDownLoadTask", "Can not start download because readyRate is 0 and videoCtnType is 2");
                return;
            }
            DownloadRequest downloadRequest = this.f39065x;
            if (downloadRequest != null) {
                downloadRequest.start();
            }
        } catch (Throwable unused) {
            com.mbridge.msdk.videocommon.listener.a aVar = this.f39048g;
            if (aVar != null) {
                aVar.a("VideoUrl is not illegal, Please check it.", "");
            }
            com.mbridge.msdk.videocommon.listener.a aVar2 = this.f39049h;
            if (aVar2 != null) {
                aVar2.a("VideoUrl is not illegal, Please check it.", "");
            }
        }
    }

    public void x() {
        o0.b("CampaignDownLoadTask", "startForLoadRefactor()");
        try {
            if (TextUtils.isEmpty(this.f39054m)) {
                com.mbridge.msdk.videocommon.listener.a aVar = this.f39048g;
                if (aVar != null) {
                    aVar.a(this.f39054m);
                    return;
                }
                return;
            }
            if (d() != null) {
                o0.b("CampaignDownLoadTask", new URL(d()).getPath());
            }
            if (this.f39043b == 3) {
                o0.b("CampaignDownLoadTask", "startForLoadRefactor: Dlnet is 3, Will callback.");
                com.mbridge.msdk.videocommon.listener.a aVar2 = this.f39048g;
                if (aVar2 != null) {
                    aVar2.a(this.f39054m);
                    return;
                }
                return;
            }
            if (this.f39060s == 0 && this.C == 2) {
                o0.b("CampaignDownLoadTask", "Can not start download because readyRate is 0 and videoCtnType is 2");
                com.mbridge.msdk.videocommon.listener.a aVar3 = this.f39048g;
                if (aVar3 != null) {
                    aVar3.a(this.f39054m);
                    return;
                }
                return;
            }
            try {
                if (this.f39046e == 5 && Utils.getDownloadRate(this.f39053l, this.f39056o) >= this.f39060s) {
                    if (Objects.exists(new File(this.f39055n + this.f39064w), this.f39055n, this.f39064w)) {
                        this.f39057p = this.f39055n + this.f39064w;
                        com.mbridge.msdk.videocommon.listener.a aVar4 = this.f39048g;
                        if (aVar4 != null) {
                            aVar4.a(this.f39054m);
                            return;
                        }
                        return;
                    }
                }
            } catch (Exception e10) {
                o0.b("CampaignDownLoadTask", "startForLoadRefactor: " + e10.getMessage());
            }
            DownloadRequest downloadRequest = this.f39065x;
            if (downloadRequest != null) {
                downloadRequest.start();
            }
        } catch (Throwable unused) {
            com.mbridge.msdk.videocommon.listener.a aVar5 = this.f39048g;
            if (aVar5 != null) {
                aVar5.a("VideoUrl is not illegal, Please check it.", "");
            }
        }
    }

    private void l() {
        File file;
        File file2;
        try {
            if (TextUtils.isEmpty(this.f39054m)) {
                return;
            }
            if (TextUtils.isEmpty(this.f39055n)) {
                file = null;
            } else {
                file = new File(this.f39055n);
                if (!file.exists()) {
                    file.mkdirs();
                }
            }
            if (file != null && file.exists() && ((file2 = this.B) == null || !file2.exists())) {
                File file3 = new File(file + "/.nomedia");
                this.B = file3;
                if (!file3.exists()) {
                    this.B.createNewFile();
                }
            }
            u();
            a(this.f39054m);
        } catch (Exception e10) {
            o0.c("CampaignDownLoadTask", e10.getMessage());
        }
    }

    public void m() {
        try {
            t0.a(this.f39051j, this.f39050i, com.mbridge.msdk.foundation.same.a.f34520x);
        } catch (Exception e10) {
            o0.b("CampaignDownLoadTask", e10.getMessage());
        }
    }

    public void c(boolean z10) {
        this.L = z10;
    }

    public String d() {
        return this.f39054m;
    }

    public void e(boolean z10) {
        this.N = z10;
    }

    public void f(boolean z10) {
        this.M = z10;
    }

    public String g() {
        if (this.Q) {
            try {
                File file = new File(this.f39057p);
                return (file.exists() && file.isFile()) ? this.f39057p : this.f39054m;
            } catch (Exception e10) {
                o0.b("CampaignDownLoadTask", e10.getMessage());
                return this.f39054m;
            }
        }
        try {
            File file2 = new File(this.f39057p);
            if (Objects.exists(file2, this.f39055n, this.f39064w) && file2.isFile()) {
                return this.f39057p;
            }
        } catch (Exception e11) {
            o0.b("CampaignDownLoadTask", e11.getMessage());
        }
        return this.f39054m;
    }

    public long h() {
        return this.f39056o;
    }

    public long i() {
        return this.f39059r;
    }

    public int j() {
        return this.f39046e;
    }

    public String k() {
        return this.f39057p;
    }

    public boolean n() {
        return this.K;
    }

    public void c(int i10) {
        this.f39043b = i10;
    }

    public void d(boolean z10) {
        this.f39058q = z10;
    }

    public long e() {
        return this.f39053l;
    }

    public String f() {
        String message = "";
        if (this.f39043b == 3) {
            return "";
        }
        String str = this.f39055n + this.f39064w;
        File file = new File(str);
        try {
            if (Objects.exists(file, this.f39055n, this.f39064w)) {
                if (file.isFile()) {
                    if (!file.canRead()) {
                        message = "file can not read ";
                    } else if (file.length() > 0) {
                        this.f39057p = str;
                    } else {
                        message = "file length is 0 ";
                    }
                } else {
                    message = "file is not file ";
                }
            } else {
                message = "file is not exist ";
            }
        } catch (Throwable th2) {
            o0.b("CampaignDownLoadTask", th2.getMessage());
            message = th2.getMessage();
        }
        if (this.f39046e == 5 && !TextUtils.isEmpty(message)) {
            a();
        }
        return message;
    }

    public void b(int i10) {
        this.f39044c = i10;
    }

    public CampaignEx c() {
        return this.f39050i;
    }

    public void d(int i10) {
        o0.a("CampaignDownLoadTask", "set ready rate: " + i10);
        this.f39060s = i10;
    }

    public void e(CampaignEx campaignEx) {
        this.f39050i = campaignEx;
    }

    private int c(CampaignEx campaignEx) {
        int iD;
        if (campaignEx == null) {
            return 100;
        }
        if (campaignEx.getReady_rate() != -1) {
            iD = campaignEx.getReady_rate();
            o0.a("CampaignDownLoadTask", "ready_rate(campaign): " + iD);
        } else {
            iD = d(campaignEx);
            o0.a("CampaignDownLoadTask", "ready_rate(reward_unit_setting): " + iD);
        }
        try {
            return Math.max(iD, 0);
        } catch (Exception unused) {
            return 100;
        }
    }

    public void b(boolean z10) {
        this.f39063v = z10;
    }

    public void e(int i10) {
        this.C = i10;
    }

    private int d(CampaignEx campaignEx) {
        if (campaignEx == null) {
            return 100;
        }
        try {
            if (campaignEx.getAdType() == 298) {
                if (this.H == null) {
                    this.H = com.mbridge.msdk.setting.h.b().d(com.mbridge.msdk.foundation.controller.c.m().b(), this.f39051j);
                }
                return this.H.C();
            }
            if (campaignEx.getAdType() == 42) {
                if (this.J == null) {
                    this.J = com.mbridge.msdk.setting.h.b().e(com.mbridge.msdk.foundation.controller.c.m().b(), this.f39051j);
                }
                return b((CampaignEx) null);
            }
            if (this.I == null) {
                this.I = com.mbridge.msdk.videocommon.setting.b.b().a(com.mbridge.msdk.foundation.controller.c.m().b(), this.f39051j, false);
            }
            return this.I.w();
        } catch (Throwable th2) {
            o0.b("CampaignDownLoadTask", th2.getMessage(), th2);
            return 100;
        }
    }

    public void b(String str) {
        com.mbridge.msdk.videocommon.listener.a aVar = this.f39048g;
        if (aVar != null) {
            aVar.a(str, this.f39054m);
        }
        com.mbridge.msdk.videocommon.listener.a aVar2 = this.f39049h;
        if (aVar2 != null) {
            aVar2.a(str, this.f39054m);
        }
        o0.b("CampaignDownLoadTask", "Video download stop : " + str);
        if (this.f39046e == 4 || this.f39046e == 2 || this.f39046e == 5) {
            return;
        }
        this.f39046e = 4;
        CampaignEx campaignEx = this.f39050i;
        if (campaignEx != null && campaignEx.getRsIgnoreCheckRule() != null && this.f39050i.getRsIgnoreCheckRule().size() > 0 && this.f39050i.getRsIgnoreCheckRule().contains(0)) {
            o0.c("CampaignDownLoadTask", "Is not check video download status");
        } else {
            a(this.f39056o, this.f39046e);
        }
    }

    public void a(boolean z10) {
        this.K = z10;
    }

    public void a(int i10, int i11) {
        this.f39046e = i10;
        if (this.f39062u == null) {
            this.f39062u = m.a(com.mbridge.msdk.foundation.db.g.a(com.mbridge.msdk.foundation.controller.c.m().d()));
        }
        this.f39062u.a(this.f39054m, i11, i10);
    }

    public void c(String str) {
        m();
        a(2, str, "");
        this.f39046e = 4;
    }

    public void a(int i10) {
        this.A = i10;
    }

    public void a(String str) {
        int iC;
        if (TextUtils.isEmpty(str)) {
            this.f39049h.a("VideoUrl is NULL, Please check it.", "");
            return;
        }
        if (this.f39046e == 1) {
            o0.a("CampaignDownLoadTask", "Run : Task is RUNNING, Will return.");
            return;
        }
        if (this.f39046e == 5 && Utils.getDownloadRate(this.f39053l, this.f39056o) >= this.f39060s) {
            o0.a("CampaignDownLoadTask", "Run : Video Done, Will callback.");
            com.mbridge.msdk.videocommon.listener.a aVar = this.f39048g;
            if (aVar != null) {
                aVar.a(this.f39054m);
            }
            com.mbridge.msdk.videocommon.listener.a aVar2 = this.f39049h;
            if (aVar2 != null) {
                aVar2.a(this.f39054m);
            }
            try {
                File file = new File(this.f39057p);
                if (Objects.exists(file, this.f39055n, this.f39064w) && file.isFile()) {
                    file.setLastModified(System.currentTimeMillis());
                }
            } catch (Exception e10) {
                o0.b("CampaignDownLoadTask", e10.getMessage());
            }
            com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
            eVar.a("cache", 1);
            a(this.f39050i, eVar);
            return;
        }
        if (this.f39043b == 3) {
            o0.a("CampaignDownLoadTask", "Run : Dlnet is 3, Will callback.");
            a(0L, false, "");
            com.mbridge.msdk.foundation.same.report.metrics.e eVar2 = new com.mbridge.msdk.foundation.same.report.metrics.e();
            eVar2.a("cache", 1);
            a(this.f39050i, eVar2);
            return;
        }
        try {
            iC = c(this.f39050i);
        } catch (Exception unused) {
            iC = 100;
        }
        d(iC);
        if (iC == 0) {
            com.mbridge.msdk.videocommon.listener.a aVar3 = this.f39048g;
            if (aVar3 != null) {
                aVar3.a(this.f39054m);
            }
            com.mbridge.msdk.videocommon.listener.a aVar4 = this.f39049h;
            if (aVar4 != null) {
                aVar4.a(this.f39054m);
            }
        }
        DownloadMessage downloadMessage = new DownloadMessage(this.f39050i, str, this.f39064w, 100, DownloadResourceType.DOWNLOAD_RESOURCE_TYPE_VIDEO);
        downloadMessage.setUseCronetDownload(a(this.f39050i));
        downloadMessage.addExtra("resource_type", 4);
        this.f39065x = a(downloadMessage, this.R, this.S, "1");
    }

    private int b(CampaignEx campaignEx) {
        try {
            com.mbridge.msdk.setting.l lVar = this.J;
            if (lVar != null) {
                return lVar.C();
            }
        } catch (Exception e10) {
            if (MBridgeConstans.DEBUG) {
                o0.b("CampaignDownLoadTask", e10.getMessage());
            }
        }
        return 100;
    }

    public void b(com.mbridge.msdk.videocommon.listener.a aVar) {
        this.f39049h = aVar;
    }

    public void b() {
        try {
            a();
            CampaignEx campaignEx = this.f39050i;
            if (campaignEx == null || campaignEx.getPlayable_ads_without_video() != 2) {
                com.mbridge.msdk.videocommon.cache.a aVarA = com.mbridge.msdk.videocommon.cache.a.a();
                if (aVarA != null) {
                    aVarA.a(this.f39050i);
                }
            }
        } catch (Exception unused) {
            o0.b("CampaignDownLoadTask", "del file is failed");
        } finally {
            this.f39046e = 0;
        }
    }

    private DownloadRequest<?> a(DownloadMessage downloadMessage, OnDownloadStateListener onDownloadStateListener, OnProgressStateListener onProgressStateListener, String str) {
        return MBDownloadManager.getInstance().download(downloadMessage).withReadTimeout(this.D).withConnectTimeout(this.F).withWriteTimeout(this.E).withDownloadPriority(DownloadPriority.HIGH).withHttpRetryCounter(1).withDirectoryPathInternal(this.f39055n).withDownloadStateListener(onDownloadStateListener).withProgressStateListener(onProgressStateListener).withTimeout(60000L).with("do_us_fi_re", Boolean.toString(this.G)).with("download_scene", "download_video").with(CampaignEx.JSON_KEY_READY_RATE, String.valueOf(this.f39060s)).with("scenes", str).build();
    }

    public void a(long j10, boolean z10, String str) {
        m mVar;
        o0.b("CampaignDownLoadTask", "setStateToDone 下载完成  ： mProgressSize" + this.f39056o + "  progressSize " + j10 + "  " + this.f39066y + "%   FileSize : " + this.f39053l + "  " + this.f39050i.getAppName());
        if (this.f39060s == 100 && this.f39043b != 3 && j10 != this.f39053l && !z10) {
            File file = new File(this.f39057p);
            o0.b("CampaignDownLoadTask", "progressSize = " + j10 + " fileSize = " + this.f39053l + " " + z10 + " absFileSize = " + (Objects.exists(file, this.f39055n, this.f39064w) ? file.length() : 0L));
            b("File size is not match witch download size.");
            return;
        }
        this.f39046e = 5;
        if (j10 == this.f39053l) {
            a(1, "", str);
        }
        long j11 = this.f39053l;
        if (j11 != 0 && (mVar = this.f39062u) != null) {
            mVar.b(this.f39054m, j11);
        }
        this.f39042a = false;
        a(j10, this.f39046e);
    }

    public void a(c cVar) {
        CopyOnWriteArrayList<c> copyOnWriteArrayList = this.f39047f;
        if (copyOnWriteArrayList != null) {
            copyOnWriteArrayList.add(cVar);
        }
    }

    public void a(com.mbridge.msdk.videocommon.listener.a aVar) {
        this.f39048g = aVar;
    }

    private void a(long j10, int i10) {
        this.f39056o = j10;
        int i11 = this.f39060s;
        if (100 * j10 >= ((long) i11) * this.f39053l && !this.f39061t && i10 != 4) {
            if (i11 == 100 && i10 != 5) {
                this.f39046e = 5;
                return;
            }
            this.f39061t = true;
            o0.b("CampaignDownLoadTask", "UpdateListener : state: " + i10 + " progress : " + j10);
            String strF = f();
            if (TextUtils.isEmpty(strF)) {
                com.mbridge.msdk.videocommon.listener.a aVar = this.f39048g;
                if (aVar != null) {
                    aVar.a(this.f39054m);
                }
                com.mbridge.msdk.videocommon.listener.a aVar2 = this.f39049h;
                if (aVar2 != null) {
                    aVar2.a(this.f39054m);
                }
            } else {
                com.mbridge.msdk.videocommon.listener.a aVar3 = this.f39048g;
                if (aVar3 != null) {
                    aVar3.a("file is not effective " + strF, this.f39054m);
                }
                com.mbridge.msdk.videocommon.listener.a aVar4 = this.f39049h;
                if (aVar4 != null) {
                    aVar4.a("file is not effective " + strF, this.f39054m);
                }
            }
        }
        if (!this.f39042a && j10 > 0) {
            this.f39042a = true;
            if (this.f39062u == null) {
                this.f39062u = m.a(com.mbridge.msdk.foundation.db.g.a(com.mbridge.msdk.foundation.controller.c.m().d()));
            }
            this.f39062u.a(this.f39054m, j10, this.f39046e);
        }
        CopyOnWriteArrayList<c> copyOnWriteArrayList = this.f39047f;
        if (copyOnWriteArrayList != null) {
            for (c cVar : copyOnWriteArrayList) {
                if (cVar != null) {
                    cVar.onProgress(j10, i10);
                }
            }
        }
    }

    private void a() {
        if (this.f39062u == null) {
            this.f39062u = m.a(com.mbridge.msdk.foundation.db.g.a(com.mbridge.msdk.foundation.controller.c.m().d()));
        }
        try {
            try {
                this.f39062u.a(this.f39054m);
                if (!q0.a().a("r_d_v_b_l", true)) {
                    File file = new File(this.f39057p);
                    if (file.exists() && file.isFile()) {
                        file.delete();
                    }
                }
                this.f39046e = 0;
            } catch (Throwable unused) {
                o0.b("CampaignDownLoadTask", "del DB or file failed");
            }
        } finally {
            this.f39046e = 0;
        }
    }

    public void a(int i10, String str, String str2) {
        com.mbridge.msdk.foundation.entity.m mVar = new com.mbridge.msdk.foundation.entity.m(this.f39052k, this.f39050i, i10, Long.toString(this.f39059r != 0 ? System.currentTimeMillis() - this.f39059r : 0L), this.f39053l, this.A);
        mVar.b(this.f39050i.getId());
        mVar.v(this.f39050i.getVideoUrlEncode());
        mVar.m(str);
        mVar.n(this.f39050i.getRequestId());
        mVar.k(this.f39050i.getCurrentLocalRid());
        mVar.o(this.f39050i.getRequestIdNotice());
        mVar.u(this.f39051j);
        mVar.q(str2);
        mVar.b(CampaignEx.JSON_KEY_READY_RATE, String.valueOf(this.f39060s));
        mVar.b("url", this.f39050i.getVideoUrlEncode());
        mVar.e(4);
        DownloadRequest downloadRequest = this.f39065x;
        if (downloadRequest != null) {
            mVar.b("scenes", downloadRequest.get("scenes", ""));
            mVar.b("resumed_breakpoint", this.f39065x.get("resumed_breakpoint", ""));
        }
        int i11 = this.A;
        if (i11 == 94 || i11 == 287) {
            return;
        }
        n.a(com.mbridge.msdk.foundation.db.g.a(com.mbridge.msdk.foundation.controller.c.m().d())).a(mVar);
    }

    private int a(CampaignEx campaignEx) {
        if (campaignEx != null) {
            try {
                if (campaignEx.getAabEntity() != null) {
                    return campaignEx.getAabEntity().h3c;
                }
            } catch (Throwable th2) {
                o0.b("CampaignDownLoadTask", th2.getMessage());
            }
        }
        return 0;
    }

    public void a(int i10, boolean z10, String str) {
        if (this.P) {
            return;
        }
        try {
            this.P = true;
            com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
            DownloadRequest downloadRequest = this.f39065x;
            if (downloadRequest != null) {
                eVar.a("scenes", downloadRequest.get("scenes", ""));
                eVar.a("url", this.f39054m);
                eVar.a("resumed_breakpoint", this.f39065x.get("resumed_breakpoint", ""));
                eVar.a("h3c", "");
            }
            eVar.a("resource_type", 4);
            eVar.a("file_size", Long.valueOf(this.f39053l));
            eVar.a(CampaignEx.JSON_KEY_READY_RATE, Integer.valueOf(this.f39060s));
            eVar.a("result", Integer.valueOf(i10));
            eVar.a("reason", str);
            com.mbridge.msdk.foundation.same.report.metrics.d.b().a("m_download_end", this.f39050i, eVar);
        } catch (Exception e10) {
            if (MBridgeConstans.DEBUG) {
                e10.printStackTrace();
            }
        }
    }

    public void a(CampaignEx campaignEx, com.mbridge.msdk.foundation.same.report.metrics.e eVar) {
        if (this.O || campaignEx == null || eVar == null) {
            return;
        }
        this.O = true;
        try {
            eVar.a("resource_type", 4);
            DownloadRequest downloadRequest = this.f39065x;
            if (downloadRequest != null) {
                eVar.a("scenes", downloadRequest.get("scenes", "1"));
                eVar.a("resumed_breakpoint", this.f39065x.get("resumed_breakpoint", "2"));
            } else {
                eVar.a("scenes", "1");
                eVar.a("resumed_breakpoint", "1");
            }
            eVar.a("url", campaignEx.getVideoUrlEncode());
            eVar.a(CampaignEx.JSON_KEY_READY_RATE, Integer.valueOf(c(campaignEx)));
            com.mbridge.msdk.foundation.same.report.metrics.d.b().a("m_download_start", campaignEx, eVar);
        } catch (Exception e10) {
            o0.b("CampaignDownLoadTask", e10.getMessage());
        }
    }
}
