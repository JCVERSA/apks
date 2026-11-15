.class public final Lpie;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/util/Set;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:I

.field public g:Z

.field public h:I

.field public i:Z

.field public j:I

.field public k:I

.field public l:I

.field public m:I

.field public n:F

.field public o:I

.field public p:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lpie;->a:Ljava/lang/String;

    iput-object v0, p0, Lpie;->b:Ljava/lang/String;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lpie;->c:Ljava/util/Set;

    iput-object v0, p0, Lpie;->d:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lpie;->e:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lpie;->g:Z

    iput-boolean v0, p0, Lpie;->i:Z

    const/4 v1, -0x1

    iput v1, p0, Lpie;->j:I

    iput v1, p0, Lpie;->k:I

    iput v1, p0, Lpie;->l:I

    iput v1, p0, Lpie;->m:I

    iput v1, p0, Lpie;->o:I

    iput-boolean v0, p0, Lpie;->p:Z

    return-void
.end method

.method public static a(ILjava/lang/String;Ljava/lang/String;I)I
    .locals 1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    add-int/2addr p0, p3

    return p0

    :cond_1
    return v0

    :cond_2
    :goto_0
    return p0
.end method


# virtual methods
.method public final A()Z
    .locals 1

    iget p0, p0, Lpie;->j:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final b()F
    .locals 0

    iget p0, p0, Lpie;->n:F

    return p0
.end method

.method public final c()I
    .locals 1

    iget-boolean v0, p0, Lpie;->i:Z

    if-eqz v0, :cond_0

    iget p0, p0, Lpie;->h:I

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Background color not defined."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final d()I
    .locals 1

    iget-boolean v0, p0, Lpie;->g:Z

    if-eqz v0, :cond_0

    iget p0, p0, Lpie;->f:I

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Font color not defined"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final e()I
    .locals 0

    iget p0, p0, Lpie;->m:I

    return p0
.end method

.method public final f()I
    .locals 0

    iget p0, p0, Lpie;->o:I

    return p0
.end method

.method public final g(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;)I
    .locals 3

    iget-object v0, p0, Lpie;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lpie;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lpie;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lpie;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1

    :cond_1
    iget-object v0, p0, Lpie;->a:Ljava/lang/String;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v0, p1, v2}, Lpie;->a(ILjava/lang/String;Ljava/lang/String;I)I

    move-result p1

    iget-object v0, p0, Lpie;->b:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-static {p1, v0, p2, v2}, Lpie;->a(ILjava/lang/String;Ljava/lang/String;I)I

    move-result p1

    iget-object p2, p0, Lpie;->d:Ljava/lang/String;

    const/4 v0, 0x4

    invoke-static {p1, p2, p4, v0}, Lpie;->a(ILjava/lang/String;Ljava/lang/String;I)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_3

    iget-object p2, p0, Lpie;->c:Ljava/util/Set;

    invoke-interface {p3, p2}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lpie;->c:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result p0

    mul-int/2addr p0, v0

    add-int/2addr p1, p0

    return p1

    :cond_3
    :goto_0
    return v1
.end method

.method public final h()I
    .locals 3

    iget v0, p0, Lpie;->k:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget v2, p0, Lpie;->l:I

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
    iget p0, p0, Lpie;->l:I

    if-ne p0, v2, :cond_3

    const/4 v1, 0x2

    :cond_3
    or-int p0, v0, v1

    return p0
.end method

.method public final i(I)Lpie;
    .locals 0

    iput p1, p0, Lpie;->h:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lpie;->i:Z

    return-object p0
.end method

.method public final j(Z)Lpie;
    .locals 0

    const/4 p1, 0x1

    iput p1, p0, Lpie;->k:I

    return-object p0
.end method

.method public final k(Z)Lpie;
    .locals 0

    iput-boolean p1, p0, Lpie;->p:Z

    return-object p0
.end method

.method public final l(I)Lpie;
    .locals 0

    iput p1, p0, Lpie;->f:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lpie;->g:Z

    return-object p0
.end method

.method public final m(Ljava/lang/String;)Lpie;
    .locals 0

    invoke-static {p1}, Ld2i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lpie;->e:Ljava/lang/String;

    return-object p0
.end method

.method public final n(F)Lpie;
    .locals 0

    iput p1, p0, Lpie;->n:F

    return-object p0
.end method

.method public final o(I)Lpie;
    .locals 0

    iput p1, p0, Lpie;->m:I

    return-object p0
.end method

.method public final p(Z)Lpie;
    .locals 0

    const/4 p1, 0x1

    iput p1, p0, Lpie;->l:I

    return-object p0
.end method

.method public final q(I)Lpie;
    .locals 0

    iput p1, p0, Lpie;->o:I

    return-object p0
.end method

.method public final r(Z)Lpie;
    .locals 0

    const/4 p1, 0x1

    iput p1, p0, Lpie;->j:I

    return-object p0
.end method

.method public final s()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lpie;->e:Ljava/lang/String;

    return-object p0
.end method

.method public final t([Ljava/lang/String;)V
    .locals 1

    new-instance v0, Ljava/util/HashSet;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lpie;->c:Ljava/util/Set;

    return-void
.end method

.method public final u(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lpie;->a:Ljava/lang/String;

    return-void
.end method

.method public final v(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lpie;->b:Ljava/lang/String;

    return-void
.end method

.method public final w(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lpie;->d:Ljava/lang/String;

    return-void
.end method

.method public final x()Z
    .locals 0

    iget-boolean p0, p0, Lpie;->p:Z

    return p0
.end method

.method public final y()Z
    .locals 0

    iget-boolean p0, p0, Lpie;->i:Z

    return p0
.end method

.method public final z()Z
    .locals 0

    iget-boolean p0, p0, Lpie;->g:Z

    return p0
.end method
