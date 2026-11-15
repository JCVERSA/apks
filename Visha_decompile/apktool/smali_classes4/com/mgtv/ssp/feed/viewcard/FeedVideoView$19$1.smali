.class Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$19$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$19;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$19;


# direct methods
.method public constructor <init>(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$19;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$19$1;->a:Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$19;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$19$1;->a:Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$19;

    iget-object v0, v0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$19;->b:Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;

    invoke-static {v0}, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->u(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$19$1;->a:Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$19;

    iget-object p0, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$19;->b:Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;

    invoke-static {p0}, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->g(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->b(IZZ)V

    :cond_0
    return-void
.end method
