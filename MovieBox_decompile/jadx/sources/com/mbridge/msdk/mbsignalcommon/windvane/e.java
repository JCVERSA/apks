package com.mbridge.msdk.mbsignalcommon.windvane;

import android.content.Context;
import com.mbridge.msdk.interstitial.signalcommon.interstitial;
import com.mbridge.msdk.mbsignalcommon.communication.BannerSignalPlugin;
import com.mbridge.msdk.mbsignalcommon.mraid.MraidSignalCommunication;
import com.mbridge.msdk.mbsignalcommon.webEnvCheck.WebGLCheckSignal;
import com.mbridge.msdk.splash.signal.SplashSignal;
import com.mbridge.msdk.video.signal.communication.RewardSignal;
import com.mbridge.msdk.video.signal.communication.VideoCommunication;
import java.util.HashMap;

public class e {

    private static HashMap<String, Class> f35727d = new HashMap<>();

    private Context f35728a;

    private Object f35729b;

    private WindVaneWebView f35730c;

    public e(Context context, WindVaneWebView windVaneWebView) {
        this.f35728a = context;
        this.f35730c = windVaneWebView;
        a();
    }

    public void a(Context context) {
        this.f35728a = context;
    }

    public void a(Object obj) {
        this.f35729b = obj;
    }

    private Object a(String str, WindVaneWebView windVaneWebView, Context context) {
        Class cls = f35727d.get(str);
        if (cls == null) {
            return null;
        }
        try {
            if (!g.class.isAssignableFrom(cls)) {
                return null;
            }
            g gVar = (g) cls.newInstance();
            gVar.initialize(context, windVaneWebView);
            gVar.initialize(this.f35729b, windVaneWebView);
            return gVar;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public void a(String str, Class cls) {
        if (f35727d == null) {
            f35727d = new HashMap<>();
        }
        f35727d.put(str, cls);
    }

    public Object a(String str) {
        if (f35727d == null) {
            f35727d = new HashMap<>();
        }
        return a(str, this.f35730c, this.f35728a);
    }

    public void a() {
        try {
            int i10 = interstitial.f35112i;
            a(com.mbridge.msdk.mbsignalcommon.base.e.f35600a, interstitial.class);
        } catch (ClassNotFoundException unused) {
        }
        try {
            int i11 = RewardSignal.f38670i;
            a(com.mbridge.msdk.mbsignalcommon.base.e.f35601b, RewardSignal.class);
        } catch (ClassNotFoundException unused2) {
        }
        try {
            int i12 = VideoCommunication.f38696j;
            a(com.mbridge.msdk.mbsignalcommon.base.e.f35602c, VideoCommunication.class);
        } catch (ClassNotFoundException unused3) {
        }
        try {
            int i13 = MraidSignalCommunication.f35671h;
            a(com.mbridge.msdk.mbsignalcommon.base.e.f35604e, MraidSignalCommunication.class);
        } catch (ClassNotFoundException unused4) {
        }
        try {
            int i14 = BannerSignalPlugin.f35659i;
            a(com.mbridge.msdk.mbsignalcommon.base.e.f35605f, BannerSignalPlugin.class);
        } catch (ClassNotFoundException unused5) {
        }
        try {
            int i15 = SplashSignal.f36771i;
            a(com.mbridge.msdk.mbsignalcommon.base.e.f35606g, SplashSignal.class);
        } catch (ClassNotFoundException unused6) {
        }
        try {
            int i16 = WebGLCheckSignal.f35683g;
            a(com.mbridge.msdk.mbsignalcommon.base.e.f35607h, WebGLCheckSignal.class);
        } catch (ClassNotFoundException unused7) {
        }
        try {
            if (com.mbridge.msdk.util.b.a()) {
                Class<?> cls = Class.forName("com.mbridge.msdk.mbsignalcommon.confirmation.bridge.ConfirmationJsBridgePlugin");
                a(cls.getSimpleName(), cls);
            }
        } catch (Exception unused8) {
        }
    }
}
