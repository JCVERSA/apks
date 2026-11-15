.class public Lcom/aliyun/utils/NativeLoader;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field private static downloaderLoaded:Z = false

.field private static playerLoaded:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static declared-synchronized loadDownloader()V
    .locals 2

    .line 1
    const-class v0, Lcom/aliyun/utils/NativeLoader;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {}, Lcom/aliyun/utils/NativeLoader;->loadPlayer()V

    .line 5
    .line 6
    .line 7
    sget-boolean v1, Lcom/aliyun/utils/NativeLoader;->downloaderLoaded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    monitor-exit v0

    .line 12
    return-void

    .line 13
    :cond_0
    :try_start_1
    const-string v1, "saasDownloader"

    .line 14
    .line 15
    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    sput-boolean v1, Lcom/aliyun/utils/NativeLoader;->downloaderLoaded:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception v1

    .line 23
    goto :goto_1

    .line 24
    :catch_0
    move-exception v1

    .line 25
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 26
    .line 27
    .line 28
    :goto_0
    monitor-exit v0

    .line 29
    return-void

    .line 30
    :goto_1
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 31
    throw v1
.end method

.method public static declared-synchronized loadPlayer()V
    .locals 2

    .line 1
    const-class v0, Lcom/aliyun/utils/NativeLoader;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-boolean v1, Lcom/aliyun/utils/NativeLoader;->playerLoaded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    monitor-exit v0

    .line 9
    return-void

    .line 10
    :cond_0
    const/4 v1, 0x1

    .line 11
    :try_start_1
    sput-boolean v1, Lcom/aliyun/utils/NativeLoader;->playerLoaded:Z

    .line 12
    .line 13
    invoke-static {}, Lcom/aliyun/player/nativeclass/JniUrlPlayer;->loadClass()V

    .line 14
    .line 15
    .line 16
    invoke-static {}, Lcom/aliyun/player/nativeclass/JniSaasPlayer;->loadClass()V

    .line 17
    .line 18
    .line 19
    invoke-static {}, Lcom/aliyun/player/nativeclass/JniListPlayerBase;->loadClass()V

    .line 20
    .line 21
    .line 22
    invoke-static {}, Lcom/aliyun/player/nativeclass/JniUrlListPlayer;->loadClass()V

    .line 23
    .line 24
    .line 25
    invoke-static {}, Lcom/aliyun/player/nativeclass/JniSaasListPlayer;->loadClass()V

    .line 26
    .line 27
    .line 28
    invoke-static {}, Lcom/aliyun/private_service/PrivateService;->loadClass()V

    .line 29
    .line 30
    .line 31
    invoke-static {}, Lcom/aliyun/loader/MediaLoader;->loadClass()V

    .line 32
    .line 33
    .line 34
    invoke-static {}, Lcom/aliyun/loader/VodMediaLoader;->loadClass()V

    .line 35
    .line 36
    .line 37
    invoke-static {}, Lcom/aliyun/player/AliPlayerGlobalSettings;->loadClass()V

    .line 38
    .line 39
    .line 40
    invoke-static {}, Lcom/aliyun/player/HlsKeyGenerator;->loadClass()V

    .line 41
    .line 42
    .line 43
    invoke-static {}, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->loadClass()V

    .line 44
    .line 45
    .line 46
    invoke-static {}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->loadClass()V

    .line 47
    .line 48
    .line 49
    invoke-static {}, Lcom/aliyun/thumbnail/ThumbnailHelper;->loadClass()V

    .line 50
    .line 51
    .line 52
    invoke-static {}, Lcom/aliyun/utils/DeviceInfoUtils;->loadClass()V

    .line 53
    .line 54
    .line 55
    invoke-static {}, Lcom/cicada/player/utils/Logger;->loadClass()V

    .line 56
    .line 57
    .line 58
    invoke-static {}, Lcom/cicada/player/utils/ass/AssUtils;->loadClass()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    .line 60
    .line 61
    :try_start_2
    const-string v1, "alivcffmpeg"

    .line 62
    .line 63
    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    const-string v1, "saasCorePlayer"

    .line 67
    .line 68
    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :catchall_0
    move-exception v1

    .line 73
    goto :goto_1

    .line 74
    :catch_0
    move-exception v1

    .line 75
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 76
    .line 77
    .line 78
    const/4 v1, 0x0

    .line 79
    sput-boolean v1, Lcom/aliyun/utils/NativeLoader;->playerLoaded:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 80
    .line 81
    :goto_0
    monitor-exit v0

    .line 82
    return-void

    .line 83
    :goto_1
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 84
    throw v1
.end method
