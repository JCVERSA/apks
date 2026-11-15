.class public Lcom/transsion/playercommon/adapter/RtlPageAdapter2;
.super Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;
.source "SourceFile"


# instance fields
.field public x:Ljava/util/List;

.field public y:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;Ljava/util/List;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;-><init>(Landroidx/fragment/app/Fragment;)V

    iput-object p3, p0, Lcom/transsion/playercommon/adapter/RtlPageAdapter2;->y:[Ljava/lang/String;

    iput-object p2, p0, Lcom/transsion/playercommon/adapter/RtlPageAdapter2;->x:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public createFragment(I)Landroidx/fragment/app/Fragment;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/adapter/RtlPageAdapter2;->x:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/fragment/app/Fragment;

    return-object p0
.end method

.method public getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/adapter/RtlPageAdapter2;->x:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getItemId(I)J
    .locals 0

    int-to-long p0, p1

    return-wide p0
.end method

.method public t(I)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lcom/transsion/playercommon/adapter/RtlPageAdapter2;->getItemCount()I

    move-result v2

    if-ge v1, v2, :cond_3

    invoke-virtual {p0, v1}, Lcom/transsion/playercommon/adapter/RtlPageAdapter2;->createFragment(I)Landroidx/fragment/app/Fragment;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    if-ne v1, p1, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    goto :goto_1

    :cond_1
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method
