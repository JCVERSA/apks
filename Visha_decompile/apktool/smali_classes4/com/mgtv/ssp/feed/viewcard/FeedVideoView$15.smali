.class Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->A()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;


# direct methods
.method public constructor <init>(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$15;->a:Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$15;->a:Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;

    invoke-static {v0}, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->ak(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$15;->a:Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;

    invoke-static {v0, v1}, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->e(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;Z)Z

    iget-object v0, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$15;->a:Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;

    invoke-static {v0}, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->al(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;)Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    instance-of v0, v0, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$15;->a:Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;

    invoke-static {v0}, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->an(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;)Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;

    iget-object p0, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$15;->a:Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;

    invoke-static {p0}, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->am(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;->i(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$15;->a:Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;

    invoke-static {v0}, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->ao(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$15;->a:Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;

    invoke-static {v0, v1}, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->f(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;Z)Z

    iget-object v0, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$15;->a:Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;

    invoke-static {v0}, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->ap(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;)Lcom/mgtv/ssp/play/PlayerCore;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$15;->a:Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;

    invoke-static {v0}, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->aq(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;)Lcom/mgtv/ssp/play/PlayerCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgtv/ssp/play/PlayerCore;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "eeee scrollToPosition pos <= firstItem  mWrapper.play() 22 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$15;->a:Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;

    invoke-static {v2}, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->ar(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$15;->a:Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;

    invoke-static {p0}, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->as(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;)Lcom/mgtv/ssp/play/PlayerCore;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mgtv/ssp/play/PlayerCore;->play()V

    :cond_1
    :goto_0
    return-void
.end method
