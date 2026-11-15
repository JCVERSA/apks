.class public final Landroidx/compose/runtime/snapshots/d;
.super Landroidx/compose/runtime/snapshots/j;
.source "source.java"


# instance fields
.field private final g:Lkotlin/jvm/functions/Function1;

.field private final h:Landroidx/compose/runtime/snapshots/j;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(ILandroidx/compose/runtime/snapshots/SnapshotIdSet;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/snapshots/j;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroidx/compose/runtime/snapshots/j;-><init>(ILandroidx/compose/runtime/snapshots/SnapshotIdSet;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 3
    .line 4
    .line 5
    iput-object p3, p0, Landroidx/compose/runtime/snapshots/d;->g:Lkotlin/jvm/functions/Function1;

    .line 6
    .line 7
    iput-object p4, p0, Landroidx/compose/runtime/snapshots/d;->h:Landroidx/compose/runtime/snapshots/j;

    .line 8
    .line 9
    invoke-virtual {p4, p0}, Landroidx/compose/runtime/snapshots/j;->m(Landroidx/compose/runtime/snapshots/j;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public A()Lkotlin/jvm/functions/Function1;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/snapshots/d;->g:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    return-object v0
.end method

.method public B(Landroidx/compose/runtime/snapshots/j;)Ljava/lang/Void;
    .locals 0

    .line 1
    invoke-static {}, Landroidx/compose/runtime/snapshots/u;->b()Ljava/lang/Void;

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

.method public C(Landroidx/compose/runtime/snapshots/j;)Ljava/lang/Void;
    .locals 0

    .line 1
    invoke-static {}, Landroidx/compose/runtime/snapshots/u;->b()Ljava/lang/Void;

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

.method public D(Landroidx/compose/runtime/snapshots/c0;)Ljava/lang/Void;
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

.method public E(Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/snapshots/d;
    .locals 7

    .line 1
    new-instance v0, Landroidx/compose/runtime/snapshots/d;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/j;->f()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/j;->g()Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/d;->A()Lkotlin/jvm/functions/Function1;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    const/4 v4, 0x4

    .line 16
    const/4 v5, 0x0

    .line 17
    const/4 v6, 0x0

    .line 18
    invoke-static {p1, v3, v6, v4, v5}, Landroidx/compose/runtime/snapshots/SnapshotKt;->L(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ZILjava/lang/Object;)Lkotlin/jvm/functions/Function1;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iget-object v3, p0, Landroidx/compose/runtime/snapshots/d;->h:Landroidx/compose/runtime/snapshots/j;

    .line 23
    .line 24
    invoke-direct {v0, v1, v2, p1, v3}, Landroidx/compose/runtime/snapshots/d;-><init>(ILandroidx/compose/runtime/snapshots/SnapshotIdSet;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/snapshots/j;)V

    .line 25
    .line 26
    .line 27
    return-object v0
.end method

.method public d()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/j;->e()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/j;->f()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iget-object v1, p0, Landroidx/compose/runtime/snapshots/d;->h:Landroidx/compose/runtime/snapshots/j;

    .line 12
    .line 13
    invoke-virtual {v1}, Landroidx/compose/runtime/snapshots/j;->f()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eq v0, v1, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/j;->b()V

    .line 20
    .line 21
    .line 22
    :cond_0
    iget-object v0, p0, Landroidx/compose/runtime/snapshots/d;->h:Landroidx/compose/runtime/snapshots/j;

    .line 23
    .line 24
    invoke-virtual {v0, p0}, Landroidx/compose/runtime/snapshots/j;->n(Landroidx/compose/runtime/snapshots/j;)V

    .line 25
    .line 26
    .line 27
    invoke-super {p0}, Landroidx/compose/runtime/snapshots/j;->d()V

    .line 28
    .line 29
    .line 30
    :cond_1
    return-void
.end method

.method public bridge synthetic h()Lkotlin/jvm/functions/Function1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/d;->A()Lkotlin/jvm/functions/Function1;

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

.method public bridge synthetic m(Landroidx/compose/runtime/snapshots/j;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/snapshots/d;->B(Landroidx/compose/runtime/snapshots/j;)Ljava/lang/Void;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public bridge synthetic n(Landroidx/compose/runtime/snapshots/j;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/snapshots/d;->C(Landroidx/compose/runtime/snapshots/j;)Ljava/lang/Void;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public o()V
    .locals 0

    .line 1
    return-void
.end method

.method public bridge synthetic p(Landroidx/compose/runtime/snapshots/c0;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/snapshots/d;->D(Landroidx/compose/runtime/snapshots/c0;)Ljava/lang/Void;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public bridge synthetic x(Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/snapshots/j;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/snapshots/d;->E(Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/snapshots/d;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
