.class public final Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroidx/compose/ui/node/w0;


# instance fields
.field private a:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

.field private final b:Landroidx/compose/ui/graphics/a4;

.field private final c:Landroidx/compose/ui/platform/AndroidComposeView;

.field private d:Lkotlin/jvm/functions/Function2;

.field private e:Lkotlin/jvm/functions/Function0;

.field private f:J

.field private g:Z

.field private final h:[F

.field private i:[F

.field private j:Z

.field private k:Lo0/e;

.field private l:Landroidx/compose/ui/unit/LayoutDirection;

.field private final m:Lz/a;

.field private n:I

.field private o:J

.field private p:Landroidx/compose/ui/graphics/k4;

.field private q:Landroidx/compose/ui/graphics/Path;

.field private r:Landroidx/compose/ui/graphics/m4;

.field private s:Z

.field private final t:Lkotlin/jvm/functions/Function1;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/graphics/layer/GraphicsLayer;Landroidx/compose/ui/graphics/a4;Landroidx/compose/ui/platform/AndroidComposeView;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->a:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->b:Landroidx/compose/ui/graphics/a4;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->c:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 9
    .line 10
    iput-object p4, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->d:Lkotlin/jvm/functions/Function2;

    .line 11
    .line 12
    iput-object p5, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->e:Lkotlin/jvm/functions/Function0;

    .line 13
    .line 14
    const p1, 0x7fffffff

    .line 15
    .line 16
    .line 17
    invoke-static {p1, p1}, Lo0/u;->a(II)J

    .line 18
    .line 19
    .line 20
    move-result-wide p1

    .line 21
    iput-wide p1, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->f:J

    .line 22
    .line 23
    const/4 p1, 0x1

    .line 24
    const/4 p2, 0x0

    .line 25
    invoke-static {p2, p1, p2}, Landroidx/compose/ui/graphics/i4;->c([FILkotlin/jvm/internal/DefaultConstructorMarker;)[F

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    iput-object p1, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->h:[F

    .line 30
    .line 31
    const/4 p1, 0x0

    .line 32
    const/4 p3, 0x2

    .line 33
    const/high16 p4, 0x3f800000    # 1.0f

    .line 34
    .line 35
    invoke-static {p4, p1, p3, p2}, Lo0/g;->b(FFILjava/lang/Object;)Lo0/e;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    iput-object p1, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->k:Lo0/e;

    .line 40
    .line 41
    sget-object p1, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    .line 42
    .line 43
    iput-object p1, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->l:Landroidx/compose/ui/unit/LayoutDirection;

    .line 44
    .line 45
    new-instance p1, Lz/a;

    .line 46
    .line 47
    invoke-direct {p1}, Lz/a;-><init>()V

    .line 48
    .line 49
    .line 50
    iput-object p1, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->m:Lz/a;

    .line 51
    .line 52
    sget-object p1, Landroidx/compose/ui/graphics/e5;->a:Landroidx/compose/ui/graphics/e5$a;

    .line 53
    .line 54
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/e5$a;->a()J

    .line 55
    .line 56
    .line 57
    move-result-wide p1

    .line 58
    iput-wide p1, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->o:J

    .line 59
    .line 60
    new-instance p1, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer$recordLambda$1;

    .line 61
    .line 62
    invoke-direct {p1, p0}, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer$recordLambda$1;-><init>(Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;)V

    .line 63
    .line 64
    .line 65
    iput-object p1, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->t:Lkotlin/jvm/functions/Function1;

    .line 66
    .line 67
    return-void
.end method

.method public static final synthetic a(Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;)Lkotlin/jvm/functions/Function2;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->d:Lkotlin/jvm/functions/Function2;

    .line 2
    .line 3
    return-object p0
.end method

.method private final b(Landroidx/compose/ui/graphics/m1;)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->a:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->k()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_3

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->a:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->n()Landroidx/compose/ui/graphics/k4;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    instance-of v1, v0, Landroidx/compose/ui/graphics/k4$b;

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    const/4 v3, 0x2

    .line 19
    const/4 v4, 0x0

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    check-cast v0, Landroidx/compose/ui/graphics/k4$b;

    .line 23
    .line 24
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/k4$b;->b()Ly/i;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-static {p1, v0, v2, v3, v4}, Landroidx/compose/ui/graphics/l1;->e(Landroidx/compose/ui/graphics/m1;Ly/i;IILjava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    instance-of v1, v0, Landroidx/compose/ui/graphics/k4$c;

    .line 33
    .line 34
    if-eqz v1, :cond_2

    .line 35
    .line 36
    iget-object v1, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->q:Landroidx/compose/ui/graphics/Path;

    .line 37
    .line 38
    if-nez v1, :cond_1

    .line 39
    .line 40
    invoke-static {}, Landroidx/compose/ui/graphics/x0;->a()Landroidx/compose/ui/graphics/Path;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    iput-object v1, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->q:Landroidx/compose/ui/graphics/Path;

    .line 45
    .line 46
    :cond_1
    invoke-interface {v1}, Landroidx/compose/ui/graphics/Path;->reset()V

    .line 47
    .line 48
    .line 49
    check-cast v0, Landroidx/compose/ui/graphics/k4$c;

    .line 50
    .line 51
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/k4$c;->b()Ly/k;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-static {v1, v0, v4, v3, v4}, Landroidx/compose/ui/graphics/o4;->b(Landroidx/compose/ui/graphics/Path;Ly/k;Landroidx/compose/ui/graphics/Path$Direction;ILjava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    invoke-static {p1, v1, v2, v3, v4}, Landroidx/compose/ui/graphics/l1;->c(Landroidx/compose/ui/graphics/m1;Landroidx/compose/ui/graphics/Path;IILjava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_2
    instance-of v1, v0, Landroidx/compose/ui/graphics/k4$a;

    .line 63
    .line 64
    if-eqz v1, :cond_3

    .line 65
    .line 66
    check-cast v0, Landroidx/compose/ui/graphics/k4$a;

    .line 67
    .line 68
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/k4$a;->b()Landroidx/compose/ui/graphics/Path;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-static {p1, v0, v2, v3, v4}, Landroidx/compose/ui/graphics/l1;->c(Landroidx/compose/ui/graphics/m1;Landroidx/compose/ui/graphics/Path;IILjava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    :cond_3
    :goto_0
    return-void
.end method

.method private final c()[F
    .locals 3

    .line 1
    invoke-direct {p0}, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->d()[F

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->i:[F

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-static {v2, v1, v2}, Landroidx/compose/ui/graphics/i4;->c([FILkotlin/jvm/internal/DefaultConstructorMarker;)[F

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iput-object v1, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->i:[F

    .line 16
    .line 17
    :cond_0
    invoke-static {v0, v1}, Landroidx/compose/ui/platform/b1;->a([F[F)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    move-object v2, v1

    .line 24
    :cond_1
    return-object v2
.end method

.method private final d()[F
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->g()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->h:[F

    .line 5
    .line 6
    return-object v0
.end method

.method private final e(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->j:Z

    .line 2
    .line 3
    if-eq p1, v0, :cond_0

    .line 4
    .line 5
    iput-boolean p1, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->j:Z

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->c:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 8
    .line 9
    invoke-virtual {v0, p0, p1}, Landroidx/compose/ui/platform/AndroidComposeView;->notifyLayerIsDirty$ui_release(Landroidx/compose/ui/node/w0;Z)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method private final f()V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1a

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    sget-object v0, Landroidx/compose/ui/platform/a3;->a:Landroidx/compose/ui/platform/a3;

    .line 8
    .line 9
    iget-object v1, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->c:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroidx/compose/ui/platform/a3;->a(Landroidx/compose/ui/platform/AndroidComposeView;)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->c:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 18
    .line 19
    .line 20
    :goto_0
    return-void
.end method

.method private final g()V
    .locals 13

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->a:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->o()J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    invoke-static {v1, v2}, Ly/h;->d(J)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    iget-wide v1, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->f:J

    .line 14
    .line 15
    invoke-static {v1, v2}, Lo0/u;->d(J)J

    .line 16
    .line 17
    .line 18
    move-result-wide v1

    .line 19
    invoke-static {v1, v2}, Ly/n;->b(J)J

    .line 20
    .line 21
    .line 22
    move-result-wide v1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->o()J

    .line 25
    .line 26
    .line 27
    move-result-wide v1

    .line 28
    :goto_0
    iget-object v3, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->h:[F

    .line 29
    .line 30
    invoke-static {v3}, Landroidx/compose/ui/graphics/i4;->h([F)V

    .line 31
    .line 32
    .line 33
    iget-object v3, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->h:[F

    .line 34
    .line 35
    const/4 v4, 0x0

    .line 36
    const/4 v5, 0x1

    .line 37
    invoke-static {v4, v5, v4}, Landroidx/compose/ui/graphics/i4;->c([FILkotlin/jvm/internal/DefaultConstructorMarker;)[F

    .line 38
    .line 39
    .line 40
    move-result-object v12

    .line 41
    invoke-static {v1, v2}, Ly/g;->m(J)F

    .line 42
    .line 43
    .line 44
    move-result v6

    .line 45
    neg-float v7, v6

    .line 46
    invoke-static {v1, v2}, Ly/g;->n(J)F

    .line 47
    .line 48
    .line 49
    move-result v6

    .line 50
    neg-float v8, v6

    .line 51
    const/4 v10, 0x4

    .line 52
    const/4 v11, 0x0

    .line 53
    const/4 v9, 0x0

    .line 54
    move-object v6, v12

    .line 55
    invoke-static/range {v6 .. v11}, Landroidx/compose/ui/graphics/i4;->q([FFFFILjava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    invoke-static {v3, v12}, Landroidx/compose/ui/graphics/i4;->n([F[F)V

    .line 59
    .line 60
    .line 61
    iget-object v3, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->h:[F

    .line 62
    .line 63
    invoke-static {v4, v5, v4}, Landroidx/compose/ui/graphics/i4;->c([FILkotlin/jvm/internal/DefaultConstructorMarker;)[F

    .line 64
    .line 65
    .line 66
    move-result-object v12

    .line 67
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->x()F

    .line 68
    .line 69
    .line 70
    move-result v7

    .line 71
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->y()F

    .line 72
    .line 73
    .line 74
    move-result v8

    .line 75
    move-object v6, v12

    .line 76
    invoke-static/range {v6 .. v11}, Landroidx/compose/ui/graphics/i4;->q([FFFFILjava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->p()F

    .line 80
    .line 81
    .line 82
    move-result v6

    .line 83
    invoke-static {v12, v6}, Landroidx/compose/ui/graphics/i4;->i([FF)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->q()F

    .line 87
    .line 88
    .line 89
    move-result v6

    .line 90
    invoke-static {v12, v6}, Landroidx/compose/ui/graphics/i4;->j([FF)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->r()F

    .line 94
    .line 95
    .line 96
    move-result v6

    .line 97
    invoke-static {v12, v6}, Landroidx/compose/ui/graphics/i4;->k([FF)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->s()F

    .line 101
    .line 102
    .line 103
    move-result v7

    .line 104
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->t()F

    .line 105
    .line 106
    .line 107
    move-result v8

    .line 108
    move-object v6, v12

    .line 109
    invoke-static/range {v6 .. v11}, Landroidx/compose/ui/graphics/i4;->m([FFFFILjava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    invoke-static {v3, v12}, Landroidx/compose/ui/graphics/i4;->n([F[F)V

    .line 113
    .line 114
    .line 115
    iget-object v0, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->h:[F

    .line 116
    .line 117
    invoke-static {v4, v5, v4}, Landroidx/compose/ui/graphics/i4;->c([FILkotlin/jvm/internal/DefaultConstructorMarker;)[F

    .line 118
    .line 119
    .line 120
    move-result-object v3

    .line 121
    invoke-static {v1, v2}, Ly/g;->m(J)F

    .line 122
    .line 123
    .line 124
    move-result v7

    .line 125
    invoke-static {v1, v2}, Ly/g;->n(J)F

    .line 126
    .line 127
    .line 128
    move-result v8

    .line 129
    move-object v6, v3

    .line 130
    invoke-static/range {v6 .. v11}, Landroidx/compose/ui/graphics/i4;->q([FFFFILjava/lang/Object;)V

    .line 131
    .line 132
    .line 133
    invoke-static {v0, v3}, Landroidx/compose/ui/graphics/i4;->n([F[F)V

    .line 134
    .line 135
    .line 136
    return-void
.end method

.method private final h()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->p:Landroidx/compose/ui/graphics/k4;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v1, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->a:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 7
    .line 8
    invoke-static {v1, v0}, Landroidx/compose/ui/graphics/layer/d;->b(Landroidx/compose/ui/graphics/layer/GraphicsLayer;Landroidx/compose/ui/graphics/k4;)V

    .line 9
    .line 10
    .line 11
    instance-of v0, v0, Landroidx/compose/ui/graphics/k4$a;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 16
    .line 17
    const/16 v1, 0x21

    .line 18
    .line 19
    if-ge v0, v1, :cond_1

    .line 20
    .line 21
    iget-object v0, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->e:Lkotlin/jvm/functions/Function0;

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    :cond_1
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->d:Lkotlin/jvm/functions/Function2;

    .line 3
    .line 4
    iput-object v0, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->e:Lkotlin/jvm/functions/Function0;

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->g:Z

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-direct {p0, v0}, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->e(Z)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->b:Landroidx/compose/ui/graphics/a4;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v1, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->a:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 18
    .line 19
    invoke-interface {v0, v1}, Landroidx/compose/ui/graphics/a4;->b(Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->c:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 23
    .line 24
    invoke-virtual {v0, p0}, Landroidx/compose/ui/platform/AndroidComposeView;->recycle$ui_release(Landroidx/compose/ui/node/w0;)Z

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method

.method public drawLayer(Landroidx/compose/ui/graphics/m1;Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V
    .locals 7

    .line 1
    invoke-static {p1}, Landroidx/compose/ui/graphics/h0;->d(Landroidx/compose/ui/graphics/m1;)Landroid/graphics/Canvas;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->updateDisplayList()V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->a:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->u()F

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/4 v1, 0x0

    .line 21
    cmpl-float v0, v0, v1

    .line 22
    .line 23
    if-lez v0, :cond_0

    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v0, 0x0

    .line 28
    :goto_0
    iput-boolean v0, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->s:Z

    .line 29
    .line 30
    iget-object v0, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->m:Lz/a;

    .line 31
    .line 32
    invoke-virtual {v0}, Lz/a;->G0()Lz/d;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-interface {v0, p1}, Lz/d;->h(Landroidx/compose/ui/graphics/m1;)V

    .line 37
    .line 38
    .line 39
    invoke-interface {v0, p2}, Lz/d;->d(Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V

    .line 40
    .line 41
    .line 42
    iget-object p1, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->m:Lz/a;

    .line 43
    .line 44
    iget-object p2, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->a:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 45
    .line 46
    invoke-static {p1, p2}, Landroidx/compose/ui/graphics/layer/d;->a(Lz/g;Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V

    .line 47
    .line 48
    .line 49
    goto/16 :goto_2

    .line 50
    .line 51
    :cond_1
    iget-object p2, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->a:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 52
    .line 53
    invoke-virtual {p2}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->w()J

    .line 54
    .line 55
    .line 56
    move-result-wide v1

    .line 57
    invoke-static {v1, v2}, Lo0/p;->h(J)I

    .line 58
    .line 59
    .line 60
    move-result p2

    .line 61
    int-to-float p2, p2

    .line 62
    iget-object v1, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->a:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 63
    .line 64
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->w()J

    .line 65
    .line 66
    .line 67
    move-result-wide v1

    .line 68
    invoke-static {v1, v2}, Lo0/p;->i(J)I

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    int-to-float v6, v1

    .line 73
    iget-wide v1, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->f:J

    .line 74
    .line 75
    invoke-static {v1, v2}, Lo0/t;->g(J)I

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    int-to-float v1, v1

    .line 80
    add-float v3, p2, v1

    .line 81
    .line 82
    iget-wide v1, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->f:J

    .line 83
    .line 84
    invoke-static {v1, v2}, Lo0/t;->f(J)I

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    int-to-float v1, v1

    .line 89
    add-float v4, v6, v1

    .line 90
    .line 91
    iget-object v1, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->a:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 92
    .line 93
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->i()F

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    const/high16 v2, 0x3f800000    # 1.0f

    .line 98
    .line 99
    cmpg-float v1, v1, v2

    .line 100
    .line 101
    if-gez v1, :cond_3

    .line 102
    .line 103
    iget-object v1, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->r:Landroidx/compose/ui/graphics/m4;

    .line 104
    .line 105
    if-nez v1, :cond_2

    .line 106
    .line 107
    invoke-static {}, Landroidx/compose/ui/graphics/t0;->a()Landroidx/compose/ui/graphics/m4;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    iput-object v1, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->r:Landroidx/compose/ui/graphics/m4;

    .line 112
    .line 113
    :cond_2
    iget-object v2, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->a:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 114
    .line 115
    invoke-virtual {v2}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->i()F

    .line 116
    .line 117
    .line 118
    move-result v2

    .line 119
    invoke-interface {v1, v2}, Landroidx/compose/ui/graphics/m4;->setAlpha(F)V

    .line 120
    .line 121
    .line 122
    invoke-interface {v1}, Landroidx/compose/ui/graphics/m4;->w()Landroid/graphics/Paint;

    .line 123
    .line 124
    .line 125
    move-result-object v5

    .line 126
    move v1, p2

    .line 127
    move v2, v6

    .line 128
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;)I

    .line 129
    .line 130
    .line 131
    goto :goto_1

    .line 132
    :cond_3
    invoke-interface {p1}, Landroidx/compose/ui/graphics/m1;->n()V

    .line 133
    .line 134
    .line 135
    :goto_1
    invoke-interface {p1, p2, v6}, Landroidx/compose/ui/graphics/m1;->c(FF)V

    .line 136
    .line 137
    .line 138
    invoke-direct {p0}, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->d()[F

    .line 139
    .line 140
    .line 141
    move-result-object p2

    .line 142
    invoke-interface {p1, p2}, Landroidx/compose/ui/graphics/m1;->p([F)V

    .line 143
    .line 144
    .line 145
    iget-object p2, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->a:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 146
    .line 147
    invoke-virtual {p2}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->k()Z

    .line 148
    .line 149
    .line 150
    move-result p2

    .line 151
    if-eqz p2, :cond_4

    .line 152
    .line 153
    invoke-direct {p0, p1}, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->b(Landroidx/compose/ui/graphics/m1;)V

    .line 154
    .line 155
    .line 156
    :cond_4
    iget-object p2, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->d:Lkotlin/jvm/functions/Function2;

    .line 157
    .line 158
    if-eqz p2, :cond_5

    .line 159
    .line 160
    const/4 v0, 0x0

    .line 161
    invoke-interface {p2, p1, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    :cond_5
    invoke-interface {p1}, Landroidx/compose/ui/graphics/m1;->j()V

    .line 165
    .line 166
    .line 167
    :goto_2
    return-void
.end method

.method public invalidate()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->j:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->g:Z

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->c:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    invoke-direct {p0, v0}, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->e(Z)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public isInLayer-k-4lQ0M(J)Z
    .locals 7

    .line 1
    invoke-static {p1, p2}, Ly/g;->m(J)F

    .line 2
    .line 3
    .line 4
    move-result v1

    .line 5
    invoke-static {p1, p2}, Ly/g;->n(J)F

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    iget-object p1, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->a:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->k()Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    iget-object p1, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->a:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 18
    .line 19
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->n()Landroidx/compose/ui/graphics/k4;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const/16 v5, 0x18

    .line 24
    .line 25
    const/4 v6, 0x0

    .line 26
    const/4 v3, 0x0

    .line 27
    const/4 v4, 0x0

    .line 28
    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/platform/f2;->c(Landroidx/compose/ui/graphics/k4;FFLandroidx/compose/ui/graphics/Path;Landroidx/compose/ui/graphics/Path;ILjava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    return p1

    .line 33
    :cond_0
    const/4 p1, 0x1

    .line 34
    return p1
.end method

.method public mapBounds(Ly/e;Z)V
    .locals 0

    .line 1
    if-eqz p2, :cond_1

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->c()[F

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    if-nez p2, :cond_0

    .line 8
    .line 9
    const/4 p2, 0x0

    .line 10
    invoke-virtual {p1, p2, p2, p2, p2}, Ly/e;->g(FFFF)V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-static {p2, p1}, Landroidx/compose/ui/graphics/i4;->g([FLy/e;)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    invoke-direct {p0}, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->d()[F

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    invoke-static {p2, p1}, Landroidx/compose/ui/graphics/i4;->g([FLy/e;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    return-void
.end method

.method public mapOffset-8S9VItk(JZ)J
    .locals 0

    .line 1
    if-eqz p3, :cond_1

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->c()[F

    .line 4
    .line 5
    .line 6
    move-result-object p3

    .line 7
    if-eqz p3, :cond_0

    .line 8
    .line 9
    invoke-static {p3, p1, p2}, Landroidx/compose/ui/graphics/i4;->f([FJ)J

    .line 10
    .line 11
    .line 12
    move-result-wide p1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    sget-object p1, Ly/g;->b:Ly/g$a;

    .line 15
    .line 16
    invoke-virtual {p1}, Ly/g$a;->a()J

    .line 17
    .line 18
    .line 19
    move-result-wide p1

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    invoke-direct {p0}, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->d()[F

    .line 22
    .line 23
    .line 24
    move-result-object p3

    .line 25
    invoke-static {p3, p1, p2}, Landroidx/compose/ui/graphics/i4;->f([FJ)J

    .line 26
    .line 27
    .line 28
    move-result-wide p1

    .line 29
    :goto_0
    return-wide p1
.end method

.method public move--gyyYBs(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->a:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->c0(J)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->f()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public resize-ozmzZPI(J)V
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->f:J

    .line 2
    .line 3
    invoke-static {p1, p2, v0, v1}, Lo0/t;->e(JJ)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iput-wide p1, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->f:J

    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->invalidate()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public reuseLayer(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->b:Landroidx/compose/ui/graphics/a4;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->a:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 6
    .line 7
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->z()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Landroidx/compose/ui/graphics/a4;->a()Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->a:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->g:Z

    .line 21
    .line 22
    iput-object p1, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->d:Lkotlin/jvm/functions/Function2;

    .line 23
    .line 24
    iput-object p2, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->e:Lkotlin/jvm/functions/Function0;

    .line 25
    .line 26
    sget-object p1, Landroidx/compose/ui/graphics/e5;->a:Landroidx/compose/ui/graphics/e5$a;

    .line 27
    .line 28
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/e5$a;->a()J

    .line 29
    .line 30
    .line 31
    move-result-wide p1

    .line 32
    iput-wide p1, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->o:J

    .line 33
    .line 34
    iput-boolean v0, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->s:Z

    .line 35
    .line 36
    const p1, 0x7fffffff

    .line 37
    .line 38
    .line 39
    invoke-static {p1, p1}, Lo0/u;->a(II)J

    .line 40
    .line 41
    .line 42
    move-result-wide p1

    .line 43
    iput-wide p1, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->f:J

    .line 44
    .line 45
    const/4 p1, 0x0

    .line 46
    iput-object p1, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->p:Landroidx/compose/ui/graphics/k4;

    .line 47
    .line 48
    iput v0, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->n:I

    .line 49
    .line 50
    return-void

    .line 51
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 52
    .line 53
    const-string p2, "layer should have been released before reuse"

    .line 54
    .line 55
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw p1

    .line 59
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 60
    .line 61
    const-string p2, "currently reuse is only supported when we manage the layer lifecycle"

    .line 62
    .line 63
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    throw p1
.end method

.method public updateDisplayList()V
    .locals 9

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->j:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-wide v0, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->o:J

    .line 6
    .line 7
    sget-object v2, Landroidx/compose/ui/graphics/e5;->a:Landroidx/compose/ui/graphics/e5$a;

    .line 8
    .line 9
    invoke-virtual {v2}, Landroidx/compose/ui/graphics/e5$a;->a()J

    .line 10
    .line 11
    .line 12
    move-result-wide v2

    .line 13
    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/graphics/e5;->c(JJ)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->a:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->v()J

    .line 22
    .line 23
    .line 24
    move-result-wide v0

    .line 25
    iget-wide v2, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->f:J

    .line 26
    .line 27
    invoke-static {v0, v1, v2, v3}, Lo0/t;->e(JJ)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_0

    .line 32
    .line 33
    iget-object v0, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->a:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 34
    .line 35
    iget-wide v1, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->o:J

    .line 36
    .line 37
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/e5;->d(J)F

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    iget-wide v2, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->f:J

    .line 42
    .line 43
    invoke-static {v2, v3}, Lo0/t;->g(J)I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    int-to-float v2, v2

    .line 48
    mul-float/2addr v1, v2

    .line 49
    iget-wide v2, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->o:J

    .line 50
    .line 51
    invoke-static {v2, v3}, Landroidx/compose/ui/graphics/e5;->e(J)F

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    iget-wide v3, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->f:J

    .line 56
    .line 57
    invoke-static {v3, v4}, Lo0/t;->f(J)I

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    int-to-float v3, v3

    .line 62
    mul-float/2addr v2, v3

    .line 63
    invoke-static {v1, v2}, Ly/h;->a(FF)J

    .line 64
    .line 65
    .line 66
    move-result-wide v1

    .line 67
    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->P(J)V

    .line 68
    .line 69
    .line 70
    :cond_0
    iget-object v3, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->a:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 71
    .line 72
    iget-object v4, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->k:Lo0/e;

    .line 73
    .line 74
    iget-object v5, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->l:Landroidx/compose/ui/unit/LayoutDirection;

    .line 75
    .line 76
    iget-wide v6, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->f:J

    .line 77
    .line 78
    iget-object v8, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->t:Lkotlin/jvm/functions/Function1;

    .line 79
    .line 80
    invoke-virtual/range {v3 .. v8}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->E(Lo0/e;Landroidx/compose/ui/unit/LayoutDirection;JLkotlin/jvm/functions/Function1;)V

    .line 81
    .line 82
    .line 83
    const/4 v0, 0x0

    .line 84
    invoke-direct {p0, v0}, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->e(Z)V

    .line 85
    .line 86
    .line 87
    :cond_1
    return-void
.end method

.method public updateLayerProperties(Landroidx/compose/ui/graphics/x4;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/x4;->F()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget v1, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->n:I

    .line 6
    .line 7
    or-int/2addr v0, v1

    .line 8
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/x4;->D()Landroidx/compose/ui/unit/LayoutDirection;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    iput-object v1, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->l:Landroidx/compose/ui/unit/LayoutDirection;

    .line 13
    .line 14
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/x4;->C()Lo0/e;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    iput-object v1, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->k:Lo0/e;

    .line 19
    .line 20
    and-int/lit16 v1, v0, 0x1000

    .line 21
    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/x4;->b0()J

    .line 25
    .line 26
    .line 27
    move-result-wide v2

    .line 28
    iput-wide v2, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->o:J

    .line 29
    .line 30
    :cond_0
    and-int/lit8 v2, v0, 0x1

    .line 31
    .line 32
    if-eqz v2, :cond_1

    .line 33
    .line 34
    iget-object v2, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->a:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 35
    .line 36
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/x4;->t()F

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    invoke-virtual {v2, v3}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->X(F)V

    .line 41
    .line 42
    .line 43
    :cond_1
    and-int/lit8 v2, v0, 0x2

    .line 44
    .line 45
    if-eqz v2, :cond_2

    .line 46
    .line 47
    iget-object v2, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->a:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 48
    .line 49
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/x4;->A()F

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    invoke-virtual {v2, v3}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->Y(F)V

    .line 54
    .line 55
    .line 56
    :cond_2
    and-int/lit8 v2, v0, 0x4

    .line 57
    .line 58
    if-eqz v2, :cond_3

    .line 59
    .line 60
    iget-object v2, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->a:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 61
    .line 62
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/x4;->n()F

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    invoke-virtual {v2, v3}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->J(F)V

    .line 67
    .line 68
    .line 69
    :cond_3
    and-int/lit8 v2, v0, 0x8

    .line 70
    .line 71
    if-eqz v2, :cond_4

    .line 72
    .line 73
    iget-object v2, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->a:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 74
    .line 75
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/x4;->x()F

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    invoke-virtual {v2, v3}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->d0(F)V

    .line 80
    .line 81
    .line 82
    :cond_4
    and-int/lit8 v2, v0, 0x10

    .line 83
    .line 84
    if-eqz v2, :cond_5

    .line 85
    .line 86
    iget-object v2, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->a:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 87
    .line 88
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/x4;->w()F

    .line 89
    .line 90
    .line 91
    move-result v3

    .line 92
    invoke-virtual {v2, v3}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->e0(F)V

    .line 93
    .line 94
    .line 95
    :cond_5
    and-int/lit8 v2, v0, 0x20

    .line 96
    .line 97
    if-eqz v2, :cond_6

    .line 98
    .line 99
    iget-object v2, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->a:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 100
    .line 101
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/x4;->L()F

    .line 102
    .line 103
    .line 104
    move-result v3

    .line 105
    invoke-virtual {v2, v3}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->Z(F)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/x4;->L()F

    .line 109
    .line 110
    .line 111
    move-result v2

    .line 112
    const/4 v3, 0x0

    .line 113
    cmpl-float v2, v2, v3

    .line 114
    .line 115
    if-lez v2, :cond_6

    .line 116
    .line 117
    iget-boolean v2, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->s:Z

    .line 118
    .line 119
    if-nez v2, :cond_6

    .line 120
    .line 121
    iget-object v2, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->e:Lkotlin/jvm/functions/Function0;

    .line 122
    .line 123
    if-eqz v2, :cond_6

    .line 124
    .line 125
    invoke-interface {v2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    :cond_6
    and-int/lit8 v2, v0, 0x40

    .line 129
    .line 130
    if-eqz v2, :cond_7

    .line 131
    .line 132
    iget-object v2, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->a:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 133
    .line 134
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/x4;->v()J

    .line 135
    .line 136
    .line 137
    move-result-wide v3

    .line 138
    invoke-virtual {v2, v3, v4}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->K(J)V

    .line 139
    .line 140
    .line 141
    :cond_7
    and-int/lit16 v2, v0, 0x80

    .line 142
    .line 143
    if-eqz v2, :cond_8

    .line 144
    .line 145
    iget-object v2, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->a:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 146
    .line 147
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/x4;->O()J

    .line 148
    .line 149
    .line 150
    move-result-wide v3

    .line 151
    invoke-virtual {v2, v3, v4}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->b0(J)V

    .line 152
    .line 153
    .line 154
    :cond_8
    and-int/lit16 v2, v0, 0x400

    .line 155
    .line 156
    if-eqz v2, :cond_9

    .line 157
    .line 158
    iget-object v2, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->a:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 159
    .line 160
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/x4;->o()F

    .line 161
    .line 162
    .line 163
    move-result v3

    .line 164
    invoke-virtual {v2, v3}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->V(F)V

    .line 165
    .line 166
    .line 167
    :cond_9
    and-int/lit16 v2, v0, 0x100

    .line 168
    .line 169
    if-eqz v2, :cond_a

    .line 170
    .line 171
    iget-object v2, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->a:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 172
    .line 173
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/x4;->y()F

    .line 174
    .line 175
    .line 176
    move-result v3

    .line 177
    invoke-virtual {v2, v3}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->T(F)V

    .line 178
    .line 179
    .line 180
    :cond_a
    and-int/lit16 v2, v0, 0x200

    .line 181
    .line 182
    if-eqz v2, :cond_b

    .line 183
    .line 184
    iget-object v2, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->a:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 185
    .line 186
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/x4;->m()F

    .line 187
    .line 188
    .line 189
    move-result v3

    .line 190
    invoke-virtual {v2, v3}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->U(F)V

    .line 191
    .line 192
    .line 193
    :cond_b
    and-int/lit16 v2, v0, 0x800

    .line 194
    .line 195
    if-eqz v2, :cond_c

    .line 196
    .line 197
    iget-object v2, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->a:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 198
    .line 199
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/x4;->q()F

    .line 200
    .line 201
    .line 202
    move-result v3

    .line 203
    invoke-virtual {v2, v3}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->L(F)V

    .line 204
    .line 205
    .line 206
    :cond_c
    if-eqz v1, :cond_e

    .line 207
    .line 208
    iget-wide v1, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->o:J

    .line 209
    .line 210
    sget-object v3, Landroidx/compose/ui/graphics/e5;->a:Landroidx/compose/ui/graphics/e5$a;

    .line 211
    .line 212
    invoke-virtual {v3}, Landroidx/compose/ui/graphics/e5$a;->a()J

    .line 213
    .line 214
    .line 215
    move-result-wide v3

    .line 216
    invoke-static {v1, v2, v3, v4}, Landroidx/compose/ui/graphics/e5;->c(JJ)Z

    .line 217
    .line 218
    .line 219
    move-result v1

    .line 220
    if-eqz v1, :cond_d

    .line 221
    .line 222
    iget-object v1, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->a:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 223
    .line 224
    sget-object v2, Ly/g;->b:Ly/g$a;

    .line 225
    .line 226
    invoke-virtual {v2}, Ly/g$a;->b()J

    .line 227
    .line 228
    .line 229
    move-result-wide v2

    .line 230
    invoke-virtual {v1, v2, v3}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->P(J)V

    .line 231
    .line 232
    .line 233
    goto :goto_0

    .line 234
    :cond_d
    iget-object v1, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->a:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 235
    .line 236
    iget-wide v2, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->o:J

    .line 237
    .line 238
    invoke-static {v2, v3}, Landroidx/compose/ui/graphics/e5;->d(J)F

    .line 239
    .line 240
    .line 241
    move-result v2

    .line 242
    iget-wide v3, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->f:J

    .line 243
    .line 244
    invoke-static {v3, v4}, Lo0/t;->g(J)I

    .line 245
    .line 246
    .line 247
    move-result v3

    .line 248
    int-to-float v3, v3

    .line 249
    mul-float/2addr v2, v3

    .line 250
    iget-wide v3, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->o:J

    .line 251
    .line 252
    invoke-static {v3, v4}, Landroidx/compose/ui/graphics/e5;->e(J)F

    .line 253
    .line 254
    .line 255
    move-result v3

    .line 256
    iget-wide v4, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->f:J

    .line 257
    .line 258
    invoke-static {v4, v5}, Lo0/t;->f(J)I

    .line 259
    .line 260
    .line 261
    move-result v4

    .line 262
    int-to-float v4, v4

    .line 263
    mul-float/2addr v3, v4

    .line 264
    invoke-static {v2, v3}, Ly/h;->a(FF)J

    .line 265
    .line 266
    .line 267
    move-result-wide v2

    .line 268
    invoke-virtual {v1, v2, v3}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->P(J)V

    .line 269
    .line 270
    .line 271
    :cond_e
    :goto_0
    and-int/lit16 v1, v0, 0x4000

    .line 272
    .line 273
    if-eqz v1, :cond_f

    .line 274
    .line 275
    iget-object v1, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->a:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 276
    .line 277
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/x4;->z()Z

    .line 278
    .line 279
    .line 280
    move-result v2

    .line 281
    invoke-virtual {v1, v2}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->M(Z)V

    .line 282
    .line 283
    .line 284
    :cond_f
    const/high16 v1, 0x20000

    .line 285
    .line 286
    and-int/2addr v1, v0

    .line 287
    if-eqz v1, :cond_10

    .line 288
    .line 289
    iget-object v1, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->a:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 290
    .line 291
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/x4;->I()Landroidx/compose/ui/graphics/w4;

    .line 292
    .line 293
    .line 294
    const/4 v2, 0x0

    .line 295
    invoke-virtual {v1, v2}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->S(Landroidx/compose/ui/graphics/w4;)V

    .line 296
    .line 297
    .line 298
    :cond_10
    const v1, 0x8000

    .line 299
    .line 300
    .line 301
    and-int/2addr v1, v0

    .line 302
    if-eqz v1, :cond_14

    .line 303
    .line 304
    iget-object v1, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->a:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 305
    .line 306
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/x4;->B()I

    .line 307
    .line 308
    .line 309
    move-result v2

    .line 310
    sget-object v3, Landroidx/compose/ui/graphics/w3;->a:Landroidx/compose/ui/graphics/w3$a;

    .line 311
    .line 312
    invoke-virtual {v3}, Landroidx/compose/ui/graphics/w3$a;->a()I

    .line 313
    .line 314
    .line 315
    move-result v4

    .line 316
    invoke-static {v2, v4}, Landroidx/compose/ui/graphics/w3;->e(II)Z

    .line 317
    .line 318
    .line 319
    move-result v4

    .line 320
    if-eqz v4, :cond_11

    .line 321
    .line 322
    sget-object v2, Landroidx/compose/ui/graphics/layer/b;->a:Landroidx/compose/ui/graphics/layer/b$a;

    .line 323
    .line 324
    invoke-virtual {v2}, Landroidx/compose/ui/graphics/layer/b$a;->a()I

    .line 325
    .line 326
    .line 327
    move-result v2

    .line 328
    goto :goto_1

    .line 329
    :cond_11
    invoke-virtual {v3}, Landroidx/compose/ui/graphics/w3$a;->c()I

    .line 330
    .line 331
    .line 332
    move-result v4

    .line 333
    invoke-static {v2, v4}, Landroidx/compose/ui/graphics/w3;->e(II)Z

    .line 334
    .line 335
    .line 336
    move-result v4

    .line 337
    if-eqz v4, :cond_12

    .line 338
    .line 339
    sget-object v2, Landroidx/compose/ui/graphics/layer/b;->a:Landroidx/compose/ui/graphics/layer/b$a;

    .line 340
    .line 341
    invoke-virtual {v2}, Landroidx/compose/ui/graphics/layer/b$a;->c()I

    .line 342
    .line 343
    .line 344
    move-result v2

    .line 345
    goto :goto_1

    .line 346
    :cond_12
    invoke-virtual {v3}, Landroidx/compose/ui/graphics/w3$a;->b()I

    .line 347
    .line 348
    .line 349
    move-result v3

    .line 350
    invoke-static {v2, v3}, Landroidx/compose/ui/graphics/w3;->e(II)Z

    .line 351
    .line 352
    .line 353
    move-result v2

    .line 354
    if-eqz v2, :cond_13

    .line 355
    .line 356
    sget-object v2, Landroidx/compose/ui/graphics/layer/b;->a:Landroidx/compose/ui/graphics/layer/b$a;

    .line 357
    .line 358
    invoke-virtual {v2}, Landroidx/compose/ui/graphics/layer/b$a;->b()I

    .line 359
    .line 360
    .line 361
    move-result v2

    .line 362
    :goto_1
    invoke-virtual {v1, v2}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->N(I)V

    .line 363
    .line 364
    .line 365
    goto :goto_2

    .line 366
    :cond_13
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 367
    .line 368
    const-string v0, "Not supported composition strategy"

    .line 369
    .line 370
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 371
    .line 372
    .line 373
    throw p1

    .line 374
    :cond_14
    :goto_2
    iget-object v1, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->p:Landroidx/compose/ui/graphics/k4;

    .line 375
    .line 376
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/x4;->G()Landroidx/compose/ui/graphics/k4;

    .line 377
    .line 378
    .line 379
    move-result-object v2

    .line 380
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 381
    .line 382
    .line 383
    move-result v1

    .line 384
    if-nez v1, :cond_15

    .line 385
    .line 386
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/x4;->G()Landroidx/compose/ui/graphics/k4;

    .line 387
    .line 388
    .line 389
    move-result-object v1

    .line 390
    iput-object v1, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->p:Landroidx/compose/ui/graphics/k4;

    .line 391
    .line 392
    invoke-direct {p0}, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->h()V

    .line 393
    .line 394
    .line 395
    const/4 v1, 0x1

    .line 396
    goto :goto_3

    .line 397
    :cond_15
    const/4 v1, 0x0

    .line 398
    :goto_3
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/x4;->F()I

    .line 399
    .line 400
    .line 401
    move-result p1

    .line 402
    iput p1, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->n:I

    .line 403
    .line 404
    if-nez v0, :cond_16

    .line 405
    .line 406
    if-eqz v1, :cond_17

    .line 407
    .line 408
    :cond_16
    invoke-direct {p0}, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->f()V

    .line 409
    .line 410
    .line 411
    :cond_17
    return-void
.end method
