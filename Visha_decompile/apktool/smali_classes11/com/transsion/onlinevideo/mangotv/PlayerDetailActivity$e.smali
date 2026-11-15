.class public Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity$e;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->updateRecommend(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity$e;->c:Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity$e;->c:Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;

    invoke-static {v0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->l1(Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    const/4 v1, 0x2

    if-ne p2, v1, :cond_1

    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result p2

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result p1

    sub-int/2addr p1, v0

    if-lt p2, p1, :cond_1

    iget-object p0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity$e;->c:Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;

    invoke-static {p0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->B1(Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;)V

    :cond_1
    return-void
.end method
