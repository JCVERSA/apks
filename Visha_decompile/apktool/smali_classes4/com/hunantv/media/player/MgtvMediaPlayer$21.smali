.class Lcom/hunantv/media/player/MgtvMediaPlayer$21;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hunantv/media/player/utils/ExTicker$OnExTickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hunantv/media/player/MgtvMediaPlayer;->initListener()V
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

    iput-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$21;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPlayOrPause(Z)V
    .locals 1

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$21;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$13300(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/player/IMgtvRenderView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$21;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$13300(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/player/IMgtvRenderView;

    move-result-object p0

    if-eqz p1, :cond_0

    invoke-interface {p0}, Lcom/hunantv/media/player/IMgtvRenderView;->startFps()V

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lcom/hunantv/media/player/IMgtvRenderView;->stopFps()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onTick(II)V
    .locals 1

    const/4 p1, 0x2

    if-le p2, p1, :cond_1

    iget-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$21;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$10000(Lcom/hunantv/media/player/MgtvMediaPlayer;)V

    iget-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$21;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->isRfpsLow()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$21;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$13208(Lcom/hunantv/media/player/MgtvMediaPlayer;)I

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$21;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p1, p2}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$13202(Lcom/hunantv/media/player/MgtvMediaPlayer;I)I

    :goto_0
    iget-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$21;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$13200(Lcom/hunantv/media/player/MgtvMediaPlayer;)I

    move-result p1

    const/4 v0, 0x5

    if-le p1, v0, :cond_1

    iget-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$21;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$13300(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/player/IMgtvRenderView;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$21;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$13400(Lcom/hunantv/media/player/MgtvMediaPlayer;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$21;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$300(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "rfps too low change to normal filter"

    invoke-static {p1, v0}, Lcom/hunantv/media/player/pragma/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$21;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$13402(Lcom/hunantv/media/player/MgtvMediaPlayer;Z)Z

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$21;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$13300(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/player/IMgtvRenderView;

    move-result-object p0

    invoke-interface {p0, p2}, Lcom/hunantv/media/player/IMgtvRenderView;->setRenderFilter(I)V

    :cond_1
    return-void
.end method
