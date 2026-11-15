.class public final Lgje;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc9e;


# instance fields
.field public final a:Lhje;

.field public final b:Lu4h;

.field public final c:Lu4h;

.field public final d:Lp3h;

.field public e:Lf9e;

.field public f:J

.field public g:J

.field public h:Z

.field public i:Z


# direct methods
.method public constructor <init>(I)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lhje;

    const/4 v0, 0x0

    const-string v1, "audio/mp4a-latm"

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p1, v2, v3, v0, v1}, Lhje;-><init>(ZLjava/lang/String;ILjava/lang/String;)V

    iput-object p1, p0, Lgje;->a:Lhje;

    new-instance p1, Lu4h;

    const/16 v0, 0x800

    invoke-direct {p1, v0}, Lu4h;-><init>(I)V

    iput-object p1, p0, Lgje;->b:Lu4h;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lgje;->g:J

    new-instance p1, Lu4h;

    const/16 v0, 0xa

    invoke-direct {p1, v0}, Lu4h;-><init>(I)V

    iput-object p1, p0, Lgje;->c:Lu4h;

    new-instance v0, Lp3h;

    invoke-virtual {p1}, Lu4h;->n()[B

    move-result-object p1

    array-length v1, p1

    invoke-direct {v0, p1, v1}, Lp3h;-><init>([BI)V

    iput-object v0, p0, Lgje;->d:Lp3h;

    return-void
.end method


# virtual methods
.method public final b(JJ)V
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lgje;->h:Z

    iget-object p1, p0, Lgje;->a:Lhje;

    invoke-virtual {p1}, Lhje;->zze()V

    iput-wide p3, p0, Lgje;->f:J

    return-void
.end method

.method public final d(Ld9e;Ly9e;)I
    .locals 8

    iget-object p2, p0, Lgje;->e:Lf9e;

    invoke-static {p2}, Ln7g;->b(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lgje;->b:Lu4h;

    invoke-virtual {p2}, Lu4h;->n()[B

    move-result-object v0

    const/16 v1, 0x800

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2, v1}, Ld9e;->b([BII)I

    move-result p1

    iget-boolean v0, p0, Lgje;->i:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lgje;->e:Lf9e;

    new-instance v3, Ljae;

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v6, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Ljae;-><init>(JJ)V

    invoke-interface {v0, v3}, Lf9e;->i(Lkae;)V

    iput-boolean v1, p0, Lgje;->i:Z

    :cond_0
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    return v0

    :cond_1
    invoke-virtual {p2, v2}, Lu4h;->l(I)V

    invoke-virtual {p2, p1}, Lu4h;->k(I)V

    iget-boolean p1, p0, Lgje;->h:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lgje;->a:Lhje;

    iget-wide v3, p0, Lgje;->f:J

    const/4 v0, 0x4

    invoke-virtual {p1, v3, v4, v0}, Lhje;->b(JI)V

    iput-boolean v1, p0, Lgje;->h:Z

    :cond_2
    iget-object p0, p0, Lgje;->a:Lhje;

    invoke-virtual {p0, p2}, Lhje;->a(Lu4h;)V

    return v2
.end method

.method public final e(Ld9e;)Z
    .locals 10

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lgje;->c:Lu4h;

    invoke-virtual {v2}, Lu4h;->n()[B

    move-result-object v3

    move-object v4, p1

    check-cast v4, Lm8e;

    const/16 v5, 0xa

    invoke-virtual {v4, v3, v0, v5, v0}, Lm8e;->e([BIIZ)Z

    invoke-virtual {v2, v0}, Lu4h;->l(I)V

    invoke-virtual {v2}, Lu4h;->I()I

    move-result v3

    const v5, 0x494433

    if-eq v3, v5, :cond_6

    invoke-interface {p1}, Ld9e;->zzj()V

    move-object v3, p1

    check-cast v3, Lm8e;

    invoke-virtual {v3, v1, v0}, Lm8e;->k(IZ)Z

    iget-wide v4, p0, Lgje;->g:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    int-to-long v4, v1

    iput-wide v4, p0, Lgje;->g:J

    :cond_0
    move v4, v0

    move v6, v4

    move v5, v1

    :cond_1
    invoke-virtual {v2}, Lu4h;->n()[B

    move-result-object v7

    const/4 v8, 0x2

    invoke-virtual {v3, v7, v0, v8, v0}, Lm8e;->e([BIIZ)Z

    invoke-virtual {v2, v0}, Lu4h;->l(I)V

    invoke-virtual {v2}, Lu4h;->K()I

    move-result v7

    invoke-static {v7}, Lhje;->d(I)Z

    move-result v7

    if-nez v7, :cond_2

    add-int/lit8 v5, v5, 0x1

    invoke-interface {p1}, Ld9e;->zzj()V

    invoke-virtual {v3, v5, v0}, Lm8e;->k(IZ)Z

    :goto_1
    move v4, v0

    move v6, v4

    goto :goto_3

    :cond_2
    const/4 v7, 0x1

    add-int/2addr v4, v7

    const/4 v8, 0x4

    if-lt v4, v8, :cond_4

    const/16 v9, 0xbc

    if-gt v6, v9, :cond_3

    goto :goto_2

    :cond_3
    return v7

    :cond_4
    :goto_2
    invoke-virtual {v2}, Lu4h;->n()[B

    move-result-object v7

    invoke-virtual {v3, v7, v0, v8, v0}, Lm8e;->e([BIIZ)Z

    iget-object v7, p0, Lgje;->d:Lp3h;

    const/16 v8, 0xe

    invoke-virtual {v7, v8}, Lp3h;->l(I)V

    const/16 v8, 0xd

    invoke-virtual {v7, v8}, Lp3h;->d(I)I

    move-result v7

    const/4 v8, 0x6

    if-gt v7, v8, :cond_5

    add-int/lit8 v5, v5, 0x1

    invoke-interface {p1}, Ld9e;->zzj()V

    invoke-virtual {v3, v5, v0}, Lm8e;->k(IZ)Z

    goto :goto_1

    :cond_5
    add-int/lit8 v8, v7, -0x6

    invoke-virtual {v3, v8, v0}, Lm8e;->k(IZ)Z

    add-int/2addr v6, v7

    :goto_3
    sub-int v7, v5, v1

    const/16 v8, 0x2000

    if-lt v7, v8, :cond_1

    return v0

    :cond_6
    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lu4h;->m(I)V

    invoke-virtual {v2}, Lu4h;->F()I

    move-result v2

    add-int/lit8 v3, v2, 0xa

    add-int/2addr v1, v3

    invoke-virtual {v4, v2, v0}, Lm8e;->k(IZ)Z

    goto/16 :goto_0
.end method

.method public final f(Lf9e;)V
    .locals 4

    iput-object p1, p0, Lgje;->e:Lf9e;

    new-instance v0, Lcle;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/high16 v3, -0x80000000

    invoke-direct {v0, v3, v1, v2}, Lcle;-><init>(III)V

    iget-object p0, p0, Lgje;->a:Lhje;

    invoke-virtual {p0, p1, v0}, Lhje;->c(Lf9e;Lcle;)V

    invoke-interface {p1}, Lf9e;->zzG()V

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
