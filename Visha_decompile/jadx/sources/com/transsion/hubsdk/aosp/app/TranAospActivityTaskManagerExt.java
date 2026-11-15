package com.transsion.hubsdk.aosp.app;

import android.content.Context;
import android.graphics.Rect;
import android.os.IBinder;
import android.os.RemoteException;
import android.view.SurfaceControl;
import android.window.IWindowContainerTransactionCallback;
import com.transsion.hubsdk.common.util.TranSdkLog;
import java.lang.reflect.Method;

public class TranAospActivityTaskManagerExt {
    private static final String TAG = "TranAospActivityTaskManagerExt";
    private Context mContext;

    public interface TranWindowContainerTransactionCallback {
        void onTransactionReady(int i, SurfaceControl.Transaction transaction);
    }

    public TranAospActivityTaskManagerExt(Context context) {
        this.mContext = context;
    }

    public void hookStartMultiWindow(int i, Rect rect, final TranWindowContainerTransactionCallback tranWindowContainerTransactionCallback) {
        try {
            Object objInvoke = Class.forName("android.app.ActivityTaskManager").getDeclaredMethod("getService", null).invoke(null, null);
            Class<?> cls = Class.forName("android.app.IActivityTaskManager");
            Class cls2 = Integer.TYPE;
            Rect rect2 = (Rect) cls.getMethod("hookGetMultiWindowDefaultRect", cls2).invoke(objInvoke, 0);
            Method method = cls.getMethod("hookStartMultiWindow", cls2, Rect.class, IWindowContainerTransactionCallback.class);
            if (tranWindowContainerTransactionCallback != null) {
                method.invoke(objInvoke, Integer.valueOf(i), rect2, new IWindowContainerTransactionCallback() {
                    public IBinder asBinder() {
                        return null;
                    }

                    public void onTransactionReady(int i2, SurfaceControl.Transaction transaction) throws RemoteException {
                        TranWindowContainerTransactionCallback tranWindowContainerTransactionCallback2 = tranWindowContainerTransactionCallback;
                        if (tranWindowContainerTransactionCallback2 != null) {
                            tranWindowContainerTransactionCallback2.onTransactionReady(i2, transaction);
                        }
                    }
                });
            } else {
                method.invoke(objInvoke, Integer.valueOf(i), rect2, null);
            }
        } catch (Exception e) {
            TranSdkLog.d(TAG, "hookStartMultiWindow Exception " + e.getMessage());
        }
    }

    public void hookStartMultiWindowAndMakeOwnAnimation(int i, int i2, int i3, Rect rect, final TranWindowContainerTransactionCallback tranWindowContainerTransactionCallback) {
        try {
            Object objInvoke = Class.forName("android.app.ActivityTaskManager").getDeclaredMethod("getService", null).invoke(null, null);
            Class<?> cls = Class.forName("android.app.IActivityTaskManager");
            Class cls2 = Integer.TYPE;
            Method method = cls.getMethod("hookStartMultiWindowAndMakeOwnAnimation", cls2, cls2, cls2, Rect.class, IWindowContainerTransactionCallback.class);
            if (tranWindowContainerTransactionCallback != null) {
                method.invoke(objInvoke, Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3), rect, new IWindowContainerTransactionCallback() {
                    public IBinder asBinder() {
                        return null;
                    }

                    public void onTransactionReady(int i4, SurfaceControl.Transaction transaction) throws RemoteException {
                        TranWindowContainerTransactionCallback tranWindowContainerTransactionCallback2 = tranWindowContainerTransactionCallback;
                        if (tranWindowContainerTransactionCallback2 != null) {
                            tranWindowContainerTransactionCallback2.onTransactionReady(i4, transaction);
                        }
                    }
                });
            } else {
                method.invoke(objInvoke, Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3), rect, null);
            }
        } catch (Exception e) {
            TranSdkLog.d(TAG, "hookStartMultiWindowAndMakeOwnAnimation Exception " + e.getMessage());
        }
        TranSdkLog.i(TAG, "hookStartMultiWindowAndMakeOwnAnimation success");
    }
}
