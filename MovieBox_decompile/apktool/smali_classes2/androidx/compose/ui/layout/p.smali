.class final Landroidx/compose/ui/layout/p;
.super Landroidx/compose/ui/layout/g0$a;
.source "source.java"


# instance fields
.field private final b:Landroidx/compose/ui/node/LookaheadCapablePlaceable;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/node/LookaheadCapablePlaceable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/compose/ui/layout/g0$a;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/ui/layout/p;->b:Landroidx/compose/ui/node/LookaheadCapablePlaceable;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method protected d()Landroidx/compose/ui/unit/LayoutDirection;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/layout/p;->b:Landroidx/compose/ui/node/LookaheadCapablePlaceable;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/compose/ui/layout/j;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method protected e()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/layout/p;->b:Landroidx/compose/ui/node/LookaheadCapablePlaceable;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/ui/layout/g0;->s0()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method
