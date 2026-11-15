package com.bytedance.sdk.openadsdk.multipro.aidl;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.RemoteException;
import com.bytedance.sdk.component.Dq.Dq;
import com.bytedance.sdk.component.utils.sU;
import com.bytedance.sdk.openadsdk.IBinderPool;
import com.bytedance.sdk.openadsdk.core.dNu;
import com.bytedance.sdk.openadsdk.multipro.aidl.Sj.EjP;
import com.bytedance.sdk.openadsdk.multipro.aidl.Sj.HiB;
import com.bytedance.sdk.openadsdk.multipro.aidl.Sj.Jcg;
import com.bytedance.sdk.openadsdk.multipro.aidl.Sj.vS;
import com.bytedance.sdk.openadsdk.utils.JcM;
import com.bytedance.sdk.openadsdk.utils.Mts;

public class Sj {
    private static final Sj sP = new Sj();
    private IBinderPool Sj;
    private sP TKC;
    private long EjP = 0;
    private final ServiceConnection HiB = new ServiceConnection() {
        @Override
        public void onServiceConnected(ComponentName componentName, final IBinder iBinder) {
            JcM.Sj(new Dq("onServiceConnected") {
                @Override
                public void run() {
                    Sj.this.Sj = IBinderPool.Stub.asInterface(iBinder);
                    try {
                        Sj.this.Sj.asBinder().linkToDeath(Sj.this.vS, 0);
                    } catch (RemoteException e10) {
                        sU.Sj("TTAD.BinderPool", "onServiceConnected throws :", e10);
                    }
                    System.currentTimeMillis();
                    long unused = Sj.this.EjP;
                    if (Sj.this.TKC != null) {
                        Sj.this.TKC.onServiceConnected();
                    }
                }
            }, 5);
        }

        @Override
        public void onServiceDisconnected(ComponentName componentName) {
        }
    };
    private final IBinder.DeathRecipient vS = new IBinder.DeathRecipient() {
        @Override
        public void binderDied() {
            JcM.Sj(new Dq("binderDied") {
                @Override
                public void run() {
                    try {
                        if (Sj.this.Sj.asBinder().isBinderAlive()) {
                            Sj.this.Sj.asBinder().unlinkToDeath(Sj.this.vS, 0);
                        }
                    } catch (Exception e10) {
                        sU.sP("TTAD.BinderPool", e10.getMessage());
                    }
                    Sj.this.Sj = null;
                    Sj.this.EjP();
                }
            }, 5);
        }
    };

    private Sj() {
        EjP();
    }

    public void EjP() {
        if (com.bytedance.sdk.openadsdk.multipro.sP.TKC()) {
            TKC();
        }
    }

    public void TKC() {
        try {
            Context contextSj = dNu.Sj();
            contextSj.bindService(new Intent(contextSj, (Class<?>) BinderPoolService.class), this.HiB, 1);
            this.EjP = System.currentTimeMillis();
        } catch (Throwable unused) {
        }
    }

    public void sP() {
        try {
            Context contextSj = dNu.Sj();
            contextSj.startService(new Intent(contextSj, (Class<?>) BinderPoolService.class));
        } catch (Exception unused) {
        }
    }

    public static Sj Sj() {
        return sP;
    }

    public void Sj(sP sPVar) {
        this.TKC = sPVar;
        if (this.Sj != null) {
            JcM.Sj(new Dq("onServiceConnected2") {
                @Override
                public void run() {
                    if (Sj.this.TKC != null) {
                        Sj.this.TKC.onServiceConnected();
                    }
                }
            }, 5);
        }
    }

    public IBinder Sj(int i10) {
        try {
            if (com.bytedance.sdk.openadsdk.multipro.sP.TKC()) {
                try {
                    IBinderPool iBinderPool = this.Sj;
                    if (iBinderPool != null) {
                        return iBinderPool.queryBinder(i10);
                    }
                    return null;
                } catch (RemoteException e10) {
                    sU.sP("TTAD.BinderPool", e10.getMessage());
                    Mts.Dq("queryBinder error");
                    return null;
                }
            }
            if (i10 == 0) {
                return Jcg.Sj();
            }
            if (i10 == 1) {
                return HiB.Sj();
            }
            if (i10 == 5) {
                return vS.sP();
            }
            if (i10 == 6) {
                return EjP.Sj();
            }
            if (i10 != 7) {
                return null;
            }
            return com.bytedance.sdk.openadsdk.multipro.aidl.Sj.sP.Sj();
        } catch (Throwable unused) {
            return null;
        }
    }
}
