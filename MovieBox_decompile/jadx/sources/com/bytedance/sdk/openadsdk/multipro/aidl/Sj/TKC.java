package com.bytedance.sdk.openadsdk.multipro.aidl.Sj;

import android.os.RemoteCallbackList;
import android.os.RemoteException;
import com.bytedance.sdk.openadsdk.ICommonPermissionListener;
import java.util.HashMap;

public class TKC extends Sj {
    private static final HashMap<String, RemoteCallbackList<ICommonPermissionListener>> Sj = new HashMap<>();
    private static volatile TKC sP;

    public static TKC Sj() {
        if (sP == null) {
            synchronized (TKC.class) {
                try {
                    if (sP == null) {
                        sP = new TKC();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return sP;
    }

    @Override
    public void broadcastPermissionListener(String str, String str2) throws RemoteException {
        RemoteCallbackList<ICommonPermissionListener> remoteCallbackListRemove = Sj.remove(str);
        if (remoteCallbackListRemove == null) {
            return;
        }
        int iBeginBroadcast = remoteCallbackListRemove.beginBroadcast();
        for (int i10 = 0; i10 < iBeginBroadcast; i10++) {
            ICommonPermissionListener iCommonPermissionListener = (ICommonPermissionListener) remoteCallbackListRemove.getBroadcastItem(i10);
            if (iCommonPermissionListener != null) {
                if (str2 == null) {
                    iCommonPermissionListener.onGranted();
                } else {
                    iCommonPermissionListener.onDenied(str2);
                }
            }
        }
        remoteCallbackListRemove.finishBroadcast();
        remoteCallbackListRemove.kill();
    }

    @Override
    public void registerPermissionListener(String str, ICommonPermissionListener iCommonPermissionListener) throws RemoteException {
        if (iCommonPermissionListener == null) {
            return;
        }
        RemoteCallbackList<ICommonPermissionListener> remoteCallbackList = new RemoteCallbackList<>();
        remoteCallbackList.register(iCommonPermissionListener);
        Sj.put(str, remoteCallbackList);
    }
}
