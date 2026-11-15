package com.transsion.audio.utils;

import android.app.Activity;
import android.app.Notification;
import android.app.NotificationChannel;
import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Build;
import android.util.Log;
import androidx.core.app.NotificationCompat;
import androidx.core.app.NotificationManagerCompat;
import androidx.media3.common.C;
import com.blankj.utilcode.util.LogUtils;
import com.blankj.utilcode.util.a;
import com.hisavana.common.constant.ComConstants;
import com.transsion.audio.activities.AudioPlayerActivity;
import com.transsion.audio.activities.LaunchTempActivity;
import com.transsion.audio.utils.FindNewAudioNotificationHelper;
import com.transsion.audio.utils.MVNotificationUtils;
import com.transsion.dbdata.beans.media.AudioItem;
import com.transsion.dbdata.beans.media.PlayAudioData;
import com.transsion.dbdata.beans.media.PlayAudioListData;
import com.transsion.dbdata.engine.observer.AudioMediaObserver;
import com.transsion.playercommon.R;
import com.transsion.playercommon.cloudctrlconfigrequest.CloudCtrlConfigHelper;
import com.transsion.playercommon.core.MainApp;
import defpackage.iz;
import defpackage.pp3;
import defpackage.ry5;
import defpackage.se;
import defpackage.t08;
import defpackage.tz5;
import defpackage.w6c;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.function.Function;
import java.util.function.Supplier;
import java.util.stream.Collectors;

public abstract class FindNewAudioNotificationHelper {
    public static SharedPreferences b;
    public static HashMap a = new HashMap();
    public static int c = 0;
    public static long d = 0;

    public static class NewAudioBroadcastReceiver extends BroadcastReceiver {
        @Override
        public void onReceive(Context context, Intent intent) {
            if (intent == null) {
                return;
            }
            try {
                int intExtra = intent.getIntExtra("requestCode", -1);
                int intExtra2 = intent.getIntExtra("type", 0);
                if (intExtra == 30001) {
                    FindNewAudioNotificationHelper.c(intExtra2);
                }
            } catch (Exception e) {
                Log.e("FindNewAudioNotification", "NewAudioBroadcastReceiver onReceive error: " + e.getMessage());
            }
        }
    }

    /* JADX WARN: Enum visitor error
    jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'NEW_AUDIO_NOTIFICATION' uses external variables
    	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:485)
    	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByField(EnumVisitor.java:399)
    	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByWrappedInsn(EnumVisitor.java:364)
    	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:349)
    	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:284)
    	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInvoke(EnumVisitor.java:315)
    	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:288)
    	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:153)
    	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:102)
     */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    public static final class NotificationType {
        private static final NotificationType[] $VALUES;
        public static final NotificationType NEW_AUDIO_NOTIFICATION;
        public static final NotificationType NEW_MV_NOTIFICATION;
        public final Runnable audioListClear;
        public final Supplier<ArrayList<AudioItem>> audioListExecutor;
        public final String channel;
        public final String channelSilent;
        public final int iconId;
        public final int listFlags;
        public final int notificationId;
        public final int oneDescribeStrId;
        public final int someDescribeStrId;
        public final int titleStrId;
        public final int value;

        private static NotificationType[] $values() {
            return new NotificationType[]{NEW_AUDIO_NOTIFICATION, NEW_MV_NOTIFICATION};
        }

        static {
            int i = R.string.audio_file_new_find_medie_notification;
            int i2 = R.string.audio_new_find_size;
            int i3 = R.string.audio_file_new_find_detail;
            int i4 = R.drawable.ic_icon_visha_small;
            NotificationType notificationType = new NotificationType("NEW_AUDIO_NOTIFICATION", 0, ComConstants.AD_TIMEOUT_MILLIS, 0, 20, i, i2, i3, i4, "notify_new_audio", "notify_new_audio_silent", new Supplier() {
                @Override
                public final Object get() {
                    return FindNewAudioNotificationHelper.NotificationType.lambda$static$0();
                }
            }, new Runnable() {
                @Override
                public final void run() {
                    FindNewAudioNotificationHelper.NotificationType.lambda$static$1();
                }
            });
            NEW_AUDIO_NOTIFICATION = notificationType;
            NEW_MV_NOTIFICATION = new NotificationType("NEW_MV_NOTIFICATION", 1, notificationType.notificationId + 1, notificationType.value + 1, 19, R.string.visha_find_new_music_video_file_title, i2, R.string.visha_find_new_music_video_files, i4, "notify_mv", "notify_mv_silent", new Supplier() {
                @Override
                public final Object get() {
                    return FindNewAudioNotificationHelper.NotificationType.lambda$static$2();
                }
            }, new Runnable() {
                @Override
                public final void run() {
                    MVNotificationUtils.e();
                }
            });
            $VALUES = $values();
        }

        private NotificationType(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, String str2, String str3, Supplier supplier, Runnable runnable) {
            super(str, i);
            this.notificationId = i2;
            this.value = i3;
            this.listFlags = i4;
            this.titleStrId = i5;
            this.oneDescribeStrId = i6;
            this.someDescribeStrId = i7;
            this.iconId = i8;
            this.channel = str2;
            this.channelSilent = str3;
            this.audioListExecutor = supplier;
            this.audioListClear = runnable;
        }

        public static void clearNewAudioList(int i) {
            for (NotificationType notificationType : values()) {
                if (notificationType.value == i) {
                    notificationType.audioListClear.run();
                    return;
                }
            }
            Log.e("FindNewAudioNotification", "clearNewAudioList error value:" + i);
        }

        public static int getListFlag(int i) {
            for (NotificationType notificationType : values()) {
                if (notificationType.value == i) {
                    return notificationType.listFlags;
                }
            }
            Log.e("FindNewAudioNotification", "getListFlag error value:" + i);
            return 20;
        }

        public static ArrayList<AudioItem> getNewAudioList(int i) {
            for (NotificationType notificationType : values()) {
                if (notificationType.value == i) {
                    return notificationType.audioListExecutor.get();
                }
            }
            Log.e("FindNewAudioNotification", "getNewAudioList error value:" + i);
            return new ArrayList<>();
        }

        public static ArrayList lambda$static$0() {
            return AudioMediaObserver.k(null, null).l(true);
        }

        public static void lambda$static$1() {
            AudioMediaObserver.k(null, null).h();
        }

        public static ArrayList lambda$static$2() {
            return MVNotificationUtils.h(true);
        }

        public static NotificationType valueOf(String str) {
            return (NotificationType) Enum.valueOf(NotificationType.class, str);
        }

        public static NotificationType[] values() {
            return (NotificationType[]) $VALUES.clone();
        }
    }

