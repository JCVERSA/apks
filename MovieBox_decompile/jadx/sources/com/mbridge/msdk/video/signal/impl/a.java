package com.mbridge.msdk.video.signal.impl;

import android.app.Activity;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.out.Campaign;
import com.mbridge.msdk.out.NativeListener;

public abstract class a implements com.mbridge.msdk.video.signal.d {

    protected String f38989j;

    protected com.mbridge.msdk.videocommon.setting.c f38990k;

    protected com.mbridge.msdk.click.a f38991l;

    protected boolean f38980a = false;

    protected boolean f38981b = false;

    protected int f38982c = 0;

    protected int f38983d = 0;

    protected int f38984e = 0;

    protected int f38985f = 0;

    protected int f38986g = 0;

    protected int f38987h = 1;

    protected int f38988i = -1;

    public com.mbridge.msdk.video.signal.a.InterfaceC0545a f38992m = new C0546a();

    protected int f38993n = 2;

    protected int f38994o = 2;

    private com.iab.omid.library.mmadbridge.adsession.b f38995p = null;

    private com.iab.omid.library.mmadbridge.adsession.media.a f38996q = null;

    private com.iab.omid.library.mmadbridge.adsession.a f38997r = null;

    public static class C0546a implements com.mbridge.msdk.video.signal.a.InterfaceC0545a {
        @Override
        public void a(boolean z10) {
            o0.a("DefaultJSCommon", "onStartInstall");
        }

        @Override
        public void onDismissLoading(Campaign campaign) {
            o0.a("DefaultJSCommon", "onDismissLoading,campaign:" + campaign);
        }

        @Override
        public void onDownloadFinish(Campaign campaign) {
            o0.a("DefaultJSCommon", "onDownloadFinish,campaign:" + campaign);
        }

        @Override
        public void onDownloadProgress(int i10) {
            o0.a("DefaultJSCommon", "onDownloadProgress,progress:" + i10);
        }

        @Override
        public void onDownloadStart(Campaign campaign) {
            o0.a("DefaultJSCommon", "onDownloadStart,campaign:" + campaign);
        }

        @Override
        public void onFinishRedirection(Campaign campaign, String str) {
            o0.a("DefaultJSCommon", "onFinishRedirection,campaign:" + campaign + ",url:" + str);
        }

        @Override
        public void onInitSuccess() {
            o0.a("DefaultJSCommon", "onInitSuccess");
        }

        @Override
        public boolean onInterceptDefaultLoadingDialog() {
            o0.a("DefaultJSCommon", "onInterceptDefaultLoadingDialog");
            return false;
        }

        @Override
        public void onRedirectionFailed(Campaign campaign, String str) {
            o0.a("DefaultJSCommon", "onFinishRedirection,campaign:" + campaign + ",url:" + str);
        }

        @Override
        public void onShowLoading(Campaign campaign) {
            o0.a("DefaultJSCommon", "onShowLoading,campaign:" + campaign);
        }

        @Override
        public void onStartRedirection(Campaign campaign, String str) {
            o0.a("DefaultJSCommon", "onStartRedirection,campaign:" + campaign + ",url:" + str);
        }

        @Override
        public void a(int i10, String str) {
            o0.a("DefaultJSCommon", "onH5Error,code:" + i10 + "，msg:" + str);
        }

        @Override
        public void a() {
            o0.a("DefaultJSCommon", "videoLocationReady");
        }
    }

    @Override
    public void a(boolean z10) {
        o0.a("DefaultJSCommon", "setIsShowingTransparent:" + z10);
        this.f38981b = z10;
    }

    @Override
    public void b(int i10) {
        this.f38982c = i10;
    }

    @Override
    public void c(int i10) {
        this.f38984e = i10;
    }

    @Override
    public void click(int i10, String str) {
        o0.a("DefaultJSCommon", "click:type" + i10 + ",pt:" + str);
    }

    @Override
    public void d(int i10) {
        o0.a("DefaultJSCommon", "setAlertDialogRole " + i10);
        this.f38987h = i10;
    }

    @Override
    public void e(int i10) {
        this.f38983d = i10;
    }

    @Override
    public String f(int i10) {
        o0.a("DefaultJSCommon", "getSDKInfo");
        return "{}";
    }

