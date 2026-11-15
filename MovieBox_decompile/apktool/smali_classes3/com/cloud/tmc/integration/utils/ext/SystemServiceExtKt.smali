.class public final Lcom/cloud/tmc/integration/utils/ext/SystemServiceExtKt;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00d6\u0001\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u001a\u001c\u0010i\u001a\u0004\u0018\u0001Hj\"\u0006\u0008\u0000\u0010j\u0018\u0001*\u00020\u0002H\u0086\u0008\u00a2\u0006\u0002\u0010k\"\u0017\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u00028F\u00a2\u0006\u0006\u001a\u0004\u0008\u0003\u0010\u0004\"\u0017\u0010\u0005\u001a\u0004\u0018\u00010\u0006*\u00020\u00028F\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008\"\u0017\u0010\t\u001a\u0004\u0018\u00010\n*\u00020\u00028F\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\u000c\"\u0017\u0010\r\u001a\u0004\u0018\u00010\u000e*\u00020\u00028F\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\u0010\"\u0017\u0010\u0011\u001a\u0004\u0018\u00010\u0012*\u00020\u00028F\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\u0014\"\u0017\u0010\u0015\u001a\u0004\u0018\u00010\u0016*\u00020\u00028F\u00a2\u0006\u0006\u001a\u0004\u0008\u0017\u0010\u0018\"\u0017\u0010\u0019\u001a\u0004\u0018\u00010\u001a*\u00020\u00028F\u00a2\u0006\u0006\u001a\u0004\u0008\u001b\u0010\u001c\"\u0017\u0010\u001d\u001a\u0004\u0018\u00010\u001e*\u00020\u00028F\u00a2\u0006\u0006\u001a\u0004\u0008\u001f\u0010 \"\u0017\u0010!\u001a\u0004\u0018\u00010\"*\u00020\u00028F\u00a2\u0006\u0006\u001a\u0004\u0008#\u0010$\"\u0017\u0010%\u001a\u0004\u0018\u00010&*\u00020\u00028F\u00a2\u0006\u0006\u001a\u0004\u0008\'\u0010(\"\u0017\u0010)\u001a\u0004\u0018\u00010**\u00020\u00028F\u00a2\u0006\u0006\u001a\u0004\u0008+\u0010,\"\u0017\u0010-\u001a\u0004\u0018\u00010.*\u00020\u00028F\u00a2\u0006\u0006\u001a\u0004\u0008/\u00100\"\u0017\u00101\u001a\u0004\u0018\u000102*\u00020\u00028F\u00a2\u0006\u0006\u001a\u0004\u00083\u00104\"\u0017\u00105\u001a\u0004\u0018\u000106*\u00020\u00028F\u00a2\u0006\u0006\u001a\u0004\u00087\u00108\"\u0017\u00109\u001a\u0004\u0018\u00010:*\u00020\u00028F\u00a2\u0006\u0006\u001a\u0004\u0008;\u0010<\"\u0017\u0010=\u001a\u0004\u0018\u00010>*\u00020\u00028F\u00a2\u0006\u0006\u001a\u0004\u0008?\u0010@\"\u0017\u0010A\u001a\u0004\u0018\u00010B*\u00020\u00028F\u00a2\u0006\u0006\u001a\u0004\u0008C\u0010D\"\u0017\u0010E\u001a\u0004\u0018\u00010F*\u00020\u00028F\u00a2\u0006\u0006\u001a\u0004\u0008G\u0010H\"\u0017\u0010I\u001a\u0004\u0018\u00010J*\u00020\u00028F\u00a2\u0006\u0006\u001a\u0004\u0008K\u0010L\"\u0017\u0010M\u001a\u0004\u0018\u00010N*\u00020\u00028F\u00a2\u0006\u0006\u001a\u0004\u0008O\u0010P\"\u0017\u0010Q\u001a\u0004\u0018\u00010R*\u00020\u00028F\u00a2\u0006\u0006\u001a\u0004\u0008S\u0010T\"\u0017\u0010U\u001a\u0004\u0018\u00010V*\u00020\u00028F\u00a2\u0006\u0006\u001a\u0004\u0008W\u0010X\"\u0017\u0010Y\u001a\u0004\u0018\u00010Z*\u00020\u00028F\u00a2\u0006\u0006\u001a\u0004\u0008[\u0010\\\"\u0017\u0010]\u001a\u0004\u0018\u00010^*\u00020\u00028F\u00a2\u0006\u0006\u001a\u0004\u0008_\u0010`\"\u0017\u0010a\u001a\u0004\u0018\u00010b*\u00020\u00028F\u00a2\u0006\u0006\u001a\u0004\u0008c\u0010d\"\u0017\u0010e\u001a\u0004\u0018\u00010f*\u00020\u00028F\u00a2\u0006\u0006\u001a\u0004\u0008g\u0010h\u00a8\u0006l"
    }
    d2 = {
        "accessibilityManager",
        "Landroid/view/accessibility/AccessibilityManager;",
        "Landroid/content/Context;",
        "getAccessibilityManager",
        "(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;",
        "activityManager",
        "Landroid/app/ActivityManager;",
        "getActivityManager",
        "(Landroid/content/Context;)Landroid/app/ActivityManager;",
        "alarmManager",
        "Landroid/app/AlarmManager;",
        "getAlarmManager",
        "(Landroid/content/Context;)Landroid/app/AlarmManager;",
        "audioManager",
        "Landroid/media/AudioManager;",
        "getAudioManager",
        "(Landroid/content/Context;)Landroid/media/AudioManager;",
        "batteryManager",
        "Landroid/os/BatteryManager;",
        "getBatteryManager",
        "(Landroid/content/Context;)Landroid/os/BatteryManager;",
        "carrierConfigManager",
        "Landroid/telephony/CarrierConfigManager;",
        "getCarrierConfigManager",
        "(Landroid/content/Context;)Landroid/telephony/CarrierConfigManager;",
        "clipboardManager",
        "Landroid/content/ClipboardManager;",
        "getClipboardManager",
        "(Landroid/content/Context;)Landroid/content/ClipboardManager;",
        "connectivityManager",
        "Landroid/net/ConnectivityManager;",
        "getConnectivityManager",
        "(Landroid/content/Context;)Landroid/net/ConnectivityManager;",
        "downloadManager",
        "Landroid/app/DownloadManager;",
        "getDownloadManager",
        "(Landroid/content/Context;)Landroid/app/DownloadManager;",
        "inputMethodManager",
        "Landroid/view/inputmethod/InputMethodManager;",
        "getInputMethodManager",
        "(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;",
        "jobScheduler",
        "Landroid/app/job/JobScheduler;",
        "getJobScheduler",
        "(Landroid/content/Context;)Landroid/app/job/JobScheduler;",
        "keyguardManager",
        "Landroid/app/KeyguardManager;",
        "getKeyguardManager",
        "(Landroid/content/Context;)Landroid/app/KeyguardManager;",
        "layoutInflater",
        "Landroid/view/LayoutInflater;",
        "getLayoutInflater",
        "(Landroid/content/Context;)Landroid/view/LayoutInflater;",
        "locationManager",
        "Landroid/location/LocationManager;",
        "getLocationManager",
        "(Landroid/content/Context;)Landroid/location/LocationManager;",
        "mediaRouter",
        "Landroid/media/MediaRouter;",
        "getMediaRouter",
        "(Landroid/content/Context;)Landroid/media/MediaRouter;",
        "notificationManager",
        "Landroid/app/NotificationManager;",
        "getNotificationManager",
        "(Landroid/content/Context;)Landroid/app/NotificationManager;",
        "powerManager",
        "Landroid/os/PowerManager;",
        "getPowerManager",
        "(Landroid/content/Context;)Landroid/os/PowerManager;",
        "searchManager",
        "Landroid/app/SearchManager;",
        "getSearchManager",
        "(Landroid/content/Context;)Landroid/app/SearchManager;",
        "sensorManager",
        "Landroid/hardware/SensorManager;",
        "getSensorManager",
        "(Landroid/content/Context;)Landroid/hardware/SensorManager;",
        "storageManager",
        "Landroid/os/storage/StorageManager;",
        "getStorageManager",
        "(Landroid/content/Context;)Landroid/os/storage/StorageManager;",
        "subscriptionManager",
        "Landroid/telephony/SubscriptionManager;",
        "getSubscriptionManager",
        "(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;",
        "telephonyManager",
        "Landroid/telephony/TelephonyManager;",
        "getTelephonyManager",
        "(Landroid/content/Context;)Landroid/telephony/TelephonyManager;",
        "uiModeManager",
        "Landroid/app/UiModeManager;",
        "getUiModeManager",
        "(Landroid/content/Context;)Landroid/app/UiModeManager;",
        "vibrator",
        "Landroid/os/Vibrator;",
        "getVibrator",
        "(Landroid/content/Context;)Landroid/os/Vibrator;",
        "wifiManager",
        "Landroid/net/wifi/WifiManager;",
        "getWifiManager",
        "(Landroid/content/Context;)Landroid/net/wifi/WifiManager;",
        "windowManager",
        "Landroid/view/WindowManager;",
        "getWindowManager",
        "(Landroid/content/Context;)Landroid/view/WindowManager;",
        "getSystemService",
        "T",
        "(Landroid/content/Context;)Ljava/lang/Object;",
        "com.cloud.tmc.integration"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# direct methods
.method public static final getAccessibilityManager(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;
    .locals 1

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-class v0, Landroid/view/accessibility/AccessibilityManager;

    .line 7
    .line 8
    invoke-static {p0, v0}, Landroidx/core/content/b;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Landroid/view/accessibility/AccessibilityManager;

    .line 13
    .line 14
    return-object p0
.end method

.method public static final getActivityManager(Landroid/content/Context;)Landroid/app/ActivityManager;
    .locals 1

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-class v0, Landroid/app/ActivityManager;

    .line 7
    .line 8
    invoke-static {p0, v0}, Landroidx/core/content/b;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Landroid/app/ActivityManager;

    .line 13
    .line 14
    return-object p0
.end method

.method public static final getAlarmManager(Landroid/content/Context;)Landroid/app/AlarmManager;
    .locals 1

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-class v0, Landroid/app/AlarmManager;

    .line 7
    .line 8
    invoke-static {p0, v0}, Landroidx/core/content/b;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Landroid/app/AlarmManager;

    .line 13
    .line 14
    return-object p0
.end method

.method public static final getAudioManager(Landroid/content/Context;)Landroid/media/AudioManager;
    .locals 1

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-class v0, Landroid/media/AudioManager;

    .line 7
    .line 8
    invoke-static {p0, v0}, Landroidx/core/content/b;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Landroid/media/AudioManager;

    .line 13
    .line 14
    return-object p0
.end method

.method public static final getBatteryManager(Landroid/content/Context;)Landroid/os/BatteryManager;
    .locals 1

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-class v0, Landroid/os/BatteryManager;

    .line 7
    .line 8
    invoke-static {p0, v0}, Landroidx/core/content/b;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Landroid/os/BatteryManager;

    .line 13
    .line 14
    return-object p0
.end method

.method public static final getCarrierConfigManager(Landroid/content/Context;)Landroid/telephony/CarrierConfigManager;
    .locals 1

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-class v0, Landroid/telephony/CarrierConfigManager;

    .line 7
    .line 8
    invoke-static {p0, v0}, Landroidx/core/content/b;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Landroid/telephony/CarrierConfigManager;

    .line 13
    .line 14
    return-object p0
.end method

.method public static final getClipboardManager(Landroid/content/Context;)Landroid/content/ClipboardManager;
    .locals 1

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-class v0, Landroid/content/ClipboardManager;

    .line 7
    .line 8
    invoke-static {p0, v0}, Landroidx/core/content/b;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Landroid/content/ClipboardManager;

    .line 13
    .line 14
    return-object p0
.end method

.method public static final getConnectivityManager(Landroid/content/Context;)Landroid/net/ConnectivityManager;
    .locals 1

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-class v0, Landroid/net/ConnectivityManager;

    .line 7
    .line 8
    invoke-static {p0, v0}, Landroidx/core/content/b;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Landroid/net/ConnectivityManager;

    .line 13
    .line 14
    return-object p0
.end method

.method public static final getDownloadManager(Landroid/content/Context;)Landroid/app/DownloadManager;
    .locals 1

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-class v0, Landroid/app/DownloadManager;

    .line 7
    .line 8
    invoke-static {p0, v0}, Landroidx/core/content/b;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Landroid/app/DownloadManager;

    .line 13
    .line 14
    return-object p0
.end method

.method public static final getInputMethodManager(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-class v0, Landroid/view/inputmethod/InputMethodManager;

    .line 7
    .line 8
    invoke-static {p0, v0}, Landroidx/core/content/b;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Landroid/view/inputmethod/InputMethodManager;

    .line 13
    .line 14
    return-object p0
.end method

.method public static final getJobScheduler(Landroid/content/Context;)Landroid/app/job/JobScheduler;
    .locals 1

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-class v0, Landroid/app/job/JobScheduler;

    .line 7
    .line 8
    invoke-static {p0, v0}, Landroidx/core/content/b;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Landroid/app/job/JobScheduler;

    .line 13
    .line 14
    return-object p0
.end method

.method public static final getKeyguardManager(Landroid/content/Context;)Landroid/app/KeyguardManager;
    .locals 1

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-class v0, Landroid/app/KeyguardManager;

    .line 7
    .line 8
    invoke-static {p0, v0}, Landroidx/core/content/b;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Landroid/app/KeyguardManager;

    .line 13
    .line 14
    return-object p0
.end method

.method public static final getLayoutInflater(Landroid/content/Context;)Landroid/view/LayoutInflater;
    .locals 1

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-class v0, Landroid/view/LayoutInflater;

    .line 7
    .line 8
    invoke-static {p0, v0}, Landroidx/core/content/b;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Landroid/view/LayoutInflater;

    .line 13
    .line 14
    return-object p0
.end method

.method public static final getLocationManager(Landroid/content/Context;)Landroid/location/LocationManager;
    .locals 1

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-class v0, Landroid/location/LocationManager;

    .line 7
    .line 8
    invoke-static {p0, v0}, Landroidx/core/content/b;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Landroid/location/LocationManager;

    .line 13
    .line 14
    return-object p0
.end method

.method public static final getMediaRouter(Landroid/content/Context;)Landroid/media/MediaRouter;
    .locals 1

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-class v0, Landroid/media/MediaRouter;

    .line 7
    .line 8
    invoke-static {p0, v0}, Landroidx/core/content/b;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Landroid/media/MediaRouter;

    .line 13
    .line 14
    return-object p0
.end method

.method public static final getNotificationManager(Landroid/content/Context;)Landroid/app/NotificationManager;
    .locals 1

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-class v0, Landroid/app/NotificationManager;

    .line 7
    .line 8
    invoke-static {p0, v0}, Landroidx/core/content/b;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Landroid/app/NotificationManager;

    .line 13
    .line 14
    return-object p0
.end method

.method public static final getPowerManager(Landroid/content/Context;)Landroid/os/PowerManager;
    .locals 1

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-class v0, Landroid/os/PowerManager;

    .line 7
    .line 8
    invoke-static {p0, v0}, Landroidx/core/content/b;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Landroid/os/PowerManager;

    .line 13
    .line 14
    return-object p0
.end method

.method public static final getSearchManager(Landroid/content/Context;)Landroid/app/SearchManager;
    .locals 1

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-class v0, Landroid/app/SearchManager;

    .line 7
    .line 8
    invoke-static {p0, v0}, Landroidx/core/content/b;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Landroid/app/SearchManager;

    .line 13
    .line 14
    return-object p0
.end method

.method public static final getSensorManager(Landroid/content/Context;)Landroid/hardware/SensorManager;
    .locals 1

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-class v0, Landroid/hardware/SensorManager;

    .line 7
    .line 8
    invoke-static {p0, v0}, Landroidx/core/content/b;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Landroid/hardware/SensorManager;

    .line 13
    .line 14
    return-object p0
.end method

.method public static final getStorageManager(Landroid/content/Context;)Landroid/os/storage/StorageManager;
    .locals 1

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-class v0, Landroid/os/storage/StorageManager;

    .line 7
    .line 8
    invoke-static {p0, v0}, Landroidx/core/content/b;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Landroid/os/storage/StorageManager;

    .line 13
    .line 14
    return-object p0
.end method

.method public static final getSubscriptionManager(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;
    .locals 1

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-class v0, Landroid/telephony/SubscriptionManager;

    .line 7
    .line 8
    invoke-static {p0, v0}, Landroidx/core/content/b;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Landroid/telephony/SubscriptionManager;

    .line 13
    .line 14
    return-object p0
.end method

.method public static final synthetic getSystemService(Landroid/content/Context;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            ")TT;"
        }
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x4

    .line 7
    const-string v1, "T"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->n(ILjava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-class v0, Ljava/lang/Object;

    .line 13
    .line 14
    invoke-static {p0, v0}, Landroidx/core/content/b;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method

.method public static final getTelephonyManager(Landroid/content/Context;)Landroid/telephony/TelephonyManager;
    .locals 1

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-class v0, Landroid/telephony/TelephonyManager;

    .line 7
    .line 8
    invoke-static {p0, v0}, Landroidx/core/content/b;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 13
    .line 14
    return-object p0
.end method

.method public static final getUiModeManager(Landroid/content/Context;)Landroid/app/UiModeManager;
    .locals 1

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-class v0, Landroid/app/UiModeManager;

    .line 7
    .line 8
    invoke-static {p0, v0}, Landroidx/core/content/b;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Landroid/app/UiModeManager;

    .line 13
    .line 14
    return-object p0
.end method

.method public static final getVibrator(Landroid/content/Context;)Landroid/os/Vibrator;
    .locals 1

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-class v0, Landroid/os/Vibrator;

    .line 7
    .line 8
    invoke-static {p0, v0}, Landroidx/core/content/b;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Landroid/os/Vibrator;

    .line 13
    .line 14
    return-object p0
.end method

.method public static final getWifiManager(Landroid/content/Context;)Landroid/net/wifi/WifiManager;
    .locals 1

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-class v0, Landroid/net/wifi/WifiManager;

    .line 7
    .line 8
    invoke-static {p0, v0}, Landroidx/core/content/b;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Landroid/net/wifi/WifiManager;

    .line 13
    .line 14
    return-object p0
.end method

.method public static final getWindowManager(Landroid/content/Context;)Landroid/view/WindowManager;
    .locals 1

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-class v0, Landroid/view/WindowManager;

    .line 7
    .line 8
    invoke-static {p0, v0}, Landroidx/core/content/b;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Landroid/view/WindowManager;

    .line 13
    .line 14
    return-object p0
.end method
