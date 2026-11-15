package com.transsion.hubsdk.core.app;

import android.app.Notification;
import android.app.NotificationChannel;
import android.content.ComponentName;
import android.net.Uri;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import android.service.notification.NotificationStats;
import android.service.notification.StatusBarNotification;
import com.transsion.hubsdk.TranServiceManager;
import com.transsion.hubsdk.api.content.pm.TranParceledListSlice;
import com.transsion.hubsdk.app.ITranNotificationManager;
import com.transsion.hubsdk.app.ITranNotificationStatsCallback;
import com.transsion.hubsdk.app.TranNotificationRanking;
import com.transsion.hubsdk.common.bp.TranTimeOutOrExceptionExecute;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.interfaces.app.ITranNotificationManagerAdapter;
import com.transsion.hubsdk.notification.ITranEnqueueNotificationListener;
import com.transsion.hubsdk.notification.ITranEnqueueNotificationReceipt;
import com.transsion.hubsdk.notification.ITranMuteNotificationListener;
import com.transsion.hubsdk.notification.ITranRemoveNotificationListener;
import com.transsion.hubsdk.notification.TranRanking;
import java.util.ArrayList;
import java.util.List;

public class TranThubNotificationManager implements ITranNotificationManagerAdapter {
    private static final String TAG = "TranThubNotificationManager";
    private ITranNotificationManager mService = ITranNotificationManager.Stub.asInterface(TranServiceManager.getServiceIBinder("notification"));

    public class TranThubEnqueueNotificationListener extends ITranEnqueueNotificationListener.Stub {
        private com.transsion.hubsdk.api.app.ITranEnqueueNotificationListener mListener;

        public TranThubEnqueueNotificationListener(com.transsion.hubsdk.api.app.ITranEnqueueNotificationListener iTranEnqueueNotificationListener) {
            this.mListener = iTranEnqueueNotificationListener;
        }

        public void onNotifyNotification(StatusBarNotification statusBarNotification, NotificationChannel notificationChannel, int i, ITranEnqueueNotificationReceipt iTranEnqueueNotificationReceipt, int i2) {
            com.transsion.hubsdk.api.app.ITranEnqueueNotificationListener iTranEnqueueNotificationListener = this.mListener;
            if (iTranEnqueueNotificationListener != null) {
                try {
                    iTranEnqueueNotificationListener.onNotifyNotification(statusBarNotification, notificationChannel, i, new TranThubEnqueueNotificationReceipt(iTranEnqueueNotificationReceipt), i2);
                    return;
                } catch (Exception e) {
                    TranSdkLog.e(TranThubNotificationManager.TAG, "onNotifyNotification: " + e);
                    return;
                }
            }
            if (iTranEnqueueNotificationReceipt != null) {
                try {
                    iTranEnqueueNotificationReceipt.handleNotifyNotification(statusBarNotification.getNotification());
                    TranSdkLog.w(TranThubNotificationManager.TAG, "failed to handle process start event " + iTranEnqueueNotificationReceipt + " for no listener");
                } catch (Exception e2) {
                    TranSdkLog.e(TranThubNotificationManager.TAG, "failed to receipt " + iTranEnqueueNotificationReceipt + " for no listener", e2);
                }
            }
        }
    }

    public static class TranThubEnqueueNotificationReceipt implements com.transsion.hubsdk.api.app.ITranEnqueueNotificationReceipt, Parcelable {
        public static final Parcelable.Creator<TranThubEnqueueNotificationReceipt> CREATOR = new Parcelable.Creator<TranThubEnqueueNotificationReceipt>() {
            /* JADX WARN: Can't rename method to resolve collision */
            @Override
            public TranThubEnqueueNotificationReceipt createFromParcel(Parcel parcel) {
                IBinder strongBinder = parcel.readStrongBinder();
                if (strongBinder != null) {
                    return new TranThubEnqueueNotificationReceipt(ITranEnqueueNotificationReceipt.Stub.asInterface(strongBinder));
                }
                return null;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override
            public TranThubEnqueueNotificationReceipt[] newArray(int i) {
                return new TranThubEnqueueNotificationReceipt[i];
            }
        };
        private final ITranEnqueueNotificationReceipt mReceipt;

        @Override
        public int describeContents() {
            return 0;
        }

        @Override
        public void handleNotifyNotification(Notification notification) {
            try {
                if (this.mReceipt != null) {
                    TranSdkLog.d(TranThubNotificationManager.TAG, "handleNotifyNotification notification:" + notification);
                    this.mReceipt.handleNotifyNotification(notification);
                }
            } catch (RemoteException e) {
                TranSdkLog.e(TranThubNotificationManager.TAG, "handleNotifyNotification e:" + e);
            }
        }

        @Override
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeStrongBinder(this.mReceipt.asBinder());
        }

