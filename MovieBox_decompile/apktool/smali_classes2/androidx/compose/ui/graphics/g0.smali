.class public final Landroidx/compose/ui/graphics/g0;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroidx/compose/ui/graphics/m1;


# instance fields
.field private a:Landroid/graphics/Canvas;

.field private b:Landroid/graphics/Rect;

.field private c:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroidx/compose/ui/graphics/h0;->c()Landroid/graphics/Canvas;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Landroidx/compose/ui/graphics/g0;->a:Landroid/graphics/Canvas;

    .line 9
    .line 10
    return-void
.end method

.method private final t(Ljava/util/List;Landroidx/compose/ui/graphics/m4;I)V
    .locals 9

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    if-lt v0, v1, :cond_0

    .line 7
    .line 8
    invoke-interface {p2}, Landroidx/compose/ui/graphics/m4;->w()Landroid/graphics/Paint;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    const/4 v0, 0x0

    .line 13
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    add-int/lit8 v1, v1, -0x1

    .line 18
    .line 19
    if-ge v0, v1, :cond_0

    .line 20
    .line 21
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Ly/g;

    .line 26
    .line 27
    invoke-virtual {v1}, Ly/g;->v()J

    .line 28
    .line 29
    .line 30
    move-result-wide v1

    .line 31
    add-int/lit8 v3, v0, 0x1

    .line 32
    .line 33
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    check-cast v3, Ly/g;

    .line 38
    .line 39
    invoke-virtual {v3}, Ly/g;->v()J

    .line 40
    .line 41
    .line 42
    move-result-wide v3

    .line 43
    iget-object v5, p0, Landroidx/compose/ui/graphics/g0;->a:Landroid/graphics/Canvas;

    .line 44
    .line 45
    invoke-static {v1, v2}, Ly/g;->m(J)F

    .line 46
    .line 47
    .line 48
    move-result v6

    .line 49
    invoke-static {v1, v2}, Ly/g;->n(J)F

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    invoke-static {v3, v4}, Ly/g;->m(J)F

    .line 54
    .line 55
    .line 56
    move-result v7

    .line 57
    invoke-static {v3, v4}, Ly/g;->n(J)F

    .line 58
    .line 59
    .line 60
    move-result v8

    .line 61
    move-object v2, v5

    .line 62
    move v3, v6

    .line 63
    move v4, v1

    .line 64
    move v5, v7

    .line 65
    move v6, v8

    .line 66
    move-object v7, p2

    .line 67
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 68
    .line 69
    .line 70
    add-int/2addr v0, p3

    .line 71
    goto :goto_0

    .line 72
    :cond_0
    return-void
.end method

.method private final u(Ljava/util/List;Landroidx/compose/ui/graphics/m4;)V
    .locals 6

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_0
    if-ge v1, v0, :cond_0

    .line 7
    .line 8
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    check-cast v2, Ly/g;

    .line 13
    .line 14
    invoke-virtual {v2}, Ly/g;->v()J

    .line 15
    .line 16
    .line 17
    move-result-wide v2

    .line 18
    iget-object v4, p0, Landroidx/compose/ui/graphics/g0;->a:Landroid/graphics/Canvas;

    .line 19
    .line 20
    invoke-static {v2, v3}, Ly/g;->m(J)F

    .line 21
    .line 22
    .line 23
    move-result v5

    .line 24
    invoke-static {v2, v3}, Ly/g;->n(J)F

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    invoke-interface {p2}, Landroidx/compose/ui/graphics/m4;->w()Landroid/graphics/Paint;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-virtual {v4, v5, v2, v3}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    .line 33
    .line 34
    .line 35
    add-int/lit8 v1, v1, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    return-void
.end method


