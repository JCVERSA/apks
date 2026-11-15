.class public Lcom/transsion/playercommon/adapter/PagerAdapter2;
.super Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/playercommon/adapter/PagerAdapter2$a;
    }
.end annotation


# instance fields
.field public x:Ljava/util/List;

.field public y:Lcom/transsion/playercommon/adapter/PagerAdapter2$a;

.field public final z:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentManager;Landroidx/lifecycle/Lifecycle;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;-><init>(Landroidx/fragment/app/FragmentManager;Landroidx/lifecycle/Lifecycle;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/transsion/playercommon/adapter/PagerAdapter2;->x:Ljava/util/List;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/transsion/playercommon/adapter/PagerAdapter2;->z:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public createFragment(I)Landroidx/fragment/app/Fragment;
    .locals 1

    iget-object v0, p0, Lcom/transsion/playercommon/adapter/PagerAdapter2;->z:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/playercommon/fragments/BaseFragment;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/transsion/playercommon/adapter/PagerAdapter2;->y:Lcom/transsion/playercommon/adapter/PagerAdapter2$a;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/transsion/playercommon/adapter/PagerAdapter2$a;->create(I)Lcom/transsion/playercommon/fragments/BaseFragment;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/playercommon/adapter/PagerAdapter2;->z:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object v0

    :cond_1
    iget-object p0, p0, Lcom/transsion/playercommon/adapter/PagerAdapter2;->x:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/fragment/app/Fragment;

    return-object p0
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/transsion/playercommon/adapter/PagerAdapter2;->y:Lcom/transsion/playercommon/adapter/PagerAdapter2$a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsion/playercommon/adapter/PagerAdapter2$a;->getCount()I

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/transsion/playercommon/adapter/PagerAdapter2;->x:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/playercommon/adapter/PagerAdapter2;->z:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iget-object v0, p0, Lcom/transsion/playercommon/adapter/PagerAdapter2;->x:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/playercommon/adapter/PagerAdapter2;->y:Lcom/transsion/playercommon/adapter/PagerAdapter2$a;

    invoke-virtual {p0}, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;->g()V

    return-void
.end method

.method public t(I)V
    .locals 5

    invoke-virtual {p0}, Lcom/transsion/playercommon/adapter/PagerAdapter2;->getItemCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    invoke-virtual {p0, v2}, Lcom/transsion/playercommon/adapter/PagerAdapter2;->u(I)Lcom/transsion/playercommon/fragments/BaseFragment;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v3

    if-ne v2, p1, :cond_1

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v3}, Landroid/view/View;->requestLayout()V

    goto :goto_1

    :cond_1
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public u(I)Lcom/transsion/playercommon/fragments/BaseFragment;
    .locals 1

    iget-object v0, p0, Lcom/transsion/playercommon/adapter/PagerAdapter2;->z:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/playercommon/fragments/BaseFragment;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/transsion/playercommon/adapter/PagerAdapter2;->y:Lcom/transsion/playercommon/adapter/PagerAdapter2$a;

    if-nez v0, :cond_1

    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/transsion/playercommon/adapter/PagerAdapter2;->x:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    iget-object p0, p0, Lcom/transsion/playercommon/adapter/PagerAdapter2;->x:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/playercommon/fragments/BaseFragment;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public v(Lcom/transsion/playercommon/adapter/PagerAdapter2$a;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/adapter/PagerAdapter2;->y:Lcom/transsion/playercommon/adapter/PagerAdapter2$a;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/transsion/playercommon/adapter/PagerAdapter2;->x:Ljava/util/List;

    iget-object p0, p0, Lcom/transsion/playercommon/adapter/PagerAdapter2;->z:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method
