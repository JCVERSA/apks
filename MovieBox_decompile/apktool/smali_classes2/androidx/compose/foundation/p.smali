.class final Landroidx/compose/foundation/p;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:I

.field private c:J

.field private d:Landroid/widget/EdgeEffect;

.field private e:Landroid/widget/EdgeEffect;

.field private f:Landroid/widget/EdgeEffect;

.field private g:Landroid/widget/EdgeEffect;

.field private h:Landroid/widget/EdgeEffect;

.field private i:Landroid/widget/EdgeEffect;

.field private j:Landroid/widget/EdgeEffect;

.field private k:Landroid/widget/EdgeEffect;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/foundation/p;->a:Landroid/content/Context;

    .line 5
    .line 6
    iput p2, p0, Landroidx/compose/foundation/p;->b:I

    .line 7
    .line 8
    sget-object p1, Lo0/t;->b:Lo0/t$a;

    .line 9
    .line 10
    invoke-virtual {p1}, Lo0/t$a;->a()J

    .line 11
    .line 12
    .line 13
    move-result-wide p1

    .line 14
    iput-wide p1, p0, Landroidx/compose/foundation/p;->c:J

    .line 15
    .line 16
    return-void
.end method

.method public static final synthetic a(Landroidx/compose/foundation/p;)Landroid/widget/EdgeEffect;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/p;->e:Landroid/widget/EdgeEffect;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic b(Landroidx/compose/foundation/p;)Landroid/widget/EdgeEffect;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/p;->f:Landroid/widget/EdgeEffect;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic c(Landroidx/compose/foundation/p;)Landroid/widget/EdgeEffect;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/p;->g:Landroid/widget/EdgeEffect;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic d(Landroidx/compose/foundation/p;)Landroid/widget/EdgeEffect;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/p;->d:Landroid/widget/EdgeEffect;

    .line 2
    .line 3
    return-object p0
.end method

.method private final e()Landroid/widget/EdgeEffect;
    .locals 5

    .line 1
    sget-object v0, Landroidx/compose/foundation/o;->a:Landroidx/compose/foundation/o;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/compose/foundation/p;->a:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroidx/compose/foundation/o;->a(Landroid/content/Context;)Landroid/widget/EdgeEffect;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget v1, p0, Landroidx/compose/foundation/p;->b:I

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/widget/EdgeEffect;->setColor(I)V

    .line 12
    .line 13
    .line 14
    iget-wide v1, p0, Landroidx/compose/foundation/p;->c:J

    .line 15
    .line 16
    sget-object v3, Lo0/t;->b:Lo0/t$a;

    .line 17
    .line 18
    invoke-virtual {v3}, Lo0/t$a;->a()J

    .line 19
    .line 20
    .line 21
    move-result-wide v3

    .line 22
    invoke-static {v1, v2, v3, v4}, Lo0/t;->e(JJ)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-nez v1, :cond_0

    .line 27
    .line 28
    iget-wide v1, p0, Landroidx/compose/foundation/p;->c:J

    .line 29
    .line 30
    invoke-static {v1, v2}, Lo0/t;->g(J)I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    iget-wide v2, p0, Landroidx/compose/foundation/p;->c:J

    .line 35
    .line 36
    invoke-static {v2, v3}, Lo0/t;->f(J)I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 41
    .line 42
    .line 43
    :cond_0
    return-object v0
.end method

.method private final n(Landroid/widget/EdgeEffect;)Z
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    return p1

    .line 5
    :cond_0
    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    xor-int/lit8 p1, p1, 0x1

    .line 10
    .line 11
    return p1
.end method

