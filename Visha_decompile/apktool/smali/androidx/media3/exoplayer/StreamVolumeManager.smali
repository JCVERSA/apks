.class final Landroidx/media3/exoplayer/StreamVolumeManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/StreamVolumeManager$StreamVolumeState;,
        Landroidx/media3/exoplayer/StreamVolumeManager$VolumeChangeReceiver;,
        Landroidx/media3/exoplayer/StreamVolumeManager$Listener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "StreamVolumeManager"

.field private static final VOLUME_CHANGED_ACTION:Ljava/lang/String; = "android.media.VOLUME_CHANGED_ACTION"


# instance fields
.field private final applicationContext:Landroid/content/Context;

.field private audioManager:Landroid/media/AudioManager;

.field private final listener:Landroidx/media3/exoplayer/StreamVolumeManager$Listener;

.field private receiver:Landroidx/media3/exoplayer/StreamVolumeManager$VolumeChangeReceiver;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final stateHandler:Landroidx/media3/common/util/BackgroundThreadStateHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media3/common/util/BackgroundThreadStateHandler<",
            "Landroidx/media3/exoplayer/StreamVolumeManager$StreamVolumeState;",
            ">;"
        }
    .end annotation
.end field

.field private volumeBeforeMute:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/media3/exoplayer/StreamVolumeManager$Listener;ILandroid/os/Looper;Landroid/os/Looper;Landroidx/media3/common/util/Clock;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/StreamVolumeManager;->applicationContext:Landroid/content/Context;

    iput-object p2, p0, Landroidx/media3/exoplayer/StreamVolumeManager;->listener:Landroidx/media3/exoplayer/StreamVolumeManager$Listener;

    new-instance p1, Landroidx/media3/exoplayer/StreamVolumeManager$StreamVolumeState;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p1

    move v1, p3

    invoke-direct/range {v0 .. v5}, Landroidx/media3/exoplayer/StreamVolumeManager$StreamVolumeState;-><init>(IIZII)V

    new-instance p2, Landroidx/media3/common/util/BackgroundThreadStateHandler;

    new-instance v5, Landroidx/media3/exoplayer/u1;

    invoke-direct {v5, p0}, Landroidx/media3/exoplayer/u1;-><init>(Landroidx/media3/exoplayer/StreamVolumeManager;)V

    move-object v0, p2

    move-object v1, p1

    move-object v2, p4

    move-object v3, p5

    move-object v4, p6

    invoke-direct/range {v0 .. v5}, Landroidx/media3/common/util/BackgroundThreadStateHandler;-><init>(Ljava/lang/Object;Landroid/os/Looper;Landroid/os/Looper;Landroidx/media3/common/util/Clock;Landroidx/media3/common/util/BackgroundThreadStateHandler$StateChangeListener;)V

    iput-object p2, p0, Landroidx/media3/exoplayer/StreamVolumeManager;->stateHandler:Landroidx/media3/common/util/BackgroundThreadStateHandler;

    new-instance p1, Landroidx/media3/exoplayer/z1;

    invoke-direct {p1, p0, p3}, Landroidx/media3/exoplayer/z1;-><init>(Landroidx/media3/exoplayer/StreamVolumeManager;I)V

    invoke-virtual {p2, p1}, Landroidx/media3/common/util/BackgroundThreadStateHandler;->runInBackground(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic a(Landroidx/media3/exoplayer/StreamVolumeManager;ZLandroidx/media3/exoplayer/StreamVolumeManager$StreamVolumeState;)Landroidx/media3/exoplayer/StreamVolumeManager$StreamVolumeState;
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/StreamVolumeManager;->lambda$setMuted$9(ZLandroidx/media3/exoplayer/StreamVolumeManager$StreamVolumeState;)Landroidx/media3/exoplayer/StreamVolumeManager$StreamVolumeState;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$000(Landroidx/media3/exoplayer/StreamVolumeManager;)Landroidx/media3/common/util/BackgroundThreadStateHandler;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/StreamVolumeManager;->stateHandler:Landroidx/media3/common/util/BackgroundThreadStateHandler;

    return-object p0
.end method

.method public static synthetic access$100(Landroidx/media3/exoplayer/StreamVolumeManager;)Landroidx/media3/exoplayer/StreamVolumeManager$VolumeChangeReceiver;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/StreamVolumeManager;->receiver:Landroidx/media3/exoplayer/StreamVolumeManager$VolumeChangeReceiver;

    return-object p0
.end method

.method public static synthetic access$200(Landroidx/media3/exoplayer/StreamVolumeManager;I)Landroidx/media3/exoplayer/StreamVolumeManager$StreamVolumeState;
    .locals 0

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/StreamVolumeManager;->generateState(I)Landroidx/media3/exoplayer/StreamVolumeManager$StreamVolumeState;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(ILandroidx/media3/exoplayer/StreamVolumeManager$StreamVolumeState;)Landroidx/media3/exoplayer/StreamVolumeManager$StreamVolumeState;
    .locals 0

    invoke-static {p0, p1}, Landroidx/media3/exoplayer/StreamVolumeManager;->lambda$setStreamType$1(ILandroidx/media3/exoplayer/StreamVolumeManager$StreamVolumeState;)Landroidx/media3/exoplayer/StreamVolumeManager$StreamVolumeState;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Landroidx/media3/exoplayer/StreamVolumeManager$StreamVolumeState;)Landroidx/media3/exoplayer/StreamVolumeManager$StreamVolumeState;
    .locals 0

    invoke-static {p0}, Landroidx/media3/exoplayer/StreamVolumeManager;->lambda$release$11(Landroidx/media3/exoplayer/StreamVolumeManager$StreamVolumeState;)Landroidx/media3/exoplayer/StreamVolumeManager$StreamVolumeState;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(ILandroidx/media3/exoplayer/StreamVolumeManager$StreamVolumeState;)Landroidx/media3/exoplayer/StreamVolumeManager$StreamVolumeState;
    .locals 0

    invoke-static {p0, p1}, Landroidx/media3/exoplayer/StreamVolumeManager;->lambda$setVolume$3(ILandroidx/media3/exoplayer/StreamVolumeManager$StreamVolumeState;)Landroidx/media3/exoplayer/StreamVolumeManager$StreamVolumeState;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Landroidx/media3/exoplayer/StreamVolumeManager$StreamVolumeState;)Landroidx/media3/exoplayer/StreamVolumeManager$StreamVolumeState;
    .locals 0

    invoke-static {p0}, Landroidx/media3/exoplayer/StreamVolumeManager;->lambda$decreaseVolume$7(Landroidx/media3/exoplayer/StreamVolumeManager$StreamVolumeState;)Landroidx/media3/exoplayer/StreamVolumeManager$StreamVolumeState;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Landroidx/media3/exoplayer/StreamVolumeManager;ILandroidx/media3/exoplayer/StreamVolumeManager$StreamVolumeState;)Landroidx/media3/exoplayer/StreamVolumeManager$StreamVolumeState;
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/StreamVolumeManager;->lambda$decreaseVolume$8(ILandroidx/media3/exoplayer/StreamVolumeManager$StreamVolumeState;)Landroidx/media3/exoplayer/StreamVolumeManager$StreamVolumeState;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Landroidx/media3/exoplayer/StreamVolumeManager;IILandroidx/media3/exoplayer/StreamVolumeManager$StreamVolumeState;)Landroidx/media3/exoplayer/StreamVolumeManager$StreamVolumeState;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/media3/exoplayer/StreamVolumeManager;->lambda$setVolume$4(IILandroidx/media3/exoplayer/StreamVolumeManager$StreamVolumeState;)Landroidx/media3/exoplayer/StreamVolumeManager$StreamVolumeState;

    move-result-object p0

    return-object p0
