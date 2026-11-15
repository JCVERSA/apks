package com.bytedance.sdk.openadsdk.multipro.aidl.sP;

import android.os.RemoteException;
import com.bytedance.sdk.openadsdk.IAppOpenAdInteractionListener;
import com.bytedance.sdk.openadsdk.utils.JcM;

public class Sj extends IAppOpenAdInteractionListener.Stub {
    private com.bytedance.sdk.openadsdk.Sj.EjP.sP Sj;

    public Sj(com.bytedance.sdk.openadsdk.Sj.EjP.sP sPVar) {
        this.Sj = sPVar;
    }

    @Override
    public void onAdClicked() throws RemoteException {
        if (this.Sj == null) {
            return;
        }
        JcM.Sj(new Runnable() {
            @Override
            public void run() {
                if (Sj.this.Sj != null) {
                    Sj.this.Sj.onAdClicked();
                }
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
                if (Sj.this.Sj != null) {
                    Sj.this.Sj.Sj();
                }
            }
        });
    }

    @Override
    public void onAdSkip() throws RemoteException {
        if (this.Sj == null) {
            return;
        }
        JcM.Sj(new Runnable() {
            @Override
            public void run() {
                if (Sj.this.Sj != null) {
                    Sj.this.Sj.sP();
                }
            }
        });
    }

    @Override
    public void onAdTimeOver() throws RemoteException {
        if (this.Sj == null) {
            return;
        }
        JcM.Sj(new Runnable() {
            @Override
            public void run() {
                if (Sj.this.Sj != null) {
                    Sj.this.Sj.TKC();
                }
            }
        });
    }

    @Override
    public void onDestroy() throws RemoteException {
        Sj();
    }

    private void Sj() {
        this.Sj = null;
    }
}
