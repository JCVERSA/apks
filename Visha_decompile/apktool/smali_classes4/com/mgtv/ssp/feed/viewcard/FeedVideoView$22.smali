.class Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$22;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgtv/ssp/widget/FeedVodBottomControlView$a;


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

    iput-object p1, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$22;->a:Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$22;->a:Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;

    iget-object v0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->x:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p0}, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->A(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;)V

    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 8

    .line 3
    iget-object v0, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$22;->a:Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;

    invoke-static {v0}, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->D(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;)V

    .line 4
    iget-object v0, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$22;->a:Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;

    invoke-static {v0}, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->b(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;)Lcom/mgtv/ssp/play/MediaInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$22;->a:Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;

    invoke-static {v0}, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->b(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;)Lcom/mgtv/ssp/play/MediaInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/mgtv/ssp/play/MediaInfo;->videoId:Ljava/lang/String;

    :goto_0
    move-object v6, v0

    goto :goto_1

    :cond_0
    const-string v0, ""

    goto :goto_0

    .line 5
    :goto_1
    iget-object v0, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$22;->a:Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;

    invoke-static {v0}, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->E(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;)Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    instance-of v0, v0, Lcom/mgtv/ssp/feed/adapter/FeedRecyclerViewAdapter;

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$22;->a:Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;

    invoke-static {v0}, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->F(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;)Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/mgtv/ssp/feed/adapter/FeedRecyclerViewAdapter;

    invoke-virtual {v0, p1}, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;->a(I)Lcom/mgtv/ssp/bean/VideoBean;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 7
    invoke-virtual {p1}, Lcom/mgtv/ssp/bean/VideoBean;->getVideo()Lcom/mgtv/ssp/bean/VideoInfoBean;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {p1}, Lcom/mgtv/ssp/bean/VideoBean;->getVideo()Lcom/mgtv/ssp/bean/VideoInfoBean;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 9
    iget-object p0, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$22;->a:Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;

    iget-object v1, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->x:Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/mgtv/ssp/bean/VideoInfoBean;->getIntactSchema()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/mgtv/ssp/bean/VideoInfoBean;->getMgDownloadH5()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/mgtv/ssp/bean/VideoInfoBean;->getSchemaHint()I

    move-result v4

    const-string v5, "v_card"

    const-string v7, "card"

    invoke-static/range {v1 .. v7}, Lcom/hunantv/imgo/util/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public b(I)V
    .locals 3

    iget-object v0, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$22;->a:Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;

    iget-object v1, v0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->x:Landroid/app/Activity;

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->G(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;)Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    instance-of v0, v0, Lcom/mgtv/ssp/feed/adapter/FeedRecyclerViewAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$22;->a:Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;

    invoke-static {v0}, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->H(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;)Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/mgtv/ssp/feed/adapter/FeedRecyclerViewAdapter;

    invoke-virtual {v0, p1}, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;->a(I)Lcom/mgtv/ssp/bean/VideoBean;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/mgtv/ssp/bean/VideoBean;->getVideo()Lcom/mgtv/ssp/bean/VideoInfoBean;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/mgtv/ssp/bean/VideoBean;->getVideo()Lcom/mgtv/ssp/bean/VideoInfoBean;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$22;->a:Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;

    iget-object v1, v1, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->x:Landroid/app/Activity;

    const-class v2, Lcom/mgtv/ssp/activity/SspCommonWebActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "webUrl"

    invoke-virtual {p1}, Lcom/mgtv/ssp/bean/VideoInfoBean;->getReportH5()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$22;->a:Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;

    iget-object p0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->x:Landroid/app/Activity;

    invoke-static {p0, v0}, Lcom/hunantv/imgo/util/a;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    :cond_0
    return-void
.end method

.method public c(I)V
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$22;->a:Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;

    invoke-virtual {p0}, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->onBackPress()Z

    return-void
.end method
