.class final Landroidx/compose/foundation/HoverableElement;
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
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0008\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u000f\u0010\u0007\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0017\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u000f\u0010\u000e\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u001a\u0010\u0013\u001a\u00020\u00122\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0010H\u0096\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u0014R\u0014\u0010\u0004\u001a\u00020\u00038\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0016\u00a8\u0006\u0017"
    }
    d2 = {
        "Landroidx/compose/foundation/HoverableElement;",
        "Landroidx/compose/ui/node/l0;",
        "Landroidx/compose/foundation/HoverableNode;",
        "Lp/i;",
        "interactionSource",
        "<init>",
        "(Lp/i;)V",
        "j",
        "()Landroidx/compose/foundation/HoverableNode;",
        "node",
        "",
        "k",
        "(Landroidx/compose/foundation/HoverableNode;)V",
        "",
        "hashCode",
        "()I",
        "",
        "other",
        "",
        "equals",
        "(Ljava/lang/Object;)Z",
        "b",
        "Lp/i;",
        "foundation_release"
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
.field private final b:Lp/i;


# direct methods
.method public constructor <init>(Lp/i;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/compose/ui/node/l0;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/foundation/HoverableElement;->b:Lp/i;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public bridge synthetic a()Landroidx/compose/ui/f$c;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/compose/foundation/HoverableElement;->j()Landroidx/compose/foundation/HoverableNode;

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
    instance-of v1, p1, Landroidx/compose/foundation/HoverableElement;

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
    check-cast p1, Landroidx/compose/foundation/HoverableElement;

    .line 12
    .line 13
    iget-object p1, p1, Landroidx/compose/foundation/HoverableElement;->b:Lp/i;

    .line 14
    .line 15
    iget-object v1, p0, Landroidx/compose/foundation/HoverableElement;->b:Lp/i;

    .line 16
    .line 17
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-nez p1, :cond_2

    .line 22
    .line 23
    return v2

    .line 24
    :cond_2
    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/HoverableElement;->b:Lp/i;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    return v0
.end method

.method public bridge synthetic i(Landroidx/compose/ui/f$c;)V
    .locals 0

    .line 1
    check-cast p1, Landroidx/compose/foundation/HoverableNode;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/HoverableElement;->k(Landroidx/compose/foundation/HoverableNode;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public j()Landroidx/compose/foundation/HoverableNode;
    .locals 2

    .line 1
    new-instance v0, Landroidx/compose/foundation/HoverableNode;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/compose/foundation/HoverableElement;->b:Lp/i;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroidx/compose/foundation/HoverableNode;-><init>(Lp/i;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public k(Landroidx/compose/foundation/HoverableNode;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/HoverableElement;->b:Lp/i;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroidx/compose/foundation/HoverableNode;->H1(Lp/i;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