    public static Notification b(Context context, String str, boolean z, PendingIntent pendingIntent, NotificationType notificationType) {
        NotificationCompat.Builder contentTitle = new NotificationCompat.Builder(context, z ? notificationType.channel : notificationType.channelSilent).setSmallIcon(notificationType.iconId).setContentTitle(context.getResources().getString(R.string.audio_file_new_find));
        if (str == null) {
            str = context.getResources().getString(notificationType.titleStrId);
        }
        NotificationCompat.Builder autoCancel = contentTitle.setContentText(str).setPriority(0).setAutoCancel(true);
        Log.i("FindNewAudioNotification", "createNewAudioNotification: " + notificationType);
        int iIdentityHashCode = System.identityHashCode(notificationType);
        Intent intent = new Intent(context, (Class<?>) NewAudioBroadcastReceiver.class);
        intent.putExtra("requestCode", 30001);
        intent.putExtra("type", notificationType.value);
        autoCancel.setDeleteIntent(PendingIntent.getBroadcast(context, iIdentityHashCode, intent, 67108864));
        if (pendingIntent == null) {
            int i = Build.VERSION.SDK_INT >= 31 ? 201326592 : C.BUFFER_FLAG_FIRST_SAMPLE;
            Intent intent2 = new Intent(context, (Class<?>) LaunchTempActivity.class);
            intent2.putExtra("requestCode", 30002);
            intent2.putExtra("type", notificationType.value);
            intent2.putExtra("from_new_audio_notification", true);
            pendingIntent = PendingIntent.getActivity(context, iIdentityHashCode, intent2, i);
        }
        autoCancel.setContentIntent(pendingIntent);
        return autoCancel.build();
    }

    public static void c(int i) {
        d(i);
        NotificationType.clearNewAudioList(i);
        o();
    }

    public static void d(int i) {
        a.remove(Integer.valueOf(i));
    }

    public static String e(NotificationType notificationType) {
        return "last_ring_time" + notificationType.value;
    }

    public static Notification f(Context context, List list, boolean z, PendingIntent pendingIntent, NotificationType notificationType) {
        String str;
        String string;
        if (list == null || list.isEmpty()) {
            return g(context, z, pendingIntent, notificationType);
        }
        if (((String) list.get(0)).length() > 25) {
            str = ((String) list.get(0)).substring(0, 25) + "...";
        } else {
            str = (String) list.get(0);
        }
        if (list.size() == 1) {
            string = context.getResources().getString(notificationType.oneDescribeStrId, str);
        } else {
            string = context.getResources().getString(notificationType.someDescribeStrId, str, list.size() + "");
        }
        return p(notificationType, b(context, string, z, pendingIntent, notificationType));
    }

    public static Notification g(Context context, boolean z, PendingIntent pendingIntent, NotificationType notificationType) {
        return h(notificationType) == null ? p(notificationType, b(context, null, z, pendingIntent, notificationType)) : h(notificationType);
    }

    public static Notification h(NotificationType notificationType) {
        return (Notification) a.get(Integer.valueOf(notificationType.value));
    }

