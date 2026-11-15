package com.transsion.hubsdk.aosp.app;

import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.content.ComponentName;
import android.content.pm.ParceledListSlice;
import android.net.Uri;
import android.os.IBinder;
import android.os.ServiceManager;
import com.transsion.hubsdk.api.app.ITranEnqueueNotificationListener;
import com.transsion.hubsdk.api.app.ITranMuteNotificationListener;
import com.transsion.hubsdk.api.app.ITranNotificationStatsCallback;
import com.transsion.hubsdk.api.app.ITranRemoveNotificationListener;
import com.transsion.hubsdk.api.app.TranRanking;
import com.transsion.hubsdk.api.content.pm.TranParceledListSlice;
import com.transsion.hubsdk.common.init.TranHubSdkManager;
import com.transsion.hubsdk.common.reflect.TranDoorMan;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.common.version.TranThubVersionUtil;
import com.transsion.hubsdk.interfaces.app.ITranNotificationManagerAdapter;
import java.lang.reflect.Method;
import java.util.List;

public class TranAospNotificationManager implements ITranNotificationManagerAdapter {
    private static final String TAG = "TranAospNotificationManager";
    private static Method sMethodGetService;
    public static Object sObjectINotificationManager;
    private NotificationManager mNotificationManager;

    static {
        Method method = TranDoorMan.getMethod(NotificationManager.class, "getService", new Class[0]);
        sMethodGetService = method;
        sObjectINotificationManager = TranDoorMan.invokeMethod(method, null, new Object[0]);
    }

    public TranAospNotificationManager() {
        if (this.mNotificationManager == null) {
            this.mNotificationManager = (NotificationManager) TranHubSdkManager.getContext().getSystemService("notification");
        }
    }

