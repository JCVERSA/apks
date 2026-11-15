.class public Lcom/transsion/playercommon/utils/MediaVolumeManager$a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/playercommon/utils/MediaVolumeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/playercommon/utils/MediaVolumeManager;


# direct methods
.method public constructor <init>(Lcom/transsion/playercommon/utils/MediaVolumeManager;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/utils/MediaVolumeManager$a;->a:Lcom/transsion/playercommon/utils/MediaVolumeManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string p1, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const-string p1, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    const/4 v0, -0x1

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_2

    return-void

    :cond_2
    const-string p1, "android.media.EXTRA_VOLUME_STREAM_VALUE"

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string v1, "android.media.EXTRA_PREV_VOLUME_STREAM_VALUE"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    iget-object v0, p0, Lcom/transsion/playercommon/utils/MediaVolumeManager$a;->a:Lcom/transsion/playercommon/utils/MediaVolumeManager;

    invoke-static {v0}, Lcom/transsion/playercommon/utils/MediaVolumeManager;->g(Lcom/transsion/playercommon/utils/MediaVolumeManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ltz p1, :cond_4

    if-eq p1, p2, :cond_4

    :try_start_1
    iget-object p2, p0, Lcom/transsion/playercommon/utils/MediaVolumeManager$a;->a:Lcom/transsion/playercommon/utils/MediaVolumeManager;

    invoke-static {p2}, Lcom/transsion/playercommon/utils/MediaVolumeManager;->e(Lcom/transsion/playercommon/utils/MediaVolumeManager;)I

    move-result p2

    if-ne p1, p2, :cond_3

    goto :goto_0

    :cond_3
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string p2, "MediaVolumeManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "volumeReceiver onReceive, volume="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/transsion/playercommon/utils/MediaVolumeManager$a;->a:Lcom/transsion/playercommon/utils/MediaVolumeManager;

    invoke-static {p2, p1}, Lcom/transsion/playercommon/utils/MediaVolumeManager;->k(Lcom/transsion/playercommon/utils/MediaVolumeManager;I)V

    iget-object p1, p0, Lcom/transsion/playercommon/utils/MediaVolumeManager$a;->a:Lcom/transsion/playercommon/utils/MediaVolumeManager;

    invoke-static {p1}, Lcom/transsion/playercommon/utils/MediaVolumeManager;->h(Lcom/transsion/playercommon/utils/MediaVolumeManager;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/playercommon/utils/MediaVolumeManager$a;->a:Lcom/transsion/playercommon/utils/MediaVolumeManager;

    invoke-static {p2}, Lcom/transsion/playercommon/utils/MediaVolumeManager;->c(Lcom/transsion/playercommon/utils/MediaVolumeManager;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/transsion/playercommon/utils/MediaVolumeManager$a;->a:Lcom/transsion/playercommon/utils/MediaVolumeManager;

    invoke-static {p1}, Lcom/transsion/playercommon/utils/MediaVolumeManager;->h(Lcom/transsion/playercommon/utils/MediaVolumeManager;)Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/playercommon/utils/MediaVolumeManager$a;->a:Lcom/transsion/playercommon/utils/MediaVolumeManager;

    invoke-static {p0}, Lcom/transsion/playercommon/utils/MediaVolumeManager;->c(Lcom/transsion/playercommon/utils/MediaVolumeManager;)Ljava/lang/Runnable;

    move-result-object p0

    const-wide/16 v0, 0x32

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_4
    :goto_0
    :try_start_3
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :goto_2
    const-string p1, "MediaVolumeManager"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "volumeReceiver onReceive error: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_3
    return-void
.end method
