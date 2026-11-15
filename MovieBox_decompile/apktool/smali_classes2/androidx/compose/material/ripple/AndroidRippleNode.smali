.class public final Landroidx/compose/material/ripple/AndroidRippleNode;
.super Landroidx/compose/material/ripple/RippleNode;
.source "source.java"

# interfaces
.implements Landroidx/compose/material/ripple/e;


# instance fields
.field private y:Landroidx/compose/material/ripple/RippleContainer;

.field private z:Landroidx/compose/material/ripple/RippleHostView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method private constructor <init>(Lp/g;ZFLandroidx/compose/ui/graphics/x1;Lkotlin/jvm/functions/Function0;)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 2
    invoke-direct/range {v0 .. v6}, Landroidx/compose/material/ripple/RippleNode;-><init>(Lp/g;ZFLandroidx/compose/ui/graphics/x1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(Lp/g;ZFLandroidx/compose/ui/graphics/x1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Landroidx/compose/material/ripple/AndroidRippleNode;-><init>(Lp/g;ZFLandroidx/compose/ui/graphics/x1;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private final Q1()Landroidx/compose/material/ripple/RippleContainer;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/material/ripple/AndroidRippleNode;->y:Landroidx/compose/material/ripple/RippleContainer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-object v0

    .line 9
    :cond_0
    invoke-static {}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->j()Landroidx/compose/runtime/s1;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {p0, v0}, Landroidx/compose/ui/node/e;->a(Landroidx/compose/ui/node/d;Landroidx/compose/runtime/q;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Landroid/view/View;

    .line 18
    .line 19
    invoke-static {v0}, Landroidx/compose/material/ripple/j;->b(Landroid/view/View;)Landroid/view/ViewGroup;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {v0}, Landroidx/compose/material/ripple/j;->a(Landroid/view/ViewGroup;)Landroidx/compose/material/ripple/RippleContainer;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iput-object v0, p0, Landroidx/compose/material/ripple/AndroidRippleNode;->y:Landroidx/compose/material/ripple/RippleContainer;

    .line 28
    .line 29
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    return-object v0
.end method

.method private final R1(Landroidx/compose/material/ripple/RippleHostView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/compose/material/ripple/AndroidRippleNode;->z:Landroidx/compose/material/ripple/RippleHostView;

    .line 2
    .line 3
    invoke-static {p0}, Landroidx/compose/ui/node/o;->a(Landroidx/compose/ui/node/n;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public H1(Lp/k$b;JF)V
    .locals 11

    .line 1
    invoke-direct {p0}, Landroidx/compose/material/ripple/AndroidRippleNode;->Q1()Landroidx/compose/material/ripple/RippleContainer;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Landroidx/compose/material/ripple/RippleContainer;->getRippleHostView(Landroidx/compose/material/ripple/e;)Landroidx/compose/material/ripple/RippleHostView;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0}, Landroidx/compose/material/ripple/RippleNode;->J1()Z

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    invoke-static {p4}, Lkotlin/math/MathKt;->d(F)I

    .line 14
    .line 15
    .line 16
    move-result v6

    .line 17
    invoke-virtual {p0}, Landroidx/compose/material/ripple/RippleNode;->L1()J

    .line 18
    .line 19
    .line 20
    move-result-wide v7

    .line 21
    invoke-virtual {p0}, Landroidx/compose/material/ripple/RippleNode;->K1()Lkotlin/jvm/functions/Function0;

    .line 22
    .line 23
    .line 24
    move-result-object p4

    .line 25
    invoke-interface {p4}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p4

    .line 29
    check-cast p4, Landroidx/compose/material/ripple/c;

    .line 30
    .line 31
    invoke-virtual {p4}, Landroidx/compose/material/ripple/c;->d()F

    .line 32
    .line 33
    .line 34
    move-result v9

    .line 35
    new-instance v10, Landroidx/compose/material/ripple/AndroidRippleNode$addRipple$1$1$1;

    .line 36
    .line 37
    invoke-direct {v10, p0}, Landroidx/compose/material/ripple/AndroidRippleNode$addRipple$1$1$1;-><init>(Landroidx/compose/material/ripple/AndroidRippleNode;)V

    .line 38
    .line 39
    .line 40
    move-object v1, v0

    .line 41
    move-object v2, p1

    .line 42
    move-wide v4, p2

    .line 43
    invoke-virtual/range {v1 .. v10}, Landroidx/compose/material/ripple/RippleHostView;->addRipple-KOepWvA(Lp/k$b;ZJIJFLkotlin/jvm/functions/Function0;)V

    .line 44
    .line 45
    .line 46
    invoke-direct {p0, v0}, Landroidx/compose/material/ripple/AndroidRippleNode;->R1(Landroidx/compose/material/ripple/RippleHostView;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public I1(Lz/g;)V
    .locals 7

    .line 1
    invoke-interface {p1}, Lz/g;->G0()Lz/d;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p1}, Lz/d;->e()Landroidx/compose/ui/graphics/m1;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iget-object v6, p0, Landroidx/compose/material/ripple/AndroidRippleNode;->z:Landroidx/compose/material/ripple/RippleHostView;

    .line 10
    .line 11
    if-eqz v6, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/compose/material/ripple/RippleNode;->M1()J

    .line 14
    .line 15
    .line 16
    move-result-wide v1

    .line 17
    invoke-virtual {p0}, Landroidx/compose/material/ripple/RippleNode;->L1()J

    .line 18
    .line 19
    .line 20
    move-result-wide v3

    .line 21
    invoke-virtual {p0}, Landroidx/compose/material/ripple/RippleNode;->K1()Lkotlin/jvm/functions/Function0;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Landroidx/compose/material/ripple/c;

    .line 30
    .line 31
    invoke-virtual {v0}, Landroidx/compose/material/ripple/c;->d()F

    .line 32
    .line 33
    .line 34
    move-result v5

    .line 35
    move-object v0, v6

    .line 36
    invoke-virtual/range {v0 .. v5}, Landroidx/compose/material/ripple/RippleHostView;->setRippleProperties-07v42R4(JJF)V

    .line 37
    .line 38
    .line 39
    invoke-static {p1}, Landroidx/compose/ui/graphics/h0;->d(Landroidx/compose/ui/graphics/m1;)Landroid/graphics/Canvas;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {v6, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 44
    .line 45
    .line 46
    :cond_0
    return-void
.end method

.method public O1(Lp/k$b;)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/compose/material/ripple/AndroidRippleNode;->z:Landroidx/compose/material/ripple/RippleHostView;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Landroidx/compose/material/ripple/RippleHostView;->removeRipple()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public n1()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/material/ripple/AndroidRippleNode;->y:Landroidx/compose/material/ripple/RippleContainer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p0}, Landroidx/compose/material/ripple/RippleContainer;->disposeRippleIfNeeded(Landroidx/compose/material/ripple/e;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public u0()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Landroidx/compose/material/ripple/AndroidRippleNode;->R1(Landroidx/compose/material/ripple/RippleHostView;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method
