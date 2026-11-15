.class public Lcom/mgtv/ssp/immersion/ui/ImmersionAdapter$VideoHolder;
.super Lcom/mgtv/ssp/adapter/BaseHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mgtv/ssp/immersion/ui/ImmersionAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VideoHolder"
.end annotation


# instance fields
.field public a:Lcom/mgtv/ssp/bean/VideoInfoBean;

.field public b:Landroid/widget/ImageView;

.field public c:Lcom/mgtv/ssp/widget/ImmerCoverView;

.field public d:I

.field public g:Landroid/widget/FrameLayout;

.field public h:Landroid/widget/TextView;

.field public i:Landroid/widget/TextView;

.field public j:Landroid/widget/TextView;

.field public k:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/mgtv/ssp/adapter/BaseHolder;-><init>(Landroid/view/View;)V

    sget v0, Lcom/mgtv/ssp/R$id;->tiktok_View:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mgtv/ssp/widget/ImmerCoverView;

    iput-object v0, p0, Lcom/mgtv/ssp/immersion/ui/ImmersionAdapter$VideoHolder;->c:Lcom/mgtv/ssp/widget/ImmerCoverView;

    sget v1, Lcom/mgtv/ssp/R$id;->iv_thumb:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mgtv/ssp/immersion/ui/ImmersionAdapter$VideoHolder;->b:Landroid/widget/ImageView;

    sget v0, Lcom/mgtv/ssp/R$id;->container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/mgtv/ssp/immersion/ui/ImmersionAdapter$VideoHolder;->g:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/mgtv/ssp/immersion/ui/ImmersionAdapter$VideoHolder;->c:Lcom/mgtv/ssp/widget/ImmerCoverView;

    sget v1, Lcom/mgtv/ssp/R$id;->tv_ugc_name:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mgtv/ssp/immersion/ui/ImmersionAdapter$VideoHolder;->h:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/mgtv/ssp/immersion/ui/ImmersionAdapter$VideoHolder;->c:Lcom/mgtv/ssp/widget/ImmerCoverView;

    sget v1, Lcom/mgtv/ssp/R$id;->tv_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mgtv/ssp/immersion/ui/ImmersionAdapter$VideoHolder;->i:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/mgtv/ssp/immersion/ui/ImmersionAdapter$VideoHolder;->c:Lcom/mgtv/ssp/widget/ImmerCoverView;

    sget v1, Lcom/mgtv/ssp/R$id;->tv_des:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mgtv/ssp/immersion/ui/ImmersionAdapter$VideoHolder;->j:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/mgtv/ssp/immersion/ui/ImmersionAdapter$VideoHolder;->c:Lcom/mgtv/ssp/widget/ImmerCoverView;

    sget v1, Lcom/mgtv/ssp/R$id;->status_btn:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mgtv/ssp/immersion/ui/ImmersionAdapter$VideoHolder;->k:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void
.end method
