.class Lcom/hunantv/media/widget/MgtvVideoView$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hunantv/media/player/MgtvPlayerListener$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hunantv/media/widget/MgtvVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hunantv/media/widget/MgtvVideoView;


# direct methods
.method public constructor <init>(Lcom/hunantv/media/widget/MgtvVideoView;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/widget/MgtvVideoView$8;->this$0:Lcom/hunantv/media/widget/MgtvVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(II)Z
    .locals 4

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvVideoView$8;->this$0:Lcom/hunantv/media/widget/MgtvVideoView;

    invoke-virtual {v0}, Lcom/hunantv/media/widget/MgtvVideoView;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError what:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",extra:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x6ad3ac

    const v1, 0x6acfc6

    if-eq p1, v0, :cond_0

    const v0, 0x6acfc1

    if-eq p1, v0, :cond_0

    const v0, 0x6acfc2

    if-eq p1, v0, :cond_0

    const v0, 0x6acfc3

    if-eq p1, v0, :cond_0

    const v0, 0x6acfc4

    if-eq p1, v0, :cond_0

    const v0, 0x6acfc5

    if-eq p1, v0, :cond_0

    if-eq p1, v1, :cond_0

    const v0, 0x6acfc9

    if-eq p1, v0, :cond_0

    const v0, 0x6acfca

    if-eq p1, v0, :cond_0

    const v0, 0x6acfcb

    if-eq p1, v0, :cond_0

    const v0, 0x6acfcc

    if-eq p1, v0, :cond_0

    const v0, 0x6acfcd

    if-eq p1, v0, :cond_0

    const v0, 0x6ad78f

    if-eq p1, v0, :cond_0

    const v0, 0x6ad78e

    if-eq p1, v0, :cond_0

    const v0, 0x6ad02e

    if-ne p1, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvVideoView$8;->this$0:Lcom/hunantv/media/widget/MgtvVideoView;

    invoke-static {v0}, Lcom/hunantv/media/widget/MgtvVideoView;->access$3900(Lcom/hunantv/media/widget/MgtvVideoView;)Lcom/hunantv/media/report/a;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvVideoView$8;->this$0:Lcom/hunantv/media/widget/MgtvVideoView;

    invoke-static {v0}, Lcom/hunantv/media/widget/MgtvVideoView;->access$3900(Lcom/hunantv/media/widget/MgtvVideoView;)Lcom/hunantv/media/report/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/hunantv/media/report/a;->b(II)V

    :cond_1
    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvVideoView$8;->this$0:Lcom/hunantv/media/widget/MgtvVideoView;

    iget-object v2, v0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    if-ne p1, v1, :cond_2

    invoke-virtual {v0}, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->releaseNoStatus()V

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvVideoView$8;->this$0:Lcom/hunantv/media/widget/MgtvVideoView;

    invoke-static {v0, v3}, Lcom/hunantv/media/widget/MgtvVideoView;->access$2700(Lcom/hunantv/media/widget/MgtvVideoView;I)V

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvVideoView$8;->this$0:Lcom/hunantv/media/widget/MgtvVideoView;

    invoke-static {v0, v3}, Lcom/hunantv/media/widget/MgtvVideoView;->access$3202(Lcom/hunantv/media/widget/MgtvVideoView;I)I

    goto :goto_0

    :cond_2
    const/4 v1, -0x1

    if-eqz v2, :cond_3

    invoke-static {v0}, Lcom/hunantv/media/widget/MgtvVideoView;->access$500(Lcom/hunantv/media/widget/MgtvVideoView;)I

    move-result v0

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvVideoView$8;->this$0:Lcom/hunantv/media/widget/MgtvVideoView;

    iget-object v0, v0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->stop()V

    :cond_3
    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvVideoView$8;->this$0:Lcom/hunantv/media/widget/MgtvVideoView;

    invoke-static {v0, v1}, Lcom/hunantv/media/widget/MgtvVideoView;->access$2700(Lcom/hunantv/media/widget/MgtvVideoView;I)V

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvVideoView$8;->this$0:Lcom/hunantv/media/widget/MgtvVideoView;

    invoke-static {v0, v1}, Lcom/hunantv/media/widget/MgtvVideoView;->access$3202(Lcom/hunantv/media/widget/MgtvVideoView;I)I

    :goto_0
    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvVideoView$8;->this$0:Lcom/hunantv/media/widget/MgtvVideoView;

    invoke-virtual {v0}, Lcom/hunantv/media/widget/MgtvVideoView;->cleanUri()V

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvVideoView$8;->this$0:Lcom/hunantv/media/widget/MgtvVideoView;

    invoke-static {v0}, Lcom/hunantv/media/widget/MgtvVideoView;->access$4000(Lcom/hunantv/media/widget/MgtvVideoView;)Lcom/hunantv/media/widget/IVideoView$OnErrorListener;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvVideoView$8;->this$0:Lcom/hunantv/media/widget/MgtvVideoView;

    invoke-static {p0}, Lcom/hunantv/media/widget/MgtvVideoView;->access$4000(Lcom/hunantv/media/widget/MgtvVideoView;)Lcom/hunantv/media/widget/IVideoView$OnErrorListener;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/hunantv/media/widget/IVideoView$OnErrorListener;->onError(II)Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    return v3
.end method
