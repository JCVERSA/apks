package com.transsion.hubsdk.core.statusbar;

import android.content.Context;
import android.os.RemoteException;
import com.android.internal.annotations.VisibleForTesting;
import com.transsion.hubsdk.TranServiceManager;
import com.transsion.hubsdk.common.bp.TranTimeOutOrExceptionExecute;
import com.transsion.hubsdk.common.init.TranHubSdkManager;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.interfaces.statusbar.ITranStatusBarManagerAdapter;
import com.transsion.hubsdk.internal.statusbar.ITranStatusBar;
import com.transsion.hubsdk.internal.statusbar.ITranStatusBarService;

public class TranThubStatusBarManager implements ITranStatusBarManagerAdapter {
    private static final String TAG = "TranThubStatusBarManager";
    private ITranStatusBarService mService = ITranStatusBarService.Stub.asInterface(TranServiceManager.getServiceIBinder("statusbar"));
    private Context mContext = TranHubSdkManager.getContext();

    public class TranThubStatusBarCallback extends ITranStatusBar.Stub {
        private com.transsion.hubsdk.api.app.ITranStatusBar mCallback;

        public TranThubStatusBarCallback(com.transsion.hubsdk.api.app.ITranStatusBar iTranStatusBar) {
            this.mCallback = iTranStatusBar;
        }

        public void autoStartFullIntent(String str, boolean z, String str2) {
            com.transsion.hubsdk.api.app.ITranStatusBar iTranStatusBar = this.mCallback;
            if (iTranStatusBar != null) {
                try {
                    iTranStatusBar.autoStartFullIntent(str, z, str2);
                } catch (Exception e) {
                    TranSdkLog.e(TranThubStatusBarManager.TAG, "autoStartFullIntent: " + e);
                }
            }
        }

        public void customGesturesEnable(String str, boolean z) {
            com.transsion.hubsdk.api.app.ITranStatusBar iTranStatusBar = this.mCallback;
            if (iTranStatusBar != null) {
                try {
                    iTranStatusBar.customGesturesEnable(str, z);
                } catch (Exception e) {
                    TranSdkLog.e(TranThubStatusBarManager.TAG, "customGesturesEnable: " + e);
                }
            }
        }

        public void customHeadsUp(String str, boolean z, String str2) {
            com.transsion.hubsdk.api.app.ITranStatusBar iTranStatusBar = this.mCallback;
            if (iTranStatusBar != null) {
                try {
                    iTranStatusBar.customHeadsUp(str, z, str2);
                } catch (Exception e) {
                    TranSdkLog.e(TranThubStatusBarManager.TAG, "customHeadsUp: " + e);
                }
            }
        }

        public void customNotificationStyle(String str, boolean z) {
            com.transsion.hubsdk.api.app.ITranStatusBar iTranStatusBar = this.mCallback;
            if (iTranStatusBar != null) {
                try {
                    iTranStatusBar.customNotificationStyle(str, z);
                } catch (Exception e) {
                    TranSdkLog.e(TranThubStatusBarManager.TAG, "customNotificationStyle: " + e);
                }
            }
        }

        public void customPanelEnable(String str, boolean z) {
            com.transsion.hubsdk.api.app.ITranStatusBar iTranStatusBar = this.mCallback;
            if (iTranStatusBar != null) {
                try {
                    iTranStatusBar.customPanelEnable(str, z);
                } catch (Exception e) {
                    TranSdkLog.e(TranThubStatusBarManager.TAG, "customPanelEnable: " + e);
                }
            }
        }

        public void enableAction(String str, String str2, boolean z) {
            com.transsion.hubsdk.api.app.ITranStatusBar iTranStatusBar = this.mCallback;
            if (iTranStatusBar != null) {
                try {
                    iTranStatusBar.enableAction(str, str2, z);
                } catch (Exception e) {
                    TranSdkLog.e(TranThubStatusBarManager.TAG, "enableAction: " + e);
                }
            }
        }