.end method

.method private generateState(I)Landroidx/media3/exoplayer/StreamVolumeManager$StreamVolumeState;
    .locals 7

    iget-object v0, p0, Landroidx/media3/exoplayer/StreamVolumeManager;->audioManager:Landroid/media/AudioManager;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroidx/media3/exoplayer/StreamVolumeManager;->audioManager:Landroid/media/AudioManager;

    invoke-static {v0, p1}, Landroidx/media3/common/audio/AudioManagerCompat;->getStreamVolume(Landroid/media/AudioManager;I)I

    move-result v3

    iget-object v0, p0, Landroidx/media3/exoplayer/StreamVolumeManager;->audioManager:Landroid/media/AudioManager;

    invoke-static {v0, p1}, Landroidx/media3/common/audio/AudioManagerCompat;->isStreamMute(Landroid/media/AudioManager;I)Z

    move-result v4

    iget-object v0, p0, Landroidx/media3/exoplayer/StreamVolumeManager;->audioManager:Landroid/media/AudioManager;

    invoke-static {v0, p1}, Landroidx/media3/common/audio/AudioManagerCompat;->getStreamMinVolume(Landroid/media/AudioManager;I)I

    move-result v5

    iget-object p0, p0, Landroidx/media3/exoplayer/StreamVolumeManager;->audioManager:Landroid/media/AudioManager;

    invoke-static {p0, p1}, Landroidx/media3/common/audio/AudioManagerCompat;->getStreamMaxVolume(Landroid/media/AudioManager;I)I

    move-result v6

    new-instance p0, Landroidx/media3/exoplayer/StreamVolumeManager$StreamVolumeState;

    move-object v1, p0

    move v2, p1

    invoke-direct/range {v1 .. v6}, Landroidx/media3/exoplayer/StreamVolumeManager$StreamVolumeState;-><init>(IIZII)V

    return-object p0
