.class public final Landroidx/compose/ui/node/y;
.super Landroidx/compose/ui/node/NodeCoordinator;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/node/y$a;,
        Landroidx/compose/ui/node/y$b;
    }
.end annotation


# static fields
.field public static final X:Landroidx/compose/ui/node/y$a;

.field private static final Y:Landroidx/compose/ui/graphics/m4;


# instance fields
.field private T:Landroidx/compose/ui/node/x;

.field private U:Lo0/b;

.field private V:Landroidx/compose/ui/node/j0;

.field private W:Landroidx/compose/ui/layout/c;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroidx/compose/ui/node/y$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroidx/compose/ui/node/y$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Landroidx/compose/ui/node/y;->X:Landroidx/compose/ui/node/y$a;

    .line 8
    .line 9
    invoke-static {}, Landroidx/compose/ui/graphics/t0;->a()Landroidx/compose/ui/graphics/m4;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    sget-object v1, Landroidx/compose/ui/graphics/u1;->b:Landroidx/compose/ui/graphics/u1$a;

    .line 14
    .line 15
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/u1$a;->b()J

    .line 16
    .line 17
    .line 18
    move-result-wide v1

    .line 19
    invoke-interface {v0, v1, v2}, Landroidx/compose/ui/graphics/m4;->s(J)V

    .line 20
    .line 21
    .line 22
    const/high16 v1, 0x3f800000    # 1.0f

    .line 23
    .line 24
    invoke-interface {v0, v1}, Landroidx/compose/ui/graphics/m4;->setStrokeWidth(F)V

    .line 25
    .line 26
    .line 27
    sget-object v1, Landroidx/compose/ui/graphics/n4;->a:Landroidx/compose/ui/graphics/n4$a;

    .line 28
    .line 29
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/n4$a;->b()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    invoke-interface {v0, v1}, Landroidx/compose/ui/graphics/m4;->C(I)V

    .line 34
    .line 35
    .line 36
    sput-object v0, Landroidx/compose/ui/node/y;->Y:Landroidx/compose/ui/graphics/m4;

    .line 37
    .line 38
    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/ui/node/x;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroidx/compose/ui/node/NodeCoordinator;-><init>(Landroidx/compose/ui/node/LayoutNode;)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Landroidx/compose/ui/node/y;->T:Landroidx/compose/ui/node/x;

    .line 5
    .line 6
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->V()Landroidx/compose/ui/node/LayoutNode;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const/4 v0, 0x0

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    new-instance p1, Landroidx/compose/ui/node/y$b;

    .line 14
    .line 15
    invoke-direct {p1, p0}, Landroidx/compose/ui/node/y$b;-><init>(Landroidx/compose/ui/node/y;)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move-object p1, v0

    .line 20
    :goto_0
    iput-object p1, p0, Landroidx/compose/ui/node/y;->V:Landroidx/compose/ui/node/j0;

    .line 21
    .line 22
    invoke-interface {p2}, Landroidx/compose/ui/node/f;->getNode()Landroidx/compose/ui/f$c;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const/16 v1, 0x200

    .line 27
    .line 28
    invoke-static {v1}, Landroidx/compose/ui/node/s0;->a(I)I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    invoke-virtual {p1}, Landroidx/compose/ui/f$c;->e1()I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    and-int/2addr p1, v1

    .line 37
    if-eqz p1, :cond_1

    .line 38
    .line 39
    new-instance p1, Landroidx/compose/ui/layout/c;

    .line 40
    .line 41
    const-string v1, "null cannot be cast to non-null type androidx.compose.ui.layout.ApproachLayoutModifierNode"

    .line 42
    .line 43
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-static {p2}, Landroid/support/v4/media/session/c;->a(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    invoke-direct {p1, p0, v0}, Landroidx/compose/ui/layout/c;-><init>(Landroidx/compose/ui/node/y;Landroidx/compose/ui/layout/b;)V

    .line 50
    .line 51
    .line 52
    move-object v0, p1

    .line 53
    :cond_1
    iput-object v0, p0, Landroidx/compose/ui/node/y;->W:Landroidx/compose/ui/layout/c;

    .line 54
    .line 55
    return-void
.end method

.method public static final synthetic P2(Landroidx/compose/ui/node/y;)Landroidx/compose/ui/layout/c;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/node/y;->W:Landroidx/compose/ui/layout/c;

    .line 2
    .line 3
    return-object p0
.end method

.method private final S2()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->j1()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->r2()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Landroidx/compose/ui/node/y;->W:Landroidx/compose/ui/layout/c;

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->a1()Landroidx/compose/ui/layout/v;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-interface {v0}, Landroidx/compose/ui/layout/v;->w()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Landroidx/compose/ui/node/y;->R2()Landroidx/compose/ui/node/NodeCoordinator;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const/4 v1, 0x0

    .line 27
    invoke-virtual {v0, v1}, Landroidx/compose/ui/node/NodeCoordinator;->z2(Z)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    invoke-virtual {v0}, Landroidx/compose/ui/layout/c;->n()Landroidx/compose/ui/layout/b;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->c1()Landroidx/compose/ui/layout/g0$a;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Landroidx/compose/ui/node/y;->T1()Landroidx/compose/ui/node/j0;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Landroidx/compose/ui/node/j0;->v1()Landroidx/compose/ui/layout/q;

    .line 45
    .line 46
    .line 47
    const/4 v0, 0x0

    .line 48
    throw v0
.end method


# virtual methods
.method public I0(Landroidx/compose/ui/layout/a;)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/node/y;->T1()Landroidx/compose/ui/node/j0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Landroidx/compose/ui/node/j0;->r1(Landroidx/compose/ui/layout/a;)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-static {p0, p1}, Landroidx/compose/ui/node/z;->a(Landroidx/compose/ui/node/LookaheadCapablePlaceable;Landroidx/compose/ui/layout/a;)I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    :goto_0
    return p1
.end method

.method public J1()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/node/y;->T1()Landroidx/compose/ui/node/j0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Landroidx/compose/ui/node/y$b;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Landroidx/compose/ui/node/y$b;-><init>(Landroidx/compose/ui/node/y;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0}, Landroidx/compose/ui/node/y;->V2(Landroidx/compose/ui/node/j0;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public P(J)Landroidx/compose/ui/layout/g0;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->P1()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-object p1, p0, Landroidx/compose/ui/node/y;->U:Lo0/b;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1}, Lo0/b;->r()J

    .line 12
    .line 13
    .line 14
    move-result-wide p1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 17
    .line 18
    const-string p2, "Lookahead constraints cannot be null in approach pass."

    .line 19
    .line 20
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw p1

    .line 24
    :cond_1
    :goto_0
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/node/NodeCoordinator;->A1(Landroidx/compose/ui/node/NodeCoordinator;J)V

    .line 25
    .line 26
    .line 27
    invoke-static {p0}, Landroidx/compose/ui/node/y;->P2(Landroidx/compose/ui/node/y;)Landroidx/compose/ui/layout/c;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    if-nez v0, :cond_2

    .line 32
    .line 33
    invoke-virtual {p0}, Landroidx/compose/ui/node/y;->Q2()Landroidx/compose/ui/node/x;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {p0}, Landroidx/compose/ui/node/y;->R2()Landroidx/compose/ui/node/NodeCoordinator;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-interface {v0, p0, v1, p1, p2}, Landroidx/compose/ui/node/x;->z(Landroidx/compose/ui/layout/x;Landroidx/compose/ui/layout/s;J)Landroidx/compose/ui/layout/v;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {p0, p1}, Landroidx/compose/ui/node/NodeCoordinator;->A2(Landroidx/compose/ui/layout/v;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->q2()V

    .line 49
    .line 50
    .line 51
    return-object p0

    .line 52
    :cond_2
    invoke-virtual {v0}, Landroidx/compose/ui/layout/c;->n()Landroidx/compose/ui/layout/b;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Landroidx/compose/ui/layout/c;->z()J

    .line 56
    .line 57
    .line 58
    const/4 p1, 0x0

    .line 59
    throw p1
.end method

.method public final Q2()Landroidx/compose/ui/node/x;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/y;->T:Landroidx/compose/ui/node/x;

    .line 2
    .line 3
    return-object v0
.end method

.method public final R2()Landroidx/compose/ui/node/NodeCoordinator;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->Y1()Landroidx/compose/ui/node/NodeCoordinator;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public T1()Landroidx/compose/ui/node/j0;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/y;->V:Landroidx/compose/ui/node/j0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final T2(Landroidx/compose/ui/node/x;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/y;->T:Landroidx/compose/ui/node/x;

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_2

    .line 8
    .line 9
    invoke-interface {p1}, Landroidx/compose/ui/node/f;->getNode()Landroidx/compose/ui/f$c;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const/16 v1, 0x200

    .line 14
    .line 15
    invoke-static {v1}, Landroidx/compose/ui/node/s0;->a(I)I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    invoke-virtual {v0}, Landroidx/compose/ui/f$c;->e1()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    and-int/2addr v0, v1

    .line 24
    const/4 v1, 0x0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    const-string v0, "null cannot be cast to non-null type androidx.compose.ui.layout.ApproachLayoutModifierNode"

    .line 28
    .line 29
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-static {p1}, Landroid/support/v4/media/session/c;->a(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Landroidx/compose/ui/node/y;->W:Landroidx/compose/ui/layout/c;

    .line 36
    .line 37
    if-eqz v0, :cond_0

    .line 38
    .line 39
    invoke-static {p1}, Landroid/support/v4/media/session/c;->a(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1}, Landroidx/compose/ui/layout/c;->B(Landroidx/compose/ui/layout/b;)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    new-instance v0, Landroidx/compose/ui/layout/c;

    .line 47
    .line 48
    invoke-static {p1}, Landroid/support/v4/media/session/c;->a(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    invoke-direct {v0, p0, v1}, Landroidx/compose/ui/layout/c;-><init>(Landroidx/compose/ui/node/y;Landroidx/compose/ui/layout/b;)V

    .line 52
    .line 53
    .line 54
    :goto_0
    iput-object v0, p0, Landroidx/compose/ui/node/y;->W:Landroidx/compose/ui/layout/c;

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_1
    iput-object v1, p0, Landroidx/compose/ui/node/y;->W:Landroidx/compose/ui/layout/c;

    .line 58
    .line 59
    :cond_2
    :goto_1
    iput-object p1, p0, Landroidx/compose/ui/node/y;->T:Landroidx/compose/ui/node/x;

    .line 60
    .line 61
    return-void
.end method

.method public final U2(Lo0/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/compose/ui/node/y;->U:Lo0/b;

    .line 2
    .line 3
    return-void
.end method

.method protected V2(Landroidx/compose/ui/node/j0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/compose/ui/node/y;->V:Landroidx/compose/ui/node/j0;

    .line 2
    .line 3
    return-void
.end method

.method public X1()Landroidx/compose/ui/f$c;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/y;->T:Landroidx/compose/ui/node/x;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/compose/ui/node/f;->getNode()Landroidx/compose/ui/f$c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public t2(Landroidx/compose/ui/graphics/m1;Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/node/y;->R2()Landroidx/compose/ui/node/NodeCoordinator;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1, p2}, Landroidx/compose/ui/node/NodeCoordinator;->G1(Landroidx/compose/ui/graphics/m1;Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->Z0()Landroidx/compose/ui/node/LayoutNode;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    invoke-static {p2}, Landroidx/compose/ui/node/f0;->b(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/node/y0;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    invoke-interface {p2}, Landroidx/compose/ui/node/y0;->getShowLayoutBounds()Z

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    if-eqz p2, :cond_0

    .line 21
    .line 22
    sget-object p2, Landroidx/compose/ui/node/y;->Y:Landroidx/compose/ui/graphics/m4;

    .line 23
    .line 24
    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/node/NodeCoordinator;->H1(Landroidx/compose/ui/graphics/m1;Landroidx/compose/ui/graphics/m4;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method

.method protected w0(JFLandroidx/compose/ui/graphics/layer/GraphicsLayer;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/compose/ui/node/NodeCoordinator;->w0(JFLandroidx/compose/ui/graphics/layer/GraphicsLayer;)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Landroidx/compose/ui/node/y;->S2()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method protected y0(JFLkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/compose/ui/node/NodeCoordinator;->y0(JFLkotlin/jvm/functions/Function1;)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Landroidx/compose/ui/node/y;->S2()V

    .line 5
    .line 6
    .line 7
    return-void
.end method
