.class final Landroidx/compose/ui/layout/OnGloballyPositionedElement;
.super Landroidx/compose/ui/node/l0;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/compose/ui/node/l0;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\n\u0008\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u001b\u0012\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u000f\u0010\t\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nJ\u001a\u0010\u000e\u001a\u00020\r2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000bH\u0096\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u000f\u0010\u0011\u001a\u00020\u0010H\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0017\u0010\u0014\u001a\u00020\u00052\u0006\u0010\u0013\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0015R#\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u00038\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0016\u0010\u0017\u001a\u0004\u0008\u0018\u0010\u0019\u00a8\u0006\u001a"
    }
    d2 = {
        "Landroidx/compose/ui/layout/OnGloballyPositionedElement;",
        "Landroidx/compose/ui/node/l0;",
        "Landroidx/compose/ui/layout/d0;",
        "Lkotlin/Function1;",
        "Landroidx/compose/ui/layout/l;",
        "",
        "onGloballyPositioned",
        "<init>",
        "(Lkotlin/jvm/functions/Function1;)V",
        "j",
        "()Landroidx/compose/ui/layout/d0;",
        "",
        "other",
        "",
        "equals",
        "(Ljava/lang/Object;)Z",
        "",
        "hashCode",
        "()I",
        "node",
        "k",
        "(Landroidx/compose/ui/layout/d0;)V",
        "b",
        "Lkotlin/jvm/functions/Function1;",
        "getOnGloballyPositioned",
        "()Lkotlin/jvm/functions/Function1;",
        "ui_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final b:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/compose/ui/node/l0;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/ui/layout/OnGloballyPositionedElement;->b:Lkotlin/jvm/functions/Function1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public bridge synthetic a()Landroidx/compose/ui/f$c;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/layout/OnGloballyPositionedElement;->j()Landroidx/compose/ui/layout/d0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Landroidx/compose/ui/layout/OnGloballyPositionedElement;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    iget-object v1, p0, Landroidx/compose/ui/layout/OnGloballyPositionedElement;->b:Lkotlin/jvm/functions/Function1;

    .line 12
    .line 13
    check-cast p1, Landroidx/compose/ui/layout/OnGloballyPositionedElement;

    .line 14
    .line 15
    iget-object p1, p1, Landroidx/compose/ui/layout/OnGloballyPositionedElement;->b:Lkotlin/jvm/functions/Function1;

    .line 16
    .line 17
    if-ne v1, p1, :cond_2

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_2
    move v0, v2

    .line 21
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/layout/OnGloballyPositionedElement;->b:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public bridge synthetic i(Landroidx/compose/ui/f$c;)V
    .locals 0

    .line 1
    check-cast p1, Landroidx/compose/ui/layout/d0;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroidx/compose/ui/layout/OnGloballyPositionedElement;->k(Landroidx/compose/ui/layout/d0;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public j()Landroidx/compose/ui/layout/d0;
    .locals 2

    .line 1
    new-instance v0, Landroidx/compose/ui/layout/d0;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/compose/ui/layout/OnGloballyPositionedElement;->b:Lkotlin/jvm/functions/Function1;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroidx/compose/ui/layout/d0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public k(Landroidx/compose/ui/layout/d0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/layout/OnGloballyPositionedElement;->b:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroidx/compose/ui/layout/d0;->C1(Lkotlin/jvm/functions/Function1;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
