.class public final Landroidx/compose/ui/graphics/layer/c0;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;


# instance fields
.field private A:Z

.field private B:I

.field private C:Z

.field private final b:J

.field private final c:Landroidx/compose/ui/graphics/n1;

.field private final d:Lz/a;

.field private final e:Landroid/graphics/RenderNode;

.field private f:J

.field private g:Landroid/graphics/Paint;

.field private h:Landroid/graphics/Matrix;

.field private i:Z

.field private j:F

.field private k:I

.field private l:Landroidx/compose/ui/graphics/v1;

.field private m:J

.field private n:F

.field private o:F

.field private p:F

.field private q:F

.field private r:F

.field private s:J

.field private t:J

.field private u:F

.field private v:F

.field private w:F

.field private x:F

.field private y:Z

.field private z:Z


# direct methods
.method public constructor <init>(JLandroidx/compose/ui/graphics/n1;Lz/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Landroidx/compose/ui/graphics/layer/c0;->b:J

    .line 3
    iput-object p3, p0, Landroidx/compose/ui/graphics/layer/c0;->c:Landroidx/compose/ui/graphics/n1;

    .line 4
    iput-object p4, p0, Landroidx/compose/ui/graphics/layer/c0;->d:Lz/a;

    .line 5
    const-string p1, "graphicsLayer"

    invoke-static {p1}, Landroidx/compose/foundation/i;->a(Ljava/lang/String;)Landroid/graphics/RenderNode;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/ui/graphics/layer/c0;->e:Landroid/graphics/RenderNode;

    .line 6
    sget-object p2, Ly/m;->b:Ly/m$a;

    invoke-virtual {p2}, Ly/m$a;->b()J

    move-result-wide p2

    iput-wide p2, p0, Landroidx/compose/ui/graphics/layer/c0;->f:J

    const/4 p2, 0x0

    .line 7
    invoke-static {p1, p2}, Landroidx/compose/ui/graphics/layer/a0;->a(Landroid/graphics/RenderNode;Z)Z

    .line 8
    sget-object p2, Landroidx/compose/ui/graphics/layer/b;->a:Landroidx/compose/ui/graphics/layer/b$a;

    invoke-virtual {p2}, Landroidx/compose/ui/graphics/layer/b$a;->a()I

    move-result p3

    invoke-direct {p0, p1, p3}, Landroidx/compose/ui/graphics/layer/c0;->N(Landroid/graphics/RenderNode;I)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 9
    iput p1, p0, Landroidx/compose/ui/graphics/layer/c0;->j:F

    .line 10
    sget-object p3, Landroidx/compose/ui/graphics/c1;->a:Landroidx/compose/ui/graphics/c1$a;

    invoke-virtual {p3}, Landroidx/compose/ui/graphics/c1$a;->B()I

    move-result p3

    iput p3, p0, Landroidx/compose/ui/graphics/layer/c0;->k:I

    .line 11
    sget-object p3, Ly/g;->b:Ly/g$a;

    invoke-virtual {p3}, Ly/g$a;->b()J

    move-result-wide p3

    iput-wide p3, p0, Landroidx/compose/ui/graphics/layer/c0;->m:J

    .line 12
    iput p1, p0, Landroidx/compose/ui/graphics/layer/c0;->n:F

    .line 13
    iput p1, p0, Landroidx/compose/ui/graphics/layer/c0;->o:F

    .line 14
    sget-object p1, Landroidx/compose/ui/graphics/u1;->b:Landroidx/compose/ui/graphics/u1$a;

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/u1$a;->a()J

    move-result-wide p3

    iput-wide p3, p0, Landroidx/compose/ui/graphics/layer/c0;->s:J

    .line 15
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/u1$a;->a()J

    move-result-wide p3

    iput-wide p3, p0, Landroidx/compose/ui/graphics/layer/c0;->t:J

    const/high16 p1, 0x41000000    # 8.0f

    .line 16
    iput p1, p0, Landroidx/compose/ui/graphics/layer/c0;->x:F

    .line 17
    invoke-virtual {p2}, Landroidx/compose/ui/graphics/layer/b$a;->a()I

    move-result p1

    iput p1, p0, Landroidx/compose/ui/graphics/layer/c0;->B:I

    const/4 p1, 0x1

    .line 18
    iput-boolean p1, p0, Landroidx/compose/ui/graphics/layer/c0;->C:Z

    return-void
.end method

.method public synthetic constructor <init>(JLandroidx/compose/ui/graphics/n1;Lz/a;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    .line 19
    new-instance p3, Landroidx/compose/ui/graphics/n1;

    invoke-direct {p3}, Landroidx/compose/ui/graphics/n1;-><init>()V

    :cond_0
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_1

    .line 20
    new-instance p4, Lz/a;

    invoke-direct {p4}, Lz/a;-><init>()V

    .line 21
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/compose/ui/graphics/layer/c0;-><init>(JLandroidx/compose/ui/graphics/n1;Lz/a;)V

    return-void
.end method

.method private final M()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/layer/c0;->O()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-boolean v0, p0, Landroidx/compose/ui/graphics/layer/c0;->i:Z

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    move v0, v2

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move v0, v1

    .line 16
    :goto_0
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/layer/c0;->O()Z

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    if-eqz v3, :cond_1

    .line 21
    .line 22
    iget-boolean v3, p0, Landroidx/compose/ui/graphics/layer/c0;->i:Z

    .line 23
    .line 24
    if-eqz v3, :cond_1

    .line 25
    .line 26
    move v1, v2

    .line 27
    :cond_1
    iget-boolean v2, p0, Landroidx/compose/ui/graphics/layer/c0;->z:Z

    .line 28
    .line 29
    if-eq v0, v2, :cond_2

    .line 30
    .line 31
    iput-boolean v0, p0, Landroidx/compose/ui/graphics/layer/c0;->z:Z

    .line 32
    .line 33
    iget-object v2, p0, Landroidx/compose/ui/graphics/layer/c0;->e:Landroid/graphics/RenderNode;

    .line 34
    .line 35
    invoke-static {v2, v0}, Landroidx/compose/ui/graphics/layer/a0;->a(Landroid/graphics/RenderNode;Z)Z

    .line 36
    .line 37
    .line 38
    :cond_2
    iget-boolean v0, p0, Landroidx/compose/ui/graphics/layer/c0;->A:Z

    .line 39
    .line 40
    if-eq v1, v0, :cond_3

    .line 41
    .line 42
    iput-boolean v1, p0, Landroidx/compose/ui/graphics/layer/c0;->A:Z

    .line 43
    .line 44
    iget-object v0, p0, Landroidx/compose/ui/graphics/layer/c0;->e:Landroid/graphics/RenderNode;

    .line 45
    .line 46
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/layer/b0;->a(Landroid/graphics/RenderNode;Z)Z

    .line 47
    .line 48
    .line 49
    :cond_3
    return-void
.end method

.method private final N(Landroid/graphics/RenderNode;I)V
    .locals 3

    .line 1
    sget-object v0, Landroidx/compose/ui/graphics/layer/b;->a:Landroidx/compose/ui/graphics/layer/b$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/layer/b$a;->c()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-static {p2, v1}, Landroidx/compose/ui/graphics/layer/b;->e(II)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    iget-object p2, p0, Landroidx/compose/ui/graphics/layer/c0;->g:Landroid/graphics/Paint;

    .line 15
    .line 16
    invoke-static {p1, v2, p2}, Landroidx/compose/ui/graphics/layer/k;->a(Landroid/graphics/RenderNode;ZLandroid/graphics/Paint;)Z

    .line 17
    .line 18
    .line 19
    invoke-static {p1, v2}, Landroidx/compose/ui/graphics/layer/l;->a(Landroid/graphics/RenderNode;Z)Z

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/layer/b$a;->b()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    invoke-static {p2, v0}, Landroidx/compose/ui/graphics/layer/b;->e(II)Z

    .line 28
    .line 29
    .line 30
    move-result p2

    .line 31
    const/4 v0, 0x0

    .line 32
    if-eqz p2, :cond_1

    .line 33
    .line 34
    iget-object p2, p0, Landroidx/compose/ui/graphics/layer/c0;->g:Landroid/graphics/Paint;

    .line 35
    .line 36
    invoke-static {p1, v0, p2}, Landroidx/compose/ui/graphics/layer/k;->a(Landroid/graphics/RenderNode;ZLandroid/graphics/Paint;)Z

    .line 37
    .line 38
    .line 39
    invoke-static {p1, v0}, Landroidx/compose/ui/graphics/layer/l;->a(Landroid/graphics/RenderNode;Z)Z

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    iget-object p2, p0, Landroidx/compose/ui/graphics/layer/c0;->g:Landroid/graphics/Paint;

    .line 44
    .line 45
    invoke-static {p1, v0, p2}, Landroidx/compose/ui/graphics/layer/k;->a(Landroid/graphics/RenderNode;ZLandroid/graphics/Paint;)Z

    .line 46
    .line 47
    .line 48
    invoke-static {p1, v2}, Landroidx/compose/ui/graphics/layer/l;->a(Landroid/graphics/RenderNode;Z)Z

    .line 49
    .line 50
    .line 51
    :goto_0
    return-void
.end method

.method private final P()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/layer/c0;->z()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sget-object v1, Landroidx/compose/ui/graphics/layer/b;->a:Landroidx/compose/ui/graphics/layer/b$a;

    .line 6
    .line 7
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/layer/b$a;->c()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/layer/b;->e(II)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    invoke-direct {p0}, Landroidx/compose/ui/graphics/layer/c0;->Q()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/layer/c0;->v()Landroidx/compose/ui/graphics/w4;

    .line 24
    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 v0, 0x1

    .line 29
    :goto_0
    return v0
.end method

.method private final Q()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/layer/c0;->l()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sget-object v1, Landroidx/compose/ui/graphics/c1;->a:Landroidx/compose/ui/graphics/c1$a;

    .line 6
    .line 7
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/c1$a;->B()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/c1;->E(II)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/layer/c0;->i()Landroidx/compose/ui/graphics/v1;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v0, 0x0

    .line 25
    goto :goto_1

    .line 26
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 27
    :goto_1
    return v0
.end method

.method private final R()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/compose/ui/graphics/layer/c0;->P()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/compose/ui/graphics/layer/c0;->e:Landroid/graphics/RenderNode;

    .line 8
    .line 9
    sget-object v1, Landroidx/compose/ui/graphics/layer/b;->a:Landroidx/compose/ui/graphics/layer/b$a;

    .line 10
    .line 11
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/layer/b$a;->c()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-direct {p0, v0, v1}, Landroidx/compose/ui/graphics/layer/c0;->N(Landroid/graphics/RenderNode;I)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/graphics/layer/c0;->e:Landroid/graphics/RenderNode;

    .line 20
    .line 21
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/layer/c0;->z()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    invoke-direct {p0, v0, v1}, Landroidx/compose/ui/graphics/layer/c0;->N(Landroid/graphics/RenderNode;I)V

    .line 26
    .line 27
    .line 28
    :goto_0
    return-void
.end method


# virtual methods
.method public A()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/graphics/layer/c0;->o:F

    .line 2
    .line 3
    return v0
.end method

.method public B(IIJ)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/graphics/layer/c0;->e:Landroid/graphics/RenderNode;

    .line 2
    .line 3
    invoke-static {p3, p4}, Lo0/t;->g(J)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    add-int/2addr v1, p1

    .line 8
    invoke-static {p3, p4}, Lo0/t;->f(J)I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    add-int/2addr v2, p2

    .line 13
    invoke-static {v0, p1, p2, v1, v2}, Landroidx/compose/foundation/j;->a(Landroid/graphics/RenderNode;IIII)Z

    .line 14
    .line 15
    .line 16
    invoke-static {p3, p4}, Lo0/u;->d(J)J

    .line 17
    .line 18
    .line 19
    move-result-wide p1

    .line 20
    iput-wide p1, p0, Landroidx/compose/ui/graphics/layer/c0;->f:J

    .line 21
    .line 22
    return-void
.end method

.method public C()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/compose/ui/graphics/layer/c0;->s:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public D()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/compose/ui/graphics/layer/c0;->t:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public E()Landroid/graphics/Matrix;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/graphics/layer/c0;->h:Landroid/graphics/Matrix;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/graphics/Matrix;

    .line 6
    .line 7
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Landroidx/compose/ui/graphics/layer/c0;->h:Landroid/graphics/Matrix;

    .line 11
    .line 12
    :cond_0
    iget-object v1, p0, Landroidx/compose/ui/graphics/layer/c0;->e:Landroid/graphics/RenderNode;

    .line 13
    .line 14
    invoke-static {v1, v0}, Landroidx/compose/ui/graphics/layer/t;->a(Landroid/graphics/RenderNode;Landroid/graphics/Matrix;)V

    .line 15
    .line 16
    .line 17
    return-object v0
.end method

.method public F(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/compose/ui/graphics/layer/c0;->C:Z

    .line 2
    .line 3
    return-void
.end method

.method public G(Landroid/graphics/Outline;J)V
    .locals 0

    .line 1
    iget-object p2, p0, Landroidx/compose/ui/graphics/layer/c0;->e:Landroid/graphics/RenderNode;

    .line 2
    .line 3
    invoke-static {p2, p1}, Landroidx/compose/ui/graphics/layer/h;->a(Landroid/graphics/RenderNode;Landroid/graphics/Outline;)Z

    .line 4
    .line 5
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
    iput-boolean p1, p0, Landroidx/compose/ui/graphics/layer/c0;->i:Z

    .line 12
    .line 13
    invoke-direct {p0}, Landroidx/compose/ui/graphics/layer/c0;->M()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public H(J)V
    .locals 2

    .line 1
    iput-wide p1, p0, Landroidx/compose/ui/graphics/layer/c0;->m:J

    .line 2
    .line 3
    invoke-static {p1, p2}, Ly/h;->d(J)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Landroidx/compose/ui/graphics/layer/c0;->e:Landroid/graphics/RenderNode;

    .line 10
    .line 11
    invoke-static {p1}, Landroidx/compose/ui/graphics/layer/n;->a(Landroid/graphics/RenderNode;)Z

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/graphics/layer/c0;->e:Landroid/graphics/RenderNode;

    .line 16
    .line 17
    invoke-static {p1, p2}, Ly/g;->m(J)F

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/layer/o;->a(Landroid/graphics/RenderNode;F)Z

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Landroidx/compose/ui/graphics/layer/c0;->e:Landroid/graphics/RenderNode;

    .line 25
    .line 26
    invoke-static {p1, p2}, Ly/g;->n(J)F

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    invoke-static {v0, p1}, Landroidx/compose/ui/graphics/layer/p;->a(Landroid/graphics/RenderNode;F)Z

    .line 31
    .line 32
    .line 33
    :goto_0
    return-void
.end method

.method public I(Lo0/e;Landroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/graphics/layer/GraphicsLayer;Lkotlin/jvm/functions/Function1;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/graphics/layer/c0;->e:Landroid/graphics/RenderNode;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/compose/foundation/k;->a(Landroid/graphics/RenderNode;)Landroid/graphics/RecordingCanvas;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :try_start_0
    iget-object v1, p0, Landroidx/compose/ui/graphics/layer/c0;->c:Landroidx/compose/ui/graphics/n1;

    .line 8
    .line 9
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/n1;->a()Landroidx/compose/ui/graphics/g0;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {v2}, Landroidx/compose/ui/graphics/g0;->v()Landroid/graphics/Canvas;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/n1;->a()Landroidx/compose/ui/graphics/g0;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    invoke-virtual {v3, v0}, Landroidx/compose/ui/graphics/g0;->w(Landroid/graphics/Canvas;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/n1;->a()Landroidx/compose/ui/graphics/g0;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iget-object v3, p0, Landroidx/compose/ui/graphics/layer/c0;->d:Lz/a;

    .line 29
    .line 30
    invoke-virtual {v3}, Lz/a;->G0()Lz/d;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    invoke-interface {v3, p1}, Lz/d;->b(Lo0/e;)V

    .line 35
    .line 36
    .line 37
    invoke-interface {v3, p2}, Lz/d;->a(Landroidx/compose/ui/unit/LayoutDirection;)V

    .line 38
    .line 39
    .line 40
    invoke-interface {v3, p3}, Lz/d;->d(Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V

    .line 41
    .line 42
    .line 43
    iget-wide p1, p0, Landroidx/compose/ui/graphics/layer/c0;->f:J

    .line 44
    .line 45
    invoke-interface {v3, p1, p2}, Lz/d;->f(J)V

    .line 46
    .line 47
    .line 48
    invoke-interface {v3, v0}, Lz/d;->h(Landroidx/compose/ui/graphics/m1;)V

    .line 49
    .line 50
    .line 51
    iget-object p1, p0, Landroidx/compose/ui/graphics/layer/c0;->d:Lz/a;

    .line 52
    .line 53
    invoke-interface {p4, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/n1;->a()Landroidx/compose/ui/graphics/g0;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-virtual {p1, v2}, Landroidx/compose/ui/graphics/g0;->w(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    .line 62
    .line 63
    iget-object p1, p0, Landroidx/compose/ui/graphics/layer/c0;->e:Landroid/graphics/RenderNode;

    .line 64
    .line 65
    invoke-static {p1}, Landroidx/compose/foundation/l;->a(Landroid/graphics/RenderNode;)V

    .line 66
    .line 67
    .line 68
    const/4 p1, 0x0

    .line 69
    invoke-virtual {p0, p1}, Landroidx/compose/ui/graphics/layer/c0;->F(Z)V

    .line 70
    .line 71
    .line 72
    return-void

    .line 73
    :catchall_0
    move-exception p1

    .line 74
    iget-object p2, p0, Landroidx/compose/ui/graphics/layer/c0;->e:Landroid/graphics/RenderNode;

    .line 75
    .line 76
    invoke-static {p2}, Landroidx/compose/foundation/l;->a(Landroid/graphics/RenderNode;)V

    .line 77
    .line 78
    .line 79
    throw p1
.end method

.method public J(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/compose/ui/graphics/layer/c0;->B:I

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/compose/ui/graphics/layer/c0;->R()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public K()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/graphics/layer/c0;->r:F

    .line 2
    .line 3
    return v0
.end method

.method public L(Landroidx/compose/ui/graphics/m1;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroidx/compose/ui/graphics/h0;->d(Landroidx/compose/ui/graphics/m1;)Landroid/graphics/Canvas;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Landroidx/compose/ui/graphics/layer/c0;->e:Landroid/graphics/RenderNode;

    .line 6
    .line 7
    invoke-static {p1, v0}, Landroidx/compose/foundation/m;->a(Landroid/graphics/Canvas;Landroid/graphics/RenderNode;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public O()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/graphics/layer/c0;->y:Z

    .line 2
    .line 3
    return v0
.end method

.method public a(F)V
    .locals 1

    .line 1
    iput p1, p0, Landroidx/compose/ui/graphics/layer/c0;->q:F

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/compose/ui/graphics/layer/c0;->e:Landroid/graphics/RenderNode;

    .line 4
    .line 5
    invoke-static {v0, p1}, Landroidx/compose/ui/graphics/layer/z;->a(Landroid/graphics/RenderNode;F)Z

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public b(F)V
    .locals 1

    .line 1
    iput p1, p0, Landroidx/compose/ui/graphics/layer/c0;->n:F

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/compose/ui/graphics/layer/c0;->e:Landroid/graphics/RenderNode;

    .line 4
    .line 5
    invoke-static {v0, p1}, Landroidx/compose/ui/graphics/layer/i;->a(Landroid/graphics/RenderNode;F)Z

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public c(Landroidx/compose/ui/graphics/w4;)V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1f

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    sget-object v0, Landroidx/compose/ui/graphics/layer/q0;->a:Landroidx/compose/ui/graphics/layer/q0;

    .line 8
    .line 9
    iget-object v1, p0, Landroidx/compose/ui/graphics/layer/c0;->e:Landroid/graphics/RenderNode;

    .line 10
    .line 11
    invoke-virtual {v0, v1, p1}, Landroidx/compose/ui/graphics/layer/q0;->a(Landroid/graphics/RenderNode;Landroidx/compose/ui/graphics/w4;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public d(F)V
    .locals 1

    .line 1
    iput p1, p0, Landroidx/compose/ui/graphics/layer/c0;->x:F

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/compose/ui/graphics/layer/c0;->e:Landroid/graphics/RenderNode;

    .line 4
    .line 5
    invoke-static {v0, p1}, Landroidx/compose/ui/graphics/layer/r;->a(Landroid/graphics/RenderNode;F)Z

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public e(F)V
    .locals 1

    .line 1
    iput p1, p0, Landroidx/compose/ui/graphics/layer/c0;->u:F

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/compose/ui/graphics/layer/c0;->e:Landroid/graphics/RenderNode;

    .line 4
    .line 5
    invoke-static {v0, p1}, Landroidx/compose/ui/graphics/layer/m;->a(Landroid/graphics/RenderNode;F)Z

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public f(F)V
    .locals 1

    .line 1
    iput p1, p0, Landroidx/compose/ui/graphics/layer/c0;->v:F

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/compose/ui/graphics/layer/c0;->e:Landroid/graphics/RenderNode;

    .line 4
    .line 5
    invoke-static {v0, p1}, Landroidx/compose/ui/graphics/layer/w;->a(Landroid/graphics/RenderNode;F)Z

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public g(F)V
    .locals 1

    .line 1
    iput p1, p0, Landroidx/compose/ui/graphics/layer/c0;->w:F

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/compose/ui/graphics/layer/c0;->e:Landroid/graphics/RenderNode;

    .line 4
    .line 5
    invoke-static {v0, p1}, Landroidx/compose/ui/graphics/layer/x;->a(Landroid/graphics/RenderNode;F)Z

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public getAlpha()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/graphics/layer/c0;->j:F

    .line 2
    .line 3
    return v0
.end method

.method public h(F)V
    .locals 1

    .line 1
    iput p1, p0, Landroidx/compose/ui/graphics/layer/c0;->o:F

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/compose/ui/graphics/layer/c0;->e:Landroid/graphics/RenderNode;

    .line 4
    .line 5
    invoke-static {v0, p1}, Landroidx/compose/ui/graphics/layer/f;->a(Landroid/graphics/RenderNode;F)Z

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public i()Landroidx/compose/ui/graphics/v1;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/graphics/layer/c0;->l:Landroidx/compose/ui/graphics/v1;

    .line 2
    .line 3
    return-object v0
.end method

.method public j(F)V
    .locals 1

    .line 1
    iput p1, p0, Landroidx/compose/ui/graphics/layer/c0;->p:F

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/compose/ui/graphics/layer/c0;->e:Landroid/graphics/RenderNode;

    .line 4
    .line 5
    invoke-static {v0, p1}, Landroidx/compose/ui/graphics/layer/v;->a(Landroid/graphics/RenderNode;F)Z

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public k()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/graphics/layer/c0;->e:Landroid/graphics/RenderNode;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/compose/ui/graphics/layer/j;->a(Landroid/graphics/RenderNode;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public l()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/graphics/layer/c0;->k:I

    .line 2
    .line 3
    return v0
.end method

.method public m()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/graphics/layer/c0;->v:F

    .line 2
    .line 3
    return v0
.end method

.method public n()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/graphics/layer/c0;->e:Landroid/graphics/RenderNode;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/compose/ui/graphics/layer/s;->a(Landroid/graphics/RenderNode;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public o()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/graphics/layer/c0;->w:F

    .line 2
    .line 3
    return v0
.end method

.method public p(J)V
    .locals 1

    .line 1
    iput-wide p1, p0, Landroidx/compose/ui/graphics/layer/c0;->s:J

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/compose/ui/graphics/layer/c0;->e:Landroid/graphics/RenderNode;

    .line 4
    .line 5
    invoke-static {p1, p2}, Landroidx/compose/ui/graphics/w1;->j(J)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    invoke-static {v0, p1}, Landroidx/compose/ui/graphics/layer/u;->a(Landroid/graphics/RenderNode;I)Z

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public q()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/graphics/layer/c0;->x:F

    .line 2
    .line 3
    return v0
.end method

.method public r(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/compose/ui/graphics/layer/c0;->y:Z

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/compose/ui/graphics/layer/c0;->M()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public s(J)V
    .locals 1

    .line 1
    iput-wide p1, p0, Landroidx/compose/ui/graphics/layer/c0;->t:J

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/compose/ui/graphics/layer/c0;->e:Landroid/graphics/RenderNode;

    .line 4
    .line 5
    invoke-static {p1, p2}, Landroidx/compose/ui/graphics/w1;->j(J)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    invoke-static {v0, p1}, Landroidx/compose/ui/graphics/layer/y;->a(Landroid/graphics/RenderNode;I)Z

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public setAlpha(F)V
    .locals 1

    .line 1
    iput p1, p0, Landroidx/compose/ui/graphics/layer/c0;->j:F

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/compose/ui/graphics/layer/c0;->e:Landroid/graphics/RenderNode;

    .line 4
    .line 5
    invoke-static {v0, p1}, Landroidx/compose/ui/graphics/layer/g;->a(Landroid/graphics/RenderNode;F)Z

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public t()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/graphics/layer/c0;->n:F

    .line 2
    .line 3
    return v0
.end method

.method public u(F)V
    .locals 1

    .line 1
    iput p1, p0, Landroidx/compose/ui/graphics/layer/c0;->r:F

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/compose/ui/graphics/layer/c0;->e:Landroid/graphics/RenderNode;

    .line 4
    .line 5
    invoke-static {v0, p1}, Landroidx/compose/ui/graphics/layer/q;->a(Landroid/graphics/RenderNode;F)Z

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public v()Landroidx/compose/ui/graphics/w4;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public w()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/graphics/layer/c0;->q:F

    .line 2
    .line 3
    return v0
.end method

.method public x()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/graphics/layer/c0;->p:F

    .line 2
    .line 3
    return v0
.end method

.method public y()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/graphics/layer/c0;->u:F

    .line 2
    .line 3
    return v0
.end method

.method public z()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/graphics/layer/c0;->B:I

    .line 2
    .line 3
    return v0
.end method
