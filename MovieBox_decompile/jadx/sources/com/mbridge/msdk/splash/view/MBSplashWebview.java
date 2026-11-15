package com.mbridge.msdk.splash.view;

import android.content.Context;
import com.iab.omid.library.mmadbridge.adsession.b;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.mbsignalcommon.windvane.WindVaneWebView;

public class MBSplashWebview extends WindVaneWebView {

    private String f36883r;

    private b f36884s;

    public MBSplashWebview(Context context) {
        super(context);
        setBackgroundColor(0);
    }

    public void finishAdSession() {
        try {
            b bVar = this.f36884s;
            if (bVar != null) {
                bVar.c();
                this.f36884s = null;
                o0.a("OMSDK", "finish adSession");
            }
        } catch (Exception e10) {
            o0.a("OMSDK", e10.getMessage());
        }
    }

    public b getAdSession() {
        return this.f36884s;
    }

    public String getRequestId() {
        return this.f36883r;
    }

    public void setAdSession(b bVar) {
        this.f36884s = bVar;
    }

    public void setRequestId(String str) {
        this.f36883r = str;
    }
}
