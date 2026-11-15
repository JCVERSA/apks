.class Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$19;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field a:Z

.field final synthetic b:Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;


# direct methods
.method public constructor <init>(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$19;->b:Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method

.method private a(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcom/mgtv/ssp/adapter/BaseHolder;

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mgtv/ssp/adapter/BaseHolder;

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iget-object v5, v3, Lcom/mgtv/ssp/adapter/BaseHolder;->f:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    iget-object v5, v3, Lcom/mgtv/ssp/adapter/BaseHolder;->f:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    iget v6, v4, Landroid/graphics/Rect;->top:I

    if-nez v6, :cond_2

    if-eqz v5, :cond_2

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    if-ne v4, v5, :cond_2

    iget-boolean v4, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$19;->a:Z

    if-eqz v4, :cond_2

    iget-object p1, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$19;->b:Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->c(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;Z)Z

    iget-object p0, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$19;->b:Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;

    iget p1, v3, Lcom/mgtv/ssp/adapter/BaseHolder;->e:I

    invoke-virtual {p0, p1, v1, v1}, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->a(IZZ)V

    goto :goto_2

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 6

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    iget-object v0, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$19;->b:Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;

    invoke-static {v0}, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->m(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;)Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$19;->b:Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;

    invoke-static {v0}, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->n(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;)Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    instance-of v0, v0, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$19;->b:Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;

    invoke-static {v0}, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->o(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;)Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;->a(Landroidx/recyclerview/widget/RecyclerView;I)V

    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    iput-boolean v0, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$19;->a:Z

    :cond_1
    iget-object v1, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$19;->b:Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;

    invoke-static {v1}, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->p(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;)Z

    move-result v1

    const-string v2, " ; "

    const-string v3, "eeee onScrollStateChanged 22  mCurPos = "

    const/4 v4, 0x0

    if-eqz v1, :cond_4

    iget-object p1, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$19;->b:Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;

    invoke-static {p1}, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->g(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_2

    iget-object p1, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$19;->b:Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;

    invoke-static {p1}, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->q(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;)I

    move-result p2

    invoke-static {p1, p2}, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->a(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;I)I

    :cond_2
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$19;->b:Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;

    invoke-static {v1}, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->r(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;)I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$19;->b:Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;

    invoke-static {v1}, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->g(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;)I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$19;->b:Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;

    invoke-static {v1}, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->s(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;)Z

    move-result v1

    xor-int/2addr v1, v0

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$19;->b:Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;

    invoke-static {p1}, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->g(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;)I

    move-result p2

    invoke-virtual {p1, p2, v0, v4}, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->c(IZZ)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$19;->b:Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;

    invoke-static {p1}, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->t(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p0, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$19;->b:Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;

    invoke-static {p0}, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->g(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;)I

    move-result p1

    invoke-virtual {p0, p1, v4, v4}, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->b(IZZ)V

    goto :goto_0

    :cond_3
    new-instance p1, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$19$1;

    invoke-direct {p1, p0}, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$19$1;-><init>(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$19;)V

    const/16 p0, 0x1f4

    invoke-static {p1, p0}, Lcom/hunantv/imgo/util/ThreadManager;->post(Ljava/lang/Runnable;I)V

    goto :goto_0

    :cond_4
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$19;->b:Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;

    invoke-static {v3}, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->v(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;)I

    move-result v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$19;->b:Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;

    invoke-static {v2}, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->s(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;)Z

    move-result v2

    xor-int/2addr v0, v2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    if-nez p2, :cond_5

    invoke-direct {p0, p1}, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$19;->a(Landroidx/recyclerview/widget/RecyclerView;)V

    iput-boolean v4, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$19;->a:Z

    :cond_5
    :goto_0
    return-void
.end method
