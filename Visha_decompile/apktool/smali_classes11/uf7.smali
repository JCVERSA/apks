.class public Luf7;
.super Lcom/chad/library/adapter/base/loadmore/LoadMoreView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Luf7$a;
    }
.end annotation


# instance fields
.field public a:Landroid/content/Context;

.field public b:Luf7$a;

.field public c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Lcom/chad/library/adapter/base/loadmore/LoadMoreView;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Luf7;->c:I

    iput-object p1, p0, Luf7;->a:Landroid/content/Context;

    return-void
.end method

.method public static synthetic a(Luf7;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Luf7;->b(Landroid/view/View;)V

    return-void
.end method

.method private visibleLoadEnd(Lcom/chad/library/adapter/base/BaseViewHolder;Z)V
    .locals 1

    invoke-virtual {p0}, Luf7;->getLoadEndViewId()I

    move-result v0

    invoke-virtual {p1, v0, p2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    sget p2, Lcom/transsion/playercommon/R$id;->tv_sort:I

    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    new-instance p2, Ltf7;

    invoke-direct {p2, p0}, Ltf7;-><init>(Luf7;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private visibleLoadFail(Lcom/chad/library/adapter/base/BaseViewHolder;Z)V
    .locals 0

    invoke-virtual {p0}, Luf7;->getLoadFailViewId()I

    move-result p0

    invoke-virtual {p1, p0, p2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    return-void
.end method

.method private visibleLoading(Lcom/chad/library/adapter/base/BaseViewHolder;Z)V
    .locals 0

    invoke-virtual {p0}, Luf7;->getLoadingViewId()I

    move-result p0

    invoke-virtual {p1, p0, p2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    return-void
.end method


# virtual methods
.method public final synthetic b(Landroid/view/View;)V
    .locals 2

    new-instance p1, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    invoke-direct {p1}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;-><init>()V

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->setData_type(I)V

    new-instance v1, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;

    invoke-direct {v1}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;-><init>()V

    invoke-virtual {v1, v0}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;->withType(I)Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;->withParam(Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;)Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;

    move-result-object p1

    const-string v0, "vd_ott_morevideobottom_cl"

    invoke-virtual {p1, v0}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;->withMarkParam(Ljava/lang/String;)Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;->build()Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;

    move-result-object p1

    iget-object v0, p0, Luf7;->a:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/transsion/playercommon/router/RouterUtils;->route(Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;Landroid/content/Context;)V

    iget-object p0, p0, Luf7;->b:Luf7$a;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Luf7$a;->a()V

    :cond_0
    return-void
.end method

.method public convert(Lcom/chad/library/adapter/base/BaseViewHolder;)V
    .locals 4

    iget v0, p0, Luf7;->c:I

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
    invoke-direct {p0, p1, v2}, Luf7;->visibleLoading(Lcom/chad/library/adapter/base/BaseViewHolder;Z)V

    invoke-direct {p0, p1, v2}, Luf7;->visibleLoadFail(Lcom/chad/library/adapter/base/BaseViewHolder;Z)V

    invoke-direct {p0, p1, v1}, Luf7;->visibleLoadEnd(Lcom/chad/library/adapter/base/BaseViewHolder;Z)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, v2}, Luf7;->visibleLoading(Lcom/chad/library/adapter/base/BaseViewHolder;Z)V

    invoke-direct {p0, p1, v1}, Luf7;->visibleLoadFail(Lcom/chad/library/adapter/base/BaseViewHolder;Z)V

    invoke-direct {p0, p1, v2}, Luf7;->visibleLoadEnd(Lcom/chad/library/adapter/base/BaseViewHolder;Z)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1, v1}, Luf7;->visibleLoading(Lcom/chad/library/adapter/base/BaseViewHolder;Z)V

    invoke-direct {p0, p1, v2}, Luf7;->visibleLoadFail(Lcom/chad/library/adapter/base/BaseViewHolder;Z)V

    invoke-direct {p0, p1, v2}, Luf7;->visibleLoadEnd(Lcom/chad/library/adapter/base/BaseViewHolder;Z)V

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1, v2}, Luf7;->visibleLoading(Lcom/chad/library/adapter/base/BaseViewHolder;Z)V

    invoke-direct {p0, p1, v2}, Luf7;->visibleLoadFail(Lcom/chad/library/adapter/base/BaseViewHolder;Z)V

    invoke-direct {p0, p1, v2}, Luf7;->visibleLoadEnd(Lcom/chad/library/adapter/base/BaseViewHolder;Z)V

    :goto_0
    return-void
.end method

.method public getLayoutId()I
    .locals 0

    sget p0, Lcom/transsion/playercommon/R$layout;->online_custom_load_more_view:I

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

    iget p0, p0, Luf7;->c:I

    return p0
.end method

.method public getLoadingViewId()I
    .locals 0

    sget p0, Lcom/transsion/playercommon/R$id;->loading_view:I

    return p0
.end method

.method public setClickListener(Luf7$a;)V
    .locals 0

    iput-object p1, p0, Luf7;->b:Luf7$a;

    return-void
.end method

.method public setLoadMoreStatus(I)V
    .locals 0

    iput p1, p0, Luf7;->c:I

    return-void
.end method
