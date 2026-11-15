.class public final Landroidx/compose/ui/graphics/x4;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroidx/compose/ui/graphics/c4;


# instance fields
.field private a:I

.field private b:F

.field private c:F

.field private d:F

.field private e:F

.field private f:F

.field private g:F

.field private h:J

.field private i:J

.field private j:F

.field private k:F

.field private l:F

.field private m:F

.field private n:J

.field private o:Landroidx/compose/ui/graphics/a5;

.field private p:Z

.field private q:I

.field private r:J

.field private s:Lo0/e;

.field private t:Landroidx/compose/ui/unit/LayoutDirection;

.field private u:Landroidx/compose/ui/graphics/k4;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/high16 v0, 0x3f800000    # 1.0f

    .line 5
    .line 6
    iput v0, p0, Landroidx/compose/ui/graphics/x4;->b:F

    .line 7
    .line 8
    iput v0, p0, Landroidx/compose/ui/graphics/x4;->c:F

    .line 9
    .line 10
    iput v0, p0, Landroidx/compose/ui/graphics/x4;->d:F

    .line 11
    .line 12
    invoke-static {}, Landroidx/compose/ui/graphics/d4;->a()J

    .line 13
    .line 14
    .line 15
    move-result-wide v1

    .line 16
    iput-wide v1, p0, Landroidx/compose/ui/graphics/x4;->h:J

    .line 17
    .line 18
    invoke-static {}, Landroidx/compose/ui/graphics/d4;->a()J

    .line 19
    .line 20
    .line 21
    move-result-wide v1

    .line 22
    iput-wide v1, p0, Landroidx/compose/ui/graphics/x4;->i:J

    .line 23
    .line 24
    const/high16 v1, 0x41000000    # 8.0f

    .line 25
    .line 26
    iput v1, p0, Landroidx/compose/ui/graphics/x4;->m:F

    .line 27
    .line 28
    sget-object v1, Landroidx/compose/ui/graphics/e5;->a:Landroidx/compose/ui/graphics/e5$a;

    .line 29
    .line 30
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/e5$a;->a()J

    .line 31
    .line 32
    .line 33
    move-result-wide v1

    .line 34
    iput-wide v1, p0, Landroidx/compose/ui/graphics/x4;->n:J

    .line 35
    .line 36
    invoke-static {}, Landroidx/compose/ui/graphics/v4;->a()Landroidx/compose/ui/graphics/a5;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    iput-object v1, p0, Landroidx/compose/ui/graphics/x4;->o:Landroidx/compose/ui/graphics/a5;

    .line 41
    .line 42
    sget-object v1, Landroidx/compose/ui/graphics/w3;->a:Landroidx/compose/ui/graphics/w3$a;

    .line 43
    .line 44
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/w3$a;->a()I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    iput v1, p0, Landroidx/compose/ui/graphics/x4;->q:I

    .line 49
    .line 50
    sget-object v1, Ly/m;->b:Ly/m$a;

    .line 51
    .line 52
    invoke-virtual {v1}, Ly/m$a;->a()J

    .line 53
    .line 54
    .line 55
    move-result-wide v1

    .line 56
    iput-wide v1, p0, Landroidx/compose/ui/graphics/x4;->r:J

    .line 57
    .line 58
    const/4 v1, 0x2

    .line 59
    const/4 v2, 0x0

    .line 60
    const/4 v3, 0x0

    .line 61
    invoke-static {v0, v3, v1, v2}, Lo0/g;->b(FFILjava/lang/Object;)Lo0/e;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    iput-object v0, p0, Landroidx/compose/ui/graphics/x4;->s:Lo0/e;

    .line 66
    .line 67
    sget-object v0, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    .line 68
    .line 69
    iput-object v0, p0, Landroidx/compose/ui/graphics/x4;->t:Landroidx/compose/ui/unit/LayoutDirection;

    .line 70
    .line 71
    return-void
.end method


# virtual methods
.method public A()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/graphics/x4;->c:F

    .line 2
    .line 3
    return v0
.end method

.method public B()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/graphics/x4;->q:I

    .line 2
    .line 3
    return v0
.end method

.method public B0()F
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/graphics/x4;->s:Lo0/e;

    .line 2
    .line 3
    invoke-interface {v0}, Lo0/n;->B0()F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final C()Lo0/e;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/graphics/x4;->s:Lo0/e;

    .line 2
    .line 3
    return-object v0
.end method

.method public final D()Landroidx/compose/ui/unit/LayoutDirection;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/graphics/x4;->t:Landroidx/compose/ui/unit/LayoutDirection;

    .line 2
    .line 3
    return-object v0
