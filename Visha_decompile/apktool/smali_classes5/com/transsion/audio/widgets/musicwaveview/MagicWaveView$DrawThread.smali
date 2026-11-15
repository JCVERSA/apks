.class Lcom/transsion/audio/widgets/musicwaveview/MagicWaveView$DrawThread;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/audio/widgets/musicwaveview/MagicWaveView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DrawThread"
.end annotation


# instance fields
.field public final drawLock:Ljava/lang/Object;

.field public volatile pauseDraw:Z

.field public volatile stopDraw:Z

.field final synthetic this$0:Lcom/transsion/audio/widgets/musicwaveview/MagicWaveView;


# direct methods
.method public constructor <init>(Lcom/transsion/audio/widgets/musicwaveview/MagicWaveView;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audio/widgets/musicwaveview/MagicWaveView$DrawThread;->this$0:Lcom/transsion/audio/widgets/musicwaveview/MagicWaveView;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/audio/widgets/musicwaveview/MagicWaveView$DrawThread;->drawLock:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/transsion/audio/widgets/musicwaveview/MagicWaveView$DrawThread;->pauseDraw:Z

    iput-boolean p1, p0, Lcom/transsion/audio/widgets/musicwaveview/MagicWaveView$DrawThread;->stopDraw:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/transsion/audio/widgets/musicwaveview/MagicWaveView$DrawThread;->stopDraw:Z

    if-nez v0, :cond_4

    invoke-virtual {p0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-boolean v2, p0, Lcom/transsion/audio/widgets/musicwaveview/MagicWaveView$DrawThread;->pauseDraw:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/transsion/audio/widgets/musicwaveview/MagicWaveView$DrawThread;->drawLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    const-string v3, "visha_MagicWaveView"

    const-string v4, "start wait....."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/transsion/audio/widgets/musicwaveview/MagicWaveView$DrawThread;->drawLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception v3

    const-string v4, "visha_MagicWaveView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "InterruptedException "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    goto :goto_2

    :goto_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_1
    :goto_2
    invoke-static {}, Lcom/transsion/audio/widgets/musicwaveview/MagicWaveView;->d()Lcom/transsion/audio/widgets/musicwaveview/BaseWave;

    move-result-object v2

    invoke-interface {v2}, Lcom/transsion/audio/widgets/musicwaveview/Wave;->getDrawData()[F

    move-result-object v2

    if-nez v2, :cond_2

    const-string v2, "visha_MagicWaveView"

    const-string v3, "DrawThread run data null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/transsion/audio/widgets/musicwaveview/MagicWaveView$DrawThread;->this$0:Lcom/transsion/audio/widgets/musicwaveview/MagicWaveView;

    invoke-static {v2, v0, v1}, Lcom/transsion/audio/widgets/musicwaveview/MagicWaveView;->a(Lcom/transsion/audio/widgets/musicwaveview/MagicWaveView;J)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_3

    :cond_2
    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transsion/audio/player/MusicPlayManager;->s0()Z

    move-result v3

    if-nez v3, :cond_3

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([FF)V

    :cond_3
    iget-object v3, p0, Lcom/transsion/audio/widgets/musicwaveview/MagicWaveView$DrawThread;->drawLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_2
    iget-object v4, p0, Lcom/transsion/audio/widgets/musicwaveview/MagicWaveView$DrawThread;->this$0:Lcom/transsion/audio/widgets/musicwaveview/MagicWaveView;

    invoke-static {v4, v2}, Lcom/transsion/audio/widgets/musicwaveview/MagicWaveView;->b(Lcom/transsion/audio/widgets/musicwaveview/MagicWaveView;[F)V

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object v2, p0, Lcom/transsion/audio/widgets/musicwaveview/MagicWaveView$DrawThread;->this$0:Lcom/transsion/audio/widgets/musicwaveview/MagicWaveView;

    invoke-static {v2, v0, v1}, Lcom/transsion/audio/widgets/musicwaveview/MagicWaveView;->a(Lcom/transsion/audio/widgets/musicwaveview/MagicWaveView;J)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_3

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :cond_4
    :goto_3
    return-void
.end method
