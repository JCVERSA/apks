package com.mbridge.msdk.video.signal;

import android.app.Activity;
import com.mbridge.msdk.out.NativeListener;

public interface a extends e {

    public interface InterfaceC0545a extends NativeListener.NativeTrackingListener {
        void a();

        void a(int i10, String str);

        void a(boolean z10);

        void onInitSuccess();
    }

    void a(int i10);

    void a(int i10, String str);

    void a(InterfaceC0545a interfaceC0545a);

    void a(String str);

    void a(boolean z10);

    boolean a();

    int b();

    void b(int i10);

    void b(boolean z10);

    String c();

    void c(int i10);

    int d();

    void d(int i10);

    String e();

    void e(int i10);

    String f(int i10);

    void f();

    String g();

    void g(int i10);

    void h();

    int i();

    void release();

    void setActivity(Activity activity);

    void setAdEvents(com.iab.omid.library.mmadbridge.adsession.a aVar);

    void setAdSession(com.iab.omid.library.mmadbridge.adsession.b bVar);

    void setRewardUnitSetting(com.mbridge.msdk.videocommon.setting.c cVar);

    void setUnitId(String str);

    void setVideoEvents(com.iab.omid.library.mmadbridge.adsession.media.a aVar);

    void setWebViewFront(int i10);
}