        private TranThubEnqueueNotificationReceipt(ITranEnqueueNotificationReceipt iTranEnqueueNotificationReceipt) {
            this.mReceipt = iTranEnqueueNotificationReceipt;
        }
    }

    public class TranThubMuteNotificationListener extends ITranMuteNotificationListener.Stub {
        private com.transsion.hubsdk.api.app.ITranMuteNotificationListener mListener;

        public TranThubMuteNotificationListener(com.transsion.hubsdk.api.app.ITranMuteNotificationListener iTranMuteNotificationListener) {
            this.mListener = iTranMuteNotificationListener;
        }

        public void onNotifyMute(List<TranRanking> list) {
            if (this.mListener == null || list == null || list.size() <= 0) {
                return;
            }
            ArrayList arrayList = new ArrayList();
            for (TranRanking tranRanking : list) {
                arrayList.add(new com.transsion.hubsdk.api.app.TranRanking(tranRanking.getPackageName(), tranRanking.getUid(), tranRanking.isMute()));
            }
            try {
                this.mListener.onNotifyMute(arrayList);
            } catch (Exception e) {
                TranSdkLog.e(TranThubNotificationManager.TAG, "onNotifyMute: " + e);
            }
        }
    }

    public class TranThubNotificationStatsCallback extends ITranNotificationStatsCallback.Stub {
        private com.transsion.hubsdk.api.app.ITranNotificationStatsCallback mCallback;

        public TranThubNotificationStatsCallback(com.transsion.hubsdk.api.app.ITranNotificationStatsCallback iTranNotificationStatsCallback) {
            this.mCallback = iTranNotificationStatsCallback;
        }

        public void onTranNotiStatsNotify(List<TranNotificationRanking> list) {
            if (this.mCallback == null || list == null || list.size() <= 0) {
                return;
            }
            ArrayList arrayList = new ArrayList();
            for (TranNotificationRanking tranNotificationRanking : list) {
                arrayList.add(new com.transsion.hubsdk.api.app.TranNotificationRanking(tranNotificationRanking.getPackageName(), tranNotificationRanking.getUid(), tranNotificationRanking.isForceAppGroup()));
            }
            try {
                this.mCallback.onTranNotiStatsNotify(arrayList);
            } catch (Exception e) {
                TranSdkLog.e(TranThubNotificationManager.TAG, "onTranNotiStatsNotify: " + e);
            }
        }
    }

    public class TranThubRemoveNotificationListener extends ITranRemoveNotificationListener.Stub {
        private com.transsion.hubsdk.api.app.ITranRemoveNotificationListener mListener;

        public TranThubRemoveNotificationListener(com.transsion.hubsdk.api.app.ITranRemoveNotificationListener iTranRemoveNotificationListener) {
            this.mListener = iTranRemoveNotificationListener;
        }

        public void onNotifyRemoved(StatusBarNotification statusBarNotification, NotificationStats notificationStats, int i) {
            com.transsion.hubsdk.api.app.ITranRemoveNotificationListener iTranRemoveNotificationListener = this.mListener;
            if (iTranRemoveNotificationListener != null) {
                try {
                    iTranRemoveNotificationListener.onNotifyRemoved(statusBarNotification, i);
                } catch (Exception e) {
                    TranSdkLog.e(TranThubNotificationManager.TAG, "onNotifyRemoved: " + e);
                }
            }
        }
    }

    public Object lambda$getNotificationChannelsForPackage$0(String str, int i, boolean z) throws RemoteException {
        ITranNotificationManager iTranNotificationManager = this.mService;
        if (iTranNotificationManager != null) {
            return new TranParceledListSlice(iTranNotificationManager.getNotificationChannelsForPackage(str, i, z).getList());
        }
        return null;
    }

