.class public Luqa;
.super Lcom/chad/library/adapter/base/loadmore/LoadMoreView;
.source "SourceFile"


# instance fields
.field public a:Landroid/content/Context;

.field public b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Lcom/chad/library/adapter/base/loadmore/LoadMoreView;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Luqa;->b:I

    iput-object p1, p0, Luqa;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public convert(Lcom/chad/library/adapter/base/BaseViewHolder;)V
    .locals 4

    iget v0, p0, Luqa;->b:I

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
    invoke-virtual {p0, p1, v2}, Luqa;->visibleLoading(Lcom/chad/library/adapter/base/BaseViewHolder;Z)V

    invoke-virtual {p0, p1, v2}, Luqa;->visibleLoadFail(Lcom/chad/library/adapter/base/BaseViewHolder;Z)V

    invoke-virtual {p0, p1, v1}, Luqa;->visibleLoadEnd(Lcom/chad/library/adapter/base/BaseViewHolder;Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, v2}, Luqa;->visibleLoading(Lcom/chad/library/adapter/base/BaseViewHolder;Z)V

    invoke-virtual {p0, p1, v1}, Luqa;->visibleLoadFail(Lcom/chad/library/adapter/base/BaseViewHolder;Z)V

    invoke-virtual {p0, p1, v2}, Luqa;->visibleLoadEnd(Lcom/chad/library/adapter/base/BaseViewHolder;Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1, v1}, Luqa;->visibleLoading(Lcom/chad/library/adapter/base/BaseViewHolder;Z)V

    invoke-virtual {p0, p1, v2}, Luqa;->visibleLoadFail(Lcom/chad/library/adapter/base/BaseViewHolder;Z)V

    invoke-virtual {p0, p1, v2}, Luqa;->visibleLoadEnd(Lcom/chad/library/adapter/base/BaseViewHolder;Z)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1, v2}, Luqa;->visibleLoading(Lcom/chad/library/adapter/base/BaseViewHolder;Z)V

    invoke-virtual {p0, p1, v2}, Luqa;->visibleLoadFail(Lcom/chad/library/adapter/base/BaseViewHolder;Z)V

    invoke-virtual {p0, p1, v2}, Luqa;->visibleLoadEnd(Lcom/chad/library/adapter/base/BaseViewHolder;Z)V

    :goto_0
    return-void
.end method

.method public getLayoutId()I
    .locals 0

    sget p0, Lcom/transsion/playercommon/R$layout;->topic_detail_load_more_view:I

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

    iget p0, p0, Luqa;->b:I

    return p0
.end method

.method public getLoadingViewId()I
    .locals 0

    sget p0, Lcom/transsion/playercommon/R$id;->loading_view:I

    return p0
.end method

.method public setLoadMoreStatus(I)V
    .locals 0

    iput p1, p0, Luqa;->b:I

    return-void
.end method

.method public final visibleLoadEnd(Lcom/chad/library/adapter/base/BaseViewHolder;Z)V
    .locals 0

    invoke-virtual {p0}, Luqa;->getLoadEndViewId()I

    move-result p0

    invoke-virtual {p1, p0, p2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    return-void
.end method

.method public final visibleLoadFail(Lcom/chad/library/adapter/base/BaseViewHolder;Z)V
    .locals 0

    invoke-virtual {p0}, Luqa;->getLoadFailViewId()I

    move-result p0

    invoke-virtual {p1, p0, p2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    return-void
.end method

.method public final visibleLoading(Lcom/chad/library/adapter/base/BaseViewHolder;Z)V
    .locals 0

    invoke-virtual {p0}, Luqa;->getLoadingViewId()I

    move-result p0

    invoke-virtual {p1, p0, p2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    return-void
.end method