    public static void i(Context context) {
        if (MainApp.t) {
            Log.v("FindNewAudioNotification", "initNewAudioNotification");
            MainApp.g = t08.i(context);
            w6c.r(context, "audio_new_find_notification", MainApp.g);
            MainApp.t = false;
            w6c.r(context, "new_audio_notify_need_init", false);
        }
    }

    public static boolean j() {
        if (!pp3.x) {
            return false;
        }
        LogUtils.O("FindNewAudioNotification", "isNewAudioOpen:" + MainApp.g + ",CloudCtrlConfigHelper:" + CloudCtrlConfigHelper.b().c(3));
        i(se.a());
        return MainApp.g && CloudCtrlConfigHelper.b().c(3);
    }

    public static boolean k() {
        return (c == 0 && d == 0) ? false : true;
    }

    public static void l(int i) {
        ArrayList<AudioItem> newAudioList = NotificationType.getNewAudioList(i);
        if (newAudioList == null || newAudioList.isEmpty()) {
            Log.v("FindNewAudioNotification", "newAudioPlay: empty list");
            return;
        }
        PlayAudioListData.getInstance().setPlayList(newAudioList, new iz(1));
        PlayAudioData playAudioDataConvertToPlayAudioData = PlayAudioData.convertToPlayAudioData(newAudioList.get(0));
        playAudioDataConvertToPlayAudioData.listFlag = NotificationType.getListFlag(i);
        playAudioDataConvertToPlayAudioData.autoPlay = true;
        playAudioDataConvertToPlayAudioData.sourceAction = "vd_audio_new_find_notification_cl";
        ry5.g("newmedianotice");
        List listD = a.d();
        if (listD.size() > 1) {
            Activity activity = (Activity) listD.get(1);
            if (AudioPlayerActivity.class.equals(activity.getClass())) {
                activity.finish();
                Log.w("FindNewAudioNotification", "newAudioPlay: finish AudioPlayerActivity");
            }
        }
        AudioPlayerActivity.D1(se.a(), playAudioDataConvertToPlayAudioData);
        tz5.g(System.currentTimeMillis() - d);
        o();
    }

    public static boolean m(Context context, List list, PendingIntent pendingIntent, NotificationType notificationType) {
        if (j()) {
            NotificationManagerCompat notificationManagerCompatFrom = NotificationManagerCompat.from(context);
            tz5.f(t08.j());
            if (b == null) {
                b = context.getSharedPreferences("NEW_AUDIO_NOTIFICATION_SHARED_DATA_KEY", 0);
            }
            boolean zQ = q(notificationType);
            String str = zQ ? notificationType.channel : notificationType.channelSilent;
            if (notificationManagerCompatFrom.getNotificationChannel(str) == null) {
                String string = context.getResources().getString(notificationType.titleStrId);
                String string2 = context.getResources().getString(notificationType.titleStrId);
                NotificationChannel notificationChannel = new NotificationChannel(str, string, zQ ? 3 : 2);
                notificationChannel.setDescription(string2);
                notificationManagerCompatFrom.createNotificationChannel(notificationChannel);
            }
            if (t08.i(context)) {
                notificationManagerCompatFrom.cancel(notificationType.notificationId);
                i(context);
                notificationManagerCompatFrom.notify(notificationType.notificationId, f(context, list, zQ, pendingIntent, notificationType));
                if (zQ) {
                    r(notificationType);
                }
                tz5.h(k(), list.size() - c);
                if (!k()) {
                    d = System.currentTimeMillis();
                }
                c = list.size();
                return true;
            }
            Log.w("FindNewAudioNotification", "Notifications are disabled on the device, notificationPermission:" + notificationManagerCompatFrom.areNotificationsEnabled() + ",isNewAudioOpen:" + j());
        }
        return false;
    }

    public static boolean n(List list, Function function, Context context, PendingIntent pendingIntent, NotificationType notificationType) {
        return m(context, (List) list.stream().map(function).collect(Collectors.toList()), pendingIntent, notificationType);
    }

    public static void o() {
        c = 0;
        d = 0L;
    }

    public static Notification p(NotificationType notificationType, Notification notification) {
        if (notification == null) {
            Log.w("FindNewAudioNotification", "setNotification: null");
        }
        a.put(Integer.valueOf(notificationType.value), notification);
        return notification;
    }

    public static boolean q(NotificationType notificationType) {
        long j = b.getLong(e(notificationType), 0L);
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(j);
        Calendar calendar2 = Calendar.getInstance();
        return (calendar.get(1) == calendar2.get(1) && calendar.get(6) == calendar2.get(6)) ? false : true;
    }

    public static void r(NotificationType notificationType) {
        SharedPreferences.Editor editorEdit = b.edit();
        editorEdit.putLong(e(notificationType), Calendar.getInstance().getTimeInMillis());
        editorEdit.apply();
    }
}