    @Override
    public boolean areNotificationsEnabledForPackage(String str, int i) {
        ITranNotificationManager iTranNotificationManager = this.mService;
        if (iTranNotificationManager == null) {
            return false;
        }
        try {
            return iTranNotificationManager.areNotificationsEnabledForPackage(str, i);
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "areNotificationsEnabledForPackage e:" + e);
            return false;
        }
    }

    @Override
    public boolean canPlaySound(String str, int i) {
        ITranNotificationManager iTranNotificationManager = this.mService;
        if (iTranNotificationManager == null) {
            return false;
        }
        try {
            return iTranNotificationManager.canPlaySound(str, i);
        } catch (RemoteException e) {
            TranSdkLog.w(TAG, "canPlaySound e = " + e.getMessage());
            return false;
        }
    }

    @Override
    public boolean canPlayVibration(String str, int i) {
        ITranNotificationManager iTranNotificationManager = this.mService;
        if (iTranNotificationManager == null) {
            return false;
        }
        try {
            return iTranNotificationManager.canPlayVibration(str, i);
        } catch (RemoteException e) {
            TranSdkLog.w(TAG, "canPlayVibration e = " + e.getMessage());
            return false;
        }
    }

    @Override
    public boolean canShowBadge(String str, int i) {
        ITranNotificationManager iTranNotificationManager = this.mService;
        if (iTranNotificationManager == null) {
            return false;
        }
        try {
            return iTranNotificationManager.canShowBadge(str, i);
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "canShowBadge e:" + e);
            return false;
        }
    }

    @Override
    public void cancelNotification(String str, String str2, int i, int i2, String str3, int i3, int i4) {
        ITranNotificationManager iTranNotificationManager = this.mService;
        if (iTranNotificationManager == null) {
            return;
        }
        try {
            iTranNotificationManager.cancelNotification(str, str2, i, i2, str3, i3, i4);
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "cancelNotification e:" + e);
        }
    }

    @Override
    public void createNotificationChannelsForPackage(String str, int i, List list) {
        ITranNotificationManager iTranNotificationManager = this.mService;
        if (iTranNotificationManager != null) {
            try {
                iTranNotificationManager.createNotificationChannelsForPackage(str, i, new com.transsion.hubsdk.content.pm.TranParceledListSlice(list));
            } catch (RemoteException unused) {
                TranSdkLog.e(TAG, "createNotificationChannelsForPackage fail");
            }
        }
    }

    @Override
    public void enqueueNotification(String str, String str2, int i, int i2, String str3, int i3, Notification notification, int i4) {
        ITranNotificationManager iTranNotificationManager = this.mService;
        if (iTranNotificationManager == null) {
            return;
        }
        try {
            iTranNotificationManager.enqueueNotification(str, str2, i, i2, str3, i3, notification, i4);
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "enqueueNotification e:" + e);
        }
    }

    @Override
    public List<com.transsion.hubsdk.api.app.TranRanking> getMuteRankingList() {
        ITranNotificationManager iTranNotificationManager = this.mService;
        if (iTranNotificationManager == null) {
            return null;
        }
        try {
            List<TranRanking> muteRankingList = iTranNotificationManager.getMuteRankingList();
            if (muteRankingList != null && muteRankingList.size() > 0) {
                ArrayList arrayList = new ArrayList();
                for (TranRanking tranRanking : muteRankingList) {
                    arrayList.add(new com.transsion.hubsdk.api.app.TranRanking(tranRanking.getPackageName(), tranRanking.getUid(), tranRanking.isMute()));
                }
                return arrayList;
            }
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "getMuteRankingList e:" + e);
        }
        return null;
    }

    @Override
    public NotificationChannel getNotificationChannelForPackage(String str, int i, String str2, String str3, boolean z) {
        ITranNotificationManager iTranNotificationManager = this.mService;
        if (iTranNotificationManager == null) {
            return null;
        }
        try {
            return iTranNotificationManager.getNotificationChannelForPackage(str, i, str2, str3, z);
        } catch (RemoteException e) {
            TranSdkLog.w(TAG, "getNotificationChannelForPackage e = " + e.getMessage());
            return null;
        }
    }

    @Override
    public TranParceledListSlice getNotificationChannelGroupsForPackage(String str, int i, boolean z) {
        ITranNotificationManager iTranNotificationManager = this.mService;
        if (iTranNotificationManager == null) {
            return null;
        }
        try {
            return new TranParceledListSlice(iTranNotificationManager.getNotificationChannelGroupsForPackage(str, i, z).getList());
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "getNotificationChannelGroupsForPackage e:" + e);
            return null;
        }
    }

    @Override
    public TranParceledListSlice getNotificationChannels(String str, String str2, int i) {
        ITranNotificationManager iTranNotificationManager = this.mService;
        if (iTranNotificationManager == null) {
            return null;
        }
        try {
            return new TranParceledListSlice(iTranNotificationManager.getNotificationChannels(str, str2, i).getList());
        } catch (RemoteException e) {
            TranSdkLog.w(TAG, "getNotificationChannels e = " + e.getMessage());
            return TranParceledListSlice.emptyList();
        }
    }

    @Override
    public TranParceledListSlice<NotificationChannel> getNotificationChannelsForPackage(final String str, final int i, final boolean z) {
        return (TranParceledListSlice) new TranTimeOutOrExceptionExecute().timeOutAndExceptionRun(new TranTimeOutOrExceptionExecute.TimeOutAndExceptionRunnable() {
            @Override
            public final Object run() {
                return this.a.lambda$getNotificationChannelsForPackage$0(str, i, z);
            }
        }, "notification");
    }

    @Override
    public int getNotificationImportanceForPackage(String str, int i) {
        ITranNotificationManager iTranNotificationManager = this.mService;
        if (iTranNotificationManager == null) {
            return 0;
        }
        try {
            return iTranNotificationManager.getNotificationImportanceForPackage(str, i);
        } catch (RemoteException e) {
            TranSdkLog.w(TAG, "getNotificationImportanceForPackage e = " + e.getMessage());
            return 0;
        }
    }

    @Override
    public int getNotificationMuteGradeForPackage(String str, int i) {
        ITranNotificationManager iTranNotificationManager = this.mService;
        if (iTranNotificationManager == null) {
            return -1;
        }
        try {
            return iTranNotificationManager.getNotificationMuteGradeForPackage(str, i);
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "getNotificationMuteGradeForPackage e:" + e);
            return -1;
        }
    }

    @Override
    public int getNumNotificationChannelsForPackage(String str, int i, boolean z) {
        ITranNotificationManager iTranNotificationManager = this.mService;
        if (iTranNotificationManager == null) {
            return 0;
        }
        try {
            return iTranNotificationManager.getNumNotificationChannelsForPackage(str, i, z);
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "getNumNotificationChannelsForPackage e:" + e);
            return 0;
        }
    }

    @Override
    public int getTranNotificationAppGroupForPackage(String str, int i) {
        ITranNotificationManager iTranNotificationManager = this.mService;
        if (iTranNotificationManager == null) {
            return -1;
        }
        try {
            return iTranNotificationManager.getTranNotificationAppGroupForPackage(str, i);
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "getTranNotificationAppGroupForPackage e:" + e);
            return -1;
        }
    }

    @Override
    public int getZenMode() {
        ITranNotificationManager iTranNotificationManager = this.mService;
        if (iTranNotificationManager == null) {
            return 0;
        }
        try {
            return iTranNotificationManager.getZenMode();
        } catch (RemoteException e) {
            TranSdkLog.w(TAG, "getZenMode: e = " + e.getMessage());
            return 0;
        }
    }

    @Override
    public boolean isImportanceLocked(String str, int i) {
        ITranNotificationManager iTranNotificationManager = this.mService;
        if (iTranNotificationManager == null) {
            return false;
        }
        try {
            return iTranNotificationManager.isImportanceLocked(str, i);
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "isImportanceLocked e:" + e);
            return false;
        }
    }

    @Override
    public boolean isNotificationMuteSilenceStatuForPackage(long j, String str, int i) {
        ITranNotificationManager iTranNotificationManager = this.mService;
        if (iTranNotificationManager == null) {
            return false;
        }
        try {
            return iTranNotificationManager.isNotificationMuteSilenceStatuForPackage(j, str, i);
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "isNotificationMuteSilenceStatuForPackage e:" + e);
            return false;
        }
    }

    @Override
    public void notifyTranAppGroupIgnoreForPackage(String str, int i) {
        ITranNotificationManager iTranNotificationManager = this.mService;
        if (iTranNotificationManager != null) {
            try {
                iTranNotificationManager.notifyTranAppGroupIgnoreForPackage(str, i);
            } catch (RemoteException e) {
                TranSdkLog.e(TAG, "notifyTranAppGroupIgnoreForPackage e:" + e);
            }
        }
    }

    @Override
    public void notifyTranAppGroupTipShowForPackage(String str, int i) {
        ITranNotificationManager iTranNotificationManager = this.mService;
        if (iTranNotificationManager != null) {
            try {
                iTranNotificationManager.notifyTranAppGroupTipShowForPackage(str, i);
            } catch (RemoteException e) {
                TranSdkLog.e(TAG, "notifyTranAppGroupTipShowForPackage e:" + e);
            }
        }
    }

    @Override
    public boolean onlyHasDefaultChannel(String str, int i) {
        ITranNotificationManager iTranNotificationManager = this.mService;
        if (iTranNotificationManager == null) {
            return false;
        }
        try {
            return iTranNotificationManager.onlyHasDefaultChannel(str, i);
        } catch (RemoteException e) {
            TranSdkLog.w(TAG, "onlyHasDefaultChannel e = " + e.getMessage());
            return false;
        }
    }

    @Override
    public boolean registerEnqueueNotificationListener(com.transsion.hubsdk.api.app.ITranEnqueueNotificationListener iTranEnqueueNotificationListener, int i, int i2, int i3, boolean z) {
        if (this.mService == null) {
            return false;
        }
        try {
            return this.mService.registerEnqueueNotificationListener(new TranThubEnqueueNotificationListener(iTranEnqueueNotificationListener), i, i2, i3, z);
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "registerMuteNotificationListener e:" + e);
            return false;
        }
    }

    @Override
    public void registerMuteNotificationListener(com.transsion.hubsdk.api.app.ITranMuteNotificationListener iTranMuteNotificationListener) {
        if (this.mService == null) {
            return;
        }
        try {
            this.mService.registerMuteNotificationListener(new TranThubMuteNotificationListener(iTranMuteNotificationListener));
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "registerMuteNotificationListener e:" + e);
        }
    }

    @Override
    public boolean registerRemoveNotificationListener(com.transsion.hubsdk.api.app.ITranRemoveNotificationListener iTranRemoveNotificationListener) {
        if (this.mService == null) {
            return false;
        }
        try {
            return this.mService.registerRemoveNotificationListener(new TranThubRemoveNotificationListener(iTranRemoveNotificationListener));
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "registerMuteNotificationListener e:" + e);
            return false;
        }
    }

    @Override
    public void registerTranNotificationStatsCallback(com.transsion.hubsdk.api.app.ITranNotificationStatsCallback iTranNotificationStatsCallback) {
        if (this.mService == null || iTranNotificationStatsCallback == null) {
            return;
        }
        try {
            this.mService.registerTranNotificationStatsCallback(new TranThubNotificationStatsCallback(iTranNotificationStatsCallback));
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "registerTranNotificationStatsCallback e:" + e);
        }
    }

    @Override
    public void setNotificationImportanceForPackage(String str, int i, int i2) {
        ITranNotificationManager iTranNotificationManager = this.mService;
        if (iTranNotificationManager == null) {
            return;
        }
        try {
            iTranNotificationManager.setNotificationImportanceForPackage(str, i, i2);
        } catch (RemoteException e) {
            TranSdkLog.w(TAG, "setNotificationImportanceForPackage e = " + e.getMessage());
        }
    }

    @Override
    public void setNotificationListenerAccessGranted(ComponentName componentName, boolean z) {
        ITranNotificationManager iTranNotificationManager = this.mService;
        if (iTranNotificationManager == null) {
            return;
        }
        try {
            iTranNotificationManager.setNotificationListenerAccessGranted(componentName, z, true);
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "setNotificationListenerAccessGranted e:" + e);
        }
    }

    @Override
    public void setNotificationMuteGradeForPackage(String str, int i, int i2) {
        ITranNotificationManager iTranNotificationManager = this.mService;
        if (iTranNotificationManager == null) {
            return;
        }
        try {
            iTranNotificationManager.setNotificationMuteGradeForPackage(str, i, i2);
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "setNotificationMuteGradeForPackage e:" + e);
        }
    }

    @Override
    public void setNotificationsEnabledForPackage(String str, int i, boolean z) {
        ITranNotificationManager iTranNotificationManager = this.mService;
        if (iTranNotificationManager == null) {
            return;
        }
        try {
            iTranNotificationManager.setNotificationsEnabledForPackage(str, i, z);
        } catch (RemoteException e) {
            TranSdkLog.w(TAG, "setNotificationsEnabledForPackage e = " + e.getMessage());
        }
    }

    @Override
    public void setPlaySound(String str, int i, boolean z) {
        ITranNotificationManager iTranNotificationManager = this.mService;
        if (iTranNotificationManager == null) {
            return;
        }
        try {
            iTranNotificationManager.setPlaySound(str, i, z);
        } catch (RemoteException e) {
            TranSdkLog.w(TAG, "setPlaySound e = " + e.getMessage());
        }
    }

    @Override
    public void setPlayVibration(String str, int i, boolean z) {
        ITranNotificationManager iTranNotificationManager = this.mService;
        if (iTranNotificationManager == null) {
            return;
        }
        try {
            iTranNotificationManager.setPlayVibration(str, i, z);
        } catch (RemoteException e) {
            TranSdkLog.w(TAG, "setPlayVibration e = " + e.getMessage());
        }
    }

    @Override
    public void setShowBadge(String str, int i, boolean z) {
        ITranNotificationManager iTranNotificationManager = this.mService;
        if (iTranNotificationManager == null) {
            return;
        }
        try {
            iTranNotificationManager.setShowBadge(str, i, z);
        } catch (RemoteException e) {
            TranSdkLog.w(TAG, "setShowBadge e = " + e.getMessage());
        }
    }

    @Override
    public void setTranNotificationAppGroupForPackage(String str, int i, int i2) {
        ITranNotificationManager iTranNotificationManager = this.mService;
        if (iTranNotificationManager != null) {
            try {
                iTranNotificationManager.setTranNotificationAppGroupForPackage(str, i, i2);
            } catch (RemoteException e) {
                TranSdkLog.e(TAG, "setTranNotificationAppGroupForPackage e:" + e);
            }
        }
    }

    @Override
    public boolean setVisibleToListenerFilter(String[] strArr, int i, boolean z) {
        ITranNotificationManager iTranNotificationManager = this.mService;
        if (iTranNotificationManager == null) {
            return false;
        }
        try {
            return iTranNotificationManager.setVisibleToListenerFilter(strArr, i, z);
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "setVisibleToListenerFilter e:" + e);
            return false;
        }
    }

    @Override
    public void setZenMode(int i, Uri uri, String str) {
        ITranNotificationManager iTranNotificationManager = this.mService;
        if (iTranNotificationManager == null) {
            return;
        }
        try {
            iTranNotificationManager.setZenMode(i, uri, str);
        } catch (RemoteException e) {
            TranSdkLog.w(TAG, "setZenMode: e = " + e.getMessage());
        }
    }

    @Override
    public int shouldShowTranAppGroupTipForPackage(String str, int i) {
        ITranNotificationManager iTranNotificationManager = this.mService;
        if (iTranNotificationManager == null) {
            return -1;
        }
        try {
            return iTranNotificationManager.shouldShowTranAppGroupTipForPackage(str, i);
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "shouldShowTranAppGroupTipForPackage e:" + e);
            return -1;
        }
    }

    @Override
    public void unRegisterTranNotificationStatsCallback() {
        ITranNotificationManager iTranNotificationManager = this.mService;
        if (iTranNotificationManager != null) {
            try {
                iTranNotificationManager.unRegisterTranNotificationStatsCallback();
            } catch (RemoteException e) {
                TranSdkLog.e(TAG, "unRegisterTranNotificationStatsCallback e:" + e);
            }
        }
    }

    @Override
    public boolean unregisterEnqueueNotificationListener() {
        ITranNotificationManager iTranNotificationManager = this.mService;
        if (iTranNotificationManager == null) {
            return false;
        }
        try {
            return iTranNotificationManager.unregisterEnqueueNotificationListener();
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "unregisterEnqueueNotificationListener e:" + e);
            return false;
        }
    }

    @Override
    public void unregisterMuteNotificationListener() {
        ITranNotificationManager iTranNotificationManager = this.mService;
        if (iTranNotificationManager == null) {
            return;
        }
        try {
            iTranNotificationManager.unregisterMuteNotificationListener();
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "unregisterMuteNotificationListener e:" + e);
        }
    }

    @Override
    public boolean unregisterRemoveNotificationListener() {
        ITranNotificationManager iTranNotificationManager = this.mService;
        if (iTranNotificationManager == null) {
            return false;
        }
        try {
            return iTranNotificationManager.unregisterRemoveNotificationListener();
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "unregisterRemoveNotificationListener e:" + e);
            return false;
        }
    }

    @Override
    public void updateNotificationChannelForPackage(String str, int i, NotificationChannel notificationChannel) {
        ITranNotificationManager iTranNotificationManager = this.mService;
        if (iTranNotificationManager == null) {
            return;
        }
        try {
            iTranNotificationManager.updateNotificationChannelForPackage(str, i, notificationChannel);
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "updateNotificationChannelForPackage e:" + e);
        }
    }
}
