.class public final Liie;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public c:Z

.field public d:I

.field public e:Z

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:F

.field public l:Ljava/lang/String;

.field public m:I

.field public n:I

.field public o:Landroid/text/Layout$Alignment;

.field public p:Landroid/text/Layout$Alignment;

.field public q:I

.field public r:Lxhe;

.field public s:F

.field public t:Ljava/lang/String;

.field public u:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Liie;->f:I

    iput v0, p0, Liie;->g:I

    iput v0, p0, Liie;->h:I

    iput v0, p0, Liie;->i:I

    iput v0, p0, Liie;->j:I

    iput v0, p0, Liie;->m:I

    iput v0, p0, Liie;->n:I

    iput v0, p0, Liie;->q:I

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Liie;->s:F

    return-void
.end method


# virtual methods
.method public final A(I)Liie;
    .locals 0

    iput p1, p0, Liie;->d:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Liie;->e:Z

    return-object p0
.end method

.method public final B(Z)Liie;
    .locals 0

    iput p1, p0, Liie;->h:I

    return-object p0
.end method

.method public final C(Ljava/lang/String;)Liie;
    .locals 0

    iput-object p1, p0, Liie;->u:Ljava/lang/String;

    return-object p0
.end method

.method public final D(I)Liie;
    .locals 0

    iput p1, p0, Liie;->b:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Liie;->c:Z

    return-object p0
.end method

.method public final E(Ljava/lang/String;)Liie;
    .locals 0

    iput-object p1, p0, Liie;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final F(F)Liie;
    .locals 0

    iput p1, p0, Liie;->k:F

    return-object p0
.end method

.method public final G(I)Liie;
    .locals 0

    iput p1, p0, Liie;->j:I

    return-object p0
.end method

.method public final H(Ljava/lang/String;)Liie;
    .locals 0

    iput-object p1, p0, Liie;->l:Ljava/lang/String;

    return-object p0
.end method

.method public final I(Z)Liie;
    .locals 0

    iput p1, p0, Liie;->i:I

    return-object p0
.end method

.method public final J(Z)Liie;
    .locals 0

    iput p1, p0, Liie;->f:I

    return-object p0
.end method

.method public final K(Landroid/text/Layout$Alignment;)Liie;
    .locals 0

    iput-object p1, p0, Liie;->p:Landroid/text/Layout$Alignment;

    return-object p0
.end method

.method public final L(Ljava/lang/String;)Liie;
    .locals 0

    iput-object p1, p0, Liie;->t:Ljava/lang/String;

    return-object p0
.end method

.method public final M(I)Liie;
    .locals 0

    iput p1, p0, Liie;->n:I

    return-object p0
.end method

.method public final N(I)Liie;
    .locals 0

    iput p1, p0, Liie;->m:I

    return-object p0
.end method

.method public final a(F)Liie;
    .locals 0

    iput p1, p0, Liie;->s:F

    return-object p0
.end method

.method public final b(Landroid/text/Layout$Alignment;)Liie;
    .locals 0

    iput-object p1, p0, Liie;->o:Landroid/text/Layout$Alignment;

    return-object p0
.end method

.method public final c(Z)Liie;
    .locals 0

    iput p1, p0, Liie;->q:I

    return-object p0
.end method

.method public final d(Lxhe;)Liie;
    .locals 0

    iput-object p1, p0, Liie;->r:Lxhe;

    return-object p0
.end method

.method public final e(Z)Liie;
    .locals 0

    iput p1, p0, Liie;->g:I

    return-object p0
.end method

.method public final f()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Liie;->u:Ljava/lang/String;

    return-object p0
.end method

.method public final g()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Liie;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final h()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Liie;->l:Ljava/lang/String;

    return-object p0
.end method

.method public final i()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Liie;->t:Ljava/lang/String;

    return-object p0
.end method

.method public final j()Z
    .locals 1

    iget p0, p0, Liie;->q:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final k()Z
    .locals 0

    iget-boolean p0, p0, Liie;->e:Z

    return p0
.end method

.method public final l()Z
    .locals 0

    iget-boolean p0, p0, Liie;->c:Z

    return p0
.end method

.method public final m()Z
    .locals 1

    iget p0, p0, Liie;->f:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final n()Z
    .locals 1

    iget p0, p0, Liie;->g:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final o()F
    .locals 0

    iget p0, p0, Liie;->k:F

    return p0
.end method

.method public final p()F
    .locals 0

    iget p0, p0, Liie;->s:F

    return p0
.end method

.method public final q()I
    .locals 1

    iget-boolean v0, p0, Liie;->e:Z

    if-eqz v0, :cond_0

    iget p0, p0, Liie;->d:I

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Background color has not been defined."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final r()I
    .locals 1

    iget-boolean v0, p0, Liie;->c:Z

    if-eqz v0, :cond_0

    iget p0, p0, Liie;->b:I

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Font color has not been defined."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final s()I
    .locals 0

    iget p0, p0, Liie;->j:I

    return p0
.end method

.method public final t()I
    .locals 0

    iget p0, p0, Liie;->n:I

    return p0
.end method

.method public final u()I
    .locals 0

    iget p0, p0, Liie;->m:I

    return p0
.end method

