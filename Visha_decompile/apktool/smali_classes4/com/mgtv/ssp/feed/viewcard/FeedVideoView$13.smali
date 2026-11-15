.class Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->l()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;


# direct methods
.method public constructor <init>(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;Z)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$13;->b:Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;

    iput-boolean p2, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$13;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-boolean v0, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$13;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$13;->b:Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;

    invoke-static {v0}, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->ag(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;)Lcom/mgtv/ssp/play/PlayerCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgtv/ssp/play/PlayerCore;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$13;->b:Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;

    invoke-static {p0}, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->ah(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;)Lcom/mgtv/ssp/play/PlayerCore;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mgtv/ssp/play/PlayerCore;->play()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$13;->b:Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;

    invoke-static {p0}, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->ai(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;)Lcom/mgtv/ssp/play/PlayerCore;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mgtv/ssp/play/PlayerCore;->pause()V

    :cond_1
    :goto_0
    return-void
.end method