.end method

.method public synthetic D0(F)F
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lo0/d;->d(Lo0/e;F)F

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public final F()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/graphics/x4;->a:I

    .line 2
    .line 3
    return v0
.end method

.method public final G()Landroidx/compose/ui/graphics/k4;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/graphics/x4;->u:Landroidx/compose/ui/graphics/k4;

    .line 2
    .line 3
    return-object v0
.end method

.method public synthetic H(F)J
    .locals 2

    .line 1
    invoke-static {p0, p1}, Lo0/m;->b(Lo0/n;F)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public I()Landroidx/compose/ui/graphics/w4;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public synthetic J(J)F
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lo0/m;->a(Lo0/n;J)F

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public L()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/graphics/x4;->g:F

    .line 2
    .line 3
    return v0
.end method

.method public M()Landroidx/compose/ui/graphics/a5;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/graphics/x4;->o:Landroidx/compose/ui/graphics/a5;

    .line 2
    .line 3
    return-object v0
.end method

.method public O()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/compose/ui/graphics/x4;->i:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final P()V
    .locals 4

    .line 1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroidx/compose/ui/graphics/x4;->b(F)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroidx/compose/ui/graphics/x4;->h(F)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroidx/compose/ui/graphics/x4;->setAlpha(F)V

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-virtual {p0, v0}, Landroidx/compose/ui/graphics/x4;->j(F)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v0}, Landroidx/compose/ui/graphics/x4;->a(F)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v0}, Landroidx/compose/ui/graphics/x4;->u(F)V

    .line 20
    .line 21
    .line 22
    invoke-static {}, Landroidx/compose/ui/graphics/d4;->a()J

    .line 23
    .line 24
    .line 25
    move-result-wide v1

    .line 26
    invoke-virtual {p0, v1, v2}, Landroidx/compose/ui/graphics/x4;->p(J)V

    .line 27
    .line 28
    .line 29
    invoke-static {}, Landroidx/compose/ui/graphics/d4;->a()J

    .line 30
    .line 31
    .line 32
    move-result-wide v1

    .line 33
    invoke-virtual {p0, v1, v2}, Landroidx/compose/ui/graphics/x4;->s(J)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, v0}, Landroidx/compose/ui/graphics/x4;->e(F)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, v0}, Landroidx/compose/ui/graphics/x4;->f(F)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, v0}, Landroidx/compose/ui/graphics/x4;->g(F)V

    .line 43
    .line 44
    .line 45
    const/high16 v0, 0x41000000    # 8.0f

    .line 46
    .line 47
    invoke-virtual {p0, v0}, Landroidx/compose/ui/graphics/x4;->d(F)V

    .line 48
    .line 49
    .line 50
    sget-object v0, Landroidx/compose/ui/graphics/e5;->a:Landroidx/compose/ui/graphics/e5$a;

    .line 51
    .line 52
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/e5$a;->a()J

    .line 53
    .line 54
    .line 55
    move-result-wide v0

    .line 56
    invoke-virtual {p0, v0, v1}, Landroidx/compose/ui/graphics/x4;->d0(J)V

    .line 57
    .line 58
    .line 59
    invoke-static {}, Landroidx/compose/ui/graphics/v4;->a()Landroidx/compose/ui/graphics/a5;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {p0, v0}, Landroidx/compose/ui/graphics/x4;->z0(Landroidx/compose/ui/graphics/a5;)V

    .line 64
    .line 65
    .line 66
    const/4 v0, 0x0

    .line 67
    invoke-virtual {p0, v0}, Landroidx/compose/ui/graphics/x4;->r(Z)V

    .line 68
    .line 69
    .line 70
    const/4 v1, 0x0

    .line 71
    invoke-virtual {p0, v1}, Landroidx/compose/ui/graphics/x4;->c(Landroidx/compose/ui/graphics/w4;)V

    .line 72
    .line 73
    .line 74
    sget-object v2, Landroidx/compose/ui/graphics/w3;->a:Landroidx/compose/ui/graphics/w3$a;

    .line 75
    .line 76
    invoke-virtual {v2}, Landroidx/compose/ui/graphics/w3$a;->a()I

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    invoke-virtual {p0, v2}, Landroidx/compose/ui/graphics/x4;->l(I)V

    .line 81
    .line 82
    .line 83
    sget-object v2, Ly/m;->b:Ly/m$a;

    .line 84
    .line 85
    invoke-virtual {v2}, Ly/m$a;->a()J

    .line 86
    .line 87
    .line 88
    move-result-wide v2

    .line 89
    invoke-virtual {p0, v2, v3}, Landroidx/compose/ui/graphics/x4;->V(J)V

    .line 90
    .line 91
    .line 92
    iput-object v1, p0, Landroidx/compose/ui/graphics/x4;->u:Landroidx/compose/ui/graphics/k4;

    .line 93
    .line 94
    iput v0, p0, Landroidx/compose/ui/graphics/x4;->a:I

    .line 95
    .line 96
    return-void