    @Override
    public void g(int i10) {
        this.f38993n = i10;
    }

    @Override
    public void h() {
    }

    @Override
    public void handlerH5Exception(int i10, String str) {
        o0.a("DefaultJSCommon", "handlerH5Exception,code=" + i10 + ",msg:" + str);
    }

    @Override
    public int i() {
        return this.f38988i;
    }

    public com.iab.omid.library.mmadbridge.adsession.a j() {
        return this.f38997r;
    }

    public com.iab.omid.library.mmadbridge.adsession.b k() {
        return this.f38995p;
    }

    public int l() {
        if (this.f38982c == 0 && this.f38981b) {
            this.f38982c = 1;
        }
        return this.f38982c;
    }

    public int m() {
        if (this.f38983d == 0 && this.f38981b) {
            this.f38983d = 1;
        }
        return this.f38983d;
    }

    public int n() {
        if (this.f38984e == 0 && this.f38981b) {
            this.f38984e = 1;
        }
        return this.f38984e;
    }

    public com.iab.omid.library.mmadbridge.adsession.media.a o() {
        return this.f38996q;
    }

    public boolean p() {
        return this.f38981b;
    }

    @Override
    public void release() {
        o0.a("DefaultJSCommon", "release");
        com.mbridge.msdk.click.a aVar = this.f38991l;
        if (aVar != null) {
            aVar.a(false);
            this.f38991l.a((NativeListener.NativeTrackingListener) null);
            this.f38991l.c();
        }
    }

    @Override
    public void setActivity(Activity activity) {
        o0.a("DefaultJSCommon", "setActivity ");
    }

    @Override
    public void setAdEvents(com.iab.omid.library.mmadbridge.adsession.a aVar) {
        this.f38997r = aVar;
    }

    @Override
    public void setAdSession(com.iab.omid.library.mmadbridge.adsession.b bVar) {
        this.f38995p = bVar;
    }

    @Override
    public void setRewardUnitSetting(com.mbridge.msdk.videocommon.setting.c cVar) {
        o0.a("DefaultJSCommon", "setSetting:" + cVar);
        this.f38990k = cVar;
    }

    @Override
    public void setUnitId(String str) {
        o0.a("DefaultJSCommon", "setUnitId:" + str);
        this.f38989j = str;
    }

    @Override
    public void setVideoEvents(com.iab.omid.library.mmadbridge.adsession.media.a aVar) {
        this.f38996q = aVar;
    }

    @Override
    public void setWebViewFront(int i10) {
        this.f38986g = i10;
    }

    public static class b implements com.mbridge.msdk.video.signal.a.InterfaceC0545a {

        private com.mbridge.msdk.video.signal.d f38998a;

        private com.mbridge.msdk.video.signal.a.InterfaceC0545a f38999b;

        public b(com.mbridge.msdk.video.signal.d dVar, com.mbridge.msdk.video.signal.a.InterfaceC0545a interfaceC0545a) {
            this.f38998a = dVar;
            this.f38999b = interfaceC0545a;
        }

        @Override
        public void a(boolean z10) {
            com.mbridge.msdk.video.signal.a.InterfaceC0545a interfaceC0545a = this.f38999b;
            if (interfaceC0545a != null) {
                interfaceC0545a.a(z10);
            }
        }

        @Override
        public void onDismissLoading(Campaign campaign) {
            com.mbridge.msdk.video.signal.a.InterfaceC0545a interfaceC0545a = this.f38999b;
            if (interfaceC0545a != null) {
                interfaceC0545a.onDismissLoading(campaign);
            }
        }

        @Override
        public void onDownloadFinish(Campaign campaign) {
            com.mbridge.msdk.video.signal.a.InterfaceC0545a interfaceC0545a = this.f38999b;
            if (interfaceC0545a != null) {
                interfaceC0545a.onDownloadFinish(campaign);
            }
        }

        @Override
        public void onDownloadProgress(int i10) {
            com.mbridge.msdk.video.signal.a.InterfaceC0545a interfaceC0545a = this.f38999b;
            if (interfaceC0545a != null) {
                interfaceC0545a.onDownloadProgress(i10);
            }
        }

