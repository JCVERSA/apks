.class public abstract Lole;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ld9e;)Landroid/util/Pair;
    .locals 3

    invoke-interface {p0}, Ld9e;->zzj()V

    new-instance v0, Lu4h;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lu4h;-><init>(I)V

    const v2, 0x64617461

    invoke-static {v2, p0, v0}, Lole;->d(ILd9e;Lu4h;)Lnle;

    move-result-object v0

    invoke-interface {p0, v1}, Ld9e;->f(I)V

    invoke-interface {p0}, Ld9e;->zzf()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    iget-wide v0, v0, Lnle;->b:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ld9e;)Lmle;
    .locals 14

    new-instance v0, Lu4h;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lu4h;-><init>(I)V

    const v2, 0x666d7420

    invoke-static {v2, p0, v0}, Lole;->d(ILd9e;Lu4h;)Lnle;

    move-result-object v2

    iget-wide v2, v2, Lnle;->b:J

    const-wide/16 v4, 0x10

    cmp-long v4, v2, v4

    const/4 v5, 0x0

    if-ltz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    move v4, v5

    :goto_0
    invoke-static {v4}, Ln7g;->f(Z)V

    invoke-virtual {v0}, Lu4h;->n()[B

    move-result-object v4

    invoke-interface {p0, v4, v5, v1}, Ld9e;->i([BII)V

    invoke-virtual {v0, v5}, Lu4h;->l(I)V

    invoke-virtual {v0}, Lu4h;->E()I

    move-result v7

    invoke-virtual {v0}, Lu4h;->E()I

    move-result v8

    invoke-virtual {v0}, Lu4h;->D()I

    move-result v9

    invoke-virtual {v0}, Lu4h;->D()I

    move-result v10

    invoke-virtual {v0}, Lu4h;->E()I

    move-result v11

    invoke-virtual {v0}, Lu4h;->E()I

    move-result v12

    long-to-int v0, v2

    add-int/lit8 v0, v0, -0x10

    if-lez v0, :cond_1

    new-array v1, v0, [B

    invoke-interface {p0, v1, v5, v0}, Ld9e;->i([BII)V

    move-object v13, v1

    goto :goto_1

    :cond_1
    sget-object v0, Lkfh;->c:[B

    move-object v13, v0

    :goto_1
    invoke-interface {p0}, Ld9e;->zze()J

    move-result-wide v0

    invoke-interface {p0}, Ld9e;->zzf()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int v0, v0

    invoke-interface {p0, v0}, Ld9e;->f(I)V

    new-instance p0, Lmle;

    move-object v6, p0

    invoke-direct/range {v6 .. v13}, Lmle;-><init>(IIIIII[B)V

    return-object p0
.end method

.method public static c(Ld9e;)Z
    .locals 4

    new-instance v0, Lu4h;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lu4h;-><init>(I)V

    invoke-static {p0, v0}, Lnle;->a(Ld9e;Lu4h;)Lnle;

    move-result-object v1

    iget v1, v1, Lnle;->a:I

    const v2, 0x52494646

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1

    const v2, 0x52463634

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    return v3

    :cond_1
    :goto_0
    invoke-virtual {v0}, Lu4h;->n()[B

    move-result-object v1

    const/4 v2, 0x4

    invoke-interface {p0, v1, v3, v2}, Ld9e;->i([BII)V

    invoke-virtual {v0, v3}, Lu4h;->l(I)V

    invoke-virtual {v0}, Lu4h;->A()I

    move-result p0

    const v0, 0x57415645

    if-eq p0, v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported form type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "WavHeaderReader"

    invoke-static {v0, p0}, Lzrg;->c(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public static d(ILd9e;Lu4h;)Lnle;
    .locals 8

    invoke-static {p1, p2}, Lnle;->a(Ld9e;Lu4h;)Lnle;

    move-result-object v0

    :goto_0
    iget v1, v0, Lnle;->a:I

    if-eq v1, p0, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring unknown WAV chunk: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WavHeaderReader"

    invoke-static {v3, v2}, Lzrg;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v2, v0, Lnle;->b:J

    const-wide/16 v4, 0x1

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    const-wide/16 v4, 0x8

    add-long/2addr v4, v2

    if-eqz v0, :cond_0

    const-wide/16 v4, 0x9

    add-long/2addr v4, v2

    :cond_0
    const-wide/32 v2, 0x7fffffff

    cmp-long v0, v4, v2

    if-gtz v0, :cond_1

    long-to-int v0, v4

    invoke-interface {p1, v0}, Ld9e;->f(I)V

    invoke-static {p1, p2}, Lnle;->a(Ld9e;Lu4h;)Lnle;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Chunk is too large (~2GB+) to skip; id: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzaz;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaz;

    move-result-object p0

    throw p0

    :cond_2
    return-object v0
.end method
