package com.bytedance.sdk.openadsdk.multipro.aidl.sP;

import android.os.RemoteException;
import com.bytedance.sdk.openadsdk.IDislikeClosedListener;
import com.bytedance.sdk.openadsdk.TKC.TEQ;
import com.bytedance.sdk.openadsdk.utils.JcM;

public class sP extends IDislikeClosedListener.Stub {
    private final com.bytedance.sdk.openadsdk.core.TKC.EjP.Sj Sj;
    private final String sP;

    public sP(String str, com.bytedance.sdk.openadsdk.core.TKC.EjP.Sj sj2) {
        this.sP = str;
        this.Sj = sj2;
    }

    @Override
    public void onItemClickClosed() throws RemoteException {
        JcM.Sj(new Runnable() {
            @Override
            public void run() {
                if (sP.this.Sj != null) {
                    sP.this.Sj.Sj();
                    TEQ.Sj(6, sP.this.sP);
                }
            }
        });
    }
}
