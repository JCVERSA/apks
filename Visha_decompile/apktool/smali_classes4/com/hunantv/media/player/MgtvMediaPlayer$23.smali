.class Lcom/hunantv/media/player/MgtvMediaPlayer$23;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hunantv/media/player/MgtvPlayerListener$OnFrameListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hunantv/media/player/MgtvMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;


# direct methods
.method public constructor <init>(Lcom/hunantv/media/player/MgtvMediaPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$23;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVFrameClockCome(Lcom/hunantv/media/player/MgtvPlayerListener$FrameClock;)V
    .locals 3

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$23;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget-object v0, v0, Lcom/hunantv/media/player/MgtvMediaPlayer;->ptsLocker:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$23;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget-object v1, v1, Lcom/hunantv/media/player/MgtvMediaPlayer;->ptsWeakHandler:Lcom/hunantv/media/player/MgtvMediaPlayer$WeakHandler;

    if-eqz v1, :cond_0

    const/16 v2, 0x100

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    iput v2, v1, Landroid/os/Message;->what:I

    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$23;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget-object v2, v2, Lcom/hunantv/media/player/MgtvMediaPlayer;->ptsWeakHandler:Lcom/hunantv/media/player/MgtvMediaPlayer$WeakHandler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$23;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$13700(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/player/MgtvPlayerListener$OnFrameListener;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$23;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$13700(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/player/MgtvPlayerListener$OnFrameListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/hunantv/media/player/MgtvPlayerListener$OnFrameListener;->onVFrameClockCome(Lcom/hunantv/media/player/MgtvPlayerListener$FrameClock;)V

    :cond_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