        public void enableActionWithUrl(String str, String str2, boolean z, String str3) {
            com.transsion.hubsdk.api.app.ITranStatusBar iTranStatusBar = this.mCallback;
            if (iTranStatusBar != null) {
                try {
                    iTranStatusBar.enableActionWithUrl(str, str2, z, str3);
                } catch (Exception e) {
                    TranSdkLog.e(TranThubStatusBarManager.TAG, "enableActionWithUrl: " + e);
                }
            }
        }

        public void onDestoryCallback(String str) {
            com.transsion.hubsdk.api.app.ITranStatusBar iTranStatusBar = this.mCallback;
            if (iTranStatusBar != null) {
                try {
                    iTranStatusBar.onDestoryCallback(str);
                } catch (Exception e) {
                    TranSdkLog.e(TranThubStatusBarManager.TAG, "onDestoryCallback: " + e);
                }
            }
        }

        public void updateCloseHeadsUp(String str, boolean z, String str2) {
            com.transsion.hubsdk.api.app.ITranStatusBar iTranStatusBar = this.mCallback;
            if (iTranStatusBar != null) {
                try {
                    iTranStatusBar.updateCloseHeadsUp(str, z, str2);
                } catch (Exception e) {
                    TranSdkLog.e(TranThubStatusBarManager.TAG, "updateCloseHeadsUp: " + e);
                }
            }
        }
    }

    public Object lambda$expandNotificationsPanel$1() throws RemoteException {
        ITranStatusBarService iTranStatusBarService = this.mService;
        if (iTranStatusBarService == null) {
            return null;
        }
        iTranStatusBarService.expandNotificationsPanel();
        return null;
    }

    public Object lambda$expandSettingsPanel$0() throws RemoteException {
        ITranStatusBarService iTranStatusBarService = this.mService;
        if (iTranStatusBarService == null) {
            return null;
        }
        iTranStatusBarService.expandSettingsPanel();
        return null;
    }