# virtual methods
.method public a(FFFFI)V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/graphics/g0;->a:Landroid/graphics/Canvas;

    .line 2
    .line 3
    invoke-virtual {p0, p5}, Landroidx/compose/ui/graphics/g0;->x(I)Landroid/graphics/Region$Op;

    .line 4
    .line 5
    .line 6
    move-result-object v5

    .line 7
    move v1, p1

    .line 8
    move v2, p2

    .line 9
    move v3, p3

    .line 10
    move v4, p4

    .line 11
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public b(Landroidx/compose/ui/graphics/Path;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/graphics/g0;->a:Landroid/graphics/Canvas;

    .line 2
    .line 3
    instance-of v1, p1, Landroidx/compose/ui/graphics/u0;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast p1, Landroidx/compose/ui/graphics/u0;

    .line 8
    .line 9
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/u0;->p()Landroid/graphics/Path;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p0, p2}, Landroidx/compose/ui/graphics/g0;->x(I)Landroid/graphics/Region$Op;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 22
    .line 23
    const-string p2, "Unable to obtain android.graphics.Path"

    .line 24
    .line 25
    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw p1
.end method

.method public c(FF)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/graphics/g0;->a:Landroid/graphics/Canvas;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public d(Ly/i;Landroidx/compose/ui/graphics/m4;)V
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/graphics/g0;->a:Landroid/graphics/Canvas;

    .line 2
    .line 3
    invoke-virtual {p1}, Ly/i;->f()F

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-virtual {p1}, Ly/i;->i()F

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    invoke-virtual {p1}, Ly/i;->g()F

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    invoke-virtual {p1}, Ly/i;->c()F

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    invoke-interface {p2}, Landroidx/compose/ui/graphics/m4;->w()Landroid/graphics/Paint;

    .line 20
    .line 21
    .line 22
    move-result-object v5

    .line 23
    const/16 v6, 0x1f

    .line 24
    .line 25
    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public e(FF)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/graphics/g0;->a:Landroid/graphics/Canvas;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public f(FFFFLandroidx/compose/ui/graphics/m4;)V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/graphics/g0;->a:Landroid/graphics/Canvas;

    .line 2
    .line 3
    invoke-interface {p5}, Landroidx/compose/ui/graphics/m4;->w()Landroid/graphics/Paint;

    .line 4
    .line 5
    .line 6
    move-result-object v5

    .line 7
    move v1, p1

    .line 8
    move v2, p2

    .line 9
    move v3, p3

    .line 10
    move v4, p4

    .line 11
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public g(ILjava/util/List;Landroidx/compose/ui/graphics/m4;)V
    .locals 2

    .line 1
    sget-object v0, Landroidx/compose/ui/graphics/t4;->a:Landroidx/compose/ui/graphics/t4$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/t4$a;->a()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-static {p1, v1}, Landroidx/compose/ui/graphics/t4;->e(II)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    const/4 p1, 0x2

    .line 14
    invoke-direct {p0, p2, p3, p1}, Landroidx/compose/ui/graphics/g0;->t(Ljava/util/List;Landroidx/compose/ui/graphics/m4;I)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/t4$a;->c()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    invoke-static {p1, v1}, Landroidx/compose/ui/graphics/t4;->e(II)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    const/4 p1, 0x1

    .line 29
    invoke-direct {p0, p2, p3, p1}, Landroidx/compose/ui/graphics/g0;->t(Ljava/util/List;Landroidx/compose/ui/graphics/m4;I)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/t4$a;->b()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    invoke-static {p1, v0}, Landroidx/compose/ui/graphics/t4;->e(II)Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-eqz p1, :cond_2

    .line 42
    .line 43
    invoke-direct {p0, p2, p3}, Landroidx/compose/ui/graphics/g0;->u(Ljava/util/List;Landroidx/compose/ui/graphics/m4;)V

    .line 44
    .line 45
    .line 46
    :cond_2
    :goto_0
    return-void
.end method

