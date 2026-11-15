.class public Lcom/mgtv/ssp/feed/adapter/FeedRecyclerViewAdapter$VideoHolder;
.super Lcom/mgtv/ssp/adapter/BaseHolder;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mgtv/ssp/feed/adapter/FeedRecyclerViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VideoHolder"
.end annotation


# instance fields
.field public a:Landroid/widget/FrameLayout;

.field public b:Landroid/widget/RelativeLayout;

.field public c:Landroid/widget/TextView;

.field public d:Landroid/widget/ImageView;

.field public g:Lcom/mgtv/ssp/widget/CoverView;

.field public h:Landroid/widget/TextView;

.field public i:Landroid/widget/TextView;

.field public j:Landroid/widget/TextView;

.field public k:Landroid/widget/ImageView;

.field public l:Landroid/widget/TextView;

.field public m:Landroid/widget/TextView;

.field public n:Landroid/widget/FrameLayout;

.field final synthetic o:Lcom/mgtv/ssp/feed/adapter/FeedRecyclerViewAdapter;


# direct methods
.method public constructor <init>(Lcom/mgtv/ssp/feed/adapter/FeedRecyclerViewAdapter;Landroid/view/View;)V
    .locals 2

    iput-object p1, p0, Lcom/mgtv/ssp/feed/adapter/FeedRecyclerViewAdapter$VideoHolder;->o:Lcom/mgtv/ssp/feed/adapter/FeedRecyclerViewAdapter;

    invoke-direct {p0, p2}, Lcom/mgtv/ssp/adapter/BaseHolder;-><init>(Landroid/view/View;)V

    sget v0, Lcom/mgtv/ssp/R$id;->player_container:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/mgtv/ssp/feed/adapter/FeedRecyclerViewAdapter$VideoHolder;->a:Landroid/widget/FrameLayout;

    sget v0, Lcom/mgtv/ssp/R$id;->prepare_view:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mgtv/ssp/widget/CoverView;

    iput-object v0, p0, Lcom/mgtv/ssp/feed/adapter/FeedRecyclerViewAdapter$VideoHolder;->g:Lcom/mgtv/ssp/widget/CoverView;

    sget v1, Lcom/mgtv/ssp/R$id;->tv_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mgtv/ssp/feed/adapter/FeedRecyclerViewAdapter$VideoHolder;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/mgtv/ssp/feed/adapter/FeedRecyclerViewAdapter$VideoHolder;->g:Lcom/mgtv/ssp/widget/CoverView;

    sget v1, Lcom/mgtv/ssp/R$id;->tv_time:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mgtv/ssp/feed/adapter/FeedRecyclerViewAdapter$VideoHolder;->l:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/mgtv/ssp/feed/adapter/FeedRecyclerViewAdapter$VideoHolder;->g:Lcom/mgtv/ssp/widget/CoverView;

    sget v1, Lcom/mgtv/ssp/R$id;->thumb:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mgtv/ssp/feed/adapter/FeedRecyclerViewAdapter$VideoHolder;->d:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/mgtv/ssp/feed/adapter/FeedRecyclerViewAdapter$VideoHolder;->g:Lcom/mgtv/ssp/widget/CoverView;

    sget v1, Lcom/mgtv/ssp/R$id;->status_btn:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mgtv/ssp/feed/adapter/FeedRecyclerViewAdapter$VideoHolder;->j:Landroid/widget/TextView;

    sget v0, Lcom/mgtv/ssp/R$id;->layout_bottom:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/mgtv/ssp/feed/adapter/FeedRecyclerViewAdapter$VideoHolder;->b:Landroid/widget/RelativeLayout;

    sget v0, Lcom/mgtv/ssp/R$id;->title_tx_frist:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mgtv/ssp/feed/adapter/FeedRecyclerViewAdapter$VideoHolder;->h:Landroid/widget/TextView;

    sget v0, Lcom/mgtv/ssp/R$id;->title_tx_second:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mgtv/ssp/feed/adapter/FeedRecyclerViewAdapter$VideoHolder;->i:Landroid/widget/TextView;

    sget v0, Lcom/mgtv/ssp/R$id;->image_small:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mgtv/ssp/feed/adapter/FeedRecyclerViewAdapter$VideoHolder;->k:Landroid/widget/ImageView;

    sget v0, Lcom/mgtv/ssp/R$id;->to_detail:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mgtv/ssp/feed/adapter/FeedRecyclerViewAdapter$VideoHolder;->m:Landroid/widget/TextView;

    sget v0, Lcom/mgtv/ssp/R$id;->three_dd:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/mgtv/ssp/feed/adapter/FeedRecyclerViewAdapter$VideoHolder;->n:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/mgtv/ssp/feed/adapter/FeedRecyclerViewAdapter$VideoHolder;->g:Lcom/mgtv/ssp/widget/CoverView;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/mgtv/ssp/feed/adapter/FeedRecyclerViewAdapter;->a(Lcom/mgtv/ssp/feed/adapter/FeedRecyclerViewAdapter;)Lcom/mgtv/ssp/adapter/listener/OnItemChildClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/mgtv/ssp/feed/adapter/FeedRecyclerViewAdapter$VideoHolder;->g:Lcom/mgtv/ssp/widget/CoverView;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    invoke-virtual {p2, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/mgtv/ssp/R$id;->prepare_view:I

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/mgtv/ssp/feed/adapter/FeedRecyclerViewAdapter$VideoHolder;->o:Lcom/mgtv/ssp/feed/adapter/FeedRecyclerViewAdapter;

    invoke-static {p1}, Lcom/mgtv/ssp/feed/adapter/FeedRecyclerViewAdapter;->a(Lcom/mgtv/ssp/feed/adapter/FeedRecyclerViewAdapter;)Lcom/mgtv/ssp/adapter/listener/OnItemChildClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/mgtv/ssp/feed/adapter/FeedRecyclerViewAdapter$VideoHolder;->o:Lcom/mgtv/ssp/feed/adapter/FeedRecyclerViewAdapter;

    invoke-static {p1}, Lcom/mgtv/ssp/feed/adapter/FeedRecyclerViewAdapter;->a(Lcom/mgtv/ssp/feed/adapter/FeedRecyclerViewAdapter;)Lcom/mgtv/ssp/adapter/listener/OnItemChildClickListener;

    move-result-object p1

    iget p0, p0, Lcom/mgtv/ssp/adapter/BaseHolder;->e:I

    invoke-interface {p1, p0}, Lcom/mgtv/ssp/adapter/listener/OnItemChildClickListener;->onItemChildClick(I)V

    :cond_0
    return-void
.end method