.end method

.method public static synthetic h(Landroidx/media3/exoplayer/StreamVolumeManager;ILandroidx/media3/exoplayer/StreamVolumeManager$StreamVolumeState;)Landroidx/media3/exoplayer/StreamVolumeManager$StreamVolumeState;
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/StreamVolumeManager;->lambda$setStreamType$2(ILandroidx/media3/exoplayer/StreamVolumeManager$StreamVolumeState;)Landroidx/media3/exoplayer/StreamVolumeManager$StreamVolumeState;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i(Landroidx/media3/exoplayer/StreamVolumeManager;Landroidx/media3/exoplayer/StreamVolumeManager$StreamVolumeState;)Landroidx/media3/exoplayer/StreamVolumeManager$StreamVolumeState;
    .locals 0

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/StreamVolumeManager;->lambda$release$12(Landroidx/media3/exoplayer/StreamVolumeManager$StreamVolumeState;)Landroidx/media3/exoplayer/StreamVolumeManager$StreamVolumeState;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic j(Landroidx/media3/exoplayer/StreamVolumeManager;ZILandroidx/media3/exoplayer/StreamVolumeManager$StreamVolumeState;)Landroidx/media3/exoplayer/StreamVolumeManager$StreamVolumeState;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/media3/exoplayer/StreamVolumeManager;->lambda$setMuted$10(ZILandroidx/media3/exoplayer/StreamVolumeManager$StreamVolumeState;)Landroidx/media3/exoplayer/StreamVolumeManager$StreamVolumeState;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k(Landroidx/media3/exoplayer/StreamVolumeManager;ILandroidx/media3/exoplayer/StreamVolumeManager$StreamVolumeState;)Landroidx/media3/exoplayer/StreamVolumeManager$StreamVolumeState;
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/StreamVolumeManager;->lambda$increaseVolume$6(ILandroidx/media3/exoplayer/StreamVolumeManager$StreamVolumeState;)Landroidx/media3/exoplayer/StreamVolumeManager$StreamVolumeState;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Landroidx/media3/exoplayer/StreamVolumeManager;Landroidx/media3/exoplayer/StreamVolumeManager$StreamVolumeState;Landroidx/media3/exoplayer/StreamVolumeManager$StreamVolumeState;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/StreamVolumeManager;->onStreamVolumeStateChanged(Landroidx/media3/exoplayer/StreamVolumeManager$StreamVolumeState;Landroidx/media3/exoplayer/StreamVolumeManager$StreamVolumeState;)V

    return-void
.end method

.method private static synthetic lambda$decreaseVolume$7(Landroidx/media3/exoplayer/StreamVolumeManager$StreamVolumeState;)Landroidx/media3/exoplayer/StreamVolumeManager$StreamVolumeState;
    .locals 7

    new-instance v6, Landroidx/media3/exoplayer/StreamVolumeManager$StreamVolumeState;

    iget v1, p0, Landroidx/media3/exoplayer/StreamVolumeManager$StreamVolumeState;->streamType:I

    iget v0, p0, Landroidx/media3/exoplayer/StreamVolumeManager$StreamVolumeState;->volume:I

    iget v4, p0, Landroidx/media3/exoplayer/StreamVolumeManager$StreamVolumeState;->minVolume:I

    if-le v0, v4, :cond_0

    add-int/lit8 v2, v0, -0x1

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    const/4 v3, 0x1

    if-gt v0, v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    move v3, v0

    :goto_1
    iget v5, p0, Landroidx/media3/exoplayer/StreamVolumeManager$StreamVolumeState;->maxVolume:I

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroidx/media3/exoplayer/StreamVolumeManager$StreamVolumeState;-><init>(IIZII)V

    return-object v6
.end method

