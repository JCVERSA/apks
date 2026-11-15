.class Lcom/transsion/tranplayer/TranMediaPlayer$FadeRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/tranplayer/TranMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FadeRunnable"
.end annotation


# instance fields
.field private final currentVolume:I

.field private final lastVolume:I

.field private final myGeneration:I

.field private final seekTime:J

.field final synthetic this$0:Lcom/transsion/tranplayer/TranMediaPlayer;


# direct methods
.method public constructor <init>(Lcom/transsion/tranplayer/TranMediaPlayer;III)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/tranplayer/TranMediaPlayer$FadeRunnable;->this$0:Lcom/transsion/tranplayer/TranMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p2, p0, Lcom/transsion/tranplayer/TranMediaPlayer$FadeRunnable;->currentVolume:I

    .line 3
    iput p3, p0, Lcom/transsion/tranplayer/TranMediaPlayer$FadeRunnable;->lastVolume:I

    const-wide/16 p1, -0x1

    .line 4
    iput-wide p1, p0, Lcom/transsion/tranplayer/TranMediaPlayer$FadeRunnable;->seekTime:J

    .line 5
    iput p4, p0, Lcom/transsion/tranplayer/TranMediaPlayer$FadeRunnable;->myGeneration:I

    return-void
.end method

.method public constructor <init>(Lcom/transsion/tranplayer/TranMediaPlayer;IIJI)V
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/transsion/tranplayer/TranMediaPlayer$FadeRunnable;->this$0:Lcom/transsion/tranplayer/TranMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput p2, p0, Lcom/transsion/tranplayer/TranMediaPlayer$FadeRunnable;->currentVolume:I

    .line 8
    iput p3, p0, Lcom/transsion/tranplayer/TranMediaPlayer$FadeRunnable;->lastVolume:I

    .line 9
    iput-wide p4, p0, Lcom/transsion/tranplayer/TranMediaPlayer$FadeRunnable;->seekTime:J

    .line 10
    iput p6, p0, Lcom/transsion/tranplayer/TranMediaPlayer$FadeRunnable;->myGeneration:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget v0, p0, Lcom/transsion/tranplayer/TranMediaPlayer$FadeRunnable;->currentVolume:I

    iget v1, p0, Lcom/transsion/tranplayer/TranMediaPlayer$FadeRunnable;->lastVolume:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const/16 v1, 0xa

    goto :goto_1

    :cond_1
    const/4 v1, 0x3

    :goto_1
    invoke-static {}, Lcom/transsion/tranplayer/TranMediaPlayer;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "setVolumeFadeInOut -- run -- Begin ."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_2

    const-wide/16 v2, 0x12c

    goto :goto_2

    :cond_2
    const-wide/16 v2, 0x64

    :goto_2
    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_3
    iget v2, p0, Lcom/transsion/tranplayer/TranMediaPlayer$FadeRunnable;->lastVolume:I

    :cond_3
    iget-object v3, p0, Lcom/transsion/tranplayer/TranMediaPlayer$FadeRunnable;->this$0:Lcom/transsion/tranplayer/TranMediaPlayer;

    invoke-static {v3}, Lcom/transsion/tranplayer/TranMediaPlayer;->access$100(Lcom/transsion/tranplayer/TranMediaPlayer;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-nez v3, :cond_9

    iget v3, p0, Lcom/transsion/tranplayer/TranMediaPlayer$FadeRunnable;->myGeneration:I

    iget-object v4, p0, Lcom/transsion/tranplayer/TranMediaPlayer$FadeRunnable;->this$0:Lcom/transsion/tranplayer/TranMediaPlayer;

    invoke-static {v4}, Lcom/transsion/tranplayer/TranMediaPlayer;->access$200(Lcom/transsion/tranplayer/TranMediaPlayer;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    if-eq v3, v4, :cond_4

    goto/16 :goto_9

    :cond_4
    invoke-static {}, Lcom/transsion/tranplayer/TranMediaPlayer;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setVolume .  volume_tmp:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/transsion/tranplayer/TranMediaPlayer$FadeRunnable;->this$0:Lcom/transsion/tranplayer/TranMediaPlayer;

    invoke-static {v3}, Lcom/transsion/tranplayer/TranMediaPlayer;->access$300(Lcom/transsion/tranplayer/TranMediaPlayer;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    :try_start_1
    iget-object v4, p0, Lcom/transsion/tranplayer/TranMediaPlayer$FadeRunnable;->this$0:Lcom/transsion/tranplayer/TranMediaPlayer;

    invoke-static {v4}, Lcom/transsion/tranplayer/TranMediaPlayer;->access$400(Lcom/transsion/tranplayer/TranMediaPlayer;)Lcom/transsion/tranplayer/MediaPlayer;

    move-result-object v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/transsion/tranplayer/TranMediaPlayer$FadeRunnable;->this$0:Lcom/transsion/tranplayer/TranMediaPlayer;

    invoke-static {v4}, Lcom/transsion/tranplayer/TranMediaPlayer;->access$100(Lcom/transsion/tranplayer/TranMediaPlayer;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-nez v4, :cond_8

    iget v4, p0, Lcom/transsion/tranplayer/TranMediaPlayer$FadeRunnable;->myGeneration:I

    iget-object v5, p0, Lcom/transsion/tranplayer/TranMediaPlayer$FadeRunnable;->this$0:Lcom/transsion/tranplayer/TranMediaPlayer;

    invoke-static {v5}, Lcom/transsion/tranplayer/TranMediaPlayer;->access$200(Lcom/transsion/tranplayer/TranMediaPlayer;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v4, v5, :cond_8

    :try_start_2
    iget-object v4, p0, Lcom/transsion/tranplayer/TranMediaPlayer$FadeRunnable;->this$0:Lcom/transsion/tranplayer/TranMediaPlayer;

    invoke-static {v4}, Lcom/transsion/tranplayer/TranMediaPlayer;->access$400(Lcom/transsion/tranplayer/TranMediaPlayer;)Lcom/transsion/tranplayer/MediaPlayer;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/transsion/tranplayer/MediaPlayer;->setVolume(I)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception p0

    goto :goto_8

    :catch_1
    move-exception v4

    :try_start_3
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_4
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v0, :cond_5

    add-int/lit8 v3, v1, 0x1e

    int-to-long v3, v3

    :try_start_4
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_6

    :catch_2
    move-exception v3

    goto :goto_5

    :cond_5
    int-to-long v3, v1

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_6

    :goto_5
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_6
    if-eqz v0, :cond_6

    add-int/lit8 v2, v2, 0xa

    goto :goto_7

    :cond_6
    add-int/lit8 v2, v2, -0xa

    :goto_7
    if-eqz v0, :cond_7

    iget v3, p0, Lcom/transsion/tranplayer/TranMediaPlayer$FadeRunnable;->currentVolume:I

    if-le v2, v3, :cond_7

    goto :goto_a

    :cond_7
    if-nez v0, :cond_3

    iget v3, p0, Lcom/transsion/tranplayer/TranMediaPlayer$FadeRunnable;->currentVolume:I

    if-ge v2, v3, :cond_3

    goto :goto_a

    :cond_8
    :try_start_5
    monitor-exit v3

    goto :goto_a

    :goto_8
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p0

    :cond_9
    :goto_9
    invoke-static {}, Lcom/transsion/tranplayer/TranMediaPlayer;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fade task cancelled or releasing, break fade loop. gen: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/transsion/tranplayer/TranMediaPlayer$FadeRunnable;->myGeneration:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_a
    if-nez v0, :cond_a

    iget-wide v0, p0, Lcom/transsion/tranplayer/TranMediaPlayer$FadeRunnable;->seekTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_a

    const-wide/16 v0, 0xa

    :try_start_6
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_b

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_b
    iget-object v0, p0, Lcom/transsion/tranplayer/TranMediaPlayer$FadeRunnable;->this$0:Lcom/transsion/tranplayer/TranMediaPlayer;

    invoke-static {v0}, Lcom/transsion/tranplayer/TranMediaPlayer;->access$100(Lcom/transsion/tranplayer/TranMediaPlayer;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_a

    iget v0, p0, Lcom/transsion/tranplayer/TranMediaPlayer$FadeRunnable;->myGeneration:I

    iget-object v1, p0, Lcom/transsion/tranplayer/TranMediaPlayer$FadeRunnable;->this$0:Lcom/transsion/tranplayer/TranMediaPlayer;

    invoke-static {v1}, Lcom/transsion/tranplayer/TranMediaPlayer;->access$200(Lcom/transsion/tranplayer/TranMediaPlayer;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-ne v0, v1, :cond_a

    invoke-static {}, Lcom/transsion/tranplayer/TranMediaPlayer;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "seektime "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/transsion/tranplayer/TranMediaPlayer$FadeRunnable;->seekTime:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " lastseektime "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/transsion/tranplayer/TranMediaPlayer$FadeRunnable;->this$0:Lcom/transsion/tranplayer/TranMediaPlayer;

    invoke-static {v4}, Lcom/transsion/tranplayer/TranMediaPlayer;->access$500(Lcom/transsion/tranplayer/TranMediaPlayer;)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/transsion/tranplayer/TranMediaPlayer$FadeRunnable;->this$0:Lcom/transsion/tranplayer/TranMediaPlayer;

    invoke-static {v0}, Lcom/transsion/tranplayer/TranMediaPlayer;->access$500(Lcom/transsion/tranplayer/TranMediaPlayer;)J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_a

    iget-object p0, p0, Lcom/transsion/tranplayer/TranMediaPlayer$FadeRunnable;->this$0:Lcom/transsion/tranplayer/TranMediaPlayer;

    invoke-static {p0}, Lcom/transsion/tranplayer/TranMediaPlayer;->access$500(Lcom/transsion/tranplayer/TranMediaPlayer;)J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/transsion/tranplayer/TranMediaPlayer;->access$600(Lcom/transsion/tranplayer/TranMediaPlayer;J)V

    :cond_a
    return-void
.end method
