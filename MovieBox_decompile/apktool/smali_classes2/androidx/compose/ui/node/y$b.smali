.class final Landroidx/compose/ui/node/y$b;
.super Landroidx/compose/ui/node/j0;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/node/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field final synthetic v:Landroidx/compose/ui/node/y;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/node/y;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/compose/ui/node/y$b;->v:Landroidx/compose/ui/node/y;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Landroidx/compose/ui/node/j0;-><init>(Landroidx/compose/ui/node/NodeCoordinator;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public I0(Landroidx/compose/ui/layout/a;)I
    .locals 3

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/ui/node/z;->a(Landroidx/compose/ui/node/LookaheadCapablePlaceable;Landroidx/compose/ui/layout/a;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {p0}, Landroidx/compose/ui/node/j0;->s1()Ljava/util/Map;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    return v0
.end method

.method public P(J)Landroidx/compose/ui/layout/g0;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/y$b;->v:Landroidx/compose/ui/node/y;

    .line 2
    .line 3
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/node/j0;->o1(Landroidx/compose/ui/node/j0;J)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1, p2}, Lo0/b;->a(J)Lo0/b;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Landroidx/compose/ui/node/y;->U2(Lo0/b;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Landroidx/compose/ui/node/y;->Q2()Landroidx/compose/ui/node/x;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0}, Landroidx/compose/ui/node/y;->R2()Landroidx/compose/ui/node/NodeCoordinator;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeCoordinator;->T1()Landroidx/compose/ui/node/j0;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    invoke-interface {v1, p0, v0, p1, p2}, Landroidx/compose/ui/node/x;->z(Landroidx/compose/ui/layout/x;Landroidx/compose/ui/layout/s;J)Landroidx/compose/ui/layout/v;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-static {p0, p1}, Landroidx/compose/ui/node/j0;->p1(Landroidx/compose/ui/node/j0;Landroidx/compose/ui/layout/v;)V

    .line 33
    .line 34
    .line 35
    return-object p0
.end method
