package com.bytedance.sdk.openadsdk.multipro.aidl.sP;

import android.os.RemoteException;
import com.bytedance.sdk.openadsdk.IRewardAdInteractionListener;
import com.bytedance.sdk.openadsdk.utils.JcM;

public class EjP extends IRewardAdInteractionListener.Stub {
    private com.bytedance.sdk.openadsdk.Sj.HiB.Sj Sj;

    public EjP(com.bytedance.sdk.openadsdk.Sj.HiB.Sj sj2) {
        this.Sj = sj2;
    }

    @Override
    public void onAdClose() throws RemoteException {
        if (this.Sj == null) {
            return;
        }
        JcM.Sj(new Runnable() {
            @Override
            public void run() {
                if (EjP.this.Sj != null) {
                    EjP.this.Sj.sP();
                }
                EjP.this.Sj();
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
                if (EjP.this.Sj != null) {
                    EjP.this.Sj.Sj();
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
                if (EjP.this.Sj != null) {
                    EjP.this.Sj.onAdClicked();
                }
            }
        });
    }

    @Override
    public void onRewardVerify(final boolean z10, final int i10, final String str, final int i11, final String str2) throws RemoteException {
        if (this.Sj == null) {
            return;
        }
        JcM.Sj(new Runnable() {
            @Override
            public void run() {
                if (EjP.this.Sj != null) {
                    EjP.this.Sj.Sj(z10, i10, str, i11, str2);
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
