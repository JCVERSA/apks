.class Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgtv/ssp/immersion/a/b;


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

    iput-object p1, p0, Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView$1;->a:Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView$1;->a:Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;

    invoke-static {v0}, Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;->a(Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView$1;->a:Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;

    invoke-static {v0}, Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;->b(Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView$1;->a:Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;

    invoke-static {v0}, Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;->c(Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView$1;->a:Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;

    invoke-static {v0}, Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;->d(Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView$1;->a:Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;

    invoke-virtual {v0}, Lcom/mgtv/ssp/viewcard/BaseView;->v()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView$1;->a:Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;

    invoke-static {v0}, Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;->e(Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView$1;->a:Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;->a(Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;Z)Z

    .line 6
    iget-object p0, p0, Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView$1;->a:Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0}, Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;->a(IZZ)V

    nop

    :cond_1
    :goto_0
    return-void
.end method

.method public a(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public a(IZ)V
    .locals 0

    .line 8
    iget-object p2, p0, Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView$1;->a:Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;

    invoke-static {p2}, Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;->g(Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;)I

    move-result p2

    if-ne p2, p1, :cond_2

    .line 9
    iget-object p1, p0, Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView$1;->a:Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;

    invoke-static {p1}, Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;->h(Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;)Lcom/mgtv/ssp/play/PlayerCore;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mgtv/ssp/play/PlayerCore;->getPlayerStatus()I

    move-result p1

    const/16 p2, 0x9

    if-eq p1, p2, :cond_0

    iget-object p1, p0, Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView$1;->a:Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;

    .line 10
    invoke-static {p1}, Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;->i(Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;)Lcom/mgtv/ssp/play/PlayerCore;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mgtv/ssp/play/PlayerCore;->getPlayerStatus()I

    move-result p1

    const/4 p2, 0x4

    if-ne p1, p2, :cond_1

    .line 11
    :cond_0
    iget-object p0, p0, Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView$1;->a:Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;

    invoke-static {p0}, Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;->j(Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;)Lcom/mgtv/ssp/play/PlayerCore;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mgtv/ssp/play/PlayerCore;->play()V

    :cond_1
    return-void

    .line 12
    :cond_2
    iget-object p2, p0, Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView$1;->a:Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;

    invoke-static {p2}, Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;->k(Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;)Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p2

    instance-of p2, p2, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;

    if-eqz p2, :cond_3

    .line 13
    iget-object p2, p0, Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView$1;->a:Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;

    invoke-static {p2}, Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;->l(Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;)Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p2

    check-cast p2, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;

    invoke-virtual {p2, p1}, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;->b(I)V

    .line 14
    :cond_3
    iget-object p0, p0, Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView$1;->a:Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, p2}, Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;->a(IZZ)V

    return-void
.end method

.method public a(ZI)V
    .locals 0

    .line 7
    iget-object p0, p0, Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView$1;->a:Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;

    invoke-static {p0}, Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;->f(Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;)V

    return-void
.end method
