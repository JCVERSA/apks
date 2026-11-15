package com.transsion.hubsdk.aosp.app;

import android.app.ActivityManager;
import android.app.IActivityManager;
import android.app.IProcessObserver;
import android.app.TaskStackListener;
import android.app.UserSwitchObserver;
import android.content.ComponentName;
import android.content.Context;
import android.content.pm.IPackageDataObserver;
import android.os.IRemoteCallback;
import android.os.RemoteException;
import android.util.ArrayMap;
import com.transsion.hubsdk.common.reflect.TranDoorMan;
import com.transsion.hubsdk.common.util.TranSdkLog;

public class TranAospActivityManagerExt {
    private static final String TAG = "TranAospActivityManagerExt";
    private Context mContext;
    private final ArrayMap<ITranProcessObserverExtInner, ProcessObserverExt> mObserver = new ArrayMap<>();
    private final ArrayMap<TranTaskStackListener, TaskStackListener> mTranTaskStackListeners = new ArrayMap<>();
    private final ArrayMap<TranUserSwitchObserver, UserSwitchObserver> mUserSwitchObservers = new ArrayMap<>();

    public interface ITranPackageDataObserverExtInner {
        void onRemoveCompleted(String str, boolean z);
    }

    public interface ITranProcessObserverExtInner {
        void onForegroundActivitiesChanged(int i, int i2, boolean z);

        void onForegroundServicesChanged(int i, int i2, int i3);

        void onProcessDied(int i, int i2);
    }

    public class ProcessObserverExt extends IProcessObserver.Stub {
        private ITranProcessObserverExtInner processObserverExtInner;

        public ProcessObserverExt(ITranProcessObserverExtInner iTranProcessObserverExtInner) {
            this.processObserverExtInner = iTranProcessObserverExtInner;
        }

        public void onForegroundActivitiesChanged(int i, int i2, boolean z) throws RemoteException {
            this.processObserverExtInner.onForegroundActivitiesChanged(i, i2, z);
        }

        public void onForegroundServicesChanged(int i, int i2, int i3) throws RemoteException {
            this.processObserverExtInner.onForegroundServicesChanged(i, i2, i3);
        }

        public void onProcessDied(int i, int i2) throws RemoteException {
            this.processObserverExtInner.onProcessDied(i, i2);
        }

        public void onProcessStarted(int i, int i2, int i3, String str, String str2) throws RemoteException {
        }
    }

    public static class TranAospPackageDataObserver extends IPackageDataObserver.Stub {
        private ITranPackageDataObserverExtInner mObserverInner;

        public TranAospPackageDataObserver(ITranPackageDataObserverExtInner iTranPackageDataObserverExtInner) {
            this.mObserverInner = iTranPackageDataObserverExtInner;
        }

        public void onRemoveCompleted(String str, boolean z) {
            ITranPackageDataObserverExtInner iTranPackageDataObserverExtInner = this.mObserverInner;
            if (iTranPackageDataObserverExtInner != null) {
                iTranPackageDataObserverExtInner.onRemoveCompleted(str, z);
            }
        }
    }

    public interface TranTaskStackListener {
        void onLockTaskModeChanged(int i);

        void onTaskCreated(int i, ComponentName componentName);

        void onTaskFocusChanged(int i, boolean z);
    }

    public interface TranUserSwitchObserver {
        void onUserSwitchComplete(int i);

        void onUserSwitching(int i);
    }

    public TranAospActivityManagerExt(Context context) {
        this.mContext = context;
    }

    private IActivityManager getService() {
        return (IActivityManager) TranDoorMan.invokeMethod(TranDoorMan.getMethod(ActivityManager.class, "getService", new Class[0]), null, new Object[0]);
    }