.method private synthetic lambda$decreaseVolume$8(ILandroidx/media3/exoplayer/StreamVolumeManager$StreamVolumeState;)Landroidx/media3/exoplayer/StreamVolumeManager$StreamVolumeState;
    .locals 3

    iget v0, p2, Landroidx/media3/exoplayer/StreamVolumeManager$StreamVolumeState;->volume:I

    iget v1, p2, Landroidx/media3/exoplayer/StreamVolumeManager$StreamVolumeState;->minVolume:I

    if-gt v0, v1, :cond_0

    return-object p2

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/StreamVolumeManager;->audioManager:Landroid/media/AudioManager;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iget v1, p2, Landroidx/media3/exoplayer/StreamVolumeManager$StreamVolumeState;->streamType:I

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2, p1}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    iget p1, p2, Landroidx/media3/exoplayer/StreamVolumeManager$StreamVolumeState;->streamType:I

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/StreamVolumeManager;->generateState(I)Landroidx/media3/exoplayer/StreamVolumeManager$StreamVolumeState;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$increaseVolume$5(Landroidx/media3/exoplayer/StreamVolumeManager$StreamVolumeState;)Landroidx/media3/exoplayer/StreamVolumeManager$StreamVolumeState;
    .locals 7

    new-instance v6, Landroidx/media3/exoplayer/StreamVolumeManager$StreamVolumeState;

    iget v1, p0, Landroidx/media3/exoplayer/StreamVolumeManager$StreamVolumeState;->streamType:I

    iget v0, p0, Landroidx/media3/exoplayer/StreamVolumeManager$StreamVolumeState;->volume:I

    iget v5, p0, Landroidx/media3/exoplayer/StreamVolumeManager$StreamVolumeState;->maxVolume:I

    if-ge v0, v5, :cond_0

    add-int/lit8 v0, v0, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v5

    :goto_0
    const/4 v3, 0x0

    iget v4, p0, Landroidx/media3/exoplayer/StreamVolumeManager$StreamVolumeState;->minVolume:I

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroidx/media3/exoplayer/StreamVolumeManager$StreamVolumeState;-><init>(IIZII)V

    return-object v6
.end method

