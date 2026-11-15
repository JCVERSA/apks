.class public Lcom/transsion/tools/activities/SkinsActivity$4;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/tools/activities/SkinsActivity;->G0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/transsion/tools/activities/SkinsActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/tools/activities/SkinsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/tools/activities/SkinsActivity$4;->c:Lcom/transsion/tools/activities/SkinsActivity;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_0

    if-lez p3, :cond_0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    move-result p1

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/transsion/tools/activities/SkinsActivity$4;->c:Lcom/transsion/tools/activities/SkinsActivity;

    invoke-static {p1}, Lcom/transsion/tools/activities/SkinsActivity;->y0(Lcom/transsion/tools/activities/SkinsActivity;)Lcom/transsion/tools/adapter/SkinsMenuAdapter;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setEnableLoadMore(Z)V

    iget-object p1, p0, Lcom/transsion/tools/activities/SkinsActivity$4;->c:Lcom/transsion/tools/activities/SkinsActivity;

    invoke-static {p1}, Lcom/transsion/tools/activities/SkinsActivity;->s0(Lcom/transsion/tools/activities/SkinsActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/tools/activities/SkinsActivity$4;->c:Lcom/transsion/tools/activities/SkinsActivity;

    invoke-static {p1}, Lcom/transsion/tools/activities/SkinsActivity;->y0(Lcom/transsion/tools/activities/SkinsActivity;)Lcom/transsion/tools/adapter/SkinsMenuAdapter;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->loadMoreEnd(Z)V

    invoke-static {}, Lse;->b()Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/transsion/tools/activities/SkinsActivity$4$1;

    invoke-direct {p2, p0}, Lcom/transsion/tools/activities/SkinsActivity$4$1;-><init>(Lcom/transsion/tools/activities/SkinsActivity$4;)V

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
