.class public final Landroidx/compose/ui/node/q0;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/node/q0$a;,
        Landroidx/compose/ui/node/q0$b;
    }
.end annotation


# instance fields
.field private final a:Landroidx/compose/ui/node/LayoutNode;

.field private final b:Landroidx/compose/ui/node/s;

.field private c:Landroidx/compose/ui/node/NodeCoordinator;

.field private final d:Landroidx/compose/ui/f$c;

.field private e:Landroidx/compose/ui/f$c;

.field private f:Landroidx/compose/runtime/collection/b;

.field private g:Landroidx/compose/runtime/collection/b;

.field private h:Landroidx/compose/ui/node/q0$a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/node/LayoutNode;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/ui/node/q0;->a:Landroidx/compose/ui/node/LayoutNode;

    .line 5
    .line 6
    new-instance v0, Landroidx/compose/ui/node/s;

    .line 7
    .line 8
    invoke-direct {v0, p1}, Landroidx/compose/ui/node/s;-><init>(Landroidx/compose/ui/node/LayoutNode;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Landroidx/compose/ui/node/q0;->b:Landroidx/compose/ui/node/s;

    .line 12
    .line 13
    iput-object v0, p0, Landroidx/compose/ui/node/q0;->c:Landroidx/compose/ui/node/NodeCoordinator;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroidx/compose/ui/node/s;->P2()Landroidx/compose/ui/node/l1;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iput-object p1, p0, Landroidx/compose/ui/node/q0;->d:Landroidx/compose/ui/f$c;

    .line 20
    .line 21
    iput-object p1, p0, Landroidx/compose/ui/node/q0;->e:Landroidx/compose/ui/f$c;

    .line 22
    .line 23
    return-void
.end method

.method private final A(ILandroidx/compose/runtime/collection/b;Landroidx/compose/runtime/collection/b;Landroidx/compose/ui/f$c;Z)V
    .locals 6

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p4

    .line 3
    move v2, p1

    .line 4
    move-object v3, p2

    .line 5
    move-object v4, p3

    .line 6
    move v5, p5

    .line 7
    invoke-direct/range {v0 .. v5}, Landroidx/compose/ui/node/q0;->j(Landroidx/compose/ui/f$c;ILandroidx/compose/runtime/collection/b;Landroidx/compose/runtime/collection/b;Z)Landroidx/compose/ui/node/q0$a;

    .line 8
    .line 9
    .line 10
    move-result-object p4

    .line 11
    invoke-virtual {p2}, Landroidx/compose/runtime/collection/b;->n()I

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    sub-int/2addr p2, p1

    .line 16
    invoke-virtual {p3}, Landroidx/compose/runtime/collection/b;->n()I

    .line 17
    .line 18
    .line 19
    move-result p3

    .line 20
    sub-int/2addr p3, p1

    .line 21
    invoke-static {p2, p3, p4}, Landroidx/compose/ui/node/o0;->e(IILandroidx/compose/ui/node/k;)V

    .line 22
    .line 23
    .line 24
    invoke-direct {p0}, Landroidx/compose/ui/node/q0;->B()V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method private final B()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/q0;->d:Landroidx/compose/ui/f$c;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/ui/f$c;->g1()Landroidx/compose/ui/f$c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-static {}, Landroidx/compose/ui/node/NodeChainKt;->b()Landroidx/compose/ui/node/NodeChainKt$a;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    if-eq v0, v2, :cond_0

    .line 15
    .line 16
    invoke-virtual {v0}, Landroidx/compose/ui/f$c;->e1()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    or-int/2addr v1, v2

    .line 21
    invoke-virtual {v0, v1}, Landroidx/compose/ui/f$c;->s1(I)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Landroidx/compose/ui/f$c;->g1()Landroidx/compose/ui/f$c;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    return-void
.end method

.method private final D(Landroidx/compose/ui/f$c;)Landroidx/compose/ui/f$c;
    .locals 5

    .line 1
    invoke-static {}, Landroidx/compose/ui/node/NodeChainKt;->b()Landroidx/compose/ui/node/NodeChainKt$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-ne p1, v0, :cond_0

    .line 8
    .line 9
    move p1, v2

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move p1, v1

    .line 12
    :goto_0
    if-nez p1, :cond_1

    .line 13
    .line 14
    const-string p1, "trimChain called on already trimmed chain"

    .line 15
    .line 16
    invoke-static {p1}, Lg0/a;->b(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    :cond_1
    invoke-static {}, Landroidx/compose/ui/node/NodeChainKt;->b()Landroidx/compose/ui/node/NodeChainKt$a;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p1}, Landroidx/compose/ui/f$c;->a1()Landroidx/compose/ui/f$c;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    if-nez p1, :cond_2

    .line 28
    .line 29
    iget-object p1, p0, Landroidx/compose/ui/node/q0;->d:Landroidx/compose/ui/f$c;

    .line 30
    .line 31
    :cond_2
    const/4 v0, 0x0

    .line 32
    invoke-virtual {p1, v0}, Landroidx/compose/ui/f$c;->y1(Landroidx/compose/ui/f$c;)V

    .line 33
    .line 34
    .line 35
    invoke-static {}, Landroidx/compose/ui/node/NodeChainKt;->b()Landroidx/compose/ui/node/NodeChainKt$a;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    invoke-virtual {v3, v0}, Landroidx/compose/ui/f$c;->u1(Landroidx/compose/ui/f$c;)V

    .line 40
    .line 41
    .line 42
    invoke-static {}, Landroidx/compose/ui/node/NodeChainKt;->b()Landroidx/compose/ui/node/NodeChainKt$a;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    const/4 v4, -0x1

    .line 47
    invoke-virtual {v3, v4}, Landroidx/compose/ui/f$c;->s1(I)V

    .line 48
    .line 49
    .line 50
    invoke-static {}, Landroidx/compose/ui/node/NodeChainKt;->b()Landroidx/compose/ui/node/NodeChainKt$a;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    invoke-virtual {v3, v0}, Landroidx/compose/ui/f$c;->B1(Landroidx/compose/ui/node/NodeCoordinator;)V

    .line 55
    .line 56
    .line 57
    invoke-static {}, Landroidx/compose/ui/node/NodeChainKt;->b()Landroidx/compose/ui/node/NodeChainKt$a;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    if-eq p1, v0, :cond_3

    .line 62
    .line 63
    move v1, v2

    .line 64
    :cond_3
    if-nez v1, :cond_4

    .line 65
    .line 66
    const-string v0, "trimChain did not update the head"

    .line 67
    .line 68
    invoke-static {v0}, Lg0/a;->b(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    :cond_4
    return-object p1
.end method

.method private final F(Landroidx/compose/ui/f$b;Landroidx/compose/ui/f$b;Landroidx/compose/ui/f$c;)V
    .locals 1

    .line 1
    instance-of p1, p1, Landroidx/compose/ui/node/l0;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eqz p1, :cond_1

    .line 5
    .line 6
    instance-of p1, p2, Landroidx/compose/ui/node/l0;

    .line 7
    .line 8
    if-eqz p1, :cond_1

    .line 9
    .line 10
    check-cast p2, Landroidx/compose/ui/node/l0;

    .line 11
    .line 12
    invoke-static {p2, p3}, Landroidx/compose/ui/node/NodeChainKt;->c(Landroidx/compose/ui/node/l0;Landroidx/compose/ui/f$c;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p3}, Landroidx/compose/ui/f$c;->j1()Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    invoke-static {p3}, Landroidx/compose/ui/node/t0;->e(Landroidx/compose/ui/f$c;)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {p3, v0}, Landroidx/compose/ui/f$c;->z1(Z)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    instance-of p1, p3, Landroidx/compose/ui/node/BackwardsCompatNode;

    .line 30
    .line 31
    if-eqz p1, :cond_3

    .line 32
    .line 33
    move-object p1, p3

    .line 34
    check-cast p1, Landroidx/compose/ui/node/BackwardsCompatNode;

    .line 35
    .line 36
    invoke-virtual {p1, p2}, Landroidx/compose/ui/node/BackwardsCompatNode;->G1(Landroidx/compose/ui/f$b;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p3}, Landroidx/compose/ui/f$c;->j1()Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    if-eqz p1, :cond_2

    .line 44
    .line 45
    invoke-static {p3}, Landroidx/compose/ui/node/t0;->e(Landroidx/compose/ui/f$c;)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    invoke-virtual {p3, v0}, Landroidx/compose/ui/f$c;->z1(Z)V

    .line 50
    .line 51
    .line 52
    :goto_0
    return-void

    .line 53
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 54
    .line 55
    const-string p2, "Unknown Modifier.Node type"

    .line 56
    .line 57
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw p1
.end method

.method public static final synthetic a(Landroidx/compose/ui/node/q0;Landroidx/compose/ui/f$b;Landroidx/compose/ui/f$c;)Landroidx/compose/ui/f$c;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/compose/ui/node/q0;->g(Landroidx/compose/ui/f$b;Landroidx/compose/ui/f$c;)Landroidx/compose/ui/f$c;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic b(Landroidx/compose/ui/node/q0;Landroidx/compose/ui/f$c;)Landroidx/compose/ui/f$c;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/compose/ui/node/q0;->h(Landroidx/compose/ui/f$c;)Landroidx/compose/ui/f$c;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic c(Landroidx/compose/ui/node/q0;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/compose/ui/node/q0;->i()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic d(Landroidx/compose/ui/node/q0;)Landroidx/compose/ui/node/q0$b;
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/4 p0, 0x0

    .line 5
    return-object p0
.end method

.method public static final synthetic e(Landroidx/compose/ui/node/q0;Landroidx/compose/ui/f$c;Landroidx/compose/ui/node/NodeCoordinator;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/compose/ui/node/q0;->v(Landroidx/compose/ui/f$c;Landroidx/compose/ui/node/NodeCoordinator;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic f(Landroidx/compose/ui/node/q0;Landroidx/compose/ui/f$b;Landroidx/compose/ui/f$b;Landroidx/compose/ui/f$c;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/ui/node/q0;->F(Landroidx/compose/ui/f$b;Landroidx/compose/ui/f$b;Landroidx/compose/ui/f$c;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final g(Landroidx/compose/ui/f$b;Landroidx/compose/ui/f$c;)Landroidx/compose/ui/f$c;
    .locals 1

    .line 1
    instance-of v0, p1, Landroidx/compose/ui/node/l0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Landroidx/compose/ui/node/l0;

    .line 6
    .line 7
    invoke-virtual {p1}, Landroidx/compose/ui/node/l0;->a()Landroidx/compose/ui/f$c;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-static {p1}, Landroidx/compose/ui/node/t0;->h(Landroidx/compose/ui/f$c;)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-virtual {p1, v0}, Landroidx/compose/ui/f$c;->w1(I)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    new-instance v0, Landroidx/compose/ui/node/BackwardsCompatNode;

    .line 20
    .line 21
    invoke-direct {v0, p1}, Landroidx/compose/ui/node/BackwardsCompatNode;-><init>(Landroidx/compose/ui/f$b;)V

    .line 22
    .line 23
    .line 24
    move-object p1, v0

    .line 25
    :goto_0
    invoke-virtual {p1}, Landroidx/compose/ui/f$c;->j1()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    const-string v0, "A ModifierNodeElement cannot return an already attached node from create() "

    .line 32
    .line 33
    invoke-static {v0}, Lg0/a;->b(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    :cond_1
    const/4 v0, 0x1

    .line 37
    invoke-virtual {p1, v0}, Landroidx/compose/ui/f$c;->v1(Z)V

    .line 38
    .line 39
    .line 40
    invoke-direct {p0, p1, p2}, Landroidx/compose/ui/node/q0;->r(Landroidx/compose/ui/f$c;Landroidx/compose/ui/f$c;)Landroidx/compose/ui/f$c;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    return-object p1
.end method

.method private final h(Landroidx/compose/ui/f$c;)Landroidx/compose/ui/f$c;
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroidx/compose/ui/f$c;->j1()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {p1}, Landroidx/compose/ui/node/t0;->d(Landroidx/compose/ui/f$c;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Landroidx/compose/ui/f$c;->r1()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Landroidx/compose/ui/f$c;->l1()V

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-direct {p0, p1}, Landroidx/compose/ui/node/q0;->w(Landroidx/compose/ui/f$c;)Landroidx/compose/ui/f$c;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    return-object p1
.end method

.method private final i()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/q0;->e:Landroidx/compose/ui/f$c;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/ui/f$c;->Z0()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method private final j(Landroidx/compose/ui/f$c;ILandroidx/compose/runtime/collection/b;Landroidx/compose/runtime/collection/b;Z)Landroidx/compose/ui/node/q0$a;
    .locals 8

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/q0;->h:Landroidx/compose/ui/node/q0$a;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroidx/compose/ui/node/q0$a;

    .line 6
    .line 7
    move-object v1, v0

    .line 8
    move-object v2, p0

    .line 9
    move-object v3, p1

    .line 10
    move v4, p2

    .line 11
    move-object v5, p3

    .line 12
    move-object v6, p4

    .line 13
    move v7, p5

    .line 14
    invoke-direct/range {v1 .. v7}, Landroidx/compose/ui/node/q0$a;-><init>(Landroidx/compose/ui/node/q0;Landroidx/compose/ui/f$c;ILandroidx/compose/runtime/collection/b;Landroidx/compose/runtime/collection/b;Z)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Landroidx/compose/ui/node/q0;->h:Landroidx/compose/ui/node/q0$a;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {v0, p1}, Landroidx/compose/ui/node/q0$a;->g(Landroidx/compose/ui/f$c;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p2}, Landroidx/compose/ui/node/q0$a;->h(I)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p3}, Landroidx/compose/ui/node/q0$a;->f(Landroidx/compose/runtime/collection/b;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, p4}, Landroidx/compose/ui/node/q0$a;->e(Landroidx/compose/runtime/collection/b;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, p5}, Landroidx/compose/ui/node/q0$a;->i(Z)V

    .line 33
    .line 34
    .line 35
    :goto_0
    return-object v0
.end method

.method private final r(Landroidx/compose/ui/f$c;Landroidx/compose/ui/f$c;)Landroidx/compose/ui/f$c;
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroidx/compose/ui/f$c;->a1()Landroidx/compose/ui/f$c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Landroidx/compose/ui/f$c;->y1(Landroidx/compose/ui/f$c;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroidx/compose/ui/f$c;->u1(Landroidx/compose/ui/f$c;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-virtual {p2, p1}, Landroidx/compose/ui/f$c;->u1(Landroidx/compose/ui/f$c;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, p2}, Landroidx/compose/ui/f$c;->y1(Landroidx/compose/ui/f$c;)V

    .line 17
    .line 18
    .line 19
    return-object p1
.end method

.method private final u()Landroidx/compose/ui/f$c;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/q0;->e:Landroidx/compose/ui/f$c;

    .line 2
    .line 3
    invoke-static {}, Landroidx/compose/ui/node/NodeChainKt;->b()Landroidx/compose/ui/node/NodeChainKt$a;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eq v0, v1, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    if-nez v0, :cond_1

    .line 13
    .line 14
    const-string v0, "padChain called on already padded chain"

    .line 15
    .line 16
    invoke-static {v0}, Lg0/a;->b(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    :cond_1
    iget-object v0, p0, Landroidx/compose/ui/node/q0;->e:Landroidx/compose/ui/f$c;

    .line 20
    .line 21
    invoke-static {}, Landroidx/compose/ui/node/NodeChainKt;->b()Landroidx/compose/ui/node/NodeChainKt$a;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Landroidx/compose/ui/f$c;->y1(Landroidx/compose/ui/f$c;)V

    .line 26
    .line 27
    .line 28
    invoke-static {}, Landroidx/compose/ui/node/NodeChainKt;->b()Landroidx/compose/ui/node/NodeChainKt$a;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v1, v0}, Landroidx/compose/ui/f$c;->u1(Landroidx/compose/ui/f$c;)V

    .line 33
    .line 34
    .line 35
    invoke-static {}, Landroidx/compose/ui/node/NodeChainKt;->b()Landroidx/compose/ui/node/NodeChainKt$a;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    return-object v0
.end method

.method private final v(Landroidx/compose/ui/f$c;Landroidx/compose/ui/node/NodeCoordinator;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroidx/compose/ui/f$c;->g1()Landroidx/compose/ui/f$c;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    :goto_0
    if-eqz p1, :cond_3

    .line 6
    .line 7
    invoke-static {}, Landroidx/compose/ui/node/NodeChainKt;->b()Landroidx/compose/ui/node/NodeChainKt$a;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-ne p1, v0, :cond_1

    .line 12
    .line 13
    iget-object p1, p0, Landroidx/compose/ui/node/q0;->a:Landroidx/compose/ui/node/LayoutNode;

    .line 14
    .line 15
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->h0()Landroidx/compose/ui/node/LayoutNode;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->M()Landroidx/compose/ui/node/NodeCoordinator;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    const/4 p1, 0x0

    .line 27
    :goto_1
    invoke-virtual {p2, p1}, Landroidx/compose/ui/node/NodeCoordinator;->D2(Landroidx/compose/ui/node/NodeCoordinator;)V

    .line 28
    .line 29
    .line 30
    iput-object p2, p0, Landroidx/compose/ui/node/q0;->c:Landroidx/compose/ui/node/NodeCoordinator;

    .line 31
    .line 32
    goto :goto_2

    .line 33
    :cond_1
    const/4 v0, 0x2

    .line 34
    invoke-static {v0}, Landroidx/compose/ui/node/s0;->a(I)I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    invoke-virtual {p1}, Landroidx/compose/ui/f$c;->e1()I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    and-int/2addr v0, v1

    .line 43
    if-eqz v0, :cond_2

    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_2
    invoke-virtual {p1, p2}, Landroidx/compose/ui/f$c;->B1(Landroidx/compose/ui/node/NodeCoordinator;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Landroidx/compose/ui/f$c;->g1()Landroidx/compose/ui/f$c;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    goto :goto_0

    .line 54
    :cond_3
    :goto_2
    return-void
.end method

.method private final w(Landroidx/compose/ui/f$c;)Landroidx/compose/ui/f$c;
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroidx/compose/ui/f$c;->a1()Landroidx/compose/ui/f$c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Landroidx/compose/ui/f$c;->g1()Landroidx/compose/ui/f$c;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroidx/compose/ui/f$c;->y1(Landroidx/compose/ui/f$c;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v2}, Landroidx/compose/ui/f$c;->u1(Landroidx/compose/ui/f$c;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    if-eqz v1, :cond_1

    .line 19
    .line 20
    invoke-virtual {v1, v0}, Landroidx/compose/ui/f$c;->u1(Landroidx/compose/ui/f$c;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v2}, Landroidx/compose/ui/f$c;->y1(Landroidx/compose/ui/f$c;)V

    .line 24
    .line 25
    .line 26
    :cond_1
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    return-object v1
.end method


# virtual methods
.method public final C()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/q0;->b:Landroidx/compose/ui/node/s;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/compose/ui/node/q0;->d:Landroidx/compose/ui/f$c;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroidx/compose/ui/f$c;->g1()Landroidx/compose/ui/f$c;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    :goto_0
    if-eqz v1, :cond_3

    .line 10
    .line 11
    invoke-static {v1}, Landroidx/compose/ui/node/g;->d(Landroidx/compose/ui/f$c;)Landroidx/compose/ui/node/x;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    if-eqz v2, :cond_2

    .line 16
    .line 17
    invoke-virtual {v1}, Landroidx/compose/ui/f$c;->b1()Landroidx/compose/ui/node/NodeCoordinator;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    if-eqz v3, :cond_0

    .line 22
    .line 23
    invoke-virtual {v1}, Landroidx/compose/ui/f$c;->b1()Landroidx/compose/ui/node/NodeCoordinator;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    const-string v4, "null cannot be cast to non-null type androidx.compose.ui.node.LayoutModifierNodeCoordinator"

    .line 28
    .line 29
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    check-cast v3, Landroidx/compose/ui/node/y;

    .line 33
    .line 34
    invoke-virtual {v3}, Landroidx/compose/ui/node/y;->Q2()Landroidx/compose/ui/node/x;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    invoke-virtual {v3, v2}, Landroidx/compose/ui/node/y;->T2(Landroidx/compose/ui/node/x;)V

    .line 39
    .line 40
    .line 41
    if-eq v4, v1, :cond_1

    .line 42
    .line 43
    invoke-virtual {v3}, Landroidx/compose/ui/node/NodeCoordinator;->n2()V

    .line 44
    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_0
    new-instance v3, Landroidx/compose/ui/node/y;

    .line 48
    .line 49
    iget-object v4, p0, Landroidx/compose/ui/node/q0;->a:Landroidx/compose/ui/node/LayoutNode;

    .line 50
    .line 51
    invoke-direct {v3, v4, v2}, Landroidx/compose/ui/node/y;-><init>(Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/ui/node/x;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, v3}, Landroidx/compose/ui/f$c;->B1(Landroidx/compose/ui/node/NodeCoordinator;)V

    .line 55
    .line 56
    .line 57
    :cond_1
    :goto_1
    invoke-virtual {v0, v3}, Landroidx/compose/ui/node/NodeCoordinator;->D2(Landroidx/compose/ui/node/NodeCoordinator;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v3, v0}, Landroidx/compose/ui/node/NodeCoordinator;->C2(Landroidx/compose/ui/node/NodeCoordinator;)V

    .line 61
    .line 62
    .line 63
    move-object v0, v3

    .line 64
    goto :goto_2

    .line 65
    :cond_2
    invoke-virtual {v1, v0}, Landroidx/compose/ui/f$c;->B1(Landroidx/compose/ui/node/NodeCoordinator;)V

    .line 66
    .line 67
    .line 68
    :goto_2
    invoke-virtual {v1}, Landroidx/compose/ui/f$c;->g1()Landroidx/compose/ui/f$c;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    goto :goto_0

    .line 73
    :cond_3
    iget-object v1, p0, Landroidx/compose/ui/node/q0;->a:Landroidx/compose/ui/node/LayoutNode;

    .line 74
    .line 75
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->h0()Landroidx/compose/ui/node/LayoutNode;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    if-eqz v1, :cond_4

    .line 80
    .line 81
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->M()Landroidx/compose/ui/node/NodeCoordinator;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    goto :goto_3

    .line 86
    :cond_4
    const/4 v1, 0x0

    .line 87
    :goto_3
    invoke-virtual {v0, v1}, Landroidx/compose/ui/node/NodeCoordinator;->D2(Landroidx/compose/ui/node/NodeCoordinator;)V

    .line 88
    .line 89
    .line 90
    iput-object v0, p0, Landroidx/compose/ui/node/q0;->c:Landroidx/compose/ui/node/NodeCoordinator;

    .line 91
    .line 92
    return-void
.end method

.method public final E(Landroidx/compose/ui/f;)V
    .locals 12

    .line 1
    invoke-direct {p0}, Landroidx/compose/ui/node/q0;->u()Landroidx/compose/ui/f$c;

    .line 2
    .line 3
    .line 4
    move-result-object v6

    .line 5
    iget-object v7, p0, Landroidx/compose/ui/node/q0;->f:Landroidx/compose/runtime/collection/b;

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    if-eqz v7, :cond_0

    .line 9
    .line 10
    invoke-virtual {v7}, Landroidx/compose/runtime/collection/b;->n()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move v1, v0

    .line 16
    :goto_0
    iget-object v2, p0, Landroidx/compose/ui/node/q0;->g:Landroidx/compose/runtime/collection/b;

    .line 17
    .line 18
    const/16 v3, 0x10

    .line 19
    .line 20
    if-nez v2, :cond_1

    .line 21
    .line 22
    new-instance v2, Landroidx/compose/runtime/collection/b;

    .line 23
    .line 24
    new-array v4, v3, [Landroidx/compose/ui/f$b;

    .line 25
    .line 26
    invoke-direct {v2, v4, v0}, Landroidx/compose/runtime/collection/b;-><init>([Ljava/lang/Object;I)V

    .line 27
    .line 28
    .line 29
    :cond_1
    invoke-static {p1, v2}, Landroidx/compose/ui/node/NodeChainKt;->a(Landroidx/compose/ui/f;Landroidx/compose/runtime/collection/b;)Landroidx/compose/runtime/collection/b;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p1}, Landroidx/compose/runtime/collection/b;->n()I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    const/4 v8, 0x0

    .line 38
    const-string v4, "expected prior modifier list to be non-empty"

    .line 39
    .line 40
    const/4 v9, 0x1

    .line 41
    if-ne v2, v1, :cond_8

    .line 42
    .line 43
    invoke-virtual {v6}, Landroidx/compose/ui/f$c;->a1()Landroidx/compose/ui/f$c;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    move-object v3, v2

    .line 48
    move v2, v0

    .line 49
    :goto_1
    if-eqz v3, :cond_4

    .line 50
    .line 51
    if-ge v2, v1, :cond_4

    .line 52
    .line 53
    if-eqz v7, :cond_5

    .line 54
    .line 55
    invoke-virtual {v7}, Landroidx/compose/runtime/collection/b;->m()[Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v5

    .line 59
    aget-object v5, v5, v2

    .line 60
    .line 61
    check-cast v5, Landroidx/compose/ui/f$b;

    .line 62
    .line 63
    invoke-virtual {p1}, Landroidx/compose/runtime/collection/b;->m()[Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v10

    .line 67
    aget-object v10, v10, v2

    .line 68
    .line 69
    check-cast v10, Landroidx/compose/ui/f$b;

    .line 70
    .line 71
    invoke-static {v5, v10}, Landroidx/compose/ui/node/NodeChainKt;->d(Landroidx/compose/ui/f$b;Landroidx/compose/ui/f$b;)I

    .line 72
    .line 73
    .line 74
    move-result v11

    .line 75
    if-eqz v11, :cond_3

    .line 76
    .line 77
    if-eq v11, v9, :cond_2

    .line 78
    .line 79
    goto :goto_2

    .line 80
    :cond_2
    invoke-direct {p0, v5, v10, v3}, Landroidx/compose/ui/node/q0;->F(Landroidx/compose/ui/f$b;Landroidx/compose/ui/f$b;Landroidx/compose/ui/f$c;)V

    .line 81
    .line 82
    .line 83
    :goto_2
    invoke-virtual {v3}, Landroidx/compose/ui/f$c;->a1()Landroidx/compose/ui/f$c;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    add-int/lit8 v2, v2, 0x1

    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_3
    invoke-virtual {v3}, Landroidx/compose/ui/f$c;->g1()Landroidx/compose/ui/f$c;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    :cond_4
    move-object v5, v3

    .line 95
    goto :goto_3

    .line 96
    :cond_5
    invoke-static {v4}, Lg0/a;->c(Ljava/lang/String;)Ljava/lang/Void;

    .line 97
    .line 98
    .line 99
    new-instance p1, Lkotlin/KotlinNothingValueException;

    .line 100
    .line 101
    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    .line 102
    .line 103
    .line 104
    throw p1

    .line 105
    :goto_3
    if-ge v2, v1, :cond_10

    .line 106
    .line 107
    if-eqz v7, :cond_7

    .line 108
    .line 109
    if-eqz v5, :cond_6

    .line 110
    .line 111
    iget-object v0, p0, Landroidx/compose/ui/node/q0;->a:Landroidx/compose/ui/node/LayoutNode;

    .line 112
    .line 113
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->A()Z

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    xor-int/lit8 v10, v0, 0x1

    .line 118
    .line 119
    move-object v0, p0

    .line 120
    move v1, v2

    .line 121
    move-object v2, v7

    .line 122
    move-object v3, p1

    .line 123
    move-object v4, v5

    .line 124
    move v5, v10

    .line 125
    invoke-direct/range {v0 .. v5}, Landroidx/compose/ui/node/q0;->A(ILandroidx/compose/runtime/collection/b;Landroidx/compose/runtime/collection/b;Landroidx/compose/ui/f$c;Z)V

    .line 126
    .line 127
    .line 128
    :goto_4
    move v0, v9

    .line 129
    goto/16 :goto_8

    .line 130
    .line 131
    :cond_6
    const-string p1, "structuralUpdate requires a non-null tail"

    .line 132
    .line 133
    invoke-static {p1}, Lg0/a;->c(Ljava/lang/String;)Ljava/lang/Void;

    .line 134
    .line 135
    .line 136
    new-instance p1, Lkotlin/KotlinNothingValueException;

    .line 137
    .line 138
    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    .line 139
    .line 140
    .line 141
    throw p1

    .line 142
    :cond_7
    invoke-static {v4}, Lg0/a;->c(Ljava/lang/String;)Ljava/lang/Void;

    .line 143
    .line 144
    .line 145
    new-instance p1, Lkotlin/KotlinNothingValueException;

    .line 146
    .line 147
    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    .line 148
    .line 149
    .line 150
    throw p1

    .line 151
    :cond_8
    iget-object v2, p0, Landroidx/compose/ui/node/q0;->a:Landroidx/compose/ui/node/LayoutNode;

    .line 152
    .line 153
    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNode;->A()Z

    .line 154
    .line 155
    .line 156
    move-result v2

    .line 157
    if-eqz v2, :cond_a

    .line 158
    .line 159
    if-nez v1, :cond_a

    .line 160
    .line 161
    move-object v1, v6

    .line 162
    :goto_5
    invoke-virtual {p1}, Landroidx/compose/runtime/collection/b;->n()I

    .line 163
    .line 164
    .line 165
    move-result v2

    .line 166
    if-ge v0, v2, :cond_9

    .line 167
    .line 168
    invoke-virtual {p1}, Landroidx/compose/runtime/collection/b;->m()[Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v2

    .line 172
    aget-object v2, v2, v0

    .line 173
    .line 174
    check-cast v2, Landroidx/compose/ui/f$b;

    .line 175
    .line 176
    invoke-direct {p0, v2, v1}, Landroidx/compose/ui/node/q0;->g(Landroidx/compose/ui/f$b;Landroidx/compose/ui/f$c;)Landroidx/compose/ui/f$c;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    add-int/lit8 v0, v0, 0x1

    .line 181
    .line 182
    goto :goto_5

    .line 183
    :cond_9
    invoke-direct {p0}, Landroidx/compose/ui/node/q0;->B()V

    .line 184
    .line 185
    .line 186
    goto :goto_4

    .line 187
    :cond_a
    invoke-virtual {p1}, Landroidx/compose/runtime/collection/b;->n()I

    .line 188
    .line 189
    .line 190
    move-result v1

    .line 191
    if-nez v1, :cond_e

    .line 192
    .line 193
    if-eqz v7, :cond_d

    .line 194
    .line 195
    invoke-virtual {v6}, Landroidx/compose/ui/f$c;->a1()Landroidx/compose/ui/f$c;

    .line 196
    .line 197
    .line 198
    move-result-object v1

    .line 199
    move v2, v0

    .line 200
    :goto_6
    if-eqz v1, :cond_b

    .line 201
    .line 202
    invoke-virtual {v7}, Landroidx/compose/runtime/collection/b;->n()I

    .line 203
    .line 204
    .line 205
    move-result v3

    .line 206
    if-ge v2, v3, :cond_b

    .line 207
    .line 208
    invoke-direct {p0, v1}, Landroidx/compose/ui/node/q0;->h(Landroidx/compose/ui/f$c;)Landroidx/compose/ui/f$c;

    .line 209
    .line 210
    .line 211
    move-result-object v1

    .line 212
    invoke-virtual {v1}, Landroidx/compose/ui/f$c;->a1()Landroidx/compose/ui/f$c;

    .line 213
    .line 214
    .line 215
    move-result-object v1

    .line 216
    add-int/lit8 v2, v2, 0x1

    .line 217
    .line 218
    goto :goto_6

    .line 219
    :cond_b
    iget-object v1, p0, Landroidx/compose/ui/node/q0;->b:Landroidx/compose/ui/node/s;

    .line 220
    .line 221
    iget-object v2, p0, Landroidx/compose/ui/node/q0;->a:Landroidx/compose/ui/node/LayoutNode;

    .line 222
    .line 223
    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNode;->h0()Landroidx/compose/ui/node/LayoutNode;

    .line 224
    .line 225
    .line 226
    move-result-object v2

    .line 227
    if-eqz v2, :cond_c

    .line 228
    .line 229
    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNode;->M()Landroidx/compose/ui/node/NodeCoordinator;

    .line 230
    .line 231
    .line 232
    move-result-object v2

    .line 233
    goto :goto_7

    .line 234
    :cond_c
    move-object v2, v8

    .line 235
    :goto_7
    invoke-virtual {v1, v2}, Landroidx/compose/ui/node/NodeCoordinator;->D2(Landroidx/compose/ui/node/NodeCoordinator;)V

    .line 236
    .line 237
    .line 238
    iget-object v1, p0, Landroidx/compose/ui/node/q0;->b:Landroidx/compose/ui/node/s;

    .line 239
    .line 240
    iput-object v1, p0, Landroidx/compose/ui/node/q0;->c:Landroidx/compose/ui/node/NodeCoordinator;

    .line 241
    .line 242
    goto :goto_8

    .line 243
    :cond_d
    invoke-static {v4}, Lg0/a;->c(Ljava/lang/String;)Ljava/lang/Void;

    .line 244
    .line 245
    .line 246
    new-instance p1, Lkotlin/KotlinNothingValueException;

    .line 247
    .line 248
    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    .line 249
    .line 250
    .line 251
    throw p1

    .line 252
    :cond_e
    if-nez v7, :cond_f

    .line 253
    .line 254
    new-instance v7, Landroidx/compose/runtime/collection/b;

    .line 255
    .line 256
    new-array v1, v3, [Landroidx/compose/ui/f$b;

    .line 257
    .line 258
    invoke-direct {v7, v1, v0}, Landroidx/compose/runtime/collection/b;-><init>([Ljava/lang/Object;I)V

    .line 259
    .line 260
    .line 261
    :cond_f
    iget-object v0, p0, Landroidx/compose/ui/node/q0;->a:Landroidx/compose/ui/node/LayoutNode;

    .line 262
    .line 263
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->A()Z

    .line 264
    .line 265
    .line 266
    move-result v0

    .line 267
    xor-int/lit8 v5, v0, 0x1

    .line 268
    .line 269
    const/4 v1, 0x0

    .line 270
    move-object v0, p0

    .line 271
    move-object v2, v7

    .line 272
    move-object v3, p1

    .line 273
    move-object v4, v6

    .line 274
    invoke-direct/range {v0 .. v5}, Landroidx/compose/ui/node/q0;->A(ILandroidx/compose/runtime/collection/b;Landroidx/compose/runtime/collection/b;Landroidx/compose/ui/f$c;Z)V

    .line 275
    .line 276
    .line 277
    goto/16 :goto_4

    .line 278
    .line 279
    :cond_10
    :goto_8
    iput-object p1, p0, Landroidx/compose/ui/node/q0;->f:Landroidx/compose/runtime/collection/b;

    .line 280
    .line 281
    if-eqz v7, :cond_11

    .line 282
    .line 283
    invoke-virtual {v7}, Landroidx/compose/runtime/collection/b;->h()V

    .line 284
    .line 285
    .line 286
    move-object v8, v7

    .line 287
    :cond_11
    iput-object v8, p0, Landroidx/compose/ui/node/q0;->g:Landroidx/compose/runtime/collection/b;

    .line 288
    .line 289
    invoke-direct {p0, v6}, Landroidx/compose/ui/node/q0;->D(Landroidx/compose/ui/f$c;)Landroidx/compose/ui/f$c;

    .line 290
    .line 291
    .line 292
    move-result-object p1

    .line 293
    iput-object p1, p0, Landroidx/compose/ui/node/q0;->e:Landroidx/compose/ui/f$c;

    .line 294
    .line 295
    if-eqz v0, :cond_12

    .line 296
    .line 297
    invoke-virtual {p0}, Landroidx/compose/ui/node/q0;->C()V

    .line 298
    .line 299
    .line 300
    :cond_12
    return-void
.end method

.method public final k()Landroidx/compose/ui/f$c;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/q0;->e:Landroidx/compose/ui/f$c;

    .line 2
    .line 3
    return-object v0
.end method

.method public final l()Landroidx/compose/ui/node/s;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/q0;->b:Landroidx/compose/ui/node/s;

    .line 2
    .line 3
    return-object v0
.end method

.method public final m()Landroidx/compose/ui/node/LayoutNode;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/q0;->a:Landroidx/compose/ui/node/LayoutNode;

    .line 2
    .line 3
    return-object v0
.end method

.method public final n()Landroidx/compose/ui/node/NodeCoordinator;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/q0;->c:Landroidx/compose/ui/node/NodeCoordinator;

    .line 2
    .line 3
    return-object v0
.end method

.method public final o()Landroidx/compose/ui/f$c;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/q0;->d:Landroidx/compose/ui/f$c;

    .line 2
    .line 3
    return-object v0
.end method

.method public final p(I)Z
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/compose/ui/node/q0;->i()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    and-int/2addr p1, v0

    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    const/4 p1, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    :goto_0
    return p1
.end method

.method public final q(I)Z
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/compose/ui/node/q0;->i()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    and-int/2addr p1, v0

    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    const/4 p1, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    :goto_0
    return p1
.end method

.method public final s()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/node/q0;->k()Landroidx/compose/ui/f$c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    :goto_0
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/compose/ui/f$c;->k1()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Landroidx/compose/ui/f$c;->a1()Landroidx/compose/ui/f$c;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    return-void
.end method

.method public final t()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/node/q0;->o()Landroidx/compose/ui/f$c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    :goto_0
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/compose/ui/f$c;->j1()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Landroidx/compose/ui/f$c;->l1()V

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-virtual {v0}, Landroidx/compose/ui/f$c;->g1()Landroidx/compose/ui/f$c;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "["

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Landroidx/compose/ui/node/q0;->e:Landroidx/compose/ui/f$c;

    .line 12
    .line 13
    iget-object v2, p0, Landroidx/compose/ui/node/q0;->d:Landroidx/compose/ui/f$c;

    .line 14
    .line 15
    const-string v3, "]"

    .line 16
    .line 17
    if-ne v1, v2, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/node/q0;->k()Landroidx/compose/ui/f$c;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    :goto_0
    if-eqz v1, :cond_2

    .line 28
    .line 29
    invoke-virtual {p0}, Landroidx/compose/ui/node/q0;->o()Landroidx/compose/ui/f$c;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    if-eq v1, v2, :cond_2

    .line 34
    .line 35
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Landroidx/compose/ui/f$c;->a1()Landroidx/compose/ui/f$c;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    iget-object v4, p0, Landroidx/compose/ui/node/q0;->d:Landroidx/compose/ui/f$c;

    .line 47
    .line 48
    if-ne v2, v4, :cond_1

    .line 49
    .line 50
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_1
    const-string v2, ","

    .line 55
    .line 56
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1}, Landroidx/compose/ui/f$c;->a1()Landroidx/compose/ui/f$c;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    goto :goto_0

    .line 64
    :cond_2
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    const-string v1, "StringBuilder().apply(builderAction).toString()"

    .line 69
    .line 70
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    return-object v0
.end method

.method public final x()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/node/q0;->o()Landroidx/compose/ui/f$c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    :goto_0
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/compose/ui/f$c;->j1()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Landroidx/compose/ui/f$c;->p1()V

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-virtual {v0}, Landroidx/compose/ui/f$c;->g1()Landroidx/compose/ui/f$c;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    invoke-virtual {p0}, Landroidx/compose/ui/node/q0;->z()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Landroidx/compose/ui/node/q0;->t()V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final y()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/node/q0;->k()Landroidx/compose/ui/f$c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    :goto_0
    if-eqz v0, :cond_2

    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/compose/ui/f$c;->q1()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Landroidx/compose/ui/f$c;->d1()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    invoke-static {v0}, Landroidx/compose/ui/node/t0;->a(Landroidx/compose/ui/f$c;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-virtual {v0}, Landroidx/compose/ui/f$c;->i1()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    invoke-static {v0}, Landroidx/compose/ui/node/t0;->e(Landroidx/compose/ui/f$c;)V

    .line 26
    .line 27
    .line 28
    :cond_1
    const/4 v1, 0x0

    .line 29
    invoke-virtual {v0, v1}, Landroidx/compose/ui/f$c;->v1(Z)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroidx/compose/ui/f$c;->z1(Z)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Landroidx/compose/ui/f$c;->a1()Landroidx/compose/ui/f$c;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    goto :goto_0

    .line 40
    :cond_2
    return-void
.end method

.method public final z()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/node/q0;->o()Landroidx/compose/ui/f$c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    :goto_0
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/compose/ui/f$c;->j1()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Landroidx/compose/ui/f$c;->r1()V

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-virtual {v0}, Landroidx/compose/ui/f$c;->g1()Landroidx/compose/ui/f$c;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    return-void
.end method
