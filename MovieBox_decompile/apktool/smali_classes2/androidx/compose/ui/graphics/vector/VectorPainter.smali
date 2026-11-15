.class public final Landroidx/compose/ui/graphics/vector/VectorPainter;
.super Landroidx/compose/ui/graphics/painter/Painter;
.source "source.java"


# instance fields
.field private final g:Landroidx/compose/runtime/i1;

.field private final h:Landroidx/compose/runtime/i1;

.field private final i:Landroidx/compose/ui/graphics/vector/VectorComponent;

.field private final j:Landroidx/compose/runtime/e1;

.field private k:F

.field private l:Landroidx/compose/ui/graphics/v1;

.field private m:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Landroidx/compose/ui/graphics/vector/VectorPainter;-><init>(Landroidx/compose/ui/graphics/vector/GroupComponent;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/graphics/vector/GroupComponent;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Landroidx/compose/ui/graphics/painter/Painter;-><init>()V

    .line 3
    sget-object v0, Ly/m;->b:Ly/m$a;

    invoke-virtual {v0}, Ly/m$a;->b()J

    move-result-wide v0

    invoke-static {v0, v1}, Ly/m;->c(J)Ly/m;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, v1, v2, v1}, Landroidx/compose/runtime/r2;->f(Ljava/lang/Object;Landroidx/compose/runtime/q2;ILjava/lang/Object;)Landroidx/compose/runtime/i1;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/ui/graphics/vector/VectorPainter;->g:Landroidx/compose/runtime/i1;

    .line 4
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v1, v2, v1}, Landroidx/compose/runtime/r2;->f(Ljava/lang/Object;Landroidx/compose/runtime/q2;ILjava/lang/Object;)Landroidx/compose/runtime/i1;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/ui/graphics/vector/VectorPainter;->h:Landroidx/compose/runtime/i1;

    .line 5
    new-instance v0, Landroidx/compose/ui/graphics/vector/VectorComponent;

    invoke-direct {v0, p1}, Landroidx/compose/ui/graphics/vector/VectorComponent;-><init>(Landroidx/compose/ui/graphics/vector/GroupComponent;)V

    .line 6
    new-instance p1, Landroidx/compose/ui/graphics/vector/VectorPainter$vector$1$1;

    invoke-direct {p1, p0}, Landroidx/compose/ui/graphics/vector/VectorPainter$vector$1$1;-><init>(Landroidx/compose/ui/graphics/vector/VectorPainter;)V

    invoke-virtual {v0, p1}, Landroidx/compose/ui/graphics/vector/VectorComponent;->o(Lkotlin/jvm/functions/Function0;)V

    .line 7
    iput-object v0, p0, Landroidx/compose/ui/graphics/vector/VectorPainter;->i:Landroidx/compose/ui/graphics/vector/VectorComponent;

    const/4 p1, 0x0

    .line 8
    invoke-static {p1}, Landroidx/compose/runtime/n2;->a(I)Landroidx/compose/runtime/e1;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/ui/graphics/vector/VectorPainter;->j:Landroidx/compose/runtime/e1;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 9
    iput p1, p0, Landroidx/compose/ui/graphics/vector/VectorPainter;->k:F

    const/4 p1, -0x1

    .line 10
    iput p1, p0, Landroidx/compose/ui/graphics/vector/VectorPainter;->m:I

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/graphics/vector/GroupComponent;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 11
    new-instance p1, Landroidx/compose/ui/graphics/vector/GroupComponent;

    invoke-direct {p1}, Landroidx/compose/ui/graphics/vector/GroupComponent;-><init>()V

    :cond_0
    invoke-direct {p0, p1}, Landroidx/compose/ui/graphics/vector/VectorPainter;-><init>(Landroidx/compose/ui/graphics/vector/GroupComponent;)V

    return-void
.end method

