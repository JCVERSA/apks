.class final Landroidx/compose/foundation/IndicationModifierElement;
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
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0007\u0008\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0017\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u000f\u0010\t\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0017\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000b\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u001a\u0010\u0012\u001a\u00020\u00112\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0096\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u000f\u0010\u0015\u001a\u00020\u0014H\u0016\u00a2\u0006\u0004\u0008\u0015\u0010\u0016R\u0014\u0010\u0004\u001a\u00020\u00038\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u0018R\u0014\u0010\u0006\u001a\u00020\u00058\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u001a\u00a8\u0006\u001b"
    }
    d2 = {
        "Landroidx/compose/foundation/IndicationModifierElement;",
        "Landroidx/compose/ui/node/l0;",
        "Landroidx/compose/foundation/a0;",
        "Lp/g;",
        "interactionSource",
        "Landroidx/compose/foundation/b0;",
        "indication",
        "<init>",
        "(Lp/g;Landroidx/compose/foundation/b0;)V",
        "j",
        "()Landroidx/compose/foundation/a0;",
        "node",
        "",
        "k",
        "(Landroidx/compose/foundation/a0;)V",
        "",
        "other",
        "",
        "equals",
        "(Ljava/lang/Object;)Z",
        "",
        "hashCode",
        "()I",
        "b",
        "Lp/g;",
        "c",
        "Landroidx/compose/foundation/b0;",
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
.field private final b:Lp/g;

.field private final c:Landroidx/compose/foundation/b0;


# direct methods
.method public constructor <init>(Lp/g;Landroidx/compose/foundation/b0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/compose/ui/node/l0;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/foundation/IndicationModifierElement;->b:Lp/g;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/foundation/IndicationModifierElement;->c:Landroidx/compose/foundation/b0;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public bridge synthetic a()Landroidx/compose/ui/f$c;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/compose/foundation/IndicationModifierElement;->j()Landroidx/compose/foundation/a0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Landroidx/compose/foundation/IndicationModifierElement;

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
    iget-object v1, p0, Landroidx/compose/foundation/IndicationModifierElement;->b:Lp/g;

    .line 12
    .line 13
    check-cast p1, Landroidx/compose/foundation/IndicationModifierElement;

    .line 14
    .line 15
    iget-object v3, p1, Landroidx/compose/foundation/IndicationModifierElement;->b:Lp/g;

    .line 16
    .line 17
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_2

    .line 22
    .line 23
    return v2

    .line 24
    :cond_2
    iget-object v1, p0, Landroidx/compose/foundation/IndicationModifierElement;->c:Landroidx/compose/foundation/b0;

    .line 25
    .line 26
    iget-object p1, p1, Landroidx/compose/foundation/IndicationModifierElement;->c:Landroidx/compose/foundation/b0;

    .line 27
    .line 28
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-nez p1, :cond_3

    .line 33
    .line 34
    return v2

    .line 35
    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/IndicationModifierElement;->b:Lp/g;

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
    iget-object v1, p0, Landroidx/compose/foundation/IndicationModifierElement;->c:Landroidx/compose/foundation/b0;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    add-int/2addr v0, v1

    .line 16
    return v0
.end method

.method public bridge synthetic i(Landroidx/compose/ui/f$c;)V
    .locals 0

    .line 1
    check-cast p1, Landroidx/compose/foundation/a0;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/IndicationModifierElement;->k(Landroidx/compose/foundation/a0;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public j()Landroidx/compose/foundation/a0;
    .locals 3

    .line 1
    new-instance v0, Landroidx/compose/foundation/a0;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/compose/foundation/IndicationModifierElement;->c:Landroidx/compose/foundation/b0;

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/compose/foundation/IndicationModifierElement;->b:Lp/g;

    .line 6
    .line 7
    invoke-interface {v1, v2}, Landroidx/compose/foundation/b0;->b(Lp/g;)Landroidx/compose/ui/node/f;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-direct {v0, v1}, Landroidx/compose/foundation/a0;-><init>(Landroidx/compose/ui/node/f;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method public k(Landroidx/compose/foundation/a0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/IndicationModifierElement;->c:Landroidx/compose/foundation/b0;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/compose/foundation/IndicationModifierElement;->b:Lp/g;

    .line 4
    .line 5
    invoke-interface {v0, v1}, Landroidx/compose/foundation/b0;->b(Lp/g;)Landroidx/compose/ui/node/f;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p1, v0}, Landroidx/compose/foundation/a0;->I1(Landroidx/compose/ui/node/f;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
