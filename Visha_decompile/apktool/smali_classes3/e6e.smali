.class public final Le6e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm7e;


# instance fields
.field public final a:Le7e;

.field public final b:Lj7e;

.field public final c:Ljava/util/Queue;

.field public d:Lerj;

.field public e:J

.field public f:Lu6e;


# direct methods
.method public constructor <init>(Le7e;Ltbg;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le6e;->a:Le7e;

    invoke-virtual {p1, p2}, Le7e;->i(Ltbg;)V

    new-instance p2, Lj7e;

    new-instance v0, Lc6e;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lc6e;-><init>(Le6e;Ld6e;)V

    invoke-direct {p2, v0, p1}, Lj7e;-><init>(Lc6e;Le7e;)V

    iput-object p2, p0, Le6e;->b:Lj7e;

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Le6e;->c:Ljava/util/Queue;

    new-instance p1, Lgpj;

    invoke-direct {p1}, Lgpj;-><init>()V

    invoke-virtual {p1}, Lgpj;->K()Lerj;

    move-result-object p1

    iput-object p1, p0, Le6e;->d:Lerj;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Le6e;->e:J

    new-instance p1, Lb6e;

    invoke-direct {p1}, Lb6e;-><init>()V

    iput-object p1, p0, Le6e;->f:Lu6e;

    return-void
.end method

.method public static bridge synthetic g(Le6e;)Lu6e;
    .locals 0

    iget-object p0, p0, Le6e;->f:Lu6e;

    return-object p0
.end method

.method public static bridge synthetic h(Le6e;)Ljava/util/Queue;
    .locals 0

    iget-object p0, p0, Le6e;->c:Ljava/util/Queue;

    return-object p0
.end method


# virtual methods
.method public final a(Z)V
    .locals 0

    iget-object p0, p0, Le6e;->a:Le7e;

    invoke-virtual {p0, p1}, Le7e;->c(Z)V

    return-void
.end method

.method public final b(F)V
    .locals 0

    iget-object p0, p0, Le6e;->a:Le7e;

    invoke-virtual {p0, p1}, Le7e;->l(F)V

    return-void
.end method

.method public final c(JJ)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Le6e;->b:Lj7e;

    invoke-virtual {v0, p1, p2, p3, p4}, Lj7e;->d(JJ)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzii; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lcom/google/android/gms/internal/ads/zzabu;

    iget-object p0, p0, Le6e;->d:Lerj;

    invoke-direct {p2, p1, p0}, Lcom/google/android/gms/internal/ads/zzabu;-><init>(Ljava/lang/Throwable;Lerj;)V

    throw p2
.end method

.method public final d(Ljava/util/List;)V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public final e(ILerj;JILjava/util/List;)V
    .locals 1

    invoke-interface {p6}, Ljava/util/List;->isEmpty()Z

    move-result p1

    invoke-static {p1}, Ln7g;->f(Z)V

    iget-object p1, p0, Le6e;->d:Lerj;

    iget p6, p1, Lerj;->v:I

    iget v0, p2, Lerj;->v:I

    if-ne v0, p6, :cond_0

    iget p6, p2, Lerj;->w:I

    iget p1, p1, Lerj;->w:I

    if-eq p6, p1, :cond_1

    :cond_0
    iget-object p1, p0, Le6e;->b:Lj7e;

    iget p6, p2, Lerj;->w:I

    invoke-virtual {p1, v0, p6}, Lj7e;->c(II)V

    :cond_1
    iget p1, p2, Lerj;->x:F

    iget-object p6, p0, Le6e;->d:Lerj;

    iget p6, p6, Lerj;->x:F

    cmpl-float p6, p1, p6

    if-eqz p6, :cond_2

    iget-object p6, p0, Le6e;->a:Le7e;

    invoke-virtual {p6, p1}, Le7e;->j(F)V

    :cond_2
    iput-object p2, p0, Le6e;->d:Lerj;

    iget-wide p1, p0, Le6e;->e:J

    cmp-long p1, p3, p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Le6e;->b:Lj7e;

    invoke-virtual {p1, p5, p3, p4}, Lj7e;->b(IJ)V

    iput-wide p3, p0, Le6e;->e:J

    :cond_3
    return-void
.end method

.method public final f(Lu6e;)V
    .locals 0

    iput-object p1, p0, Le6e;->f:Lu6e;

    return-void
.end method

.method public final zzc(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Le6e;->a:Le7e;

    invoke-virtual {p1}, Le7e;->g()V

    :cond_0
    iget-object p1, p0, Le6e;->b:Lj7e;

    invoke-virtual {p1}, Lj7e;->a()V

    iget-object p0, p0, Le6e;->c:Ljava/util/Queue;

    invoke-interface {p0}, Ljava/util/Collection;->clear()V

    return-void
.end method

.method public final zzf()V
    .locals 0

    iget-object p0, p0, Le6e;->a:Le7e;

    invoke-virtual {p0}, Le7e;->d()V

    return-void
.end method

.method public final zzg()V
    .locals 0

    iget-object p0, p0, Le6e;->a:Le7e;

    invoke-virtual {p0}, Le7e;->e()V

    return-void
.end method

.method public final zzi(I)V
    .locals 0

    iget-object p0, p0, Le6e;->a:Le7e;

    invoke-virtual {p0, p1}, Le7e;->h(I)V

    return-void
.end method

.method public final zzm()V
    .locals 0

    return-void
.end method

.method public final zzn(Z)Z
    .locals 0

    iget-object p0, p0, Le6e;->a:Le7e;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Le7e;->m(Z)Z

    move-result p0

    return p0
.end method
