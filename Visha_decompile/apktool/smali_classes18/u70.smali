.class public Lu70;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu70$a;
    }
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:Z

.field public d:Z

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:F

.field public k:Lu70$a;

.field public l:I

.field public m:I

.field public n:[F

.field public o:I

.field public p:Z

.field public q:I

.field public r:Z

.field public s:Z

.field public t:Z

.field public u:Z

.field public final v:Lrz4;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lu70;->a:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lu70;->d:Z

    iput v0, p0, Lu70;->i:I

    const v1, 0x3f59999a    # 0.85f

    iput v1, p0, Lu70;->j:F

    iput v0, p0, Lu70;->l:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lu70;->p:Z

    iput v0, p0, Lu70;->q:I

    iput-boolean v1, p0, Lu70;->t:Z

    iput-boolean v1, p0, Lu70;->u:Z

    new-instance v0, Lrz4;

    invoke-direct {v0}, Lrz4;-><init>()V

    iput-object v0, p0, Lu70;->v:Lrz4;

    const/high16 v0, 0x41a00000    # 20.0f

    invoke-static {v0}, Lv70;->a(F)I

    move-result v0

    iput v0, p0, Lu70;->f:I

    const/16 v0, -0x3e8

    iput v0, p0, Lu70;->g:I

    iput v0, p0, Lu70;->h:I

    return-void
.end method


# virtual methods
.method public A(I)V
    .locals 0

    iput p1, p0, Lu70;->e:I

    return-void
.end method

.method public B(I)V
    .locals 0

    iget-object p0, p0, Lu70;->v:Lrz4;

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Lrz4;->B(F)V

    return-void
.end method

.method public C(IIII)V
    .locals 1

    new-instance v0, Lu70$a;

    invoke-direct {v0, p1, p2, p3, p4}, Lu70$a;-><init>(IIII)V

    iput-object v0, p0, Lu70;->k:Lu70$a;

    return-void
.end method

.method public D(I)V
    .locals 0

    iget-object p0, p0, Lu70;->v:Lrz4;

    invoke-virtual {p0, p1}, Lrz4;->x(I)V

    return-void
.end method

.method public E(II)V
    .locals 0

    iget-object p0, p0, Lu70;->v:Lrz4;

    invoke-virtual {p0, p1, p2}, Lrz4;->z(II)V

    return-void
.end method

.method public F(II)V
    .locals 0

    iget-object p0, p0, Lu70;->v:Lrz4;

    int-to-float p1, p1

    int-to-float p2, p2

    invoke-virtual {p0, p1, p2}, Lrz4;->D(FF)V

    return-void
.end method

.method public G(I)V
    .locals 0

    iget-object p0, p0, Lu70;->v:Lrz4;

    invoke-virtual {p0, p1}, Lrz4;->r(I)V

    return-void
.end method

.method public H(I)V
    .locals 0

    iput p1, p0, Lu70;->l:I

    return-void
.end method

.method public I(I)V
    .locals 0

    iput p1, p0, Lu70;->b:I

    return-void
.end method

.method public J(I)V
    .locals 0

    iput p1, p0, Lu70;->h:I

    return-void
.end method

.method public K(I)V
    .locals 0

    iput p1, p0, Lu70;->a:I

    return-void
.end method

.method public L(I)V
    .locals 0

    iput p1, p0, Lu70;->q:I

    iget-object p0, p0, Lu70;->v:Lrz4;

    invoke-virtual {p0, p1}, Lrz4;->u(I)V

    return-void
.end method

.method public M(I)V
    .locals 0

    iput p1, p0, Lu70;->f:I

    return-void
.end method

.method public N(F)V
    .locals 0

    iput p1, p0, Lu70;->j:F

    return-void
.end method

.method public O(I)V
    .locals 0

    iput p1, p0, Lu70;->i:I

    return-void
.end method

.method public P(I)V
    .locals 0

    iput p1, p0, Lu70;->g:I

    return-void
.end method

.method public Q(I)V
    .locals 0

    iput p1, p0, Lu70;->o:I

    return-void
.end method

.method public R(IIII)V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [F

    iput-object v0, p0, Lu70;->n:[F

    int-to-float p0, p1

    const/4 p1, 0x0

    aput p0, v0, p1

    const/4 p1, 0x1

    aput p0, v0, p1

    int-to-float p0, p2

    const/4 p1, 0x2

    aput p0, v0, p1

    const/4 p1, 0x3

    aput p0, v0, p1

    int-to-float p0, p4

    const/4 p1, 0x4

    aput p0, v0, p1

    const/4 p1, 0x5

    aput p0, v0, p1

    int-to-float p0, p3

    const/4 p1, 0x6

    aput p0, v0, p1

    const/4 p1, 0x7

    aput p0, v0, p1

    return-void
.end method

.method public S(Z)V
    .locals 0

    iput-boolean p1, p0, Lu70;->r:Z

    iget-object p0, p0, Lu70;->v:Lrz4;

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lrz4;->u(I)V

    return-void
.end method

.method public T(I)V
    .locals 0

    iput p1, p0, Lu70;->m:I

    return-void
.end method

.method public U(Z)V
    .locals 0

    iput-boolean p1, p0, Lu70;->t:Z

    return-void
.end method

.method public V(Z)V
    .locals 0

    iput-boolean p1, p0, Lu70;->p:Z

    return-void
.end method

.method public W(Z)V
    .locals 0

    iget-object p0, p0, Lu70;->v:Lrz4;

    invoke-virtual {p0, p1}, Lrz4;->w(Z)V

    return-void
.end method

.method public a()I
    .locals 0

    iget p0, p0, Lu70;->e:I

    return p0
.end method

.method public b()Lu70$a;
    .locals 0

    iget-object p0, p0, Lu70;->k:Lu70$a;

    return-object p0
.end method

.method public c()Lrz4;
    .locals 0

    iget-object p0, p0, Lu70;->v:Lrz4;

    return-object p0
.end method

.method public d()I
    .locals 0

    iget p0, p0, Lu70;->l:I

    return p0
.end method

.method public e()I
    .locals 0

    iget p0, p0, Lu70;->b:I

    return p0
.end method

.method public f()I
    .locals 0

    iget p0, p0, Lu70;->h:I

    return p0
.end method

.method public g()I
    .locals 0

    iget p0, p0, Lu70;->a:I

    return p0
.end method

.method public h()I
    .locals 0

    iget p0, p0, Lu70;->q:I

    return p0
.end method

.method public i()I
    .locals 0

    iget p0, p0, Lu70;->f:I

    return p0
.end method

.method public j()F
    .locals 0

    iget p0, p0, Lu70;->j:F

    return p0
.end method

.method public k()I
    .locals 0

    iget p0, p0, Lu70;->i:I

    return p0
.end method

.method public l()I
    .locals 0

    iget p0, p0, Lu70;->g:I

    return p0
.end method

.method public m()I
    .locals 0

    iget p0, p0, Lu70;->o:I

    return p0
.end method

.method public n()[F
    .locals 0

    iget-object p0, p0, Lu70;->n:[F

    return-object p0
.end method

.method public o()I
    .locals 0

    iget p0, p0, Lu70;->m:I

    return p0
.end method

.method public p()Z
    .locals 0

    iget-boolean p0, p0, Lu70;->d:Z

    return p0
.end method

.method public q()Z
    .locals 0

    iget-boolean p0, p0, Lu70;->u:Z

    return p0
.end method

.method public r()Z
    .locals 0

    iget-boolean p0, p0, Lu70;->c:Z

    return p0
.end method

.method public s()Z
    .locals 0

    iget-boolean p0, p0, Lu70;->s:Z

    return p0
.end method

.method public t()Z
    .locals 0

    iget-boolean p0, p0, Lu70;->t:Z

    return p0
.end method

.method public u()V
    .locals 2

    iget-object v0, p0, Lu70;->v:Lrz4;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lrz4;->q(I)V

    iget-object p0, p0, Lu70;->v:Lrz4;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lrz4;->y(F)V

    return-void
.end method

.method public v(Z)V
    .locals 0

    iput-boolean p1, p0, Lu70;->d:Z

    return-void
.end method

.method public w(Z)V
    .locals 0

    iput-boolean p1, p0, Lu70;->u:Z

    return-void
.end method

.method public x(Z)V
    .locals 0

    iput-boolean p1, p0, Lu70;->c:Z

    return-void
.end method

.method public y(Z)V
    .locals 0

    iput-boolean p1, p0, Lu70;->s:Z

    return-void
.end method

.method public z(F)V
    .locals 0

    iget-object p0, p0, Lu70;->v:Lrz4;

    invoke-virtual {p0, p1}, Lrz4;->A(F)V

    return-void
.end method
