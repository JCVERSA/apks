.class Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$21$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$21;->a(ILandroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:I

.field final synthetic c:Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$21;


# direct methods
.method public constructor <init>(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$21;Landroid/view/View;I)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$21$1;->c:Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$21;

    iput-object p2, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$21$1;->a:Landroid/view/View;

    iput p3, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$21$1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$21$1;->c:Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$21;

    iget-object v0, v0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$21;->a:Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;

    iget-object v0, v0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->x:Landroid/app/Activity;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$21$1;->a:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/mgtv/thirdsdk/playcore/utils/f;->a(Landroid/view/ViewGroup;Landroid/view/View;)V

    iget-object v0, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$21$1;->c:Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$21;

    iget-object v0, v0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$21;->a:Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->d(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;Z)Z

    iget-object v0, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$21$1;->c:Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$21;

    iget-object v0, v0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$21;->a:Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;

    iget v2, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$21$1;->b:I

    add-int/2addr v2, v1

    invoke-static {v0, v2}, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->a(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;I)I

    iget-object p0, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$21$1;->c:Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$21;

    iget-object p0, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$21;->a:Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;

    invoke-static {p0}, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->g(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->b(IZZ)V

    return-void
.end method
