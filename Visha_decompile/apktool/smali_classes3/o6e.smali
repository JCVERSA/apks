.class public final Lo6e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm7e;


# instance fields
.field public a:Lcom/google/android/gms/internal/ads/zzfww;

.field public b:Lerj;

.field public c:J

.field public final synthetic d:Lt6e;


# direct methods
.method public constructor <init>(Lt6e;Landroid/content/Context;I)V
    .locals 0

    iput-object p1, p0, Lo6e;->d:Lt6e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Lkfh;->l(Landroid/content/Context;)Z

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfww;->zzn()Lcom/google/android/gms/internal/ads/zzfww;

    move-result-object p1

    iput-object p1, p0, Lo6e;->a:Lcom/google/android/gms/internal/ads/zzfww;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lo6e;->c:J

    return-void
.end method

.method public static final h(Lerj;)V
    .locals 1

    invoke-virtual {p0}, Lerj;->b()Lgpj;

    move-result-object v0

    iget-object p0, p0, Lerj;->C:Lh6j;

    invoke-static {p0}, Lt6e;->b(Lh6j;)Lh6j;

    move-result-object p0

    invoke-virtual {v0, p0}, Lgpj;->d(Lh6j;)Lgpj;

    invoke-virtual {v0}, Lgpj;->K()Lerj;

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public final a(Z)V
    .locals 0

    iget-object p0, p0, Lo6e;->d:Lt6e;

    invoke-static {p0}, Lt6e;->d(Lt6e;)Lm7e;

    move-result-object p0

    invoke-interface {p0, p1}, Lm7e;->a(Z)V

    return-void
.end method

.method public final b(F)V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public final c(JJ)V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public final d(Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Lo6e;->a:Lcom/google/android/gms/internal/ads/zzfww;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfww;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lo6e;->g(Ljava/util/List;)V

    iget-object p0, p0, Lo6e;->b:Lerj;

    if-eqz p0, :cond_1

    invoke-static {p0}, Lo6e;->h(Lerj;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final e(ILerj;JILjava/util/List;)V
    .locals 2

    const/4 p1, 0x0

    invoke-static {p1}, Ln7g;->f(Z)V

    invoke-virtual {p0, p6}, Lo6e;->g(Ljava/util/List;)V

    iput-object p2, p0, Lo6e;->b:Lerj;

    iget-object p1, p0, Lo6e;->d:Lt6e;

    const-wide p5, -0x7fffffffffffffffL    # -4.9E-324

    invoke-static {p1, p5, p6}, Lt6e;->h(Lt6e;J)V

    invoke-static {p2}, Lo6e;->h(Lerj;)V

    invoke-static {p1}, Lt6e;->c(Lt6e;)Ldbh;

    move-result-object p1

    iget-wide v0, p0, Lo6e;->c:J

    cmp-long p0, v0, p5

    if-nez p0, :cond_0

    const-wide/16 p5, 0x0

    goto :goto_0

    :cond_0
    const-wide/16 p5, 0x1

    add-long/2addr p5, v0

    :goto_0
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p1, p5, p6, p0}, Ldbh;->d(JLjava/lang/Object;)V

    return-void
.end method

.method public final f(Lu6e;)V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public final g(Ljava/util/List;)V
    .locals 1

    new-instance v0, Ll4i;

    invoke-direct {v0}, Ll4i;-><init>()V

    invoke-virtual {v0, p1}, Ll4i;->i(Ljava/lang/Iterable;)Ll4i;

    iget-object p1, p0, Lo6e;->d:Lt6e;

    invoke-static {p1}, Lt6e;->f(Lt6e;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Ll4i;->i(Ljava/lang/Iterable;)Ll4i;

    invoke-virtual {v0}, Ll4i;->j()Lcom/google/android/gms/internal/ads/zzfww;

    move-result-object p1

    iput-object p1, p0, Lo6e;->a:Lcom/google/android/gms/internal/ads/zzfww;

    return-void
.end method

.method public final zzc(Z)V
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lo6e;->c:J

    iget-object p0, p0, Lo6e;->d:Lt6e;

    invoke-static {p0, p1}, Lt6e;->j(Lt6e;Z)V

    return-void
.end method

.method public final zzf()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public final zzg()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public final zzi(I)V
    .locals 0

    iget-object p0, p0, Lo6e;->d:Lt6e;

    invoke-static {p0}, Lt6e;->d(Lt6e;)Lm7e;

    move-result-object p0

    invoke-interface {p0, p1}, Lm7e;->zzi(I)V

    return-void
.end method

.method public final zzm()V
    .locals 3

    iget-object v0, p0, Lo6e;->d:Lt6e;

    iget-wide v1, p0, Lo6e;->c:J

    invoke-static {v0, v1, v2}, Lt6e;->h(Lt6e;J)V

    return-void
.end method

.method public final zzn(Z)Z
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method
