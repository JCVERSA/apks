.class public final Lcom/chad/library/adapter/base/loadmore/SimpleLoadMoreView;
.super Lcom/chad/library/adapter/base/loadmore/LoadMoreView;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/chad/library/adapter/base/loadmore/LoadMoreView;-><init>()V

    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 0

    sget p0, Lcom/chad/library/R$layout;->brvah_quick_view_load_more:I

    return p0
.end method

.method public getLoadEndViewId()I
    .locals 0

    sget p0, Lcom/chad/library/R$id;->load_more_load_end_view:I

    return p0
.end method

.method public getLoadFailViewId()I
    .locals 0

    sget p0, Lcom/chad/library/R$id;->load_more_load_fail_view:I

    return p0
.end method

.method public getLoadingViewId()I
    .locals 0

    sget p0, Lcom/chad/library/R$id;->load_more_loading_view:I

    return p0
.end method
