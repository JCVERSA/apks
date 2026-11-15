.class public abstract Landroidx/compose/material/ripple/RippleNode;
.super Landroidx/compose/ui/f$c;
.source "source.java"

# interfaces
.implements Landroidx/compose/ui/node/d;
.implements Landroidx/compose/ui/node/n;
.implements Landroidx/compose/ui/node/w;


# instance fields
.field private final n:Lp/g;

.field private final o:Z

.field private final p:F

.field private final q:Landroidx/compose/ui/graphics/x1;

.field private final r:Lkotlin/jvm/functions/Function0;

.field private final s:Z

.field private t:Landroidx/compose/material/ripple/StateLayer;

.field private u:F

.field private v:J

.field private w:Z

.field private final x:Landroidx/collection/l0;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method private constructor <init>(Lp/g;ZFLandroidx/compose/ui/graphics/x1;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Landroidx/compose/ui/f$c;-><init>()V

    .line 3
    iput-object p1, p0, Landroidx/compose/material/ripple/RippleNode;->n:Lp/g;

    .line 4
    iput-boolean p2, p0, Landroidx/compose/material/ripple/RippleNode;->o:Z

    .line 5
    iput p3, p0, Landroidx/compose/material/ripple/RippleNode;->p:F

    .line 6
    iput-object p4, p0, Landroidx/compose/material/ripple/RippleNode;->q:Landroidx/compose/ui/graphics/x1;

    .line 7
    iput-object p5, p0, Landroidx/compose/material/ripple/RippleNode;->r:Lkotlin/jvm/functions/Function0;

    .line 8
    sget-object p1, Ly/m;->b:Ly/m$a;

    invoke-virtual {p1}, Ly/m$a;->b()J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/compose/material/ripple/RippleNode;->v:J

    .line 9
    new-instance p1, Landroidx/collection/l0;

    const/4 p2, 0x1

    const/4 p3, 0x0

    const/4 p4, 0x0

    invoke-direct {p1, p4, p2, p3}, Landroidx/collection/l0;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 10
    iput-object p1, p0, Landroidx/compose/material/ripple/RippleNode;->x:Landroidx/collection/l0;

    return-void
.end method

.method public synthetic constructor <init>(Lp/g;ZFLandroidx/compose/ui/graphics/x1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Landroidx/compose/material/ripple/RippleNode;-><init>(Lp/g;ZFLandroidx/compose/ui/graphics/x1;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static final synthetic C1(Landroidx/compose/material/ripple/RippleNode;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroidx/compose/material/ripple/RippleNode;->w:Z

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic D1(Landroidx/compose/material/ripple/RippleNode;)Lp/g;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/material/ripple/RippleNode;->n:Lp/g;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic E1(Landroidx/compose/material/ripple/RippleNode;)Landroidx/collection/l0;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/material/ripple/RippleNode;->x:Landroidx/collection/l0;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic F1(Landroidx/compose/material/ripple/RippleNode;Lp/k;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/compose/material/ripple/RippleNode;->N1(Lp/k;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic G1(Landroidx/compose/material/ripple/RippleNode;Lp/f;Lkotlinx/coroutines/n0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/compose/material/ripple/RippleNode;->P1(Lp/f;Lkotlinx/coroutines/n0;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final N1(Lp/k;)V
    .locals 3

    .line 1
    instance-of v0, p1, Lp/k$b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lp/k$b;

    .line 6
    .line 7
    iget-wide v0, p0, Landroidx/compose/material/ripple/RippleNode;->v:J

    .line 8
    .line 9
    iget v2, p0, Landroidx/compose/material/ripple/RippleNode;->u:F

    .line 10
    .line 11
    invoke-virtual {p0, p1, v0, v1, v2}, Landroidx/compose/material/ripple/RippleNode;->H1(Lp/k$b;JF)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    instance-of v0, p1, Lp/k$c;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    check-cast p1, Lp/k$c;

    .line 20
    .line 21
    invoke-virtual {p1}, Lp/k$c;->a()Lp/k$b;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p0, p1}, Landroidx/compose/material/ripple/RippleNode;->O1(Lp/k$b;)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    instance-of v0, p1, Lp/k$a;

    .line 30
    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    check-cast p1, Lp/k$a;

    .line 34
    .line 35
    invoke-virtual {p1}, Lp/k$a;->a()Lp/k$b;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p0, p1}, Landroidx/compose/material/ripple/RippleNode;->O1(Lp/k$b;)V

    .line 40
    .line 41
    .line 42
    :cond_2
    :goto_0
    return-void
.end method

.method private final P1(Lp/f;Lkotlinx/coroutines/n0;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/compose/material/ripple/RippleNode;->t:Landroidx/compose/material/ripple/StateLayer;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroidx/compose/material/ripple/StateLayer;

    .line 6
    .line 7
    iget-boolean v1, p0, Landroidx/compose/material/ripple/RippleNode;->o:Z

    .line 8
    .line 9
    iget-object v2, p0, Landroidx/compose/material/ripple/RippleNode;->r:Lkotlin/jvm/functions/Function0;

    .line 10
    .line 11
    invoke-direct {v0, v1, v2}, Landroidx/compose/material/ripple/StateLayer;-><init>(ZLkotlin/jvm/functions/Function0;)V

    .line 12
    .line 13
    .line 14
    invoke-static {p0}, Landroidx/compose/ui/node/o;->a(Landroidx/compose/ui/node/n;)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Landroidx/compose/material/ripple/RippleNode;->t:Landroidx/compose/material/ripple/StateLayer;

    .line 18
    .line 19
    :cond_0
    invoke-virtual {v0, p1, p2}, Landroidx/compose/material/ripple/StateLayer;->c(Lp/f;Lkotlinx/coroutines/n0;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public F(J)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/compose/material/ripple/RippleNode;->w:Z

    .line 3
    .line 4
    invoke-static {p0}, Landroidx/compose/ui/node/g;->i(Landroidx/compose/ui/node/f;)Lo0/e;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-static {p1, p2}, Lo0/u;->d(J)J

    .line 9
    .line 10
    .line 11
    move-result-wide p1

    .line 12
    iput-wide p1, p0, Landroidx/compose/material/ripple/RippleNode;->v:J

    .line 13
    .line 14
    iget p1, p0, Landroidx/compose/material/ripple/RippleNode;->p:F

    .line 15
    .line 16
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    iget-boolean p1, p0, Landroidx/compose/material/ripple/RippleNode;->o:Z

    .line 23
    .line 24
    iget-wide v1, p0, Landroidx/compose/material/ripple/RippleNode;->v:J

    .line 25
    .line 26
    invoke-static {v0, p1, v1, v2}, Landroidx/compose/material/ripple/d;->a(Lo0/e;ZJ)F

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    iget p1, p0, Landroidx/compose/material/ripple/RippleNode;->p:F

    .line 32
    .line 33
    invoke-interface {v0, p1}, Lo0/e;->D0(F)F

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    :goto_0
    iput p1, p0, Landroidx/compose/material/ripple/RippleNode;->u:F

    .line 38
    .line 39
    iget-object p1, p0, Landroidx/compose/material/ripple/RippleNode;->x:Landroidx/collection/l0;

    .line 40
    .line 41
    iget-object p2, p1, Landroidx/collection/ObjectList;->a:[Ljava/lang/Object;

    .line 42
    .line 43
    iget p1, p1, Landroidx/collection/ObjectList;->b:I

    .line 44
    .line 45
    const/4 v0, 0x0

    .line 46
    :goto_1
    if-ge v0, p1, :cond_1

    .line 47
    .line 48
    aget-object v1, p2, v0

    .line 49
    .line 50
    check-cast v1, Lp/k;

    .line 51
    .line 52
    invoke-direct {p0, v1}, Landroidx/compose/material/ripple/RippleNode;->N1(Lp/k;)V

    .line 53
    .line 54
    .line 55
    add-int/lit8 v0, v0, 0x1

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_1
    iget-object p1, p0, Landroidx/compose/material/ripple/RippleNode;->x:Landroidx/collection/l0;

    .line 59
    .line 60
    invoke-virtual {p1}, Landroidx/collection/l0;->f()V

    .line 61
    .line 62
    .line 63
    return-void
.end method

.method public abstract H1(Lp/k$b;JF)V
.end method

.method public synthetic I(Landroidx/compose/ui/layout/l;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/ui/node/v;->a(Landroidx/compose/ui/node/w;Landroidx/compose/ui/layout/l;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public abstract I1(Lz/g;)V
.end method

.method protected final J1()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/material/ripple/RippleNode;->o:Z

    .line 2
    .line 3
    return v0
.end method

.method protected final K1()Lkotlin/jvm/functions/Function0;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/material/ripple/RippleNode;->r:Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final L1()J
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/material/ripple/RippleNode;->q:Landroidx/compose/ui/graphics/x1;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/compose/ui/graphics/x1;->a()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method protected final M1()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/compose/material/ripple/RippleNode;->v:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public abstract O1(Lp/k$b;)V
.end method

.method public final h1()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/material/ripple/RippleNode;->s:Z

    .line 2
    .line 3
    return v0
.end method

.method public m1()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/f$c;->c1()Lkotlinx/coroutines/n0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v3, Landroidx/compose/material/ripple/RippleNode$onAttach$1;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-direct {v3, p0, v1}, Landroidx/compose/material/ripple/RippleNode$onAttach$1;-><init>(Landroidx/compose/material/ripple/RippleNode;Lkotlin/coroutines/Continuation;)V

    .line 9
    .line 10
    .line 11
    const/4 v4, 0x3

    .line 12
    const/4 v5, 0x0

    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public n(Lz/c;)V
    .locals 4

    .line 1
    invoke-interface {p1}, Lz/c;->X0()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/compose/material/ripple/RippleNode;->t:Landroidx/compose/material/ripple/StateLayer;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget v1, p0, Landroidx/compose/material/ripple/RippleNode;->u:F

    .line 9
    .line 10
    invoke-virtual {p0}, Landroidx/compose/material/ripple/RippleNode;->L1()J

    .line 11
    .line 12
    .line 13
    move-result-wide v2

    .line 14
    invoke-virtual {v0, p1, v1, v2, v3}, Landroidx/compose/material/ripple/StateLayer;->b(Lz/g;FJ)V

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/compose/material/ripple/RippleNode;->I1(Lz/g;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public synthetic w0()V
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/compose/ui/node/m;->a(Landroidx/compose/ui/node/n;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
