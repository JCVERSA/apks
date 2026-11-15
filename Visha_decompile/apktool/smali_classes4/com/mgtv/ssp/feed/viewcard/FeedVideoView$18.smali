.class Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$18;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgtv/ssp/adapter/BaseVideoAdapter$b;


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

    iput-object p1, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$18;->a:Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 5

    iget-object v0, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$18;->a:Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;

    add-int/lit8 v1, p1, 0x1

    invoke-static {v0, v1}, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->a(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;I)I

    iget-object v0, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$18;->a:Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;

    invoke-static {v0}, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->f(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$18;->a:Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;

    invoke-static {p1, v2}, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->a(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;Z)Z

    iget-object p1, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$18;->a:Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;

    invoke-static {p1}, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->g(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;)I

    move-result v0

    invoke-static {p1, v0, v2, v1}, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->a(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;IZZ)V

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$18;->a:Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;

    invoke-static {v0}, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->h(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;)Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    instance-of v0, v0, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$18;->a:Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;

    invoke-static {v0}, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->i(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;)Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/mgtv/ssp/feed/adapter/FeedRecyclerViewAdapter;

    invoke-virtual {v0, p1}, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;->k(I)Z

    move-result p1

    goto :goto_0

    :cond_1
    move p1, v1

    :goto_0
    iget-object v0, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$18;->a:Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;

    invoke-static {v0}, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->g(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;)I

    move-result v3

    iget-object v4, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$18;->a:Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;

    invoke-static {v4}, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->j(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt v3, v4, :cond_2

    iget-object v3, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$18;->a:Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;

    invoke-static {v3}, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->k(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v2

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$18;->a:Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;

    invoke-static {v2}, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->g(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;)I

    move-result v3

    :goto_1
    xor-int/lit8 v2, p1, 0x1

    invoke-virtual {v0, v3, p1, v2}, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->a(IZZ)V

    :goto_2
    iget-object p0, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$18;->a:Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;

    invoke-static {p0, v1}, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->b(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;Z)Z

    return-void
.end method

.method public b(I)V
    .locals 1

    iget-object p1, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$18;->a:Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->b(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;Z)Z

    iget-object p0, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$18;->a:Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;

    invoke-static {p0}, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->l(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;)V

    return-void
.end method
