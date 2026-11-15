package com.bytedance.sdk.openadsdk.multipro.aidl.sP;

import android.os.RemoteException;
import com.bytedance.sdk.openadsdk.IFullScreenVideoAdInteractionListener;
import com.bytedance.sdk.openadsdk.utils.JcM;

public class TKC extends IFullScreenVideoAdInteractionListener.Stub {
    private com.bytedance.sdk.openadsdk.Sj.TKC.sP Sj;

    public TKC(com.bytedance.sdk.openadsdk.Sj.TKC.sP sPVar) {
        this.Sj = sPVar;
    }

    @Override
    public void onAdClose() throws RemoteException {
        if (this.Sj == null) {
            return;
        }
        JcM.Sj(new Runnable() {
            @Override
            public void run() {
                if (TKC.this.Sj != null) {
                    TKC.this.Sj.sP();
                }
                TKC.this.Sj();
            }
        });
    }

    @Override
    public void onAdShow() throws RemoteException {
        if (this.Sj == null) {
            return;
        }
        JcM.Sj(new Runnable() {
            @Override
            public void run() {
                if (TKC.this.Sj != null) {
                    TKC.this.Sj.Sj();
                }
            }
        });
    }

    @Override
    public void onAdVideoBarClick() throws RemoteException {
        if (this.Sj == null) {
            return;
        }
        JcM.Sj(new Runnable() {
            @Override
            public void run() {
                if (TKC.this.Sj != null) {
                    TKC.this.Sj.onAdClicked();
                }
            }
        });
    }

    public void Sj() {
        this.Sj = null;
    }

    @Override
    public void onDestroy() throws RemoteException {
    }
}
