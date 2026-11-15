.class public Lcom/transsion/effectengine/bounceeffect/adapters/RecyclerViewOverScrollDecorAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/effectengine/bounceeffect/adapters/z1OoOfor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/effectengine/bounceeffect/adapters/RecyclerViewOverScrollDecorAdapter$LayoutManager;,
        Lcom/transsion/effectengine/bounceeffect/adapters/RecyclerViewOverScrollDecorAdapter$z1OoOfor;,
        Lcom/transsion/effectengine/bounceeffect/adapters/RecyclerViewOverScrollDecorAdapter$z1OoOif;,
        Lcom/transsion/effectengine/bounceeffect/adapters/RecyclerViewOverScrollDecorAdapter$z1OoOdo;
    }
.end annotation


# instance fields
.field protected final mImpl:Lcom/transsion/effectengine/bounceeffect/adapters/RecyclerViewOverScrollDecorAdapter$z1OoOdo;

.field protected mIsItemTouchInEffect:Z

.field protected final mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/effectengine/bounceeffect/adapters/RecyclerViewOverScrollDecorAdapter;->mIsItemTouchInEffect:Z

    iput-object p1, p0, Lcom/transsion/effectengine/bounceeffect/adapters/RecyclerViewOverScrollDecorAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    instance-of v0, p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-nez v0, :cond_3

    instance-of v1, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    instance-of v0, p1, Lcom/transsion/effectengine/bounceeffect/adapters/RecyclerViewOverScrollDecorAdapter$LayoutManager;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/transsion/effectengine/bounceeffect/adapters/RecyclerViewOverScrollDecorAdapter$LayoutManager;

    invoke-interface {p1}, Lcom/transsion/effectengine/bounceeffect/adapters/RecyclerViewOverScrollDecorAdapter$LayoutManager;->getCusOrientation()I

    move-result p1

    if-nez p1, :cond_1

    new-instance p1, Lcom/transsion/effectengine/bounceeffect/adapters/RecyclerViewOverScrollDecorAdapter$z1OoOif;

    invoke-direct {p1, p0}, Lcom/transsion/effectengine/bounceeffect/adapters/RecyclerViewOverScrollDecorAdapter$z1OoOif;-><init>(Lcom/transsion/effectengine/bounceeffect/adapters/RecyclerViewOverScrollDecorAdapter;)V

    :goto_0
    iput-object p1, p0, Lcom/transsion/effectengine/bounceeffect/adapters/RecyclerViewOverScrollDecorAdapter;->mImpl:Lcom/transsion/effectengine/bounceeffect/adapters/RecyclerViewOverScrollDecorAdapter$z1OoOdo;

    goto :goto_3

    :cond_1
    new-instance p1, Lcom/transsion/effectengine/bounceeffect/adapters/RecyclerViewOverScrollDecorAdapter$z1OoOfor;

    invoke-direct {p1, p0}, Lcom/transsion/effectengine/bounceeffect/adapters/RecyclerViewOverScrollDecorAdapter$z1OoOfor;-><init>(Lcom/transsion/effectengine/bounceeffect/adapters/RecyclerViewOverScrollDecorAdapter;)V

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Set a valid layout managers first, and custom layout manager is not support."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->getOrientation()I

    move-result p1

    goto :goto_2

    :cond_4
    check-cast p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getOrientation()I

    move-result p1

    :goto_2
    if-nez p1, :cond_5

    new-instance p1, Lcom/transsion/effectengine/bounceeffect/adapters/RecyclerViewOverScrollDecorAdapter$z1OoOif;

    invoke-direct {p1, p0}, Lcom/transsion/effectengine/bounceeffect/adapters/RecyclerViewOverScrollDecorAdapter$z1OoOif;-><init>(Lcom/transsion/effectengine/bounceeffect/adapters/RecyclerViewOverScrollDecorAdapter;)V

    goto :goto_0

    :cond_5
    new-instance p1, Lcom/transsion/effectengine/bounceeffect/adapters/RecyclerViewOverScrollDecorAdapter$z1OoOfor;

    invoke-direct {p1, p0}, Lcom/transsion/effectengine/bounceeffect/adapters/RecyclerViewOverScrollDecorAdapter$z1OoOfor;-><init>(Lcom/transsion/effectengine/bounceeffect/adapters/RecyclerViewOverScrollDecorAdapter;)V

    goto :goto_0

    :goto_3
    return-void
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/transsion/effectengine/bounceeffect/adapters/RecyclerViewOverScrollDecorAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method public isInAbsoluteEnd()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/effectengine/bounceeffect/adapters/RecyclerViewOverScrollDecorAdapter;->mIsItemTouchInEffect:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/transsion/effectengine/bounceeffect/adapters/RecyclerViewOverScrollDecorAdapter;->mImpl:Lcom/transsion/effectengine/bounceeffect/adapters/RecyclerViewOverScrollDecorAdapter$z1OoOdo;

    invoke-interface {p0}, Lcom/transsion/effectengine/bounceeffect/adapters/RecyclerViewOverScrollDecorAdapter$z1OoOdo;->isInAbsoluteEnd()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isInAbsoluteStart()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/effectengine/bounceeffect/adapters/RecyclerViewOverScrollDecorAdapter;->mIsItemTouchInEffect:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/transsion/effectengine/bounceeffect/adapters/RecyclerViewOverScrollDecorAdapter;->mImpl:Lcom/transsion/effectengine/bounceeffect/adapters/RecyclerViewOverScrollDecorAdapter$z1OoOdo;

    invoke-interface {p0}, Lcom/transsion/effectengine/bounceeffect/adapters/RecyclerViewOverScrollDecorAdapter$z1OoOdo;->isInAbsoluteStart()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