.method private final x(Landroid/widget/EdgeEffect;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    sget-object v1, Landroidx/compose/foundation/o;->a:Landroidx/compose/foundation/o;

    .line 6
    .line 7
    invoke-virtual {v1, p1}, Landroidx/compose/foundation/o;->b(Landroid/widget/EdgeEffect;)F

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    const/4 v1, 0x0

    .line 12
    cmpg-float p1, p1, v1

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    if-nez p1, :cond_1

    .line 16
    .line 17
    move v0, v1

    .line 18
    :cond_1
    xor-int/lit8 p1, v0, 0x1

    .line 19
    .line 20
    return p1
.end method


# virtual methods
.method public final A()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/p;->d:Landroid/widget/EdgeEffect;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Landroidx/compose/foundation/p;->x(Landroid/widget/EdgeEffect;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final B(J)V
    .locals 3

    .line 1
    iput-wide p1, p0, Landroidx/compose/foundation/p;->c:J

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/compose/foundation/p;->d:Landroid/widget/EdgeEffect;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {p1, p2}, Lo0/t;->g(J)I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-static {p1, p2}, Lo0/t;->f(J)I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Landroidx/compose/foundation/p;->e:Landroid/widget/EdgeEffect;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-static {p1, p2}, Lo0/t;->g(J)I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    invoke-static {p1, p2}, Lo0/t;->f(J)I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 31
    .line 32
    .line 33
    :cond_1
    iget-object v0, p0, Landroidx/compose/foundation/p;->f:Landroid/widget/EdgeEffect;

    .line 34
    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    invoke-static {p1, p2}, Lo0/t;->f(J)I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    invoke-static {p1, p2}, Lo0/t;->g(J)I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 46
    .line 47
    .line 48
    :cond_2
    iget-object v0, p0, Landroidx/compose/foundation/p;->g:Landroid/widget/EdgeEffect;

    .line 49
    .line 50
    if-eqz v0, :cond_3

    .line 51
    .line 52
    invoke-static {p1, p2}, Lo0/t;->f(J)I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    invoke-static {p1, p2}, Lo0/t;->g(J)I

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 61
    .line 62
    .line 63
    :cond_3
    iget-object v0, p0, Landroidx/compose/foundation/p;->h:Landroid/widget/EdgeEffect;

    .line 64
    .line 65
    if-eqz v0, :cond_4

    .line 66
    .line 67
    invoke-static {p1, p2}, Lo0/t;->g(J)I

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    invoke-static {p1, p2}, Lo0/t;->f(J)I

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 76
    .line 77
    .line 78
    :cond_4
    iget-object v0, p0, Landroidx/compose/foundation/p;->i:Landroid/widget/EdgeEffect;

    .line 79
    .line 80
    if-eqz v0, :cond_5

    .line 81
    .line 82
    invoke-static {p1, p2}, Lo0/t;->g(J)I

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    invoke-static {p1, p2}, Lo0/t;->f(J)I

    .line 87
    .line 88
    .line 89
    move-result v2

    .line 90
    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 91
    .line 92
    .line 93
    :cond_5
    iget-object v0, p0, Landroidx/compose/foundation/p;->j:Landroid/widget/EdgeEffect;

    .line 94
    .line 95
    if-eqz v0, :cond_6

    .line 96
    .line 97
    invoke-static {p1, p2}, Lo0/t;->f(J)I

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    invoke-static {p1, p2}, Lo0/t;->g(J)I

    .line 102
    .line 103
    .line 104
    move-result v2

    .line 105
    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 106
    .line 107
    .line 108
    :cond_6
    iget-object v0, p0, Landroidx/compose/foundation/p;->k:Landroid/widget/EdgeEffect;

    .line 109
    .line 110
    if-eqz v0, :cond_7

    .line 111
    .line 112
    invoke-static {p1, p2}, Lo0/t;->f(J)I

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    invoke-static {p1, p2}, Lo0/t;->g(J)I

    .line 117
    .line 118
    .line 119
    move-result p1

    .line 120
    invoke-virtual {v0, v1, p1}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 121
    .line 122
    .line 123
    :cond_7
    return-void
.end method

.method public final f()Landroid/widget/EdgeEffect;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/p;->e:Landroid/widget/EdgeEffect;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Landroidx/compose/foundation/p;->e()Landroid/widget/EdgeEffect;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Landroidx/compose/foundation/p;->e:Landroid/widget/EdgeEffect;

    .line 10
    .line 11
    :cond_0
    return-object v0
.end method

.method public final g()Landroid/widget/EdgeEffect;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/p;->i:Landroid/widget/EdgeEffect;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Landroidx/compose/foundation/p;->e()Landroid/widget/EdgeEffect;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Landroidx/compose/foundation/p;->i:Landroid/widget/EdgeEffect;

    .line 10
    .line 11
    :cond_0
    return-object v0
.end method

.method public final h()Landroid/widget/EdgeEffect;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/p;->f:Landroid/widget/EdgeEffect;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Landroidx/compose/foundation/p;->e()Landroid/widget/EdgeEffect;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Landroidx/compose/foundation/p;->f:Landroid/widget/EdgeEffect;

    .line 10
    .line 11
    :cond_0
    return-object v0
.end method

.method public final i()Landroid/widget/EdgeEffect;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/p;->j:Landroid/widget/EdgeEffect;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Landroidx/compose/foundation/p;->e()Landroid/widget/EdgeEffect;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Landroidx/compose/foundation/p;->j:Landroid/widget/EdgeEffect;

    .line 10
    .line 11
    :cond_0
    return-object v0
.end method

.method public final j()Landroid/widget/EdgeEffect;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/p;->g:Landroid/widget/EdgeEffect;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Landroidx/compose/foundation/p;->e()Landroid/widget/EdgeEffect;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Landroidx/compose/foundation/p;->g:Landroid/widget/EdgeEffect;

    .line 10
    .line 11
    :cond_0
    return-object v0
.end method

.method public final k()Landroid/widget/EdgeEffect;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/p;->k:Landroid/widget/EdgeEffect;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Landroidx/compose/foundation/p;->e()Landroid/widget/EdgeEffect;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Landroidx/compose/foundation/p;->k:Landroid/widget/EdgeEffect;

    .line 10
    .line 11
    :cond_0
    return-object v0
.end method

.method public final l()Landroid/widget/EdgeEffect;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/p;->d:Landroid/widget/EdgeEffect;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Landroidx/compose/foundation/p;->e()Landroid/widget/EdgeEffect;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Landroidx/compose/foundation/p;->d:Landroid/widget/EdgeEffect;

    .line 10
    .line 11
    :cond_0
    return-object v0
.end method

.method public final m()Landroid/widget/EdgeEffect;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/p;->h:Landroid/widget/EdgeEffect;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Landroidx/compose/foundation/p;->e()Landroid/widget/EdgeEffect;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Landroidx/compose/foundation/p;->h:Landroid/widget/EdgeEffect;

    .line 10
    .line 11
    :cond_0
    return-object v0
.end method

.method public final o()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/p;->e:Landroid/widget/EdgeEffect;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Landroidx/compose/foundation/p;->n(Landroid/widget/EdgeEffect;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final p()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/p;->i:Landroid/widget/EdgeEffect;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Landroidx/compose/foundation/p;->x(Landroid/widget/EdgeEffect;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final q()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/p;->e:Landroid/widget/EdgeEffect;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Landroidx/compose/foundation/p;->x(Landroid/widget/EdgeEffect;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final r()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/p;->f:Landroid/widget/EdgeEffect;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Landroidx/compose/foundation/p;->n(Landroid/widget/EdgeEffect;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final s()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/p;->j:Landroid/widget/EdgeEffect;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Landroidx/compose/foundation/p;->x(Landroid/widget/EdgeEffect;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final t()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/p;->f:Landroid/widget/EdgeEffect;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Landroidx/compose/foundation/p;->x(Landroid/widget/EdgeEffect;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final u()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/p;->g:Landroid/widget/EdgeEffect;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Landroidx/compose/foundation/p;->n(Landroid/widget/EdgeEffect;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final v()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/p;->k:Landroid/widget/EdgeEffect;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Landroidx/compose/foundation/p;->x(Landroid/widget/EdgeEffect;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final w()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/p;->g:Landroid/widget/EdgeEffect;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Landroidx/compose/foundation/p;->x(Landroid/widget/EdgeEffect;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final y()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/p;->d:Landroid/widget/EdgeEffect;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Landroidx/compose/foundation/p;->n(Landroid/widget/EdgeEffect;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final z()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/p;->h:Landroid/widget/EdgeEffect;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Landroidx/compose/foundation/p;->x(Landroid/widget/EdgeEffect;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method
