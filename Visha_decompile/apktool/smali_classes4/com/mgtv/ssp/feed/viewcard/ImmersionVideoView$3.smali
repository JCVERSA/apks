.class Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgtv/ssp/adapter/BaseVideoAdapter$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;


# direct methods
.method public constructor <init>(Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView$3;->a:Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    iget-object v0, p0, Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView$3;->a:Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;

    invoke-static {v0}, Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;->o(Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;)Lcom/mgtv/ssp/widget/LoadMoreRecycleView;

    move-result-object v0

    add-int/lit8 p1, p1, 0x1

    iget-object v1, p0, Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView$3;->a:Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;

    invoke-static {v1}, Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;->m(Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt p1, v1, :cond_0

    iget-object p0, p0, Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView$3;->a:Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;

    invoke-static {p0}, Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;->n(Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p1, p0, -0x1

    :cond_0
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    return-void
.end method

.method public b(I)V
    .locals 0

    return-void
.end method
