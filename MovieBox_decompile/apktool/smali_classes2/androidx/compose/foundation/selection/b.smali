.class final Landroidx/compose/foundation/selection/b;
.super Landroidx/compose/foundation/ClickableNode;
.source "source.java"


# instance fields
.field private J:Landroidx/compose/ui/state/ToggleableState;


# direct methods
.method private constructor <init>(Landroidx/compose/ui/state/ToggleableState;Lp/i;Landroidx/compose/foundation/b0;ZLandroidx/compose/ui/semantics/f;Lkotlin/jvm/functions/Function0;)V
    .locals 8

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move-object v5, p5

    move-object v6, p6

    .line 2
    invoke-direct/range {v0 .. v7}, Landroidx/compose/foundation/ClickableNode;-><init>(Lp/i;Landroidx/compose/foundation/b0;ZLjava/lang/String;Landroidx/compose/ui/semantics/f;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 3
    iput-object p1, p0, Landroidx/compose/foundation/selection/b;->J:Landroidx/compose/ui/state/ToggleableState;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/state/ToggleableState;Lp/i;Landroidx/compose/foundation/b0;ZLandroidx/compose/ui/semantics/f;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Landroidx/compose/foundation/selection/b;-><init>(Landroidx/compose/ui/state/ToggleableState;Lp/i;Landroidx/compose/foundation/b0;ZLandroidx/compose/ui/semantics/f;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method


# virtual methods
.method public O1(Landroidx/compose/ui/semantics/n;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/selection/b;->J:Landroidx/compose/ui/state/ToggleableState;

    .line 2
    .line 3
    invoke-static {p1, v0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->I(Landroidx/compose/ui/semantics/n;Landroidx/compose/ui/state/ToggleableState;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final d2(Landroidx/compose/ui/state/ToggleableState;Lp/i;Landroidx/compose/foundation/b0;ZLandroidx/compose/ui/semantics/f;Lkotlin/jvm/functions/Function0;)V
    .locals 8

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/selection/b;->J:Landroidx/compose/ui/state/ToggleableState;

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput-object p1, p0, Landroidx/compose/foundation/selection/b;->J:Landroidx/compose/ui/state/ToggleableState;

    .line 6
    .line 7
    invoke-static {p0}, Landroidx/compose/ui/node/j1;->b(Landroidx/compose/ui/node/i1;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    const/4 v5, 0x0

    .line 11
    move-object v1, p0

    .line 12
    move-object v2, p2

    .line 13
    move-object v3, p3

    .line 14
    move v4, p4

    .line 15
    move-object v6, p5

    .line 16
    move-object v7, p6

    .line 17
    invoke-super/range {v1 .. v7}, Landroidx/compose/foundation/ClickableNode;->c2(Lp/i;Landroidx/compose/foundation/b0;ZLjava/lang/String;Landroidx/compose/ui/semantics/f;Lkotlin/jvm/functions/Function0;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method
