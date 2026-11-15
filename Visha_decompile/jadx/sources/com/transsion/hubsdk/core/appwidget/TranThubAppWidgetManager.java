package com.transsion.hubsdk.core.appwidget;

import android.appwidget.AppWidgetProviderInfo;
import android.os.RemoteException;
import android.util.ArrayMap;
import com.android.internal.annotations.VisibleForTesting;
import com.transsion.hubsdk.TranServiceManager;
import com.transsion.hubsdk.api.app.ITranAppWidget;
import com.transsion.hubsdk.appwidget.ITranAppWidgetManager;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.interfaces.appwidget.ITranAppWidgetManagerAdapter;
import java.util.Collections;
import java.util.List;

public class TranThubAppWidgetManager implements ITranAppWidgetManagerAdapter {
    private static final String TAG = "TranThubAppWidgetManager";
    private ArrayMap<ITranAppWidget, com.transsion.hubsdk.appwidget.ITranAppWidget> mAppWidgettListenerMap = new ArrayMap<>();
    private ITranAppWidgetManager mService = ITranAppWidgetManager.Stub.asInterface(TranServiceManager.getServiceIBinder("appwidget"));

    public class AppWidgetListener extends com.transsion.hubsdk.appwidget.ITranAppWidget.Stub {
        private ITranAppWidget mCallback;

        public AppWidgetListener(ITranAppWidget iTranAppWidget) {
            this.mCallback = iTranAppWidget;
        }

        public void notifyAppWidgetLoadState(boolean z, int i) {
            ITranAppWidget iTranAppWidget = this.mCallback;
            if (iTranAppWidget != null) {
                try {
                    iTranAppWidget.notifyAppWidgetLoadState(z, i);
                } catch (RemoteException e) {
                    TranSdkLog.w(TranThubAppWidgetManager.TAG, "notifyAppWidgetLoadState: ", e);
                }
            }
        }
    }

    @Override
    public List<AppWidgetProviderInfo> getInstalledProviders(int i) {
        try {
            return this.mService.getInstalledProviders(i);
        } catch (RemoteException e) {
            TranSdkLog.w(TAG, "getInstalledProviders: ", e);
            return Collections.EMPTY_LIST;
        }
    }

    @Override
    public void registerAppWidgetListener(ITranAppWidget iTranAppWidget, int i) {
        if (iTranAppWidget == null) {
            return;
        }
        if (this.mAppWidgettListenerMap.containsKey(iTranAppWidget)) {
            TranSdkLog.w(TAG, "registerAppWidgetListener failed,has registered ");
            return;
        }
        try {
            TranSdkLog.w(TAG, "start registerAppWidgetListener: callback = " + iTranAppWidget + " userid = " + i);
            com.transsion.hubsdk.appwidget.ITranAppWidget appWidgetListener = new AppWidgetListener(iTranAppWidget);
            this.mAppWidgettListenerMap.put(iTranAppWidget, appWidgetListener);
            this.mService.registerAppWidgetListener(appWidgetListener, i);
        } catch (RemoteException e) {
            TranSdkLog.w(TAG, "registerAppWidgetListener: ", e);
        }
    }

    @VisibleForTesting
    public void setService(ITranAppWidgetManager iTranAppWidgetManager) {
        this.mService = iTranAppWidgetManager;
    }

    @Override
    public void unregisterAppWidgetListener(ITranAppWidget iTranAppWidget, int i) {
        if (iTranAppWidget == null) {
            return;
        }
        if (!this.mAppWidgettListenerMap.containsKey(iTranAppWidget)) {
            TranSdkLog.w(TAG, "unregisterAppWidgetListener failed,not registered ");
            return;
        }
        try {
            TranSdkLog.w(TAG, "start unregisterAppWidgetListener: callback = " + iTranAppWidget + " userid = " + i);
            this.mService.unregisterAppWidgetListener(this.mAppWidgettListenerMap.remove(iTranAppWidget), i);
        } catch (RemoteException e) {
            TranSdkLog.w(TAG, "unregisterAppWidgetListener: ", e);
        }
    }
}