    public void registerProcessObserver(ITranProcessObserverExtInner iTranProcessObserverExtInner) {
        ProcessObserverExt processObserverExt = new ProcessObserverExt(iTranProcessObserverExtInner);
        this.mObserver.put(iTranProcessObserverExtInner, processObserverExt);
        try {
            getService().registerProcessObserver(processObserverExt);
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "registerProcessObserver: ", e);
        }
    }

    public void registerTaskStackListener(final TranTaskStackListener tranTaskStackListener) {
        TaskStackListener taskStackListener = new TaskStackListener() {
            public void onLockTaskModeChanged(int i) {
                TranSdkLog.d(TranAospActivityManagerExt.TAG, "onLockTaskModeChanged listener" + tranTaskStackListener);
                TranTaskStackListener tranTaskStackListener2 = tranTaskStackListener;
                if (tranTaskStackListener2 != null) {
                    tranTaskStackListener2.onLockTaskModeChanged(i);
                }
            }

            public void onTaskCreated(int i, ComponentName componentName) {
                TranSdkLog.d(TranAospActivityManagerExt.TAG, "onTaskCreated listener" + tranTaskStackListener);
                TranTaskStackListener tranTaskStackListener2 = tranTaskStackListener;
                if (tranTaskStackListener2 != null) {
                    tranTaskStackListener2.onTaskCreated(i, componentName);
                }
            }

            public void onTaskFocusChanged(int i, boolean z) {
                TranSdkLog.d(TranAospActivityManagerExt.TAG, "onTaskFocusChanged listener" + tranTaskStackListener);
                TranTaskStackListener tranTaskStackListener2 = tranTaskStackListener;
                if (tranTaskStackListener2 != null) {
                    tranTaskStackListener2.onTaskFocusChanged(i, z);
                }
            }
        };
        try {
            this.mTranTaskStackListeners.put(tranTaskStackListener, taskStackListener);
            getService().registerTaskStackListener(taskStackListener);
        } catch (RemoteException e) {
            TranSdkLog.d(TAG, "registerTaskStackListener fail" + e);
        }
    }

    public void registerUserSwitchObserver(final TranUserSwitchObserver tranUserSwitchObserver, String str) {
        UserSwitchObserver userSwitchObserver = new UserSwitchObserver() {
            public void onUserSwitchComplete(int i) {
                TranUserSwitchObserver tranUserSwitchObserver2 = tranUserSwitchObserver;
                if (tranUserSwitchObserver2 != null) {
                    tranUserSwitchObserver2.onUserSwitchComplete(i);
                }
            }

            public void onUserSwitching(int i, IRemoteCallback iRemoteCallback) {
                TranUserSwitchObserver tranUserSwitchObserver2 = tranUserSwitchObserver;
                if (tranUserSwitchObserver2 != null) {
                    tranUserSwitchObserver2.onUserSwitching(i);
                }
            }
        };
        try {
            getService().registerUserSwitchObserver(userSwitchObserver, str);
            this.mUserSwitchObservers.put(tranUserSwitchObserver, userSwitchObserver);
        } catch (RemoteException e) {
            TranSdkLog.d(TAG, "registerUserSwitchObserver fail" + e);
        }
    }

    public void unRegisterProcessObserver(ITranProcessObserverExtInner iTranProcessObserverExtInner) {
        ProcessObserverExt processObserverExt = this.mObserver.get(iTranProcessObserverExtInner);
        if (processObserverExt != null) {
            try {
                getService().unregisterProcessObserver(processObserverExt);
            } catch (RemoteException e) {
                TranSdkLog.e(TAG, "unRegisterProcessObserver: ", e);
            }
            this.mObserver.remove(iTranProcessObserverExtInner);
        }
    }

    public void unregisterTaskStackListener(TranTaskStackListener tranTaskStackListener) {
        try {
            getService().unregisterTaskStackListener(this.mTranTaskStackListeners.get(tranTaskStackListener));
            this.mTranTaskStackListeners.remove(tranTaskStackListener);
        } catch (RemoteException e) {
            TranSdkLog.d(TAG, "registerTaskStackListener fail" + e);
        }
    }

    public void unregisterUserSwitchObserver(TranUserSwitchObserver tranUserSwitchObserver) {
        try {
            getService().unregisterUserSwitchObserver(this.mUserSwitchObservers.get(tranUserSwitchObserver));
            this.mUserSwitchObservers.remove(tranUserSwitchObserver);
        } catch (RemoteException e) {
            TranSdkLog.d(TAG, "registerUserSwitchObserver fail" + e);
        }
    }
}
