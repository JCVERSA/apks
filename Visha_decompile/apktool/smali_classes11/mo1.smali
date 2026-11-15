.class public Lmo1;
.super Lcom/chad/library/adapter/base/loadmore/LoadMoreView;
.source "SourceFile"


# instance fields
.field public a:Landroid/content/Context;

.field public b:Ljava/lang/Boolean;

.field public c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Lcom/chad/library/adapter/base/loadmore/LoadMoreView;-><init>()V

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lmo1;->b:Ljava/lang/Boolean;

    const/4 v0, 0x1

    iput v0, p0, Lmo1;->c:I

    iput-object p1, p0, Lmo1;->a:Landroid/content/Context;

    return-void
.end method

.method private visibleLoadEnd(Lcom/chad/library/adapter/base/BaseViewHolder;Z)V
    .locals 0

    invoke-virtual {p0}, Lmo1;->getLoadEndViewId()I

    move-result p0

    invoke-virtual {p1, p0, p2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    return-void
.end method

.method private visibleLoadFail(Lcom/chad/library/adapter/base/BaseViewHolder;Z)V
    .locals 0

    invoke-virtual {p0}, Lmo1;->getLoadFailViewId()I

    move-result p0

    invoke-virtual {p1, p0, p2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    return-void
.end method

.method private visibleLoading(Lcom/chad/library/adapter/base/BaseViewHolder;Z)V
    .locals 0

    invoke-virtual {p0}, Lmo1;->getLoadingViewId()I

    move-result p0

    invoke-virtual {p1, p0, p2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Boolean;)Lmo1;
    .locals 0

    iput-object p1, p0, Lmo1;->b:Ljava/lang/Boolean;

    return-object p0
.end method

.method public convert(Lcom/chad/library/adapter/base/BaseViewHolder;)V
    .locals 4

    iget v0, p0, Lmo1;->c:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    const/4 v3, 0x4

    if-eq v0, v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, v2}, Lmo1;->visibleLoading(Lcom/chad/library/adapter/base/BaseViewHolder;Z)V

    invoke-direct {p0, p1, v2}, Lmo1;->visibleLoadFail(Lcom/chad/library/adapter/base/BaseViewHolder;Z)V

    iget-object v0, p0, Lmo1;->b:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0, p1, v1}, Lmo1;->visibleLoadEnd(Lcom/chad/library/adapter/base/BaseViewHolder;Z)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, v2}, Lmo1;->visibleLoading(Lcom/chad/library/adapter/base/BaseViewHolder;Z)V

    invoke-direct {p0, p1, v1}, Lmo1;->visibleLoadFail(Lcom/chad/library/adapter/base/BaseViewHolder;Z)V

    invoke-direct {p0, p1, v2}, Lmo1;->visibleLoadEnd(Lcom/chad/library/adapter/base/BaseViewHolder;Z)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1, v1}, Lmo1;->visibleLoading(Lcom/chad/library/adapter/base/BaseViewHolder;Z)V

    invoke-direct {p0, p1, v2}, Lmo1;->visibleLoadFail(Lcom/chad/library/adapter/base/BaseViewHolder;Z)V

    invoke-direct {p0, p1, v2}, Lmo1;->visibleLoadEnd(Lcom/chad/library/adapter/base/BaseViewHolder;Z)V

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1, v2}, Lmo1;->visibleLoading(Lcom/chad/library/adapter/base/BaseViewHolder;Z)V

    invoke-direct {p0, p1, v2}, Lmo1;->visibleLoadFail(Lcom/chad/library/adapter/base/BaseViewHolder;Z)V

    invoke-direct {p0, p1, v2}, Lmo1;->visibleLoadEnd(Lcom/chad/library/adapter/base/BaseViewHolder;Z)V

    :cond_4
    :goto_0
    return-void
.end method

.method public getLayoutId()I
    .locals 0

    sget p0, Lcom/transsion/playercommon/R$layout;->custom_load_more_view:I

    return p0
.end method

.method public getLoadEndViewId()I
    .locals 0

    sget p0, Lcom/transsion/playercommon/R$id;->load_more_load_end_view:I

    return p0
.end method

.method public getLoadFailViewId()I
    .locals 0

    sget p0, Lcom/transsion/playercommon/R$id;->load_fail_view:I

    return p0
.end method

.method public getLoadMoreStatus()I
    .locals 0

    iget p0, p0, Lmo1;->c:I

    return p0
.end method

.method public getLoadingViewId()I
    .locals 0

    sget p0, Lcom/transsion/playercommon/R$id;->loading_view:I

    return p0
.end method

.method public setLoadMoreStatus(I)V
    .locals 0

    iput p1, p0, Lmo1;->c:I

    return-void
.end method
