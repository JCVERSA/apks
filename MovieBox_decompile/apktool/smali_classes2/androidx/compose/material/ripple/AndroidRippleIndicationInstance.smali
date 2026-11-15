.class public final Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;
.super Landroidx/compose/material/ripple/RippleIndicationInstance;
.source "source.java"

# interfaces
.implements Landroidx/compose/runtime/b2;
.implements Landroidx/compose/material/ripple/e;


# instance fields
.field private final c:Z

.field private final d:F

.field private final e:Landroidx/compose/runtime/a3;

.field private final f:Landroidx/compose/runtime/a3;

.field private final g:Landroid/view/ViewGroup;

.field private h:Landroidx/compose/material/ripple/RippleContainer;

.field private final i:Landroidx/compose/runtime/i1;

.field private final j:Landroidx/compose/runtime/i1;

.field private k:J

.field private l:I

.field private final m:Lkotlin/jvm/functions/Function0;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method private constructor <init>(ZFLandroidx/compose/runtime/a3;Landroidx/compose/runtime/a3;Landroid/view/ViewGroup;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p4}, Landroidx/compose/material/ripple/RippleIndicationInstance;-><init>(ZLandroidx/compose/runtime/a3;)V

    .line 3
    iput-boolean p1, p0, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->c:Z

    .line 4
    iput p2, p0, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->d:F

    .line 5
    iput-object p3, p0, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->e:Landroidx/compose/runtime/a3;

    .line 6
    iput-object p4, p0, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->f:Landroidx/compose/runtime/a3;

    .line 7
    iput-object p5, p0, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->g:Landroid/view/ViewGroup;

    const/4 p1, 0x0

    const/4 p2, 0x2

    .line 8
    invoke-static {p1, p1, p2, p1}, Landroidx/compose/runtime/r2;->f(Ljava/lang/Object;Landroidx/compose/runtime/q2;ILjava/lang/Object;)Landroidx/compose/runtime/i1;

    move-result-object p3

    iput-object p3, p0, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->i:Landroidx/compose/runtime/i1;

    .line 9
    sget-object p3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p3, p1, p2, p1}, Landroidx/compose/runtime/r2;->f(Ljava/lang/Object;Landroidx/compose/runtime/q2;ILjava/lang/Object;)Landroidx/compose/runtime/i1;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->j:Landroidx/compose/runtime/i1;

    .line 10
    sget-object p1, Ly/m;->b:Ly/m$a;

    invoke-virtual {p1}, Ly/m$a;->b()J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->k:J

    const/4 p1, -0x1

    .line 11
    iput p1, p0, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->l:I

    .line 12
    new-instance p1, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance$onInvalidateRipple$1;

    invoke-direct {p1, p0}, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance$onInvalidateRipple$1;-><init>(Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;)V

    iput-object p1, p0, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->m:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public synthetic constructor <init>(ZFLandroidx/compose/runtime/a3;Landroidx/compose/runtime/a3;Landroid/view/ViewGroup;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;-><init>(ZFLandroidx/compose/runtime/a3;Landroidx/compose/runtime/a3;Landroid/view/ViewGroup;)V

    return-void
.end method

.method public static final synthetic f(Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->i()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic g(Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->l(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final h()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->h:Landroidx/compose/material/ripple/RippleContainer;

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

.method private final i()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->j:Landroidx/compose/runtime/i1;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/compose/runtime/a3;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Boolean;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method private final j()Landroidx/compose/material/ripple/RippleContainer;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->h:Landroidx/compose/material/ripple/RippleContainer;

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
    iget-object v0, p0, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->g:Landroid/view/ViewGroup;

    .line 10
    .line 11
    invoke-static {v0}, Landroidx/compose/material/ripple/j;->a(Landroid/view/ViewGroup;)Landroidx/compose/material/ripple/RippleContainer;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->h:Landroidx/compose/material/ripple/RippleContainer;

    .line 16
    .line 17
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    return-object v0
.end method

.method private final k()Landroidx/compose/material/ripple/RippleHostView;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->i:Landroidx/compose/runtime/i1;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/compose/runtime/a3;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/compose/material/ripple/RippleHostView;

    .line 8
    .line 9
    return-object v0
.end method

.method private final l(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->j:Landroidx/compose/runtime/i1;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {v0, p1}, Landroidx/compose/runtime/i1;->setValue(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private final m(Landroidx/compose/material/ripple/RippleHostView;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->i:Landroidx/compose/runtime/i1;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Landroidx/compose/runtime/i1;->setValue(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Lz/c;)V
    .locals 8

    .line 1
    invoke-interface {p1}, Lz/g;->i()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iput-wide v0, p0, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->k:J

    .line 6
    .line 7
    iget v0, p0, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->d:F

    .line 8
    .line 9
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-boolean v0, p0, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->c:Z

    .line 16
    .line 17
    invoke-interface {p1}, Lz/g;->i()J

    .line 18
    .line 19
    .line 20
    move-result-wide v1

    .line 21
    invoke-static {p1, v0, v1, v2}, Landroidx/compose/material/ripple/d;->a(Lo0/e;ZJ)F

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    invoke-static {v0}, Lkotlin/math/MathKt;->d(F)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    iget v0, p0, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->d:F

    .line 31
    .line 32
    invoke-interface {p1, v0}, Lo0/e;->c0(F)I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    :goto_0
    iput v0, p0, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->l:I

    .line 37
    .line 38
    iget-object v0, p0, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->e:Landroidx/compose/runtime/a3;

    .line 39
    .line 40
    invoke-interface {v0}, Landroidx/compose/runtime/a3;->getValue()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    check-cast v0, Landroidx/compose/ui/graphics/u1;

    .line 45
    .line 46
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/u1;->u()J

    .line 47
    .line 48
    .line 49
    move-result-wide v4

    .line 50
    iget-object v0, p0, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->f:Landroidx/compose/runtime/a3;

    .line 51
    .line 52
    invoke-interface {v0}, Landroidx/compose/runtime/a3;->getValue()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    check-cast v0, Landroidx/compose/material/ripple/c;

    .line 57
    .line 58
    invoke-virtual {v0}, Landroidx/compose/material/ripple/c;->d()F

    .line 59
    .line 60
    .line 61
    move-result v6

    .line 62
    invoke-interface {p1}, Lz/c;->X0()V

    .line 63
    .line 64
    .line 65
    iget v0, p0, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->d:F

    .line 66
    .line 67
    invoke-virtual {p0, p1, v0, v4, v5}, Landroidx/compose/material/ripple/RippleIndicationInstance;->c(Lz/g;FJ)V

    .line 68
    .line 69
    .line 70
    invoke-interface {p1}, Lz/g;->G0()Lz/d;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-interface {v0}, Lz/d;->e()Landroidx/compose/ui/graphics/m1;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-direct {p0}, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->i()Z

    .line 79
    .line 80
    .line 81
    invoke-direct {p0}, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->k()Landroidx/compose/material/ripple/RippleHostView;

    .line 82
    .line 83
    .line 84
    move-result-object v7

    .line 85
    if-eqz v7, :cond_1

    .line 86
    .line 87
    invoke-interface {p1}, Lz/g;->i()J

    .line 88
    .line 89
    .line 90
    move-result-wide v2

    .line 91
    move-object v1, v7

    .line 92
    invoke-virtual/range {v1 .. v6}, Landroidx/compose/material/ripple/RippleHostView;->setRippleProperties-07v42R4(JJF)V

    .line 93
    .line 94
    .line 95
    invoke-static {v0}, Landroidx/compose/ui/graphics/h0;->d(Landroidx/compose/ui/graphics/m1;)Landroid/graphics/Canvas;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    invoke-virtual {v7, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 100
    .line 101
    .line 102
    :cond_1
    return-void
.end method

.method public b(Lp/k$b;Lkotlinx/coroutines/n0;)V
    .locals 10

    .line 1
    invoke-direct {p0}, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->j()Landroidx/compose/material/ripple/RippleContainer;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-virtual {p2, p0}, Landroidx/compose/material/ripple/RippleContainer;->getRippleHostView(Landroidx/compose/material/ripple/e;)Landroidx/compose/material/ripple/RippleHostView;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    iget-boolean v2, p0, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->c:Z

    .line 10
    .line 11
    iget-wide v3, p0, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->k:J

    .line 12
    .line 13
    iget v5, p0, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->l:I

    .line 14
    .line 15
    iget-object v0, p0, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->e:Landroidx/compose/runtime/a3;

    .line 16
    .line 17
    invoke-interface {v0}, Landroidx/compose/runtime/a3;->getValue()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Landroidx/compose/ui/graphics/u1;

    .line 22
    .line 23
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/u1;->u()J

    .line 24
    .line 25
    .line 26
    move-result-wide v6

    .line 27
    iget-object v0, p0, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->f:Landroidx/compose/runtime/a3;

    .line 28
    .line 29
    invoke-interface {v0}, Landroidx/compose/runtime/a3;->getValue()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Landroidx/compose/material/ripple/c;

    .line 34
    .line 35
    invoke-virtual {v0}, Landroidx/compose/material/ripple/c;->d()F

    .line 36
    .line 37
    .line 38
    move-result v8

    .line 39
    iget-object v9, p0, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->m:Lkotlin/jvm/functions/Function0;

    .line 40
    .line 41
    move-object v0, p2

    .line 42
    move-object v1, p1

    .line 43
    invoke-virtual/range {v0 .. v9}, Landroidx/compose/material/ripple/RippleHostView;->addRipple-KOepWvA(Lp/k$b;ZJIJFLkotlin/jvm/functions/Function0;)V

    .line 44
    .line 45
    .line 46
    invoke-direct {p0, p2}, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->m(Landroidx/compose/material/ripple/RippleHostView;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public d(Lp/k$b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->k()Landroidx/compose/material/ripple/RippleHostView;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Landroidx/compose/material/ripple/RippleHostView;->removeRipple()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public onAbandoned()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->h()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onForgotten()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->h()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onRemembered()V
    .locals 0

    .line 1
    return-void
.end method

.method public u0()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->m(Landroidx/compose/material/ripple/RippleHostView;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method
