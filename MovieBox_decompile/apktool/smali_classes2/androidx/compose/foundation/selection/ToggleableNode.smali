.class final Landroidx/compose/foundation/selection/ToggleableNode;
.super Landroidx/compose/foundation/ClickableNode;
.source "source.java"


# instance fields
.field private J:Z

.field private K:Lkotlin/jvm/functions/Function1;

.field private final L:Lkotlin/jvm/functions/Function0;


# direct methods
.method private constructor <init>(ZLp/i;Landroidx/compose/foundation/b0;ZLandroidx/compose/ui/semantics/f;Lkotlin/jvm/functions/Function1;)V
    .locals 8

    .line 2
    new-instance v6, Landroidx/compose/foundation/selection/ToggleableNode$1;

    invoke-direct {v6, p6, p1}, Landroidx/compose/foundation/selection/ToggleableNode$1;-><init>(Lkotlin/jvm/functions/Function1;Z)V

    const/4 v7, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move-object v5, p5

    .line 3
    invoke-direct/range {v0 .. v7}, Landroidx/compose/foundation/ClickableNode;-><init>(Lp/i;Landroidx/compose/foundation/b0;ZLjava/lang/String;Landroidx/compose/ui/semantics/f;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 4
    iput-boolean p1, p0, Landroidx/compose/foundation/selection/ToggleableNode;->J:Z

    .line 5
    iput-object p6, p0, Landroidx/compose/foundation/selection/ToggleableNode;->K:Lkotlin/jvm/functions/Function1;

    .line 6
    new-instance p1, Landroidx/compose/foundation/selection/ToggleableNode$_onClick$1;

    invoke-direct {p1, p0}, Landroidx/compose/foundation/selection/ToggleableNode$_onClick$1;-><init>(Landroidx/compose/foundation/selection/ToggleableNode;)V

    iput-object p1, p0, Landroidx/compose/foundation/selection/ToggleableNode;->L:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public synthetic constructor <init>(ZLp/i;Landroidx/compose/foundation/b0;ZLandroidx/compose/ui/semantics/f;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Landroidx/compose/foundation/selection/ToggleableNode;-><init>(ZLp/i;Landroidx/compose/foundation/b0;ZLandroidx/compose/ui/semantics/f;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final synthetic d2(Landroidx/compose/foundation/selection/ToggleableNode;)Lkotlin/jvm/functions/Function1;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/selection/ToggleableNode;->K:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic e2(Landroidx/compose/foundation/selection/ToggleableNode;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroidx/compose/foundation/selection/ToggleableNode;->J:Z

    .line 2
    .line 3
    return p0
.end method


# virtual methods
.method public O1(Landroidx/compose/ui/semantics/n;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/foundation/selection/ToggleableNode;->J:Z

    .line 2
    .line 3
    invoke-static {v0}, Lj0/a;->a(Z)Landroidx/compose/ui/state/ToggleableState;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {p1, v0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->I(Landroidx/compose/ui/semantics/n;Landroidx/compose/ui/state/ToggleableState;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final f2(ZLp/i;Landroidx/compose/foundation/b0;ZLandroidx/compose/ui/semantics/f;Lkotlin/jvm/functions/Function1;)V
    .locals 8

    .line 1
    iget-boolean v0, p0, Landroidx/compose/foundation/selection/ToggleableNode;->J:Z

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput-boolean p1, p0, Landroidx/compose/foundation/selection/ToggleableNode;->J:Z

    .line 6
    .line 7
    invoke-static {p0}, Landroidx/compose/ui/node/j1;->b(Landroidx/compose/ui/node/i1;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    iput-object p6, p0, Landroidx/compose/foundation/selection/ToggleableNode;->K:Lkotlin/jvm/functions/Function1;

    .line 11
    .line 12
    const/4 v5, 0x0

    .line 13
    iget-object v7, p0, Landroidx/compose/foundation/selection/ToggleableNode;->L:Lkotlin/jvm/functions/Function0;

    .line 14
    .line 15
    move-object v1, p0

    .line 16
    move-object v2, p2

    .line 17
    move-object v3, p3

    .line 18
    move v4, p4

    .line 19
    move-object v6, p5

    .line 20
    invoke-super/range {v1 .. v7}, Landroidx/compose/foundation/ClickableNode;->c2(Lp/i;Landroidx/compose/foundation/b0;ZLjava/lang/String;Landroidx/compose/ui/semantics/f;Lkotlin/jvm/functions/Function0;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method
