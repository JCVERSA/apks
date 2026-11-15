.class public final Lqz6;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lqe;

.field public b:I

.field public c:I

.field public d:I

.field public e:Z

.field public f:Ljava/lang/String;

.field public g:I

.field public h:Z

.field public i:I

.field public j:J

.field public k:Ljpa;

.field public l:Lnpa;

.field public m:Lyfb;

.field public n:Ljava/util/List;

.field public o:Z

.field public p:Z

.field public q:Z

.field public r:Lyj4;


# direct methods
.method public constructor <init>(Lqe;IIIZLjava/lang/String;IZIJLjpa;Lnpa;Lyfb;Ljava/util/List;Lhe7;ZZZLyj4;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p6

    move-object/from16 v3, p12

    move-object/from16 v4, p13

    move-object/from16 v5, p14

    move-object/from16 v6, p15

    const-string v7, "appInfoProvider"

    invoke-static {p1, v7}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "cacheDir"

    invoke-static {p6, v7}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "accessTokenFetcher"

    invoke-static {v3, v7}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "tokenRefresher"

    invoke-static {v4, v7}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "uniqueIdFetcher"

    invoke-static {v5, v7}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "customInterceptors"

    invoke-static {v6, v7}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lqz6;->a:Lqe;

    move v1, p2

    iput v1, v0, Lqz6;->b:I

    move v1, p3

    iput v1, v0, Lqz6;->c:I

    move v1, p4

    iput v1, v0, Lqz6;->d:I

    move v1, p5

    iput-boolean v1, v0, Lqz6;->e:Z

    iput-object v2, v0, Lqz6;->f:Ljava/lang/String;

    move v1, p7

    iput v1, v0, Lqz6;->g:I

    move/from16 v1, p8

    iput-boolean v1, v0, Lqz6;->h:Z

    move/from16 v1, p9

    iput v1, v0, Lqz6;->i:I

    move-wide/from16 v1, p10

    iput-wide v1, v0, Lqz6;->j:J

    iput-object v3, v0, Lqz6;->k:Ljpa;

    iput-object v4, v0, Lqz6;->l:Lnpa;

    iput-object v5, v0, Lqz6;->m:Lyfb;

    iput-object v6, v0, Lqz6;->n:Ljava/util/List;

    move/from16 v1, p17

    iput-boolean v1, v0, Lqz6;->o:Z

    move/from16 v1, p18

    iput-boolean v1, v0, Lqz6;->p:Z

    move/from16 v1, p19

    iput-boolean v1, v0, Lqz6;->q:Z

    move-object/from16 v1, p20

    iput-object v1, v0, Lqz6;->r:Lyj4;

    return-void
.end method


# virtual methods
.method public final a()Ljpa;
    .locals 0

    iget-object p0, p0, Lqz6;->k:Ljpa;

    return-object p0
.end method

.method public final b()Lqe;
    .locals 0

    iget-object p0, p0, Lqz6;->a:Lqe;

    return-object p0
.end method

.method public final c()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lqz6;->f:Ljava/lang/String;

    return-object p0
.end method

.method public final d()I
    .locals 0

    iget p0, p0, Lqz6;->g:I

    return p0
.end method

.method public final e()I
    .locals 0

    iget p0, p0, Lqz6;->b:I

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lqz6;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lqz6;

    iget-object v1, p0, Lqz6;->a:Lqe;

    iget-object v3, p1, Lqz6;->a:Lqe;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lqz6;->b:I

    iget v3, p1, Lqz6;->b:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lqz6;->c:I

    iget v3, p1, Lqz6;->c:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lqz6;->d:I

    iget v3, p1, Lqz6;->d:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-boolean v1, p0, Lqz6;->e:Z

    iget-boolean v3, p1, Lqz6;->e:Z

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lqz6;->f:Ljava/lang/String;

    iget-object v3, p1, Lqz6;->f:Ljava/lang/String;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget v1, p0, Lqz6;->g:I

    iget v3, p1, Lqz6;->g:I

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget-boolean v1, p0, Lqz6;->h:Z

    iget-boolean v3, p1, Lqz6;->h:Z

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    iget v1, p0, Lqz6;->i:I

    iget v3, p1, Lqz6;->i:I

    if-eq v1, v3, :cond_a

    return v2

    :cond_a
    iget-wide v3, p0, Lqz6;->j:J

    iget-wide v5, p1, Lqz6;->j:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lqz6;->k:Ljpa;

    iget-object v3, p1, Lqz6;->k:Ljpa;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    iget-object v1, p0, Lqz6;->l:Lnpa;

    iget-object v3, p1, Lqz6;->l:Lnpa;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    :cond_d
    iget-object v1, p0, Lqz6;->m:Lyfb;

    iget-object v3, p1, Lqz6;->m:Lyfb;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v2

    :cond_e
    iget-object v1, p0, Lqz6;->n:Ljava/util/List;

    iget-object v3, p1, Lqz6;->n:Ljava/util/List;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v2

    :cond_f
    const/4 v1, 0x0

    invoke-static {v1, v1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    return v2

    :cond_10
    iget-boolean v1, p0, Lqz6;->o:Z

    iget-boolean v3, p1, Lqz6;->o:Z

    if-eq v1, v3, :cond_11

    return v2

    :cond_11
    iget-boolean v1, p0, Lqz6;->p:Z

    iget-boolean v3, p1, Lqz6;->p:Z

    if-eq v1, v3, :cond_12

    return v2

    :cond_12
    iget-boolean v1, p0, Lqz6;->q:Z

    iget-boolean v3, p1, Lqz6;->q:Z

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget-object p0, p0, Lqz6;->r:Lyj4;

    iget-object p1, p1, Lqz6;->r:Lyj4;

    invoke-static {p0, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_14

    return v2

    :cond_14
    return v0
.end method

.method public final f()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lqz6;->n:Ljava/util/List;

    return-object p0
.end method

.method public final g()Lhe7;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final h()Z
    .locals 0

    iget-boolean p0, p0, Lqz6;->e:Z

    return p0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lqz6;->a:Lqe;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lqz6;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lqz6;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lqz6;->d:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lqz6;->e:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lqz6;->f:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lqz6;->g:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lqz6;->h:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lqz6;->i:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lqz6;->j:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lqz6;->k:Ljpa;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lqz6;->l:Lnpa;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lqz6;->m:Lyfb;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lqz6;->n:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit16 v0, v0, 0x3c1

    iget-boolean v1, p0, Lqz6;->o:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lqz6;->p:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lqz6;->q:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lqz6;->r:Lyj4;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    :goto_0
    add-int/2addr v0, p0

    return v0
.end method

.method public final i()Z
    .locals 0

    iget-boolean p0, p0, Lqz6;->h:Z

    return p0
.end method

.method public final j()Z
    .locals 0

    iget-boolean p0, p0, Lqz6;->q:Z

    return p0
.end method

.method public final k()Lyj4;
    .locals 0

    iget-object p0, p0, Lqz6;->r:Lyj4;

    return-object p0
.end method

.method public final l()I
    .locals 0

    iget p0, p0, Lqz6;->i:I

    return p0
.end method

.method public final m()I
    .locals 0

    iget p0, p0, Lqz6;->c:I

    return p0
.end method

.method public final n()J
    .locals 2

    iget-wide v0, p0, Lqz6;->j:J

    return-wide v0
.end method

.method public final o()Lnpa;
    .locals 0

    iget-object p0, p0, Lqz6;->l:Lnpa;

    return-object p0
.end method

.method public final p()Lyfb;
    .locals 0

    iget-object p0, p0, Lqz6;->m:Lyfb;

    return-object p0
.end method

.method public final q()Z
    .locals 0

    iget-boolean p0, p0, Lqz6;->p:Z

    return p0
.end method

.method public final r()I
    .locals 0

    iget p0, p0, Lqz6;->d:I

    return p0
.end method

.method public final s()Z
    .locals 0

    iget-boolean p0, p0, Lqz6;->o:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 20

    move-object/from16 v0, p0

    iget-object v1, v0, Lqz6;->a:Lqe;

    iget v2, v0, Lqz6;->b:I

    iget v3, v0, Lqz6;->c:I

    iget v4, v0, Lqz6;->d:I

    iget-boolean v5, v0, Lqz6;->e:Z

    iget-object v6, v0, Lqz6;->f:Ljava/lang/String;

    iget v7, v0, Lqz6;->g:I

    iget-boolean v8, v0, Lqz6;->h:Z

    iget v9, v0, Lqz6;->i:I

    iget-wide v10, v0, Lqz6;->j:J

    iget-object v12, v0, Lqz6;->k:Ljpa;

    iget-object v13, v0, Lqz6;->l:Lnpa;

    iget-object v14, v0, Lqz6;->m:Lyfb;

    iget-object v15, v0, Lqz6;->n:Ljava/util/List;

    move-object/from16 v16, v15

    iget-boolean v15, v0, Lqz6;->o:Z

    move/from16 v17, v15

    iget-boolean v15, v0, Lqz6;->p:Z

    move/from16 v18, v15

    iget-boolean v15, v0, Lqz6;->q:Z

    iget-object v0, v0, Lqz6;->r:Lyj4;

    move-object/from16 p0, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v19, v15

    const-string v15, "NetworkConfig(appInfoProvider="

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", connectTimeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", readTimeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", writeTimeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", enableLog="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", cacheDir="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", cacheSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", enableNetworkRetry="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", maxRetryCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", retryDelayMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", accessTokenFetcher="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", tokenRefresher="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", uniqueIdFetcher="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", customInterceptors="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", customOkHttpClientFactory="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isTest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", useTranssionDrive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", enableRegionHost="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", gslbCallback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
