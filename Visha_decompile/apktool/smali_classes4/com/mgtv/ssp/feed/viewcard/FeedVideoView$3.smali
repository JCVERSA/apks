.class Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgtv/ssp/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->f()V
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

    iput-object p1, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$3;->a:Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$3;->a:Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;

    invoke-static {v0}, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->U(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object p0, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$3;->a:Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;

    invoke-virtual {p0}, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->l()V

    .line 4
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->y()V

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$3;->a:Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;

    invoke-static {v0}, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->V(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$3;->a:Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;

    invoke-virtual {p0}, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->k()V

    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->z()V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method