.method private synthetic lambda$increaseVolume$6(ILandroidx/media3/exoplayer/StreamVolumeManager$StreamVolumeState;)Landroidx/media3/exoplayer/StreamVolumeManager$StreamVolumeState;
    .locals 3

    iget v0, p2, Landroidx/media3/exoplayer/StreamVolumeManager$StreamVolumeState;->volume:I

    iget v1, p2, Landroidx/media3/exoplayer/StreamVolumeManager$StreamVolumeState;->maxVolume:I

    if-lt v0, v1, :cond_0

    return-object p2

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/StreamVolumeManager;->audioManager:Landroid/media/AudioManager;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iget v1, p2, Landroidx/media3/exoplayer/StreamVolumeManager$StreamVolumeState;->streamType:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p1}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    iget p1, p2, Landroidx/media3/exoplayer/StreamVolumeManager$StreamVolumeState;->streamType:I

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/StreamVolumeManager;->generateState(I)Landroidx/media3/exoplayer/StreamVolumeManager$StreamVolumeState;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$new$0(I)V
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/StreamVolumeManager;->applicationContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Landroidx/media3/exoplayer/StreamVolumeManager;->audioManager:Landroid/media/AudioManager;

    new-instance v0, Landroidx/media3/exoplayer/StreamVolumeManager$VolumeChangeReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/media3/exoplayer/StreamVolumeManager$VolumeChangeReceiver;-><init>(Landroidx/media3/exoplayer/StreamVolumeManager;Landroidx/media3/exoplayer/StreamVolumeManager$1;)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.media.VOLUME_CHANGED_ACTION"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    :try_start_0
    iget-object v2, p0, Landroidx/media3/exoplayer/StreamVolumeManager;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iput-object v0, p0, Landroidx/media3/exoplayer/StreamVolumeManager;->receiver:Landroidx/media3/exoplayer/StreamVolumeManager$VolumeChangeReceiver;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "StreamVolumeManager"

    const-string v2, "Error registering stream volume receiver"

    invoke-static {v1, v2, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    iget-object v0, p0, Landroidx/media3/exoplayer/StreamVolumeManager;->stateHandler:Landroidx/media3/common/util/BackgroundThreadStateHandler;

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/StreamVolumeManager;->generateState(I)Landroidx/media3/exoplayer/StreamVolumeManager$StreamVolumeState;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/media3/common/util/BackgroundThreadStateHandler;->setStateInBackground(Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$release$11(Landroidx/media3/exoplayer/StreamVolumeManager$StreamVolumeState;)Landroidx/media3/exoplayer/StreamVolumeManager$StreamVolumeState;
    .locals 0

    return-object p0
.end method

.method private synthetic lambda$release$12(Landroidx/media3/exoplayer/StreamVolumeManager$StreamVolumeState;)Landroidx/media3/exoplayer/StreamVolumeManager$StreamVolumeState;
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/StreamVolumeManager;->receiver:Landroidx/media3/exoplayer/StreamVolumeManager$VolumeChangeReceiver;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, p0, Landroidx/media3/exoplayer/StreamVolumeManager;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "StreamVolumeManager"

    const-string v2, "Error unregistering stream volume receiver"

    invoke-static {v1, v2, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/exoplayer/StreamVolumeManager;->receiver:Landroidx/media3/exoplayer/StreamVolumeManager$VolumeChangeReceiver;

    :cond_0
    return-object p1
.end method

.method private synthetic lambda$setMuted$10(ZILandroidx/media3/exoplayer/StreamVolumeManager$StreamVolumeState;)Landroidx/media3/exoplayer/StreamVolumeManager$StreamVolumeState;
    .locals 2

    iget-boolean v0, p3, Landroidx/media3/exoplayer/StreamVolumeManager$StreamVolumeState;->muted:Z

    if-ne v0, p1, :cond_0

    return-object p3

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/StreamVolumeManager;->audioManager:Landroid/media/AudioManager;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Landroidx/media3/exoplayer/StreamVolumeManager;->audioManager:Landroid/media/AudioManager;

    iget v1, p3, Landroidx/media3/exoplayer/StreamVolumeManager$StreamVolumeState;->streamType:I

    if-eqz p1, :cond_1

    const/16 p1, -0x64

    goto :goto_0

    :cond_1
    const/16 p1, 0x64

    :goto_0
    invoke-virtual {v0, v1, p1, p2}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    goto :goto_1

    :cond_2
    iget-object p2, p0, Landroidx/media3/exoplayer/StreamVolumeManager;->audioManager:Landroid/media/AudioManager;

    iget v0, p3, Landroidx/media3/exoplayer/StreamVolumeManager$StreamVolumeState;->streamType:I

    invoke-virtual {p2, v0, p1}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    :goto_1
    iget p1, p3, Landroidx/media3/exoplayer/StreamVolumeManager$StreamVolumeState;->streamType:I

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/StreamVolumeManager;->generateState(I)Landroidx/media3/exoplayer/StreamVolumeManager$StreamVolumeState;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$setMuted$9(ZLandroidx/media3/exoplayer/StreamVolumeManager$StreamVolumeState;)Landroidx/media3/exoplayer/StreamVolumeManager$StreamVolumeState;
    .locals 7

    new-instance v6, Landroidx/media3/exoplayer/StreamVolumeManager$StreamVolumeState;

    iget v1, p2, Landroidx/media3/exoplayer/StreamVolumeManager$StreamVolumeState;->streamType:I

    iget-boolean v0, p2, Landroidx/media3/exoplayer/StreamVolumeManager$StreamVolumeState;->muted:Z

    if-ne v0, p1, :cond_0

    iget p0, p2, Landroidx/media3/exoplayer/StreamVolumeManager$StreamVolumeState;->volume:I

    :goto_0
    move v2, p0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    iget p0, p0, Landroidx/media3/exoplayer/StreamVolumeManager;->volumeBeforeMute:I

    goto :goto_0

    :goto_1
    iget v4, p2, Landroidx/media3/exoplayer/StreamVolumeManager$StreamVolumeState;->minVolume:I

    iget v5, p2, Landroidx/media3/exoplayer/StreamVolumeManager$StreamVolumeState;->maxVolume:I

    move-object v0, v6

    move v3, p1

    invoke-direct/range {v0 .. v5}, Landroidx/media3/exoplayer/StreamVolumeManager$StreamVolumeState;-><init>(IIZII)V

    return-object v6
.end method

.method private static synthetic lambda$setStreamType$1(ILandroidx/media3/exoplayer/StreamVolumeManager$StreamVolumeState;)Landroidx/media3/exoplayer/StreamVolumeManager$StreamVolumeState;
    .locals 7

    new-instance v6, Landroidx/media3/exoplayer/StreamVolumeManager$StreamVolumeState;

    iget v2, p1, Landroidx/media3/exoplayer/StreamVolumeManager$StreamVolumeState;->volume:I

    iget-boolean v3, p1, Landroidx/media3/exoplayer/StreamVolumeManager$StreamVolumeState;->muted:Z

    iget v4, p1, Landroidx/media3/exoplayer/StreamVolumeManager$StreamVolumeState;->minVolume:I

    iget v5, p1, Landroidx/media3/exoplayer/StreamVolumeManager$StreamVolumeState;->maxVolume:I

    move-object v0, v6

    move v1, p0

    invoke-direct/range {v0 .. v5}, Landroidx/media3/exoplayer/StreamVolumeManager$StreamVolumeState;-><init>(IIZII)V

    return-object v6
.end method

.method private synthetic lambda$setStreamType$2(ILandroidx/media3/exoplayer/StreamVolumeManager$StreamVolumeState;)Landroidx/media3/exoplayer/StreamVolumeManager$StreamVolumeState;
    .locals 1

    iget v0, p2, Landroidx/media3/exoplayer/StreamVolumeManager$StreamVolumeState;->streamType:I

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/StreamVolumeManager;->generateState(I)Landroidx/media3/exoplayer/StreamVolumeManager$StreamVolumeState;

    move-result-object p2

    :goto_0
    return-object p2
.end method

.method private static synthetic lambda$setVolume$3(ILandroidx/media3/exoplayer/StreamVolumeManager$StreamVolumeState;)Landroidx/media3/exoplayer/StreamVolumeManager$StreamVolumeState;
    .locals 7

    new-instance v6, Landroidx/media3/exoplayer/StreamVolumeManager$StreamVolumeState;

    iget v1, p1, Landroidx/media3/exoplayer/StreamVolumeManager$StreamVolumeState;->streamType:I

    iget v4, p1, Landroidx/media3/exoplayer/StreamVolumeManager$StreamVolumeState;->minVolume:I

    if-lt p0, v4, :cond_0

    iget v0, p1, Landroidx/media3/exoplayer/StreamVolumeManager$StreamVolumeState;->maxVolume:I

    if-gt p0, v0, :cond_0

    move v2, p0

    goto :goto_0

    :cond_0
    iget v0, p1, Landroidx/media3/exoplayer/StreamVolumeManager$StreamVolumeState;->volume:I

    move v2, v0

    :goto_0
    if-nez p0, :cond_1

    const/4 p0, 0x1

    :goto_1
    move v3, p0

    goto :goto_2

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :goto_2
    iget v5, p1, Landroidx/media3/exoplayer/StreamVolumeManager$StreamVolumeState;->maxVolume:I

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroidx/media3/exoplayer/StreamVolumeManager$StreamVolumeState;-><init>(IIZII)V

    return-object v6
.end method

.method private synthetic lambda$setVolume$4(IILandroidx/media3/exoplayer/StreamVolumeManager$StreamVolumeState;)Landroidx/media3/exoplayer/StreamVolumeManager$StreamVolumeState;
    .locals 2

    iget v0, p3, Landroidx/media3/exoplayer/StreamVolumeManager$StreamVolumeState;->volume:I

    if-eq p1, v0, :cond_1

    iget v0, p3, Landroidx/media3/exoplayer/StreamVolumeManager$StreamVolumeState;->minVolume:I

    if-lt p1, v0, :cond_1

    iget v0, p3, Landroidx/media3/exoplayer/StreamVolumeManager$StreamVolumeState;->maxVolume:I

    if-le p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/StreamVolumeManager;->audioManager:Landroid/media/AudioManager;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iget v1, p3, Landroidx/media3/exoplayer/StreamVolumeManager$StreamVolumeState;->streamType:I

    invoke-virtual {v0, v1, p1, p2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    iget p1, p3, Landroidx/media3/exoplayer/StreamVolumeManager$StreamVolumeState;->streamType:I

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/StreamVolumeManager;->generateState(I)Landroidx/media3/exoplayer/StreamVolumeManager$StreamVolumeState;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    return-object p3
.end method

.method public static synthetic m(Landroidx/media3/exoplayer/StreamVolumeManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/StreamVolumeManager;->lambda$new$0(I)V

    return-void
.end method

.method public static synthetic n(Landroidx/media3/exoplayer/StreamVolumeManager$StreamVolumeState;)Landroidx/media3/exoplayer/StreamVolumeManager$StreamVolumeState;
    .locals 0

    invoke-static {p0}, Landroidx/media3/exoplayer/StreamVolumeManager;->lambda$increaseVolume$5(Landroidx/media3/exoplayer/StreamVolumeManager$StreamVolumeState;)Landroidx/media3/exoplayer/StreamVolumeManager$StreamVolumeState;

    move-result-object p0

    return-object p0
.end method

.method private onStreamVolumeStateChanged(Landroidx/media3/exoplayer/StreamVolumeManager$StreamVolumeState;Landroidx/media3/exoplayer/StreamVolumeManager$StreamVolumeState;)V
    .locals 3

    iget-boolean v0, p1, Landroidx/media3/exoplayer/StreamVolumeManager$StreamVolumeState;->muted:Z

    if-nez v0, :cond_0

    iget-boolean v1, p2, Landroidx/media3/exoplayer/StreamVolumeManager$StreamVolumeState;->muted:Z

    if-eqz v1, :cond_0

    iget v1, p1, Landroidx/media3/exoplayer/StreamVolumeManager$StreamVolumeState;->volume:I

    iput v1, p0, Landroidx/media3/exoplayer/StreamVolumeManager;->volumeBeforeMute:I

    :cond_0
    iget v1, p1, Landroidx/media3/exoplayer/StreamVolumeManager$StreamVolumeState;->volume:I

    iget v2, p2, Landroidx/media3/exoplayer/StreamVolumeManager$StreamVolumeState;->volume:I

    if-ne v1, v2, :cond_1

    iget-boolean v1, p2, Landroidx/media3/exoplayer/StreamVolumeManager$StreamVolumeState;->muted:Z

    if-eq v0, v1, :cond_2

    :cond_1
    iget-object v0, p0, Landroidx/media3/exoplayer/StreamVolumeManager;->listener:Landroidx/media3/exoplayer/StreamVolumeManager$Listener;

    iget-boolean v1, p2, Landroidx/media3/exoplayer/StreamVolumeManager$StreamVolumeState;->muted:Z

    invoke-interface {v0, v2, v1}, Landroidx/media3/exoplayer/StreamVolumeManager$Listener;->onStreamVolumeChanged(IZ)V

    :cond_2
    iget v0, p1, Landroidx/media3/exoplayer/StreamVolumeManager$StreamVolumeState;->streamType:I

    iget v1, p2, Landroidx/media3/exoplayer/StreamVolumeManager$StreamVolumeState;->streamType:I

    if-ne v0, v1, :cond_3

    iget v0, p1, Landroidx/media3/exoplayer/StreamVolumeManager$StreamVolumeState;->minVolume:I

    iget v2, p2, Landroidx/media3/exoplayer/StreamVolumeManager$StreamVolumeState;->minVolume:I

    if-ne v0, v2, :cond_3

    iget p1, p1, Landroidx/media3/exoplayer/StreamVolumeManager$StreamVolumeState;->maxVolume:I

    iget p2, p2, Landroidx/media3/exoplayer/StreamVolumeManager$StreamVolumeState;->maxVolume:I

    if-eq p1, p2, :cond_4

    :cond_3
    iget-object p0, p0, Landroidx/media3/exoplayer/StreamVolumeManager;->listener:Landroidx/media3/exoplayer/StreamVolumeManager$Listener;

    invoke-interface {p0, v1}, Landroidx/media3/exoplayer/StreamVolumeManager$Listener;->onStreamTypeChanged(I)V

    :cond_4
    return-void
.end method


# virtual methods
.method public decreaseVolume(I)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    iget-object v0, p0, Landroidx/media3/exoplayer/StreamVolumeManager;->stateHandler:Landroidx/media3/common/util/BackgroundThreadStateHandler;

    new-instance v1, Landroidx/media3/exoplayer/a2;

    invoke-direct {v1}, Landroidx/media3/exoplayer/a2;-><init>()V

    new-instance v2, Landroidx/media3/exoplayer/b2;

    invoke-direct {v2, p0, p1}, Landroidx/media3/exoplayer/b2;-><init>(Landroidx/media3/exoplayer/StreamVolumeManager;I)V

    invoke-virtual {v0, v1, v2}, Landroidx/media3/common/util/BackgroundThreadStateHandler;->updateStateAsync(Lo74;Lo74;)V

    return-void
.end method

.method public getMaxVolume()I
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/StreamVolumeManager;->stateHandler:Landroidx/media3/common/util/BackgroundThreadStateHandler;

    invoke-virtual {p0}, Landroidx/media3/common/util/BackgroundThreadStateHandler;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/exoplayer/StreamVolumeManager$StreamVolumeState;

    iget p0, p0, Landroidx/media3/exoplayer/StreamVolumeManager$StreamVolumeState;->maxVolume:I

    return p0
.end method

.method public getMinVolume()I
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/StreamVolumeManager;->stateHandler:Landroidx/media3/common/util/BackgroundThreadStateHandler;

    invoke-virtual {p0}, Landroidx/media3/common/util/BackgroundThreadStateHandler;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/exoplayer/StreamVolumeManager$StreamVolumeState;

    iget p0, p0, Landroidx/media3/exoplayer/StreamVolumeManager$StreamVolumeState;->minVolume:I

    return p0
.end method

.method public getVolume()I
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/StreamVolumeManager;->stateHandler:Landroidx/media3/common/util/BackgroundThreadStateHandler;

    invoke-virtual {p0}, Landroidx/media3/common/util/BackgroundThreadStateHandler;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/exoplayer/StreamVolumeManager$StreamVolumeState;

    iget p0, p0, Landroidx/media3/exoplayer/StreamVolumeManager$StreamVolumeState;->volume:I

    return p0
.end method

.method public increaseVolume(I)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    iget-object v0, p0, Landroidx/media3/exoplayer/StreamVolumeManager;->stateHandler:Landroidx/media3/common/util/BackgroundThreadStateHandler;

    new-instance v1, Landroidx/media3/exoplayer/x1;

    invoke-direct {v1}, Landroidx/media3/exoplayer/x1;-><init>()V

    new-instance v2, Landroidx/media3/exoplayer/y1;

    invoke-direct {v2, p0, p1}, Landroidx/media3/exoplayer/y1;-><init>(Landroidx/media3/exoplayer/StreamVolumeManager;I)V

    invoke-virtual {v0, v1, v2}, Landroidx/media3/common/util/BackgroundThreadStateHandler;->updateStateAsync(Lo74;Lo74;)V

    return-void
.end method

.method public isMuted()Z
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/StreamVolumeManager;->stateHandler:Landroidx/media3/common/util/BackgroundThreadStateHandler;

    invoke-virtual {p0}, Landroidx/media3/common/util/BackgroundThreadStateHandler;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/exoplayer/StreamVolumeManager$StreamVolumeState;

    iget-boolean p0, p0, Landroidx/media3/exoplayer/StreamVolumeManager$StreamVolumeState;->muted:Z

    return p0
.end method

.method public release()V
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/StreamVolumeManager;->stateHandler:Landroidx/media3/common/util/BackgroundThreadStateHandler;

    new-instance v1, Landroidx/media3/exoplayer/v1;

    invoke-direct {v1}, Landroidx/media3/exoplayer/v1;-><init>()V

    new-instance v2, Landroidx/media3/exoplayer/w1;

    invoke-direct {v2, p0}, Landroidx/media3/exoplayer/w1;-><init>(Landroidx/media3/exoplayer/StreamVolumeManager;)V

    invoke-virtual {v0, v1, v2}, Landroidx/media3/common/util/BackgroundThreadStateHandler;->updateStateAsync(Lo74;Lo74;)V

    return-void
.end method

.method public setMuted(ZI)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    iget-object v0, p0, Landroidx/media3/exoplayer/StreamVolumeManager;->stateHandler:Landroidx/media3/common/util/BackgroundThreadStateHandler;

    new-instance v1, Landroidx/media3/exoplayer/g2;

    invoke-direct {v1, p0, p1}, Landroidx/media3/exoplayer/g2;-><init>(Landroidx/media3/exoplayer/StreamVolumeManager;Z)V

    new-instance v2, Landroidx/media3/exoplayer/h2;

    invoke-direct {v2, p0, p1, p2}, Landroidx/media3/exoplayer/h2;-><init>(Landroidx/media3/exoplayer/StreamVolumeManager;ZI)V

    invoke-virtual {v0, v1, v2}, Landroidx/media3/common/util/BackgroundThreadStateHandler;->updateStateAsync(Lo74;Lo74;)V

    return-void
.end method

.method public setStreamType(I)V
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/StreamVolumeManager;->stateHandler:Landroidx/media3/common/util/BackgroundThreadStateHandler;

    new-instance v1, Landroidx/media3/exoplayer/e2;

    invoke-direct {v1, p1}, Landroidx/media3/exoplayer/e2;-><init>(I)V

    new-instance v2, Landroidx/media3/exoplayer/f2;

    invoke-direct {v2, p0, p1}, Landroidx/media3/exoplayer/f2;-><init>(Landroidx/media3/exoplayer/StreamVolumeManager;I)V

    invoke-virtual {v0, v1, v2}, Landroidx/media3/common/util/BackgroundThreadStateHandler;->updateStateAsync(Lo74;Lo74;)V

    return-void
.end method

.method public setVolume(II)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    iget-object v0, p0, Landroidx/media3/exoplayer/StreamVolumeManager;->stateHandler:Landroidx/media3/common/util/BackgroundThreadStateHandler;

    new-instance v1, Landroidx/media3/exoplayer/c2;

    invoke-direct {v1, p1}, Landroidx/media3/exoplayer/c2;-><init>(I)V

    new-instance v2, Landroidx/media3/exoplayer/d2;

    invoke-direct {v2, p0, p1, p2}, Landroidx/media3/exoplayer/d2;-><init>(Landroidx/media3/exoplayer/StreamVolumeManager;II)V

    invoke-virtual {v0, v1, v2}, Landroidx/media3/common/util/BackgroundThreadStateHandler;->updateStateAsync(Lo74;Lo74;)V

    return-void
.end method
