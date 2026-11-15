.class public final Llle;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc9e;


# instance fields
.field public a:Lf9e;

.field public b:Lrae;

.field public c:I

.field public d:J

.field public e:Lhle;

.field public f:I

.field public g:J


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Llle;->c:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Llle;->d:J

    const/4 v2, -0x1

    iput v2, p0, Llle;->f:I

    iput-wide v0, p0, Llle;->g:J

    return-void
.end method


# virtual methods
.method public final b(JJ)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    :goto_0
    iput p1, p0, Llle;->c:I

    iget-object p0, p0, Llle;->e:Lhle;

    if-eqz p0, :cond_1

    invoke-interface {p0, p3, p4}, Lhle;->a(J)V

    :cond_1
    return-void
.end method

.method public final d(Ld9e;Ly9e;)I
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Llle;->b:Lrae;

    invoke-static {v2}, Ln7g;->b(Ljava/lang/Object;)Ljava/lang/Object;

    sget v2, Lkfh;->a:I

    iget v2, v0, Llle;->c:I

    const/4 v3, -0x1

    const/4 v4, 0x4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_f

    const/4 v7, 0x2

    const-wide/16 v8, -0x1

    if-eq v2, v5, :cond_d

    const/4 v10, 0x3

    if-eq v2, v7, :cond_5

    if-eq v2, v10, :cond_2

    iget-wide v10, v0, Llle;->g:J

    cmp-long v2, v10, v8

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v5, v6

    :goto_0
    invoke-static {v5}, Ln7g;->f(Z)V

    iget-wide v4, v0, Llle;->g:J

    invoke-interface/range {p1 .. p1}, Ld9e;->zzf()J

    move-result-wide v7

    sub-long/2addr v4, v7

    iget-object v0, v0, Llle;->e:Lhle;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0, v1, v4, v5}, Lhle;->c(Ld9e;J)Z

    move-result v0

    if-eqz v0, :cond_1

    return v3

    :cond_1
    return v6

    :cond_2
    invoke-static/range {p1 .. p1}, Lole;->a(Ld9e;)Landroid/util/Pair;

    move-result-object v2

    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->intValue()I

    move-result v3

    iput v3, v0, Llle;->f:I

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-wide v10, v0, Llle;->d:J

    cmp-long v5, v10, v8

    if-eqz v5, :cond_3

    const-wide v12, 0xffffffffL

    cmp-long v5, v2, v12

    if-nez v5, :cond_3

    move-wide v2, v10

    :cond_3
    iget v5, v0, Llle;->f:I

    int-to-long v10, v5

    add-long/2addr v10, v2

    iput-wide v10, v0, Llle;->g:J

    invoke-interface/range {p1 .. p1}, Ld9e;->zzd()J

    move-result-wide v1

    cmp-long v3, v1, v8

    if-eqz v3, :cond_4

    cmp-long v3, v10, v1

    if-lez v3, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Data exceeds input length: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "WavExtractor"

    invoke-static {v5, v3}, Lzrg;->f(Ljava/lang/String;Ljava/lang/String;)V

    iput-wide v1, v0, Llle;->g:J

    move-wide v10, v1

    :cond_4
    iget-object v1, v0, Llle;->e:Lhle;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v2, v0, Llle;->f:I

    invoke-interface {v1, v2, v10, v11}, Lhle;->b(IJ)V

    iput v4, v0, Llle;->c:I

    return v6

    :cond_5
    invoke-static/range {p1 .. p1}, Lole;->b(Ld9e;)Lmle;

    move-result-object v15

    iget v1, v15, Lmle;->a:I

    const/16 v2, 0x11

    if-ne v1, v2, :cond_6

    new-instance v1, Lgle;

    iget-object v2, v0, Llle;->a:Lf9e;

    iget-object v3, v0, Llle;->b:Lrae;

    invoke-direct {v1, v2, v3, v15}, Lgle;-><init>(Lf9e;Lrae;Lmle;)V

    iput-object v1, v0, Llle;->e:Lhle;

    goto :goto_3

    :cond_6
    const/4 v2, 0x6

    if-ne v1, v2, :cond_7

    new-instance v1, Lkle;

    iget-object v13, v0, Llle;->a:Lf9e;

    iget-object v14, v0, Llle;->b:Lrae;

    const-string v16, "audio/g711-alaw"

    const/16 v17, -0x1

    move-object v12, v1

    invoke-direct/range {v12 .. v17}, Lkle;-><init>(Lf9e;Lrae;Lmle;Ljava/lang/String;I)V

    iput-object v1, v0, Llle;->e:Lhle;

    goto :goto_3

    :cond_7
    const/4 v2, 0x7

    if-ne v1, v2, :cond_8

    new-instance v1, Lkle;

    iget-object v13, v0, Llle;->a:Lf9e;

    iget-object v14, v0, Llle;->b:Lrae;

    const-string v16, "audio/g711-mlaw"

    const/16 v17, -0x1

    move-object v12, v1

    invoke-direct/range {v12 .. v17}, Lkle;-><init>(Lf9e;Lrae;Lmle;Ljava/lang/String;I)V

    iput-object v1, v0, Llle;->e:Lhle;

    goto :goto_3

    :cond_8
    iget v2, v15, Lmle;->e:I

    if-eq v1, v5, :cond_b

    if-eq v1, v10, :cond_a

    const v3, 0xfffe

    if-eq v1, v3, :cond_b

    :cond_9
    move/from16 v17, v6

    goto :goto_2

    :cond_a
    const/16 v3, 0x20

    if-ne v2, v3, :cond_9

    :goto_1
    move/from16 v17, v4

    goto :goto_2

    :cond_b
    invoke-static {v2}, Lkfh;->I(I)I

    move-result v4

    goto :goto_1

    :goto_2
    if-eqz v17, :cond_c

    new-instance v1, Lkle;

    iget-object v13, v0, Llle;->a:Lf9e;

    iget-object v14, v0, Llle;->b:Lrae;

    const-string v16, "audio/raw"

    move-object v12, v1

    invoke-direct/range {v12 .. v17}, Lkle;-><init>(Lf9e;Lrae;Lmle;Ljava/lang/String;I)V

    iput-object v1, v0, Llle;->e:Lhle;

    :goto_3
    iput v10, v0, Llle;->c:I

    return v6

    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported WAV format type: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaz;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaz;

    move-result-object v0

    throw v0

    :cond_d
    new-instance v2, Lu4h;

    const/16 v3, 0x8

    invoke-direct {v2, v3}, Lu4h;-><init>(I)V

    invoke-static {v1, v2}, Lnle;->a(Ld9e;Lu4h;)Lnle;

    move-result-object v4

    iget v5, v4, Lnle;->a:I

    const v10, 0x64733634

    if-eq v5, v10, :cond_e

    invoke-interface/range {p1 .. p1}, Ld9e;->zzj()V

    goto :goto_4

    :cond_e
    invoke-interface {v1, v3}, Ld9e;->zzg(I)V

    invoke-virtual {v2, v6}, Lu4h;->l(I)V

    invoke-virtual {v2}, Lu4h;->n()[B

    move-result-object v5

    invoke-interface {v1, v5, v6, v3}, Ld9e;->i([BII)V

    invoke-virtual {v2}, Lu4h;->L()J

    move-result-wide v8

    iget-wide v4, v4, Lnle;->b:J

    long-to-int v2, v4

    add-int/2addr v2, v3

    invoke-interface {v1, v2}, Ld9e;->f(I)V

    :goto_4
    iput-wide v8, v0, Llle;->d:J

    iput v7, v0, Llle;->c:I

    return v6

    :cond_f
    invoke-interface/range {p1 .. p1}, Ld9e;->zzf()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v2, v7, v9

    if-nez v2, :cond_10

    move v2, v5

    goto :goto_5

    :cond_10
    move v2, v6

    :goto_5
    invoke-static {v2}, Ln7g;->f(Z)V

    iget v2, v0, Llle;->f:I

    if-eq v2, v3, :cond_11

    invoke-interface {v1, v2}, Ld9e;->f(I)V

    iput v4, v0, Llle;->c:I

    goto :goto_6

    :cond_11
    invoke-static/range {p1 .. p1}, Lole;->c(Ld9e;)Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-interface/range {p1 .. p1}, Ld9e;->zze()J

    move-result-wide v2

    invoke-interface/range {p1 .. p1}, Ld9e;->zzf()J

    move-result-wide v7

    sub-long/2addr v2, v7

    long-to-int v2, v2

    invoke-interface {v1, v2}, Ld9e;->f(I)V

    iput v5, v0, Llle;->c:I

    :goto_6
    return v6

    :cond_12
    const-string v0, "Unsupported or unrecognized wav file type."

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzaz;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaz;

    move-result-object v0

    throw v0
.end method

.method public final e(Ld9e;)Z
    .locals 0

    invoke-static {p1}, Lole;->c(Ld9e;)Z

    move-result p0

    return p0
.end method

.method public final f(Lf9e;)V
    .locals 2

    iput-object p1, p0, Llle;->a:Lf9e;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lf9e;->j(II)Lrae;

    move-result-object v0

    iput-object v0, p0, Llle;->b:Lrae;

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