    @Override
    public boolean areNotificationsEnabledForPackage(String str, int i) {
        Object objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(sObjectINotificationManager.getClass(), "areNotificationsEnabledForPackage", String.class, Integer.TYPE), sObjectINotificationManager, str, Integer.valueOf(i));
        if (objInvokeMethod instanceof Boolean) {
            return ((Boolean) objInvokeMethod).booleanValue();
        }
        return false;
    }

    @Override
    public boolean canPlaySound(String str, int i) {
        Object objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(sObjectINotificationManager.getClass(), "canPlaySound", String.class, Integer.TYPE), sObjectINotificationManager, str, Integer.valueOf(i));
        if (objInvokeMethod instanceof Boolean) {
            return ((Boolean) objInvokeMethod).booleanValue();
        }
        return false;
    }

    @Override
    public boolean canPlayVibration(String str, int i) {
        Object objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(sObjectINotificationManager.getClass(), "canPlayVibration", String.class, Integer.TYPE), sObjectINotificationManager, str, Integer.valueOf(i));
        if (objInvokeMethod instanceof Boolean) {
            return ((Boolean) objInvokeMethod).booleanValue();
        }
        return false;
    }

    @Override
    public boolean canShowBadge(String str, int i) {
        Object objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(sObjectINotificationManager.getClass(), "canShowBadge", String.class, Integer.TYPE), sObjectINotificationManager, str, Integer.valueOf(i));
        if (objInvokeMethod instanceof Boolean) {
            return ((Boolean) objInvokeMethod).booleanValue();
        }
        return false;
    }

    @Override
    public void cancelNotification(String str, String str2, int i, int i2, String str3, int i3, int i4) {
        TranSdkLog.e(TAG, "cancelNotification not supported in aosp version.");
    }

    @Override
    public void createNotificationChannelsForPackage(String str, int i, List list) {
        try {
            IBinder service = ServiceManager.getService("notification");
            Class cls = TranDoorMan.getClass("android.app.INotificationManager");
            Object objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(TranDoorMan.getClass("android.app.INotificationManager$Stub"), "asInterface", IBinder.class), null, service);
            TranDoorMan.invokeMethod(TranDoorMan.getMethod(cls, "createNotificationChannelsForPackage", String.class, Integer.TYPE, ParceledListSlice.class), objInvokeMethod, str, Integer.valueOf(i), new ParceledListSlice(list));
        } catch (Exception unused) {
            TranSdkLog.e("TranAospNotificationManager", "createNotificationChannelsForPackage fail");
        }
    }

    @Override
    public void enqueueNotification(String str, String str2, int i, int i2, String str3, int i3, Notification notification, int i4) {
        TranSdkLog.e(TAG, "enqueueNotification not supported in aosp version.");
    }

    @Override
    public List<TranRanking> getMuteRankingList() {
        TranSdkLog.e(TAG, "getMuteRankingList not supported in aosp version.");
        return null;
    }

    @Override
    public NotificationChannel getNotificationChannelForPackage(String str, int i, String str2, String str3, boolean z) {
        Object objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(sObjectINotificationManager.getClass(), "getNotificationChannelForPackage", String.class, Integer.TYPE, String.class, String.class, Boolean.TYPE), sObjectINotificationManager, str, Integer.valueOf(i), str2, str3, Boolean.valueOf(z));
        if (objInvokeMethod instanceof NotificationChannel) {
            return (NotificationChannel) objInvokeMethod;
        }
        return null;
    }

    @Override
    public TranParceledListSlice getNotificationChannelGroupsForPackage(String str, int i, boolean z) {
        Object objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(sObjectINotificationManager.getClass(), "getNotificationChannelGroupsForPackage", String.class, Integer.TYPE, Boolean.TYPE), sObjectINotificationManager, str, Integer.valueOf(i), Boolean.valueOf(z));
        if (objInvokeMethod != null) {
            return new TranParceledListSlice((List) TranDoorMan.invokeMethod(TranDoorMan.getMethod(objInvokeMethod.getClass(), "getList", new Class[0]), objInvokeMethod, new Object[0]));
        }
        return null;
    }

    @Override
    public TranParceledListSlice getNotificationChannels(String str, String str2, int i) {
        Object objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(sObjectINotificationManager.getClass(), "getNotificationChannels", String.class, String.class, Integer.TYPE), sObjectINotificationManager, str, str2, Integer.valueOf(i));
        if (objInvokeMethod == null) {
            return null;
        }
        List list = (List) TranDoorMan.invokeMethod(TranDoorMan.getMethod(objInvokeMethod.getClass(), "getList", new Class[0]), objInvokeMethod, new Object[0]);
        String str3 = TAG;
        TranSdkLog.d(str3, "getNotificationChannels: channelList = " + list);
        TranParceledListSlice tranParceledListSlice = new TranParceledListSlice(list);
        TranSdkLog.d(str3, "getNotificationChannels: tranParceledListSlice = " + tranParceledListSlice);
        return tranParceledListSlice;
    }

    @Override
    public TranParceledListSlice<NotificationChannel> getNotificationChannelsForPackage(String str, int i, boolean z) {
        Object objInvokeMethod;
        Method method = TranDoorMan.getMethod(sObjectINotificationManager.getClass(), "getNotificationChannelsForPackage", String.class, Integer.TYPE, Boolean.TYPE);
        if (method == null || (objInvokeMethod = TranDoorMan.invokeMethod(method, sObjectINotificationManager, str, Integer.valueOf(i), Boolean.valueOf(z))) == null) {
            return null;
        }
        List list = (List) TranDoorMan.invokeMethod(TranDoorMan.getMethod(objInvokeMethod.getClass(), "getList", new Class[0]), objInvokeMethod, new Object[0]);
        String str2 = TAG;
        TranSdkLog.d(str2, "getNotificationChannelsForPackage: channelList = " + list);
        TranParceledListSlice<NotificationChannel> tranParceledListSlice = new TranParceledListSlice<>(list);
        TranSdkLog.d(str2, "getNotificationChannels: tranParceledListSlice = " + tranParceledListSlice);
        return tranParceledListSlice;
    }

    @Override
    public int getNotificationImportanceForPackage(String str, int i) {
        Method method;
        Object objInvokeMethod;
        Method method2;
        Class cls = TranDoorMan.getClass("com.transsion.app.NotificationManager");
        if (cls == null || (method = TranDoorMan.getMethod(cls, "instance", new Class[0])) == null || (objInvokeMethod = TranDoorMan.invokeMethod(method, null, new Object[0])) == null || (method2 = TranDoorMan.getMethod(objInvokeMethod.getClass(), "getNotificationImportanceForPackage", String.class, Integer.TYPE)) == null) {
            return -1;
        }
        return ((Integer) TranDoorMan.invokeMethod(method2, objInvokeMethod, str, Integer.valueOf(i))).intValue();
    }

    @Override
    public int getNotificationMuteGradeForPackage(String str, int i) {
        TranSdkLog.e(TAG, "getNotificationMuteGradeForPackage not supported in aosp version.");
        return -1;
    }

    @Override
    public int getNumNotificationChannelsForPackage(String str, int i, boolean z) {
        Object objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(sObjectINotificationManager.getClass(), "getNumNotificationChannelsForPackage", String.class, Integer.TYPE, Boolean.TYPE), sObjectINotificationManager, str, Integer.valueOf(i), Boolean.valueOf(z));
        if (objInvokeMethod instanceof Integer) {
            return ((Integer) objInvokeMethod).intValue();
        }
        return -1;
    }

    @Override
    public int getTranNotificationAppGroupForPackage(String str, int i) {
        TranSdkLog.e(TAG, "getTranNotificationAppGroupForPackage not supported in aosp version.");
        return -1;
    }

    @Override
    public int getZenMode() {
        Object objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(this.mNotificationManager.getClass(), "getZenMode", new Class[0]), this.mNotificationManager, new Object[0]);
        if (objInvokeMethod instanceof Integer) {
            return ((Integer) objInvokeMethod).intValue();
        }
        return 0;
    }

    @Override
    public boolean isImportanceLocked(String str, int i) {
        if (TranThubVersionUtil.isLowerAndroidT()) {
            TranSdkLog.e(TAG, "isImportanceLocked not supported in low version.");
        } else {
            Object objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(sObjectINotificationManager.getClass(), "isImportanceLocked", String.class, Integer.TYPE), sObjectINotificationManager, str, Integer.valueOf(i));
            if (objInvokeMethod instanceof Boolean) {
                return ((Boolean) objInvokeMethod).booleanValue();
            }
        }
        return false;
    }

    @Override
    public boolean isNotificationMuteSilenceStatuForPackage(long j, String str, int i) {
        TranSdkLog.e(TAG, "isNotificationMuteSilenceStatuForPackage not supported in aosp version.");
        return false;
    }

    @Override
    public void notifyTranAppGroupIgnoreForPackage(String str, int i) {
        TranSdkLog.e(TAG, "notifyTranAppGroupIgnoreForPackage not supported in aosp version.");
    }

    @Override
    public void notifyTranAppGroupTipShowForPackage(String str, int i) {
        TranSdkLog.e(TAG, "notifyTranAppGroupTipShowForPackage not supported in aosp version.");
    }

    @Override
    public boolean onlyHasDefaultChannel(String str, int i) {
        Object objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(sObjectINotificationManager.getClass(), "onlyHasDefaultChannel", String.class, Integer.TYPE), sObjectINotificationManager, str, Integer.valueOf(i));
        if (objInvokeMethod instanceof Boolean) {
            return ((Boolean) objInvokeMethod).booleanValue();
        }
        return false;
    }

    @Override
    public boolean registerEnqueueNotificationListener(ITranEnqueueNotificationListener iTranEnqueueNotificationListener, int i, int i2, int i3, boolean z) {
        TranSdkLog.e(TAG, "registerEnqueueNotificationListener not supported in aosp version.");
        return false;
    }

    @Override
    public void registerMuteNotificationListener(ITranMuteNotificationListener iTranMuteNotificationListener) {
        TranSdkLog.e(TAG, "registerMuteNotificationListener not supported in aosp version.");
    }

    @Override
    public boolean registerRemoveNotificationListener(ITranRemoveNotificationListener iTranRemoveNotificationListener) {
        TranSdkLog.e(TAG, "registerRemoveNotificationListener not supported in aosp version.");
        return false;
    }

    @Override
    public void registerTranNotificationStatsCallback(ITranNotificationStatsCallback iTranNotificationStatsCallback) {
        TranSdkLog.e(TAG, "registerTranNotificationStatsCallback not supported in aosp version.");
    }

    @Override
    public void setNotificationImportanceForPackage(String str, int i, int i2) {
        Method method;
        Object objInvokeMethod;
        Class cls = TranDoorMan.getClass("com.transsion.app.NotificationManager");
        if (cls == null || (method = TranDoorMan.getMethod(cls, "instance", new Class[0])) == null || (objInvokeMethod = TranDoorMan.invokeMethod(method, null, new Object[0])) == null) {
            return;
        }
        Class<?> cls2 = objInvokeMethod.getClass();
        Class cls3 = Integer.TYPE;
        Method method2 = TranDoorMan.getMethod(cls2, "setNotificationImportanceForPackage", String.class, cls3, cls3);
        if (method2 != null) {
            TranDoorMan.invokeMethod(method2, objInvokeMethod, str, Integer.valueOf(i), Integer.valueOf(i2));
        }
    }

    @Override
    public void setNotificationListenerAccessGranted(ComponentName componentName, boolean z) {
        Class<?> cls = this.mNotificationManager.getClass();
        Class cls2 = Boolean.TYPE;
        TranDoorMan.invokeMethod(TranDoorMan.getMethod(cls, "setNotificationListenerAccessGranted", ComponentName.class, cls2, cls2), this.mNotificationManager, componentName, Boolean.valueOf(z), Boolean.TRUE);
    }

    @Override
    public void setNotificationMuteGradeForPackage(String str, int i, int i2) {
        TranSdkLog.e(TAG, "setNotificationMuteGradeForPackage not supported in aosp version.");
    }

    @Override
    public void setNotificationsEnabledForPackage(String str, int i, boolean z) {
        TranDoorMan.invokeMethod(TranDoorMan.getMethod(sObjectINotificationManager.getClass(), "setNotificationsEnabledForPackage", String.class, Integer.TYPE, Boolean.TYPE), sObjectINotificationManager, str, Integer.valueOf(i), Boolean.valueOf(z));
    }

    @Override
    public void setPlaySound(String str, int i, boolean z) {
        TranDoorMan.invokeMethod(TranDoorMan.getMethod(sObjectINotificationManager.getClass(), "setPlaySound", String.class, Integer.TYPE, Boolean.TYPE), sObjectINotificationManager, str, Integer.valueOf(i), Boolean.valueOf(z));
    }

    @Override
    public void setPlayVibration(String str, int i, boolean z) {
        TranDoorMan.invokeMethod(TranDoorMan.getMethod(sObjectINotificationManager.getClass(), "setPlayVibration", String.class, Integer.TYPE, Boolean.TYPE), sObjectINotificationManager, str, Integer.valueOf(i), Boolean.valueOf(z));
    }

    @Override
    public void setShowBadge(String str, int i, boolean z) {
        TranDoorMan.invokeMethod(TranDoorMan.getMethod(sObjectINotificationManager.getClass(), "setShowBadge", String.class, Integer.TYPE, Boolean.TYPE), sObjectINotificationManager, str, Integer.valueOf(i), Boolean.valueOf(z));
    }

    @Override
    public void setTranNotificationAppGroupForPackage(String str, int i, int i2) {
        TranSdkLog.e(TAG, "setTranNotificationAppGroupForPackage not supported in aosp version.");
    }

    @Override
    public boolean setVisibleToListenerFilter(String[] strArr, int i, boolean z) {
        TranSdkLog.e(TAG, "setVisibleToListenerFilter not supported in aosp version.");
        return false;
    }

    @Override
    public void setZenMode(int i, Uri uri, String str) {
        if (TranThubVersionUtil.isRecentAndroidU()) {
            TranDoorMan.invokeMethod(TranDoorMan.getMethod(this.mNotificationManager.getClass(), "setZenMode", Integer.TYPE, Uri.class, String.class, Boolean.TYPE), this.mNotificationManager, Integer.valueOf(i), uri, str, Boolean.FALSE);
        } else {
            TranDoorMan.invokeMethod(TranDoorMan.getMethod(this.mNotificationManager.getClass(), "setZenMode", Integer.TYPE, Uri.class, String.class), this.mNotificationManager, Integer.valueOf(i), uri, str);
        }
    }

    @Override
    public int shouldShowTranAppGroupTipForPackage(String str, int i) {
        TranSdkLog.e(TAG, "shouldShowTranAppGroupTipForPackage not supported in aosp version.");
        return -1;
    }

    @Override
    public void unRegisterTranNotificationStatsCallback() {
        TranSdkLog.e(TAG, "unRegisterTranNotificationStatsCallback not supported in aosp version.");
    }

    @Override
    public boolean unregisterEnqueueNotificationListener() {
        TranSdkLog.e(TAG, "unregisterEnqueueNotificationListener not supported in aosp version.");
        return false;
    }

    @Override
    public void unregisterMuteNotificationListener() {
        TranSdkLog.e(TAG, "unregisterMuteNotificationListener not supported in aosp version.");
    }

    @Override
    public boolean unregisterRemoveNotificationListener() {
        TranSdkLog.e(TAG, "unregisterRemoveNotificationListener not supported in aosp version.");
        return false;
    }

    @Override
    public void updateNotificationChannelForPackage(String str, int i, NotificationChannel notificationChannel) {
        Object objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(NotificationManager.class, "getService", new Class[0]), null, new Object[0]);
        if (objInvokeMethod != null) {
            TranDoorMan.invokeMethod(TranDoorMan.getMethod(objInvokeMethod.getClass(), "updateNotificationChannelForPackage", String.class, Integer.TYPE, NotificationChannel.class), objInvokeMethod, str, Integer.valueOf(i), notificationChannel);
        }
    }
}
