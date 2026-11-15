.class public final Lege;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc9e;


# instance fields
.field public a:Lf9e;

.field public b:Lmge;

.field public c:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ld9e;)Z
    .locals 8

    new-instance v0, Lgge;

    invoke-direct {v0}, Lgge;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lgge;->b(Ld9e;Z)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    iget v2, v0, Lgge;->a:I

    const/4 v4, 0x2

    and-int/2addr v2, v4

    if-eq v2, v4, :cond_0

    goto :goto_1

    :cond_0
    iget v0, v0, Lgge;->e:I

    const/16 v2, 0x8

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-instance v2, Lu4h;

    invoke-direct {v2, v0}, Lu4h;-><init>(I)V

    invoke-virtual {v2}, Lu4h;->n()[B

    move-result-object v4

    invoke-interface {p1, v4, v3, v0}, Ld9e;->i([BII)V

    invoke-virtual {v2, v3}, Lu4h;->l(I)V

    invoke-virtual {v2}, Lu4h;->u()I

    move-result p1

    const/4 v0, 0x5

    if-lt p1, v0, :cond_1

    invoke-virtual {v2}, Lu4h;->G()I

    move-result p1

    const/16 v0, 0x7f

    if-ne p1, v0, :cond_1

    invoke-virtual {v2}, Lu4h;->O()J

    move-result-wide v4

    const-wide/32 v6, 0x464c4143

    cmp-long p1, v4, v6

    if-nez p1, :cond_1

    new-instance p1, Ldge;

    invoke-direct {p1}, Ldge;-><init>()V

    iput-object p1, p0, Lege;->b:Lmge;

    goto :goto_0

    :cond_1
    invoke-virtual {v2, v3}, Lu4h;->l(I)V

    :try_start_0
    invoke-static {v1, v2, v1}, Lxae;->d(ILu4h;Z)Z

    move-result p1
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzaz; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_2

    new-instance p1, Loge;

    invoke-direct {p1}, Loge;-><init>()V

    iput-object p1, p0, Lege;->b:Lmge;

    goto :goto_0

    :catch_0
    :cond_2
    invoke-virtual {v2, v3}, Lu4h;->l(I)V

    invoke-static {v2}, Lige;->j(Lu4h;)Z

    move-result p1

    if-eqz p1, :cond_3

    new-instance p1, Lige;

    invoke-direct {p1}, Lige;-><init>()V

    iput-object p1, p0, Lege;->b:Lmge;

    :goto_0
    return v1

    :cond_3
    :goto_1
    return v3
.end method

.method public final b(JJ)V
    .locals 0

    iget-object p0, p0, Lege;->b:Lmge;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2, p3, p4}, Lmge;->i(JJ)V

    :cond_0
    return-void
.end method

.method public final d(Ld9e;Ly9e;)I
    .locals 4

    iget-object v0, p0, Lege;->a:Lf9e;

    invoke-static {v0}, Ln7g;->b(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lege;->b:Lmge;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lege;->a(Ld9e;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ld9e;->zzj()V

    goto :goto_0

    :cond_0
    const-string p0, "Failed to determine bitstream type"

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzaz;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaz;

    move-result-object p0

    throw p0

    :cond_1
    :goto_0
    iget-boolean v0, p0, Lege;->c:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lege;->a:Lf9e;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lf9e;->j(II)Lrae;

    move-result-object v0

    iget-object v1, p0, Lege;->a:Lf9e;

    invoke-interface {v1}, Lf9e;->zzG()V

    iget-object v1, p0, Lege;->b:Lmge;

    iget-object v3, p0, Lege;->a:Lf9e;

    invoke-virtual {v1, v3, v0}, Lmge;->g(Lf9e;Lrae;)V

    iput-boolean v2, p0, Lege;->c:Z

    :cond_2
    iget-object p0, p0, Lege;->b:Lmge;

    invoke-virtual {p0, p1, p2}, Lmge;->d(Ld9e;Ly9e;)I

    move-result p0

    return p0
.end method

.method public final e(Ld9e;)Z
    .locals 0

    :try_start_0
    invoke-virtual {p0, p1}, Lege;->a(Ld9e;)Z

    move-result p0
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzaz; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public final f(Lf9e;)V
    .locals 0

    iput-object p1, p0, Lege;->a:Lf9e;

    return-void
.end method

.method public final synthetic zzc()Lc9e;
    .locals 0

    return-object p0
.end method

.method public final synthetic zzd()Ljava/util/List;
    .locals 0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfww;->zzn()Lcom/google/android/gms/internal/ads/zzfww;

    move-result-object p0

    return-object p0
.end method
