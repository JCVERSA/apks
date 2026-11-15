.class public final Landroidx/compose/runtime/snapshots/g;
.super Landroidx/compose/runtime/snapshots/j;
.source "source.java"


# instance fields
.field private final g:Lkotlin/jvm/functions/Function1;

.field private h:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(ILandroidx/compose/runtime/snapshots/SnapshotIdSet;Lkotlin/jvm/functions/Function1;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroidx/compose/runtime/snapshots/j;-><init>(ILandroidx/compose/runtime/snapshots/SnapshotIdSet;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 3
    .line 4
    .line 5
    iput-object p3, p0, Landroidx/compose/runtime/snapshots/g;->g:Lkotlin/jvm/functions/Function1;

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    iput p1, p0, Landroidx/compose/runtime/snapshots/g;->h:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public A()Lkotlin/jvm/functions/Function1;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/snapshots/g;->g:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    return-object v0
.end method

.method public d()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/j;->e()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, p0}, Landroidx/compose/runtime/snapshots/g;->n(Landroidx/compose/runtime/snapshots/j;)V

    .line 8
    .line 9
    .line 10
    invoke-super {p0}, Landroidx/compose/runtime/snapshots/j;->d()V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public bridge synthetic h()Lkotlin/jvm/functions/Function1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/g;->A()Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public i()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public k()Lkotlin/jvm/functions/Function1;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public m(Landroidx/compose/runtime/snapshots/j;)V
    .locals 0

    .line 1
    iget p1, p0, Landroidx/compose/runtime/snapshots/g;->h:I

    .line 2
    .line 3
    add-int/lit8 p1, p1, 0x1

    .line 4
    .line 5
    iput p1, p0, Landroidx/compose/runtime/snapshots/g;->h:I

    .line 6
    .line 7
    return-void
.end method

.method public n(Landroidx/compose/runtime/snapshots/j;)V
    .locals 0

    .line 1
    iget p1, p0, Landroidx/compose/runtime/snapshots/g;->h:I

    .line 2
    .line 3
    add-int/lit8 p1, p1, -0x1

    .line 4
    .line 5
    iput p1, p0, Landroidx/compose/runtime/snapshots/g;->h:I

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/j;->b()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public o()V
    .locals 0

    .line 1
    return-void
.end method

.method public p(Landroidx/compose/runtime/snapshots/c0;)V
    .locals 0

    .line 1
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->r()Ljava/lang/Void;

    .line 2
    .line 3
    .line 4
    new-instance p1, Lkotlin/KotlinNothingValueException;

    .line 5
    .line 6
    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    .line 7
    .line 8
    .line 9
    throw p1
.end method

.method public x(Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/snapshots/j;
    .locals 7

    .line 1
    invoke-static {p0}, Landroidx/compose/runtime/snapshots/SnapshotKt;->y(Landroidx/compose/runtime/snapshots/j;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/compose/runtime/snapshots/d;

    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/j;->f()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/j;->g()Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/g;->A()Lkotlin/jvm/functions/Function1;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    const/4 v4, 0x4

    .line 19
    const/4 v5, 0x0

    .line 20
    const/4 v6, 0x0

    .line 21
    invoke-static {p1, v3, v6, v4, v5}, Landroidx/compose/runtime/snapshots/SnapshotKt;->L(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ZILjava/lang/Object;)Lkotlin/jvm/functions/Function1;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-direct {v0, v1, v2, p1, p0}, Landroidx/compose/runtime/snapshots/d;-><init>(ILandroidx/compose/runtime/snapshots/SnapshotIdSet;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/snapshots/j;)V

    .line 26
    .line 27
    .line 28
    return-object v0
.end method