    @Override
    public void autoStartFullIntent(String str, boolean z, String str2) {
        try {
            ITranStatusBarService iTranStatusBarService = this.mService;
            if (iTranStatusBarService != null) {
                iTranStatusBarService.autoStartFullIntent(str, z, str2);
            }
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "autoStartFullIntent:" + e);
        }
    }

    @Override
    public void collapsePanels() {
        ITranStatusBarService iTranStatusBarService = this.mService;
        if (iTranStatusBarService == null) {
            return;
        }
        try {
            iTranStatusBarService.collapsePanels();
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "collapsePanels:" + e);
        }
    }

    @Override
    public void customGesturesEnable(String str, boolean z) {
        try {
            ITranStatusBarService iTranStatusBarService = this.mService;
            if (iTranStatusBarService != null) {
                iTranStatusBarService.customGesturesEnable(str, z);
            }
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "customGesturesEnable:" + e);
        }
    }

    @Override
    public void customHeadsUp(String str, boolean z, String str2) {
        try {
            ITranStatusBarService iTranStatusBarService = this.mService;
            if (iTranStatusBarService != null) {
                iTranStatusBarService.customHeadsUp(str, z, str2);
            }
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "customHeadsUp:" + e);
        }
    }

    @Override
    public void customNotificationStyle(String str, boolean z) {
        try {
            ITranStatusBarService iTranStatusBarService = this.mService;
            if (iTranStatusBarService != null) {
                iTranStatusBarService.customNotificationStyle(str, z);
            }
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "customNotificationStyle:" + e);
        }
    }

    @Override
    public void customPanelEnable(String str, boolean z) {
        try {
            ITranStatusBarService iTranStatusBarService = this.mService;
            if (iTranStatusBarService != null) {
                iTranStatusBarService.customPanelEnable(str, z);
            }
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "customPanelEnable:" + e);
        }
    }

    @Override
    public void disable(int i) {
        ITranStatusBarService iTranStatusBarService = this.mService;
        if (iTranStatusBarService == null) {
            return;
        }
        try {
            iTranStatusBarService.disable(i);
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "disable:" + e);
        }
    }

    @Override
    public void disable2(int i) {
        ITranStatusBarService iTranStatusBarService = this.mService;
        if (iTranStatusBarService == null) {
            return;
        }
        try {
            iTranStatusBarService.disable2(i);
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "disable:" + e);
        }
    }

    @Override
    public void enableAction(String str, String str2, boolean z) {
        try {
            ITranStatusBarService iTranStatusBarService = this.mService;
            if (iTranStatusBarService != null) {
                iTranStatusBarService.enableAction(str, str2, z);
            }
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "enableAction:" + e);
        }
    }

    @Override
    public void enableActionWithUrl(String str, String str2, boolean z, String str3) {
        try {
            ITranStatusBarService iTranStatusBarService = this.mService;
            if (iTranStatusBarService != null) {
                iTranStatusBarService.enableActionWithUrl(str, str2, z, str3);
            }
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "enableActionWithUrl:" + e);
        }
    }

    @Override
    public void expandNotificationsPanel() {
        new TranTimeOutOrExceptionExecute().timeOutAndExceptionRun(new TranTimeOutOrExceptionExecute.TimeOutAndExceptionRunnable() {
            @Override
            public final Object run() {
                return this.a.lambda$expandNotificationsPanel$1();
            }
        }, "statusbar");
        TranSdkLog.i(TAG, "expandNotificationsPanel");
    }

    @Override
    public void expandSettingsPanel() {
        new TranTimeOutOrExceptionExecute().timeOutAndExceptionRun(new TranTimeOutOrExceptionExecute.TimeOutAndExceptionRunnable() {
            @Override
            public final Object run() {
                return this.a.lambda$expandSettingsPanel$0();
            }
        }, "statusbar");
        TranSdkLog.i(TAG, "expandSettingsPanel");
    }

    @Override
    public void onDestoryCallback(String str) {
        try {
            ITranStatusBarService iTranStatusBarService = this.mService;
            if (iTranStatusBarService != null) {
                iTranStatusBarService.onDestoryCallback(str);
            }
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "onDestoryCallback:" + e);
        }
    }

    @Override
    public void registerTranStatusBar(com.transsion.hubsdk.api.app.ITranStatusBar iTranStatusBar) {
        if (this.mService == null || iTranStatusBar == null) {
            return;
        }
        try {
            this.mService.registerTranStatusBar(new TranThubStatusBarCallback(iTranStatusBar));
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "registerTranStatusBar e:" + e);
        }
    }

    @Override
    public void setIcon(String str, int i, int i2, String str2) {
        ITranStatusBarService iTranStatusBarService = this.mService;
        if (iTranStatusBarService == null) {
            return;
        }
        try {
            iTranStatusBarService.setIcon(str, this.mContext.getPackageName(), i, i2, str2);
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "setIcon:" + e);
        }
    }

    @Override
    public void setIconVisibility(String str, boolean z) {
        ITranStatusBarService iTranStatusBarService = this.mService;
        if (iTranStatusBarService == null) {
            return;
        }
        try {
            iTranStatusBarService.setIconVisibility(str, z);
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "setIconVisibility:" + e);
        }
    }

    @VisibleForTesting
    public void setService(ITranStatusBarService iTranStatusBarService) {
        this.mService = iTranStatusBarService;
    }

    @Override
    public void showPinningEscapeToast() {
        try {
            this.mService.showPinningEscapeToast();
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "showPinningEscapeToast:" + e);
        }
    }

    @Override
    public void updateCloseHeadsUp(String str, boolean z, String str2) {
        try {
            ITranStatusBarService iTranStatusBarService = this.mService;
            if (iTranStatusBarService != null) {
                iTranStatusBarService.updateCloseHeadsUp(str, z, str2);
            }
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "updateCloseHeadsUp:" + e);
        }
    }
}