        @Override
        public void onDownloadStart(Campaign campaign) {
            com.mbridge.msdk.video.signal.a.InterfaceC0545a interfaceC0545a = this.f38999b;
            if (interfaceC0545a != null) {
                interfaceC0545a.onDownloadStart(campaign);
            }
        }

        @Override
        public void onFinishRedirection(Campaign campaign, String str) {
            com.mbridge.msdk.video.signal.a.InterfaceC0545a interfaceC0545a = this.f38999b;
            if (interfaceC0545a != null) {
                interfaceC0545a.onFinishRedirection(campaign, str);
            }
            com.mbridge.msdk.video.signal.d dVar = this.f38998a;
            if (dVar != null) {
                dVar.f();
            }
        }

        @Override
        public void onInitSuccess() {
            com.mbridge.msdk.video.signal.a.InterfaceC0545a interfaceC0545a = this.f38999b;
            if (interfaceC0545a != null) {
                interfaceC0545a.onInitSuccess();
            }
        }

        @Override
        public boolean onInterceptDefaultLoadingDialog() {
            com.mbridge.msdk.video.signal.a.InterfaceC0545a interfaceC0545a = this.f38999b;
            return interfaceC0545a != null && interfaceC0545a.onInterceptDefaultLoadingDialog();
        }

        @Override
        public void onRedirectionFailed(Campaign campaign, String str) {
            com.mbridge.msdk.video.signal.a.InterfaceC0545a interfaceC0545a = this.f38999b;
            if (interfaceC0545a != null) {
                interfaceC0545a.onRedirectionFailed(campaign, str);
            }
            com.mbridge.msdk.video.signal.d dVar = this.f38998a;
            if (dVar != null) {
                dVar.f();
            }
        }

        @Override
        public void onShowLoading(Campaign campaign) {
            com.mbridge.msdk.video.signal.a.InterfaceC0545a interfaceC0545a = this.f38999b;
            if (interfaceC0545a != null) {
                interfaceC0545a.onShowLoading(campaign);
            }
        }

        @Override
        public void onStartRedirection(Campaign campaign, String str) {
            com.mbridge.msdk.video.signal.a.InterfaceC0545a interfaceC0545a = this.f38999b;
            if (interfaceC0545a != null) {
                interfaceC0545a.onStartRedirection(campaign, str);
            }
        }

        @Override
        public void a(int i10, String str) {
            com.mbridge.msdk.video.signal.a.InterfaceC0545a interfaceC0545a = this.f38999b;
            if (interfaceC0545a != null) {
                interfaceC0545a.a(i10, str);
            }
        }

        @Override
        public void a() {
            com.mbridge.msdk.video.signal.a.InterfaceC0545a interfaceC0545a = this.f38999b;
            if (interfaceC0545a != null) {
                interfaceC0545a.a();
            }
        }
    }

    @Override
    public int b() {
        return this.f38986g;
    }

    @Override
    public String c() {
        o0.a("DefaultJSCommon", "init");
        return "{}";
    }

    @Override
    public String e() {
        o0.a("DefaultJSCommon", "getNotchArea");
        return null;
    }

    @Override
    public String g() {
        return "{}";
    }

    @Override
    public boolean a() {
        return this.f38980a;
    }

    @Override
    public void b(boolean z10) {
        this.f38980a = z10;
    }

    @Override
    public int d() {
        o0.a("DefaultJSCommon", "getAlertDialogRole " + this.f38987h);
        return this.f38987h;
    }

    @Override
    public void f() {
        o0.a("DefaultJSCommon", "finish");
    }

    @Override
    public void a(com.mbridge.msdk.video.signal.a.InterfaceC0545a interfaceC0545a) {
        o0.a("DefaultJSCommon", "setTrackingListener:" + interfaceC0545a);
        this.f38992m = interfaceC0545a;
    }

    @Override
    public void a(int i10, String str) {
        o0.a("DefaultJSCommon", "statistics,type:" + i10 + ",json:" + str);
    }

    @Override
    public void a(int i10) {
        this.f38988i = i10;
    }

    @Override
    public void a(String str) {
        o0.a("DefaultJSCommon", "setNotchArea");
    }
}