.end method

.method public synthetic P0(J)J
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lo0/d;->e(Lo0/e;J)J

    .line 2
    .line 3
    .line 4
    move-result-wide p1

    .line 5
    return-wide p1
.end method

.method public synthetic Q(F)J
    .locals 2

    .line 1
    invoke-static {p0, p1}, Lo0/d;->f(Lo0/e;F)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public final R(Lo0/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/compose/ui/graphics/x4;->s:Lo0/e;

    .line 2
    .line 3
    return-void
.end method

.method public final U(Landroidx/compose/ui/unit/LayoutDirection;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/compose/ui/graphics/x4;->t:Landroidx/compose/ui/unit/LayoutDirection;

    .line 2
    .line 3
    return-void
.end method

.method public V(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Landroidx/compose/ui/graphics/x4;->r:J

    .line 2
    .line 3
    return-void
.end method

.method public final Y()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/x4;->M()Landroidx/compose/ui/graphics/a5;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/x4;->i()J

    .line 6
    .line 7
    .line 8
    move-result-wide v1

    .line 9
    iget-object v3, p0, Landroidx/compose/ui/graphics/x4;->t:Landroidx/compose/ui/unit/LayoutDirection;

    .line 10
    .line 11
    iget-object v4, p0, Landroidx/compose/ui/graphics/x4;->s:Lo0/e;

    .line 12
    .line 13
    invoke-interface {v0, v1, v2, v3, v4}, Landroidx/compose/ui/graphics/a5;->a(JLandroidx/compose/ui/unit/LayoutDirection;Lo0/e;)Landroidx/compose/ui/graphics/k4;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Landroidx/compose/ui/graphics/x4;->u:Landroidx/compose/ui/graphics/k4;

    .line 18
    .line 19
    return-void
.end method

.method public a(F)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/graphics/x4;->f:F

    .line 2
    .line 3
    cmpg-float v0, v0, p1

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget v0, p0, Landroidx/compose/ui/graphics/x4;->a:I

    .line 9
    .line 10
    or-int/lit8 v0, v0, 0x10

    .line 11
    .line 12
    iput v0, p0, Landroidx/compose/ui/graphics/x4;->a:I

    .line 13
    .line 14
    iput p1, p0, Landroidx/compose/ui/graphics/x4;->f:F

    .line 15
    .line 16
    :goto_0
    return-void
.end method

.method public b(F)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/graphics/x4;->b:F

    .line 2
    .line 3
    cmpg-float v0, v0, p1

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget v0, p0, Landroidx/compose/ui/graphics/x4;->a:I

    .line 9
    .line 10
    or-int/lit8 v0, v0, 0x1

    .line 11
    .line 12
    iput v0, p0, Landroidx/compose/ui/graphics/x4;->a:I

    .line 13
    .line 14
    iput p1, p0, Landroidx/compose/ui/graphics/x4;->b:F

    .line 15
    .line 16
    :goto_0
    return-void
.end method

.method public b0()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/compose/ui/graphics/x4;->n:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public c(Landroidx/compose/ui/graphics/w4;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 3
    .line 4
    .line 5
    move-result p1

    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    iget p1, p0, Landroidx/compose/ui/graphics/x4;->a:I

    .line 9
    .line 10
    const/high16 v0, 0x20000

    .line 11
    .line 12
    or-int/2addr p1, v0

    .line 13
    iput p1, p0, Landroidx/compose/ui/graphics/x4;->a:I

    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public synthetic c0(F)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lo0/d;->a(Lo0/e;F)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public d(F)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/graphics/x4;->m:F

    .line 2
    .line 3
    cmpg-float v0, v0, p1

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget v0, p0, Landroidx/compose/ui/graphics/x4;->a:I

    .line 9
    .line 10
    or-int/lit16 v0, v0, 0x800

    .line 11
    .line 12
    iput v0, p0, Landroidx/compose/ui/graphics/x4;->a:I

    .line 13
    .line 14
    iput p1, p0, Landroidx/compose/ui/graphics/x4;->m:F

    .line 15
    .line 16
    :goto_0
    return-void
.end method

.method public d0(J)V
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/compose/ui/graphics/x4;->n:J

    .line 2
    .line 3
    invoke-static {v0, v1, p1, p2}, Landroidx/compose/ui/graphics/e5;->c(JJ)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget v0, p0, Landroidx/compose/ui/graphics/x4;->a:I

    .line 10
    .line 11
    or-int/lit16 v0, v0, 0x1000

    .line 12
    .line 13
    iput v0, p0, Landroidx/compose/ui/graphics/x4;->a:I

    .line 14
    .line 15
    iput-wide p1, p0, Landroidx/compose/ui/graphics/x4;->n:J

    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public e(F)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/graphics/x4;->j:F

    .line 2
    .line 3
    cmpg-float v0, v0, p1

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget v0, p0, Landroidx/compose/ui/graphics/x4;->a:I

    .line 9
    .line 10
    or-int/lit16 v0, v0, 0x100

    .line 11
    .line 12
    iput v0, p0, Landroidx/compose/ui/graphics/x4;->a:I

    .line 13
    .line 14
    iput p1, p0, Landroidx/compose/ui/graphics/x4;->j:F

    .line 15
    .line 16
    :goto_0
    return-void
.end method

.method public f(F)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/graphics/x4;->k:F

    .line 2
    .line 3
    cmpg-float v0, v0, p1

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget v0, p0, Landroidx/compose/ui/graphics/x4;->a:I

    .line 9
    .line 10
    or-int/lit16 v0, v0, 0x200

    .line 11
    .line 12
    iput v0, p0, Landroidx/compose/ui/graphics/x4;->a:I

    .line 13
    .line 14
    iput p1, p0, Landroidx/compose/ui/graphics/x4;->k:F

    .line 15
    .line 16
    :goto_0
    return-void
.end method

.method public g(F)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/graphics/x4;->l:F

    .line 2
    .line 3
    cmpg-float v0, v0, p1

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget v0, p0, Landroidx/compose/ui/graphics/x4;->a:I

    .line 9
    .line 10
    or-int/lit16 v0, v0, 0x400

    .line 11
    .line 12
    iput v0, p0, Landroidx/compose/ui/graphics/x4;->a:I

    .line 13
    .line 14
    iput p1, p0, Landroidx/compose/ui/graphics/x4;->l:F

    .line 15
    .line 16
    :goto_0
    return-void
.end method

.method public getDensity()F
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/graphics/x4;->s:Lo0/e;

    .line 2
    .line 3
    invoke-interface {v0}, Lo0/e;->getDensity()F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public h(F)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/graphics/x4;->c:F

    .line 2
    .line 3
    cmpg-float v0, v0, p1

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget v0, p0, Landroidx/compose/ui/graphics/x4;->a:I

    .line 9
    .line 10
    or-int/lit8 v0, v0, 0x2

    .line 11
    .line 12
    iput v0, p0, Landroidx/compose/ui/graphics/x4;->a:I

    .line 13
    .line 14
    iput p1, p0, Landroidx/compose/ui/graphics/x4;->c:F

    .line 15
    .line 16
    :goto_0
    return-void
.end method

.method public synthetic h0(J)F
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lo0/d;->c(Lo0/e;J)F

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public i()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/compose/ui/graphics/x4;->r:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public j(F)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/graphics/x4;->e:F

    .line 2
    .line 3
    cmpg-float v0, v0, p1

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget v0, p0, Landroidx/compose/ui/graphics/x4;->a:I

    .line 9
    .line 10
    or-int/lit8 v0, v0, 0x8

    .line 11
    .line 12
    iput v0, p0, Landroidx/compose/ui/graphics/x4;->a:I

    .line 13
    .line 14
    iput p1, p0, Landroidx/compose/ui/graphics/x4;->e:F

    .line 15
    .line 16
    :goto_0
    return-void
.end method

.method public l(I)V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/compose/ui/graphics/x4;->q:I

    .line 2
    .line 3
    invoke-static {v0, p1}, Landroidx/compose/ui/graphics/w3;->e(II)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget v0, p0, Landroidx/compose/ui/graphics/x4;->a:I

    .line 10
    .line 11
    const v1, 0x8000

    .line 12
    .line 13
    .line 14
    or-int/2addr v0, v1

    .line 15
    iput v0, p0, Landroidx/compose/ui/graphics/x4;->a:I

    .line 16
    .line 17
    iput p1, p0, Landroidx/compose/ui/graphics/x4;->q:I

    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public m()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/graphics/x4;->k:F

    .line 2
    .line 3
    return v0
.end method

.method public n()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/graphics/x4;->d:F

    .line 2
    .line 3
    return v0
.end method

.method public o()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/graphics/x4;->l:F

    .line 2
    .line 3
    return v0
.end method

.method public p(J)V
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/compose/ui/graphics/x4;->h:J

    .line 2
    .line 3
    invoke-static {v0, v1, p1, p2}, Landroidx/compose/ui/graphics/u1;->m(JJ)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget v0, p0, Landroidx/compose/ui/graphics/x4;->a:I

    .line 10
    .line 11
    or-int/lit8 v0, v0, 0x40

    .line 12
    .line 13
    iput v0, p0, Landroidx/compose/ui/graphics/x4;->a:I

    .line 14
    .line 15
    iput-wide p1, p0, Landroidx/compose/ui/graphics/x4;->h:J

    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public q()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/graphics/x4;->m:F

    .line 2
    .line 3
    return v0
.end method

.method public r(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/graphics/x4;->p:Z

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iget v0, p0, Landroidx/compose/ui/graphics/x4;->a:I

    .line 6
    .line 7
    or-int/lit16 v0, v0, 0x4000

    .line 8
    .line 9
    iput v0, p0, Landroidx/compose/ui/graphics/x4;->a:I

    .line 10
    .line 11
    iput-boolean p1, p0, Landroidx/compose/ui/graphics/x4;->p:Z

    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public s(J)V
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/compose/ui/graphics/x4;->i:J

    .line 2
    .line 3
    invoke-static {v0, v1, p1, p2}, Landroidx/compose/ui/graphics/u1;->m(JJ)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget v0, p0, Landroidx/compose/ui/graphics/x4;->a:I

    .line 10
    .line 11
    or-int/lit16 v0, v0, 0x80

    .line 12
    .line 13
    iput v0, p0, Landroidx/compose/ui/graphics/x4;->a:I

    .line 14
    .line 15
    iput-wide p1, p0, Landroidx/compose/ui/graphics/x4;->i:J

    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public setAlpha(F)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/graphics/x4;->d:F

    .line 2
    .line 3
    cmpg-float v0, v0, p1

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget v0, p0, Landroidx/compose/ui/graphics/x4;->a:I

    .line 9
    .line 10
    or-int/lit8 v0, v0, 0x4

    .line 11
    .line 12
    iput v0, p0, Landroidx/compose/ui/graphics/x4;->a:I

    .line 13
    .line 14
    iput p1, p0, Landroidx/compose/ui/graphics/x4;->d:F

    .line 15
    .line 16
    :goto_0
    return-void
.end method

.method public t()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/graphics/x4;->b:F

    .line 2
    .line 3
    return v0
.end method

.method public u(F)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/graphics/x4;->g:F

    .line 2
    .line 3
    cmpg-float v0, v0, p1

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget v0, p0, Landroidx/compose/ui/graphics/x4;->a:I

    .line 9
    .line 10
    or-int/lit8 v0, v0, 0x20

    .line 11
    .line 12
    iput v0, p0, Landroidx/compose/ui/graphics/x4;->a:I

    .line 13
    .line 14
    iput p1, p0, Landroidx/compose/ui/graphics/x4;->g:F

    .line 15
    .line 16
    :goto_0
    return-void
.end method

.method public v()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/compose/ui/graphics/x4;->h:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public w()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/graphics/x4;->f:F

    .line 2
    .line 3
    return v0
.end method

.method public x()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/graphics/x4;->e:F

    .line 2
    .line 3
    return v0
.end method

.method public synthetic x0(F)F
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lo0/d;->b(Lo0/e;F)F

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public y()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/graphics/x4;->j:F

    .line 2
    .line 3
    return v0
.end method

.method public z()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/graphics/x4;->p:Z

    .line 2
    .line 3
    return v0
.end method

.method public z0(Landroidx/compose/ui/graphics/a5;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/graphics/x4;->o:Landroidx/compose/ui/graphics/a5;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget v0, p0, Landroidx/compose/ui/graphics/x4;->a:I

    .line 10
    .line 11
    or-int/lit16 v0, v0, 0x2000

    .line 12
    .line 13
    iput v0, p0, Landroidx/compose/ui/graphics/x4;->a:I

    .line 14
    .line 15
    iput-object p1, p0, Landroidx/compose/ui/graphics/x4;->o:Landroidx/compose/ui/graphics/a5;

    .line 16
    .line 17
    :cond_0
    return-void
.end method
