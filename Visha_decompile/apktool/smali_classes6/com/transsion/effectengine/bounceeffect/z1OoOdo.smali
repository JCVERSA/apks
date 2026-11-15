.class public final Lcom/transsion/effectengine/bounceeffect/z1OoOdo;
.super Landroidx/recyclerview/widget/RecyclerView$EdgeEffectFactory;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/effectengine/bounceeffect/z1OoOfor;


# instance fields
.field public z1OoOdo:Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;

.field public z1OoOfor:Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;

.field public z1OoOif:Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;

.field public z1OoOint:Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;

.field public z1OoOnew:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$EdgeEffectFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public final createEdgeEffect(Landroidx/recyclerview/widget/RecyclerView;I)Landroid/widget/EdgeEffect;
    .locals 2
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    if-eqz p2, :cond_3

    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$EdgeEffectFactory;->createEdgeEffect(Landroidx/recyclerview/widget/RecyclerView;I)Landroid/widget/EdgeEffect;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;

    iget-object v1, p0, Lcom/transsion/effectengine/bounceeffect/z1OoOdo;->z1OoOnew:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;

    invoke-direct {v0, p1, p2, v1}, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;-><init>(Landroid/view/View;ILcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;)V

    iput-object v0, p0, Lcom/transsion/effectengine/bounceeffect/z1OoOdo;->z1OoOint:Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;

    return-object v0

    :cond_1
    new-instance v0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;

    iget-object v1, p0, Lcom/transsion/effectengine/bounceeffect/z1OoOdo;->z1OoOnew:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;

    invoke-direct {v0, p1, p2, v1}, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;-><init>(Landroid/view/View;ILcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;)V

    iput-object v0, p0, Lcom/transsion/effectengine/bounceeffect/z1OoOdo;->z1OoOif:Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;

    return-object v0

    :cond_2
    new-instance v0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;

    iget-object v1, p0, Lcom/transsion/effectengine/bounceeffect/z1OoOdo;->z1OoOnew:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;

    invoke-direct {v0, p1, p2, v1}, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;-><init>(Landroid/view/View;ILcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;)V

    iput-object v0, p0, Lcom/transsion/effectengine/bounceeffect/z1OoOdo;->z1OoOfor:Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;

    return-object v0

    :cond_3
    new-instance v0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;

    iget-object v1, p0, Lcom/transsion/effectengine/bounceeffect/z1OoOdo;->z1OoOnew:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;

    invoke-direct {v0, p1, p2, v1}, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;-><init>(Landroid/view/View;ILcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;)V

    iput-object v0, p0, Lcom/transsion/effectengine/bounceeffect/z1OoOdo;->z1OoOdo:Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;

    return-object v0
.end method

.method public final z1OoOdo()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/effectengine/bounceeffect/z1OoOdo;->z1OoOdo:Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;->cancelBounceAnimation()V

    :cond_0
    iget-object v0, p0, Lcom/transsion/effectengine/bounceeffect/z1OoOdo;->z1OoOif:Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;->cancelBounceAnimation()V

    :cond_1
    iget-object v0, p0, Lcom/transsion/effectengine/bounceeffect/z1OoOdo;->z1OoOfor:Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;->cancelBounceAnimation()V

    :cond_2
    iget-object p0, p0, Lcom/transsion/effectengine/bounceeffect/z1OoOdo;->z1OoOint:Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;->cancelBounceAnimation()V

    :cond_3
    return-void
.end method

.method public final z1OoOdo(Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;)Z
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/transsion/effectengine/bounceeffect/z1OoOdo;->z1OoOfor:Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;

    if-eqz v0, :cond_0

    if-eq v0, p1, :cond_0

    invoke-virtual {v0}, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;->isBounceEdgeAnimRunning()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object p0, p0, Lcom/transsion/effectengine/bounceeffect/z1OoOdo;->z1OoOint:Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;

    if-eqz p0, :cond_1

    if-eq p0, p1, :cond_1

    invoke-virtual {p0}, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;->isBounceEdgeAnimRunning()Z

    move-result p0

    or-int/2addr v0, p0

    :cond_1
    return v0
.end method
