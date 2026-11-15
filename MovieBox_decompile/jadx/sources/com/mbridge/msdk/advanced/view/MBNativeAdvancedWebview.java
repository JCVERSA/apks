package com.mbridge.msdk.advanced.view;

import android.content.Context;
import android.content.IntentFilter;
import com.iab.omid.library.mmadbridge.adsession.b;
import com.mbridge.msdk.advanced.common.NetWorkStateReceiver;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.mbsignalcommon.windvane.WindVaneWebView;

public class MBNativeAdvancedWebview extends WindVaneWebView {

    private static final String f33421t = "MBNativeAdvancedWebview";

    private b f33422r;

    private NetWorkStateReceiver f33423s;

    public MBNativeAdvancedWebview(Context context) {
        super(context);
        setBackgroundColor(0);
    }

    public void finishAdSession() {
        try {
            b bVar = this.f33422r;
            if (bVar != null) {
                bVar.c();
                this.f33422r = null;
                o0.a("OMSDK", "finish adSession");
            }
        } catch (Exception e10) {
            o0.a("OMSDK", e10.getMessage());
        }
    }

    public b getAdSession() {
        return this.f33422r;
    }

    @Override
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        registerNetWorkReceiver();
    }

    @Override
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        unregisterNetWorkReceiver();
    }

    public void registerNetWorkReceiver() {
        try {
            if (this.f33423s == null) {
                this.f33423s = new NetWorkStateReceiver(this);
            }
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
            getContext().registerReceiver(this.f33423s, intentFilter);
        } catch (Throwable th2) {
            o0.a(f33421t, th2.getMessage());
        }
    }

    public void setAdSession(b bVar) {
        this.f33422r = bVar;
    }

    public void unregisterNetWorkReceiver() {
        try {
            NetWorkStateReceiver netWorkStateReceiver = this.f33423s;
            if (netWorkStateReceiver != null) {
                netWorkStateReceiver.a();
                getContext().unregisterReceiver(this.f33423s);
            }
        } catch (Throwable th2) {
            o0.a(f33421t, th2.getMessage());
        }
    }
}
