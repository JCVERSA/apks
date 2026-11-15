.class public final Lrz4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:F

.field public h:F

.field public i:F

.field public j:F

.field public k:I

.field public l:F

.field public m:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x41000000    # 8.0f

    invoke-static {v0}, Ltz4;->a(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lrz4;->i:F

    iput v0, p0, Lrz4;->j:F

    iput v0, p0, Lrz4;->g:F

    const-string v0, "#8C18171C"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lrz4;->e:I

    const-string v0, "#8C6C6D72"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lrz4;->f:I

    const/4 v0, 0x0

    iput v0, p0, Lrz4;->c:I

    return-void
.end method


# virtual methods
.method public final A(F)V
    .locals 0

    iput p1, p0, Lrz4;->g:F

    return-void
.end method

.method public final B(F)V
    .locals 0

    iput p1, p0, Lrz4;->h:F

    return-void
.end method

.method public final C(F)V
    .locals 0

    invoke-virtual {p0, p1, p1}, Lrz4;->D(FF)V

    return-void
.end method

.method public final D(FF)V
    .locals 0

    iput p1, p0, Lrz4;->i:F

    iput p2, p0, Lrz4;->j:F

    return-void
.end method

.method public final a()I
    .locals 0

    iget p0, p0, Lrz4;->f:I

    return p0
.end method

.method public final b()F
    .locals 0

    iget p0, p0, Lrz4;->j:F

    return p0
.end method

.method public final c()I
    .locals 0

    iget p0, p0, Lrz4;->k:I

    return p0
.end method

.method public final d()I
    .locals 0

    iget p0, p0, Lrz4;->b:I

    return p0
.end method

.method public final e()I
    .locals 0

    iget p0, p0, Lrz4;->e:I

    return p0
.end method

.method public final f()F
    .locals 0

    iget p0, p0, Lrz4;->i:F

    return p0
.end method

.method public final g()I
    .locals 0

    iget p0, p0, Lrz4;->a:I

    return p0
.end method

.method public final h()I
    .locals 0

    iget p0, p0, Lrz4;->d:I

    return p0
.end method

.method public final i()Z
    .locals 0

    iget-boolean p0, p0, Lrz4;->m:Z

    return p0
.end method

.method public final j()I
    .locals 0

    iget p0, p0, Lrz4;->c:I

    return p0
.end method

.method public final k()F
    .locals 0

    iget p0, p0, Lrz4;->l:F

    return p0
.end method

.method public final l()F
    .locals 0

    iget p0, p0, Lrz4;->g:F

    return p0
.end method

.method public final m()F
    .locals 2

    iget v0, p0, Lrz4;->h:F

    const/4 v1, 0x0

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    iget p0, p0, Lrz4;->i:F

    const/4 v0, 0x2

    int-to-float v0, v0

    div-float v0, p0, v0

    :goto_0
    return v0
.end method

.method public final n(I)V
    .locals 0

    iput p1, p0, Lrz4;->f:I

    return-void
.end method

.method public final o(I)V
    .locals 0

    iput p1, p0, Lrz4;->f:I

    return-void
.end method

.method public final p(F)V
    .locals 0

    iput p1, p0, Lrz4;->j:F

    return-void
.end method

.method public final q(I)V
    .locals 0

    iput p1, p0, Lrz4;->k:I

    return-void
.end method

.method public final r(I)V
    .locals 0

    iput p1, p0, Lrz4;->b:I

    return-void
.end method

.method public final s(I)V
    .locals 0

    iput p1, p0, Lrz4;->e:I

    return-void
.end method

.method public final t(F)V
    .locals 0

    iput p1, p0, Lrz4;->i:F

    return-void
.end method

.method public final u(I)V
    .locals 0

    iput p1, p0, Lrz4;->a:I

    return-void
.end method

.method public final v(I)V
    .locals 0

    iput p1, p0, Lrz4;->d:I

    return-void
.end method

.method public final w(Z)V
    .locals 0

    iput-boolean p1, p0, Lrz4;->m:Z

    return-void
.end method

.method public final x(I)V
    .locals 0

    iput p1, p0, Lrz4;->c:I

    return-void
.end method

.method public final y(F)V
    .locals 0

    iput p1, p0, Lrz4;->l:F

    return-void
.end method

.method public final z(II)V
    .locals 0

    iput p1, p0, Lrz4;->e:I

    iput p2, p0, Lrz4;->f:I

    return-void
.end method
