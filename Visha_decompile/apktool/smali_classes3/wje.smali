.class public final Lwje;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llje;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public final c:Ljava/lang/String;

.field public final d:Lu4h;

.field public final e:Lp3h;

.field public f:Lrae;

.field public g:Ljava/lang/String;

.field public h:Lerj;

.field public i:I

.field public j:I

.field public k:I

.field public l:I

.field public m:J

.field public n:Z

.field public o:I

.field public p:I

.field public q:I

.field public r:Z

.field public s:J

.field public t:I

.field public u:J

.field public v:I

.field public w:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwje;->a:Ljava/lang/String;

    iput p2, p0, Lwje;->b:I

    const-string p1, "video/mp2t"

    iput-object p1, p0, Lwje;->c:Ljava/lang/String;

    new-instance p1, Lu4h;

    const/16 p2, 0x400

    invoke-direct {p1, p2}, Lu4h;-><init>(I)V

    iput-object p1, p0, Lwje;->d:Lu4h;

    new-instance p2, Lp3h;

    invoke-virtual {p1}, Lu4h;->n()[B

    move-result-object p1

    array-length p3, p1

    invoke-direct {p2, p1, p3}, Lp3h;-><init>([BI)V

    iput-object p2, p0, Lwje;->e:Lp3h;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lwje;->m:J

    return-void
.end method

.method public static e(Lp3h;)J
    .locals 2

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lp3h;->d(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x8

    invoke-virtual {p0, v0}, Lp3h;->d(I)I

    move-result p0

    int-to-long v0, p0

    return-wide v0
.end method


# virtual methods
.method public final a(Lu4h;)V
    .locals 14

    iget-object v0, p0, Lwje;->f:Lrae;

    invoke-static {v0}, Ln7g;->b(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lu4h;->u()I

    move-result v0

    if-lez v0, :cond_1e

    iget v0, p0, Lwje;->i:I

    const/16 v1, 0x56

    const/4 v2, 0x1

    if-eqz v0, :cond_1d

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eq v0, v2, :cond_1b

    const/4 v1, 0x3

    const/16 v5, 0x8

    if-eq v0, v3, :cond_19

    invoke-virtual {p1}, Lu4h;->u()I

    move-result v0

    iget v3, p0, Lwje;->k:I

    iget v6, p0, Lwje;->j:I

    sub-int/2addr v3, v6

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v3, p0, Lwje;->e:Lp3h;

    iget-object v6, v3, Lp3h;->a:[B

    iget v7, p0, Lwje;->j:I

    invoke-virtual {p1, v6, v7, v0}, Lu4h;->h([BII)V

    iget v6, p0, Lwje;->j:I

    add-int/2addr v6, v0

    iput v6, p0, Lwje;->j:I

    iget v0, p0, Lwje;->k:I

    if-ne v6, v0, :cond_0

    invoke-virtual {v3, v4}, Lp3h;->l(I)V

    invoke-virtual {v3}, Lp3h;->p()Z

    move-result v0

    const/4 v6, 0x0

    if-nez v0, :cond_10

    iput-boolean v2, p0, Lwje;->n:Z

    invoke-virtual {v3, v2}, Lp3h;->d(I)I

    move-result v0

    if-ne v0, v2, :cond_1

    invoke-virtual {v3, v2}, Lp3h;->d(I)I

    move-result v0

    move v7, v2

    goto :goto_1

    :cond_1
    move v7, v0

    move v0, v4

    :goto_1
    iput v0, p0, Lwje;->o:I

    if-nez v0, :cond_f

    if-ne v7, v2, :cond_2

    invoke-static {v3}, Lwje;->e(Lp3h;)J

    move v7, v2

    :cond_2
    invoke-virtual {v3}, Lp3h;->p()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x6

    invoke-virtual {v3, v0}, Lp3h;->d(I)I

    move-result v8

    iput v8, p0, Lwje;->p:I

    const/4 v8, 0x4

    invoke-virtual {v3, v8}, Lp3h;->d(I)I

    move-result v9

    invoke-virtual {v3, v1}, Lp3h;->d(I)I

    move-result v10

    if-nez v9, :cond_d

    if-nez v10, :cond_d

    if-nez v7, :cond_3

    invoke-virtual {v3}, Lp3h;->c()I

    move-result v9

    invoke-virtual {p0, v3}, Lwje;->d(Lp3h;)I

    move-result v10

    invoke-virtual {v3, v9}, Lp3h;->l(I)V

    add-int/lit8 v9, v10, 0x7

    div-int/2addr v9, v5

    new-array v9, v9, [B

    invoke-virtual {v3, v9, v4, v10}, Lp3h;->h([BII)V

    new-instance v10, Lgpj;

    invoke-direct {v10}, Lgpj;-><init>()V

    iget-object v11, p0, Lwje;->g:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lgpj;->o(Ljava/lang/String;)Lgpj;

    iget-object v11, p0, Lwje;->c:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lgpj;->e(Ljava/lang/String;)Lgpj;

    const-string v11, "audio/mp4a-latm"

    invoke-virtual {v10, v11}, Lgpj;->E(Ljava/lang/String;)Lgpj;

    iget-object v11, p0, Lwje;->w:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lgpj;->c(Ljava/lang/String;)Lgpj;

    iget v11, p0, Lwje;->v:I

    invoke-virtual {v10, v11}, Lgpj;->b(I)Lgpj;

    iget v11, p0, Lwje;->t:I

    invoke-virtual {v10, v11}, Lgpj;->F(I)Lgpj;

    invoke-static {v9}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-virtual {v10, v9}, Lgpj;->p(Ljava/util/List;)Lgpj;

    iget-object v9, p0, Lwje;->a:Ljava/lang/String;

    invoke-virtual {v10, v9}, Lgpj;->s(Ljava/lang/String;)Lgpj;

    iget v9, p0, Lwje;->b:I

    invoke-virtual {v10, v9}, Lgpj;->C(I)Lgpj;

    invoke-virtual {v10}, Lgpj;->K()Lerj;

    move-result-object v9

    iget-object v10, p0, Lwje;->h:Lerj;

    invoke-virtual {v9, v10}, Lerj;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    iput-object v9, p0, Lwje;->h:Lerj;

    iget v10, v9, Lerj;->F:I

    int-to-long v10, v10

    const-wide/32 v12, 0x3d090000

    div-long/2addr v12, v10

    iput-wide v12, p0, Lwje;->u:J

    iget-object v10, p0, Lwje;->f:Lrae;

    invoke-interface {v10, v9}, Lrae;->f(Lerj;)V

    goto :goto_2

    :cond_3
    invoke-static {v3}, Lwje;->e(Lp3h;)J

    move-result-wide v9

    long-to-int v9, v9

    invoke-virtual {p0, v3}, Lwje;->d(Lp3h;)I

    move-result v10

    sub-int/2addr v9, v10

    invoke-virtual {v3, v9}, Lp3h;->n(I)V

    :cond_4
    :goto_2
    invoke-virtual {v3, v1}, Lp3h;->d(I)I

    move-result v9

    iput v9, p0, Lwje;->q:I

    if-eqz v9, :cond_9

    if-eq v9, v2, :cond_8

    if-eq v9, v1, :cond_7

    if-eq v9, v8, :cond_7

    const/4 v1, 0x5

    if-eq v9, v1, :cond_7

    if-eq v9, v0, :cond_6

    const/4 v0, 0x7

    if-ne v9, v0, :cond_5

    goto :goto_3

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_6
    :goto_3
    invoke-virtual {v3, v2}, Lp3h;->n(I)V

    goto :goto_4

    :cond_7
    invoke-virtual {v3, v0}, Lp3h;->n(I)V

    goto :goto_4

    :cond_8
    const/16 v0, 0x9

    invoke-virtual {v3, v0}, Lp3h;->n(I)V

    goto :goto_4

    :cond_9
    invoke-virtual {v3, v5}, Lp3h;->n(I)V

    :goto_4
    invoke-virtual {v3}, Lp3h;->p()Z

    move-result v0

    iput-boolean v0, p0, Lwje;->r:Z

    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lwje;->s:J

    if-eqz v0, :cond_c

    if-eq v7, v2, :cond_b

    :cond_a
    invoke-virtual {v3}, Lp3h;->p()Z

    move-result v0

    iget-wide v7, p0, Lwje;->s:J

    shl-long/2addr v7, v5

    invoke-virtual {v3, v5}, Lp3h;->d(I)I

    move-result v1

    int-to-long v9, v1

    add-long/2addr v7, v9

    iput-wide v7, p0, Lwje;->s:J

    if-nez v0, :cond_a

    goto :goto_5

    :cond_b
    invoke-static {v3}, Lwje;->e(Lp3h;)J

    move-result-wide v0

    iput-wide v0, p0, Lwje;->s:J

    :cond_c
    :goto_5
    invoke-virtual {v3}, Lp3h;->p()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {v3, v5}, Lp3h;->n(I)V

    goto :goto_6

    :cond_d
    invoke-static {v6, v6}, Lcom/google/android/gms/internal/ads/zzaz;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaz;

    move-result-object p0

    throw p0

    :cond_e
    invoke-static {v6, v6}, Lcom/google/android/gms/internal/ads/zzaz;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaz;

    move-result-object p0

    throw p0

    :cond_f
    invoke-static {v6, v6}, Lcom/google/android/gms/internal/ads/zzaz;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaz;

    move-result-object p0

    throw p0

    :cond_10
    iget-boolean v0, p0, Lwje;->n:Z

    if-nez v0, :cond_11

    goto :goto_a

    :cond_11
    :goto_6
    iget v0, p0, Lwje;->o:I

    if-nez v0, :cond_18

    iget v0, p0, Lwje;->p:I

    if-nez v0, :cond_17

    iget v0, p0, Lwje;->q:I

    if-nez v0, :cond_16

    move v0, v4

    :goto_7
    invoke-virtual {v3, v5}, Lp3h;->d(I)I

    move-result v1

    add-int v10, v0, v1

    const/16 v0, 0xff

    if-eq v1, v0, :cond_15

    invoke-virtual {v3}, Lp3h;->c()I

    move-result v0

    and-int/lit8 v1, v0, 0x7

    if-nez v1, :cond_12

    iget-object v1, p0, Lwje;->d:Lu4h;

    shr-int/lit8 v0, v0, 0x3

    invoke-virtual {v1, v0}, Lu4h;->l(I)V

    goto :goto_8

    :cond_12
    iget-object v0, p0, Lwje;->d:Lu4h;

    mul-int/lit8 v1, v10, 0x8

    invoke-virtual {v0}, Lu4h;->n()[B

    move-result-object v5

    invoke-virtual {v3, v5, v4, v1}, Lp3h;->h([BII)V

    invoke-virtual {v0, v4}, Lu4h;->l(I)V

    :goto_8
    iget-object v0, p0, Lwje;->f:Lrae;

    iget-object v1, p0, Lwje;->d:Lu4h;

    invoke-interface {v0, v1, v10}, Lrae;->d(Lu4h;I)V

    iget-wide v0, p0, Lwje;->m:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v5

    if-eqz v0, :cond_13

    goto :goto_9

    :cond_13
    move v2, v4

    :goto_9
    invoke-static {v2}, Ln7g;->f(Z)V

    iget-object v6, p0, Lwje;->f:Lrae;

    iget-wide v7, p0, Lwje;->m:J

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v9, 0x1

    invoke-interface/range {v6 .. v12}, Lrae;->g(JIIILqae;)V

    iget-wide v0, p0, Lwje;->m:J

    iget-wide v5, p0, Lwje;->u:J

    add-long/2addr v0, v5

    iput-wide v0, p0, Lwje;->m:J

    iget-boolean v0, p0, Lwje;->r:Z

    if-eqz v0, :cond_14

    iget-wide v0, p0, Lwje;->s:J

    long-to-int v0, v0

    invoke-virtual {v3, v0}, Lp3h;->n(I)V

    :cond_14
    :goto_a
    iput v4, p0, Lwje;->i:I

    goto/16 :goto_0

    :cond_15
    move v0, v10

    goto :goto_7

    :cond_16
    invoke-static {v6, v6}, Lcom/google/android/gms/internal/ads/zzaz;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaz;

    move-result-object p0

    throw p0

    :cond_17
    invoke-static {v6, v6}, Lcom/google/android/gms/internal/ads/zzaz;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaz;

    move-result-object p0

    throw p0

    :cond_18
    invoke-static {v6, v6}, Lcom/google/android/gms/internal/ads/zzaz;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaz;

    move-result-object p0

    throw p0

    :cond_19
    iget v0, p0, Lwje;->l:I

    and-int/lit16 v0, v0, -0xe1

    shl-int/2addr v0, v5

    invoke-virtual {p1}, Lu4h;->G()I

    move-result v2

    or-int/2addr v0, v2

    iput v0, p0, Lwje;->k:I

    iget-object v2, p0, Lwje;->d:Lu4h;

    invoke-virtual {v2}, Lu4h;->n()[B

    move-result-object v3

    array-length v3, v3

    if-le v0, v3, :cond_1a

    invoke-virtual {v2, v0}, Lu4h;->i(I)V

    iget-object v0, p0, Lwje;->e:Lp3h;

    invoke-virtual {v2}, Lu4h;->n()[B

    move-result-object v2

    array-length v3, v2

    invoke-virtual {v0, v2, v3}, Lp3h;->k([BI)V

    :cond_1a
    iput v4, p0, Lwje;->j:I

    iput v1, p0, Lwje;->i:I

    goto/16 :goto_0

    :cond_1b
    invoke-virtual {p1}, Lu4h;->G()I

    move-result v0

    and-int/lit16 v2, v0, 0xe0

    const/16 v5, 0xe0

    if-ne v2, v5, :cond_1c

    iput v0, p0, Lwje;->l:I

    iput v3, p0, Lwje;->i:I

    goto/16 :goto_0

    :cond_1c
    if-eq v0, v1, :cond_0

    iput v4, p0, Lwje;->i:I

    goto/16 :goto_0

    :cond_1d
    invoke-virtual {p1}, Lu4h;->G()I

    move-result v0

    if-ne v0, v1, :cond_0

    iput v2, p0, Lwje;->i:I

    goto/16 :goto_0

    :cond_1e
    return-void
.end method

.method public final b(JI)V
    .locals 0

    iput-wide p1, p0, Lwje;->m:J

    return-void
.end method

.method public final c(Lf9e;Lcle;)V
    .locals 2

    invoke-virtual {p2}, Lcle;->c()V

    invoke-virtual {p2}, Lcle;->a()I

    move-result v0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lf9e;->j(II)Lrae;

    move-result-object p1

    iput-object p1, p0, Lwje;->f:Lrae;

    invoke-virtual {p2}, Lcle;->b()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwje;->g:Ljava/lang/String;

    return-void
.end method

.method public final d(Lp3h;)I
    .locals 3

    invoke-virtual {p1}, Lp3h;->a()I

    move-result v0

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lp7e;->b(Lp3h;Z)Ln7e;

    move-result-object v1

    iget-object v2, v1, Ln7e;->c:Ljava/lang/String;

    iput-object v2, p0, Lwje;->w:Ljava/lang/String;

    iget v2, v1, Ln7e;->a:I

    iput v2, p0, Lwje;->t:I

    iget v1, v1, Ln7e;->b:I

    iput v1, p0, Lwje;->v:I

    invoke-virtual {p1}, Lp3h;->a()I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method

.method public final zzc(Z)V
    .locals 0

    return-void
.end method

.method public final zze()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lwje;->i:I

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v1, p0, Lwje;->m:J

    iput-boolean v0, p0, Lwje;->n:Z

    return-void
.end method