.method public final v()I
    .locals 3

    iget v0, p0, Liie;->h:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget v2, p0, Liie;->i:I

    if-eq v2, v1, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    iget p0, p0, Liie;->i:I

    if-ne p0, v2, :cond_3

    const/4 v1, 0x2

    :cond_3
    or-int p0, v0, v1

    return p0
.end method

.method public final w()Landroid/text/Layout$Alignment;
    .locals 0

    iget-object p0, p0, Liie;->p:Landroid/text/Layout$Alignment;

    return-object p0
.end method

.method public final x()Landroid/text/Layout$Alignment;
    .locals 0

    iget-object p0, p0, Liie;->o:Landroid/text/Layout$Alignment;

    return-object p0
.end method

.method public final y()Lxhe;
    .locals 0

    iget-object p0, p0, Liie;->r:Lxhe;

    return-object p0
.end method

.method public final z(Liie;)Liie;
    .locals 3

    if-eqz p1, :cond_10

    iget-boolean v0, p0, Liie;->c:Z

    if-nez v0, :cond_0

    iget-boolean v0, p1, Liie;->c:Z

    if-eqz v0, :cond_0

    iget v0, p1, Liie;->b:I

    invoke-virtual {p0, v0}, Liie;->D(I)Liie;

    :cond_0
    iget v0, p0, Liie;->h:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget v0, p1, Liie;->h:I

    iput v0, p0, Liie;->h:I

    :cond_1
    iget v0, p0, Liie;->i:I

    if-ne v0, v1, :cond_2

    iget v0, p1, Liie;->i:I

    iput v0, p0, Liie;->i:I

    :cond_2
    iget-object v0, p0, Liie;->a:Ljava/lang/String;

    if-nez v0, :cond_3

    iget-object v0, p1, Liie;->a:Ljava/lang/String;

    if-eqz v0, :cond_3

    iput-object v0, p0, Liie;->a:Ljava/lang/String;

    :cond_3
    iget v0, p0, Liie;->f:I

    if-ne v0, v1, :cond_4

    iget v0, p1, Liie;->f:I

    iput v0, p0, Liie;->f:I

    :cond_4
    iget v0, p0, Liie;->g:I

    if-ne v0, v1, :cond_5

    iget v0, p1, Liie;->g:I

    iput v0, p0, Liie;->g:I

    :cond_5
    iget v0, p0, Liie;->n:I

    if-ne v0, v1, :cond_6

    iget v0, p1, Liie;->n:I

    iput v0, p0, Liie;->n:I

    :cond_6
    iget-object v0, p0, Liie;->o:Landroid/text/Layout$Alignment;

    if-nez v0, :cond_7

    iget-object v0, p1, Liie;->o:Landroid/text/Layout$Alignment;

    if-eqz v0, :cond_7

    iput-object v0, p0, Liie;->o:Landroid/text/Layout$Alignment;

    :cond_7
    iget-object v0, p0, Liie;->p:Landroid/text/Layout$Alignment;

    if-nez v0, :cond_8

    iget-object v0, p1, Liie;->p:Landroid/text/Layout$Alignment;

    if-eqz v0, :cond_8

    iput-object v0, p0, Liie;->p:Landroid/text/Layout$Alignment;

    :cond_8
    iget v0, p0, Liie;->q:I

    if-ne v0, v1, :cond_9

    iget v0, p1, Liie;->q:I

    iput v0, p0, Liie;->q:I

    :cond_9
    iget v0, p0, Liie;->j:I

    if-ne v0, v1, :cond_a

    iget v0, p1, Liie;->j:I

    iput v0, p0, Liie;->j:I

    iget v0, p1, Liie;->k:F

    iput v0, p0, Liie;->k:F

    :cond_a
    iget-object v0, p0, Liie;->r:Lxhe;

    if-nez v0, :cond_b

    iget-object v0, p1, Liie;->r:Lxhe;

    iput-object v0, p0, Liie;->r:Lxhe;

    :cond_b
    iget v0, p0, Liie;->s:F

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v0, v0, v2

    if-nez v0, :cond_c

    iget v0, p1, Liie;->s:F

    iput v0, p0, Liie;->s:F

    :cond_c
    iget-object v0, p0, Liie;->t:Ljava/lang/String;

    if-nez v0, :cond_d

    iget-object v0, p1, Liie;->t:Ljava/lang/String;

    iput-object v0, p0, Liie;->t:Ljava/lang/String;

    :cond_d
    iget-object v0, p0, Liie;->u:Ljava/lang/String;

    if-nez v0, :cond_e

    iget-object v0, p1, Liie;->u:Ljava/lang/String;

    iput-object v0, p0, Liie;->u:Ljava/lang/String;

    :cond_e
    iget-boolean v0, p0, Liie;->e:Z

    if-nez v0, :cond_f

    iget-boolean v0, p1, Liie;->e:Z

    if-eqz v0, :cond_f

    iget v0, p1, Liie;->d:I

    invoke-virtual {p0, v0}, Liie;->A(I)Liie;

    :cond_f
    iget v0, p0, Liie;->m:I

    if-ne v0, v1, :cond_10

    iget p1, p1, Liie;->m:I

    if-eq p1, v1, :cond_10

    iput p1, p0, Liie;->m:I

    :cond_10
    return-object p0
.end method
