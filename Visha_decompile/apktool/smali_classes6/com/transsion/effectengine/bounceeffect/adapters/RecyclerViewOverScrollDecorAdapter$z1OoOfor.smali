.class public final Lcom/transsion/effectengine/bounceeffect/adapters/RecyclerViewOverScrollDecorAdapter$z1OoOfor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/effectengine/bounceeffect/adapters/RecyclerViewOverScrollDecorAdapter$z1OoOdo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/effectengine/bounceeffect/adapters/RecyclerViewOverScrollDecorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "z1OoOfor"
.end annotation


# instance fields
.field public final synthetic z1OoOdo:Lcom/transsion/effectengine/bounceeffect/adapters/RecyclerViewOverScrollDecorAdapter;


# direct methods
.method public constructor <init>(Lcom/transsion/effectengine/bounceeffect/adapters/RecyclerViewOverScrollDecorAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/effectengine/bounceeffect/adapters/RecyclerViewOverScrollDecorAdapter$z1OoOfor;->z1OoOdo:Lcom/transsion/effectengine/bounceeffect/adapters/RecyclerViewOverScrollDecorAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final isInAbsoluteEnd()Z
    .locals 1

    iget-object p0, p0, Lcom/transsion/effectengine/bounceeffect/adapters/RecyclerViewOverScrollDecorAdapter$z1OoOfor;->z1OoOdo:Lcom/transsion/effectengine/bounceeffect/adapters/RecyclerViewOverScrollDecorAdapter;

    iget-object p0, p0, Lcom/transsion/effectengine/bounceeffect/adapters/RecyclerViewOverScrollDecorAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public final isInAbsoluteStart()Z
    .locals 1

    iget-object p0, p0, Lcom/transsion/effectengine/bounceeffect/adapters/RecyclerViewOverScrollDecorAdapter$z1OoOfor;->z1OoOdo:Lcom/transsion/effectengine/bounceeffect/adapters/RecyclerViewOverScrollDecorAdapter;

    iget-object p0, p0, Lcom/transsion/effectengine/bounceeffect/adapters/RecyclerViewOverScrollDecorAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
