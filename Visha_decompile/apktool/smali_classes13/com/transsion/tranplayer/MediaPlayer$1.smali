.class Lcom/transsion/tranplayer/MediaPlayer$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/tranplayer/MediaPlayer$SurfaceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/tranplayer/MediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/tranplayer/MediaPlayer;


# direct methods
.method public constructor <init>(Lcom/transsion/tranplayer/MediaPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/tranplayer/MediaPlayer$1;->this$0:Lcom/transsion/tranplayer/MediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceCreated()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/tranplayer/MediaPlayer$1;->this$0:Lcom/transsion/tranplayer/MediaPlayer;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/transsion/tranplayer/MediaPlayer$1;->this$0:Lcom/transsion/tranplayer/MediaPlayer;

    invoke-static {v1}, Lcom/transsion/tranplayer/MediaPlayer;->access$200(Lcom/transsion/tranplayer/MediaPlayer;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/transsion/tranplayer/MediaPlayer$1;->this$0:Lcom/transsion/tranplayer/MediaPlayer;

    invoke-static {v1}, Lcom/transsion/tranplayer/MediaPlayer;->access$300(Lcom/transsion/tranplayer/MediaPlayer;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v3

    move v3, v2

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    iget-object v1, p0, Lcom/transsion/tranplayer/MediaPlayer$1;->this$0:Lcom/transsion/tranplayer/MediaPlayer;

    invoke-static {v1}, Lcom/transsion/tranplayer/MediaPlayer;->access$400(Lcom/transsion/tranplayer/MediaPlayer;)I

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_2

    iget-object p0, p0, Lcom/transsion/tranplayer/MediaPlayer$1;->this$0:Lcom/transsion/tranplayer/MediaPlayer;

    invoke-virtual {p0}, Lcom/transsion/tranplayer/MediaPlayer;->play()V

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_3

    iget-object p0, p0, Lcom/transsion/tranplayer/MediaPlayer$1;->this$0:Lcom/transsion/tranplayer/MediaPlayer;

    invoke-virtual {p0, v2}, Lcom/transsion/tranplayer/MediaPlayer;->setVideoTrackEnabled(Z)V

    :cond_3
    :goto_1
    return-void

    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public onSurfaceDestroyed()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/tranplayer/MediaPlayer$1;->this$0:Lcom/transsion/tranplayer/MediaPlayer;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/transsion/tranplayer/MediaPlayer$1;->this$0:Lcom/transsion/tranplayer/MediaPlayer;

    invoke-static {v1}, Lcom/transsion/tranplayer/MediaPlayer;->access$400(Lcom/transsion/tranplayer/MediaPlayer;)I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/transsion/tranplayer/MediaPlayer$1;->this$0:Lcom/transsion/tranplayer/MediaPlayer;

    invoke-virtual {p0, v2}, Lcom/transsion/tranplayer/MediaPlayer;->setVideoTrackEnabled(Z)V

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