.method public h(Landroidx/compose/ui/graphics/e4;JJJJLandroidx/compose/ui/graphics/m4;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/graphics/g0;->b:Landroid/graphics/Rect;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/graphics/Rect;

    .line 6
    .line 7
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Landroidx/compose/ui/graphics/g0;->b:Landroid/graphics/Rect;

    .line 11
    .line 12
    new-instance v0, Landroid/graphics/Rect;

    .line 13
    .line 14
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Landroidx/compose/ui/graphics/g0;->c:Landroid/graphics/Rect;

    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/graphics/g0;->a:Landroid/graphics/Canvas;

    .line 20
    .line 21
    invoke-static {p1}, Landroidx/compose/ui/graphics/q0;->b(Landroidx/compose/ui/graphics/e4;)Landroid/graphics/Bitmap;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iget-object v1, p0, Landroidx/compose/ui/graphics/g0;->b:Landroid/graphics/Rect;

    .line 26
    .line 27
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    invoke-static {p2, p3}, Lo0/p;->h(J)I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 35
    .line 36
    invoke-static {p2, p3}, Lo0/p;->i(J)I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 41
    .line 42
    invoke-static {p2, p3}, Lo0/p;->h(J)I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    invoke-static {p4, p5}, Lo0/t;->g(J)I

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    add-int/2addr v2, v3

    .line 51
    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 52
    .line 53
    invoke-static {p2, p3}, Lo0/p;->i(J)I

    .line 54
    .line 55
    .line 56
    move-result p2

    .line 57
    invoke-static {p4, p5}, Lo0/t;->f(J)I

    .line 58
    .line 59
    .line 60
    move-result p3

    .line 61
    add-int/2addr p2, p3

    .line 62
    iput p2, v1, Landroid/graphics/Rect;->bottom:I

    .line 63
    .line 64
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 65
    .line 66
    iget-object p2, p0, Landroidx/compose/ui/graphics/g0;->c:Landroid/graphics/Rect;

    .line 67
    .line 68
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    invoke-static {p6, p7}, Lo0/p;->h(J)I

    .line 72
    .line 73
    .line 74
    move-result p3

    .line 75
    iput p3, p2, Landroid/graphics/Rect;->left:I

    .line 76
    .line 77
    invoke-static {p6, p7}, Lo0/p;->i(J)I

    .line 78
    .line 79
    .line 80
    move-result p3

    .line 81
    iput p3, p2, Landroid/graphics/Rect;->top:I

    .line 82
    .line 83
    invoke-static {p6, p7}, Lo0/p;->h(J)I

    .line 84
    .line 85
    .line 86
    move-result p3

    .line 87
    invoke-static {p8, p9}, Lo0/t;->g(J)I

    .line 88
    .line 89
    .line 90
    move-result p4

    .line 91
    add-int/2addr p3, p4

    .line 92
    iput p3, p2, Landroid/graphics/Rect;->right:I

    .line 93
    .line 94
    invoke-static {p6, p7}, Lo0/p;->i(J)I

    .line 95
    .line 96
    .line 97
    move-result p3

    .line 98
    invoke-static {p8, p9}, Lo0/t;->f(J)I

    .line 99
    .line 100
    .line 101
    move-result p4

    .line 102
    add-int/2addr p3, p4

    .line 103
    iput p3, p2, Landroid/graphics/Rect;->bottom:I

    .line 104
    .line 105
    invoke-interface {p10}, Landroidx/compose/ui/graphics/m4;->w()Landroid/graphics/Paint;

    .line 106
    .line 107
    .line 108
    move-result-object p3

    .line 109
    invoke-virtual {v0, p1, v1, p2, p3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 110
    .line 111
    .line 112
    return-void
.end method

.method public synthetic i(Ly/i;Landroidx/compose/ui/graphics/m4;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/graphics/l1;->b(Landroidx/compose/ui/graphics/m1;Ly/i;Landroidx/compose/ui/graphics/m4;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public j()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/graphics/g0;->a:Landroid/graphics/Canvas;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public k()V
    .locals 3

    .line 1
    sget-object v0, Landroidx/compose/ui/graphics/p1;->a:Landroidx/compose/ui/graphics/p1;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/compose/ui/graphics/g0;->a:Landroid/graphics/Canvas;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/graphics/p1;->a(Landroid/graphics/Canvas;Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public synthetic l(Ly/i;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/graphics/l1;->a(Landroidx/compose/ui/graphics/m1;Ly/i;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public m(JJLandroidx/compose/ui/graphics/m4;)V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/graphics/g0;->a:Landroid/graphics/Canvas;

    .line 2
    .line 3
    invoke-static {p1, p2}, Ly/g;->m(J)F

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-static {p1, p2}, Ly/g;->n(J)F

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    invoke-static {p3, p4}, Ly/g;->m(J)F

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    invoke-static {p3, p4}, Ly/g;->n(J)F

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    invoke-interface {p5}, Landroidx/compose/ui/graphics/m4;->w()Landroid/graphics/Paint;

    .line 20
    .line 21
    .line 22
    move-result-object v5

    .line 23
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public n()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/graphics/g0;->a:Landroid/graphics/Canvas;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public o()V
    .locals 3

    .line 1
    sget-object v0, Landroidx/compose/ui/graphics/p1;->a:Landroidx/compose/ui/graphics/p1;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/compose/ui/graphics/g0;->a:Landroid/graphics/Canvas;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/graphics/p1;->a(Landroid/graphics/Canvas;Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public p([F)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroidx/compose/ui/graphics/j4;->c([F)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Landroid/graphics/Matrix;

    .line 8
    .line 9
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-static {v0, p1}, Landroidx/compose/ui/graphics/r0;->a(Landroid/graphics/Matrix;[F)V

    .line 13
    .line 14
    .line 15
    iget-object p1, p0, Landroidx/compose/ui/graphics/g0;->a:Landroid/graphics/Canvas;

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public q(Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/graphics/m4;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/graphics/g0;->a:Landroid/graphics/Canvas;

    .line 2
    .line 3
    instance-of v1, p1, Landroidx/compose/ui/graphics/u0;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast p1, Landroidx/compose/ui/graphics/u0;

    .line 8
    .line 9
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/u0;->p()Landroid/graphics/Path;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-interface {p2}, Landroidx/compose/ui/graphics/m4;->w()Landroid/graphics/Paint;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 22
    .line 23
    const-string p2, "Unable to obtain android.graphics.Path"

    .line 24
    .line 25
    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw p1
.end method

.method public r(JFLandroidx/compose/ui/graphics/m4;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/graphics/g0;->a:Landroid/graphics/Canvas;

    .line 2
    .line 3
    invoke-static {p1, p2}, Ly/g;->m(J)F

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-static {p1, p2}, Ly/g;->n(J)F

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    invoke-interface {p4}, Landroidx/compose/ui/graphics/m4;->w()Landroid/graphics/Paint;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    invoke-virtual {v0, v1, p1, p3, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public s(FFFFFFLandroidx/compose/ui/graphics/m4;)V
    .locals 8

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/graphics/g0;->a:Landroid/graphics/Canvas;

    .line 2
    .line 3
    invoke-interface {p7}, Landroidx/compose/ui/graphics/m4;->w()Landroid/graphics/Paint;

    .line 4
    .line 5
    .line 6
    move-result-object v7

    .line 7
    move v1, p1

    .line 8
    move v2, p2

    .line 9
    move v3, p3

    .line 10
    move v4, p4

    .line 11
    move v5, p5

    .line 12
    move v6, p6

    .line 13
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final v()Landroid/graphics/Canvas;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/graphics/g0;->a:Landroid/graphics/Canvas;

    .line 2
    .line 3
    return-object v0
.end method

.method public final w(Landroid/graphics/Canvas;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/compose/ui/graphics/g0;->a:Landroid/graphics/Canvas;

    .line 2
    .line 3
    return-void
.end method

.method public final x(I)Landroid/graphics/Region$Op;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/ui/graphics/t1;->a:Landroidx/compose/ui/graphics/t1$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/t1$a;->a()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-static {p1, v0}, Landroidx/compose/ui/graphics/t1;->d(II)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    sget-object p1, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    sget-object p1, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    .line 17
    .line 18
    :goto_0
    return-object p1
.end method