.method public static final synthetic k(Landroidx/compose/ui/graphics/vector/VectorPainter;)I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/compose/ui/graphics/vector/VectorPainter;->m:I

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic l(Landroidx/compose/ui/graphics/vector/VectorPainter;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/compose/ui/graphics/vector/VectorPainter;->o()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic m(Landroidx/compose/ui/graphics/vector/VectorPainter;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/compose/ui/graphics/vector/VectorPainter;->s(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final o()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/VectorPainter;->j:Landroidx/compose/runtime/e1;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/compose/runtime/n0;->getIntValue()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method private final s(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/VectorPainter;->j:Landroidx/compose/runtime/e1;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Landroidx/compose/runtime/e1;->setIntValue(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method protected a(F)Z
    .locals 0

    .line 1
    iput p1, p0, Landroidx/compose/ui/graphics/vector/VectorPainter;->k:F

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    return p1
.end method

.method protected b(Landroidx/compose/ui/graphics/v1;)Z
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/compose/ui/graphics/vector/VectorPainter;->l:Landroidx/compose/ui/graphics/v1;

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    return p1
.end method

.method public h()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/vector/VectorPainter;->p()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method protected j(Lz/g;)V
    .locals 10

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/VectorPainter;->i:Landroidx/compose/ui/graphics/vector/VectorComponent;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/compose/ui/graphics/vector/VectorPainter;->l:Landroidx/compose/ui/graphics/v1;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/VectorComponent;->k()Landroidx/compose/ui/graphics/v1;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/vector/VectorPainter;->n()Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-eqz v2, :cond_1

    .line 16
    .line 17
    invoke-interface {p1}, Lz/g;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    sget-object v3, Landroidx/compose/ui/unit/LayoutDirection;->Rtl:Landroidx/compose/ui/unit/LayoutDirection;

    .line 22
    .line 23
    if-ne v2, v3, :cond_1

    .line 24
    .line 25
    invoke-interface {p1}, Lz/g;->N0()J

    .line 26
    .line 27
    .line 28
    move-result-wide v2

    .line 29
    invoke-interface {p1}, Lz/g;->G0()Lz/d;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    invoke-interface {v4}, Lz/d;->i()J

    .line 34
    .line 35
    .line 36
    move-result-wide v5

    .line 37
    invoke-interface {v4}, Lz/d;->e()Landroidx/compose/ui/graphics/m1;

    .line 38
    .line 39
    .line 40
    move-result-object v7

    .line 41
    invoke-interface {v7}, Landroidx/compose/ui/graphics/m1;->n()V

    .line 42
    .line 43
    .line 44
    :try_start_0
    invoke-interface {v4}, Lz/d;->c()Lz/j;

    .line 45
    .line 46
    .line 47
    move-result-object v7

    .line 48
    const/high16 v8, -0x40800000    # -1.0f

    .line 49
    .line 50
    const/high16 v9, 0x3f800000    # 1.0f

    .line 51
    .line 52
    invoke-interface {v7, v8, v9, v2, v3}, Lz/j;->e(FFJ)V

    .line 53
    .line 54
    .line 55
    iget v2, p0, Landroidx/compose/ui/graphics/vector/VectorPainter;->k:F

    .line 56
    .line 57
    invoke-virtual {v0, p1, v2, v1}, Landroidx/compose/ui/graphics/vector/VectorComponent;->i(Lz/g;FLandroidx/compose/ui/graphics/v1;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    .line 59
    .line 60
    invoke-interface {v4}, Lz/d;->e()Landroidx/compose/ui/graphics/m1;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-interface {p1}, Landroidx/compose/ui/graphics/m1;->j()V

    .line 65
    .line 66
    .line 67
    invoke-interface {v4, v5, v6}, Lz/d;->f(J)V

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :catchall_0
    move-exception p1

    .line 72
    invoke-interface {v4}, Lz/d;->e()Landroidx/compose/ui/graphics/m1;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-interface {v0}, Landroidx/compose/ui/graphics/m1;->j()V

    .line 77
    .line 78
    .line 79
    invoke-interface {v4, v5, v6}, Lz/d;->f(J)V

    .line 80
    .line 81
    .line 82
    throw p1

    .line 83
    :cond_1
    iget v2, p0, Landroidx/compose/ui/graphics/vector/VectorPainter;->k:F

    .line 84
    .line 85
    invoke-virtual {v0, p1, v2, v1}, Landroidx/compose/ui/graphics/vector/VectorComponent;->i(Lz/g;FLandroidx/compose/ui/graphics/v1;)V

    .line 86
    .line 87
    .line 88
    :goto_0
    invoke-direct {p0}, Landroidx/compose/ui/graphics/vector/VectorPainter;->o()I

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    iput p1, p0, Landroidx/compose/ui/graphics/vector/VectorPainter;->m:I

    .line 93
    .line 94
    return-void
.end method

.method public final n()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/VectorPainter;->h:Landroidx/compose/runtime/i1;

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

.method public final p()J
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/VectorPainter;->g:Landroidx/compose/runtime/i1;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/compose/runtime/a3;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ly/m;

    .line 8
    .line 9
    invoke-virtual {v0}, Ly/m;->m()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    return-wide v0
.end method

.method public final q(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/VectorPainter;->h:Landroidx/compose/runtime/i1;

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

.method public final r(Landroidx/compose/ui/graphics/v1;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/VectorPainter;->i:Landroidx/compose/ui/graphics/vector/VectorComponent;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/compose/ui/graphics/vector/VectorComponent;->n(Landroidx/compose/ui/graphics/v1;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final t(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/VectorPainter;->i:Landroidx/compose/ui/graphics/vector/VectorComponent;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/compose/ui/graphics/vector/VectorComponent;->p(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final u(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/VectorPainter;->g:Landroidx/compose/runtime/i1;

    .line 2
    .line 3
    invoke-static {p1, p2}, Ly/m;->c(J)Ly/m;

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

.method public final v(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/VectorPainter;->i:Landroidx/compose/ui/graphics/vector/VectorComponent;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Landroidx/compose/ui/graphics/vector/VectorComponent;->q(J)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
