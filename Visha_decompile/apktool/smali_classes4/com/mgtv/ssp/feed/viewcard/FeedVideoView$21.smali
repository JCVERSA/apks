.class Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$21;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgtv/ssp/adapter/BaseVideoAdapter$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->e()V
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

    iput-object p1, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$21;->a:Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$21;->a:Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;

    invoke-virtual {p0}, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->onBackPress()Z

    return-void
.end method

.method public a(ILandroid/view/View;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$21;->a:Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;

    invoke-static {v0}, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->C(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$21$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$21$1;-><init>(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$21;Landroid/view/View;I)V

    const/16 p0, 0xc8

    invoke-static {v0, p0}, Lcom/hunantv/imgo/util/ThreadManager;->post(Ljava/lang/Runnable;I)V

    :cond_0
    return-void
.end method

.method public a()Z
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$21;->a:Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;

    invoke-static {p0}, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->B(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;)Z

    move-result p0

    return p0
.end method

.method public b(I)V
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$21;->a:Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;

    invoke-static {p0}, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->A(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;)V

    return-void
.end method
