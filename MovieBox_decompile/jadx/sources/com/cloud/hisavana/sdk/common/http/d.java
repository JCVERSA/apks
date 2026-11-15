package com.cloud.hisavana.sdk.common.http;

import com.cloud.hisavana.sdk.common.constant.TaErrorCode;
import com.cloud.hisavana.sdk.common.http.listener.ResponseBaseListener;
import com.cloud.hisavana.sdk.manager.NetStateManager;
import com.mbridge.msdk.playercommon.exoplayer2.DefaultLoadControl;

public abstract class d {

    protected final int f21499a = DefaultLoadControl.DEFAULT_MIN_BUFFER_MS;

    protected ResponseBaseListener f21500b = null;

    protected abstract void a();

    public void b() {
        if (NetStateManager.checkNetworkState(true)) {
            a();
            return;
        }
        ResponseBaseListener responseBaseListener = this.f21500b;
        if (responseBaseListener != null) {
            responseBaseListener.e(TaErrorCode.ERROR_NETWORK_NOT_CONNECTED);
        }
    }
}
