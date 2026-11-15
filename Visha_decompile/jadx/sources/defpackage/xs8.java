package defpackage;

import com.cloud.hisavana.sdk.common.constant.TaErrorCode;
import com.cloud.hisavana.sdk.common.http.listener.ResponseBaseListener;
import com.cloud.hisavana.sdk.manager.NetStateManager;

public abstract class xs8 {
    public final int a = 15000;
    public ResponseBaseListener b = null;

    public abstract void a();

    public void b() {
        if (NetStateManager.checkNetworkState(true)) {
            a();
            return;
        }
        ResponseBaseListener responseBaseListener = this.b;
        if (responseBaseListener != null) {
            responseBaseListener.e(TaErrorCode.ERROR_NETWORK_NOT_CONNECTED);
        }
    }
}
