.class public final Lffe;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lrae;

.field public final b:Lufe;

.field public final c:Lu4h;

.field public d:Lvfe;

.field public e:Lbfe;

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public final j:Ljava/lang/String;

.field public final k:Lu4h;

.field public final l:Lu4h;

.field public m:Z


# direct methods
.method public constructor <init>(Lrae;Lvfe;Lbfe;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lffe;->a:Lrae;

    iput-object p2, p0, Lffe;->d:Lvfe;

    iput-object p3, p0, Lffe;->e:Lbfe;

    iput-object p4, p0, Lffe;->j:Ljava/lang/String;

    new-instance p1, Lufe;

    invoke-direct {p1}, Lufe;-><init>()V

    iput-object p1, p0, Lffe;->b:Lufe;

    new-instance p1, Lu4h;

    invoke-direct {p1}, Lu4h;-><init>()V

    iput-object p1, p0, Lffe;->c:Lu4h;

    new-instance p1, Lu4h;

    const/4 p4, 0x1

    invoke-direct {p1, p4}, Lu4h;-><init>(I)V

    iput-object p1, p0, Lffe;->k:Lu4h;

    new-instance p1, Lu4h;

    invoke-direct {p1}, Lu4h;-><init>()V

    iput-object p1, p0, Lffe;->l:Lu4h;

    invoke-virtual {p0, p2, p3}, Lffe;->h(Lvfe;Lbfe;)V

    return-void
.end method

.method public static bridge synthetic g(Lffe;Z)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lffe;->m:Z

    return-void
.end method

.method public static bridge synthetic k(Lffe;)Z
    .locals 0

    iget-boolean p0, p0, Lffe;->m:Z

    return p0
.end method


# virtual methods
.method public final a()I
    .locals 2

    iget-boolean v0, p0, Lffe;->m:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lffe;->d:Lvfe;

    iget-object v0, v0, Lvfe;->g:[I

    iget v1, p0, Lffe;->f:I

    aget v0, v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lffe;->b:Lufe;

    iget-object v0, v0, Lufe;->j:[Z

    iget v1, p0, Lffe;->f:I

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lffe;->f()Ltfe;

    move-result-object p0

    if-eqz p0, :cond_2

    const/high16 p0, 0x40000000    # 2.0f

    or-int/2addr p0, v0

    return p0

    :cond_2
    return v0
.end method

.method public final b()I
    .locals 1

    iget-boolean v0, p0, Lffe;->m:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lffe;->d:Lvfe;

    iget-object v0, v0, Lvfe;->d:[I

    iget p0, p0, Lffe;->f:I

    aget p0, v0, p0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lffe;->b:Lufe;

    iget-object v0, v0, Lufe;->h:[I

    iget p0, p0, Lffe;->f:I

    aget p0, v0, p0

    :goto_0
    return p0
.end method

.method public final c(II)I
    .locals 11

    const/16 v0, 0x8

    invoke-virtual {p0}, Lffe;->f()Ltfe;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    iget v3, v1, Ltfe;->d:I

    if-eqz v3, :cond_1

    iget-object v1, p0, Lffe;->b:Lufe;

    iget-object v1, v1, Lufe;->n:Lu4h;

    goto :goto_0

    :cond_1
    iget-object v1, v1, Ltfe;->e:[B

    sget v3, Lkfh;->a:I

    iget-object v3, p0, Lffe;->l:Lu4h;

    array-length v4, v1

    invoke-virtual {v3, v1, v4}, Lu4h;->j([BI)V

    move-object v1, v3

    move v3, v4

    :goto_0
    iget-object v4, p0, Lffe;->b:Lufe;

    iget v5, p0, Lffe;->f:I

    invoke-virtual {v4, v5}, Lufe;->b(I)Z

    move-result v5

    const/4 v6, 0x1

    if-nez v5, :cond_2

    if-eqz p2, :cond_3

    :cond_2
    move v7, v6

    goto :goto_1

    :cond_3
    move v7, v2

    :goto_1
    iget-object v8, p0, Lffe;->k:Lu4h;

    if-eq v6, v7, :cond_4

    move v9, v2

    goto :goto_2

    :cond_4
    const/16 v9, 0x80

    :goto_2
    or-int/2addr v9, v3

    invoke-virtual {v8}, Lu4h;->n()[B

    move-result-object v10

    int-to-byte v9, v9

    aput-byte v9, v10, v2

    invoke-virtual {v8, v2}, Lu4h;->l(I)V

    iget-object v9, p0, Lffe;->a:Lrae;

    invoke-interface {v9, v8, v6, v6}, Lrae;->b(Lu4h;II)V

    invoke-interface {v9, v1, v3, v6}, Lrae;->b(Lu4h;II)V

    if-nez v7, :cond_5

    add-int/2addr v3, v6

    return v3

    :cond_5
    const/4 v1, 0x6

    const/4 v7, 0x3

    const/4 v8, 0x2

    if-nez v5, :cond_6

    int-to-byte p2, p2

    iget-object p0, p0, Lffe;->c:Lu4h;

    invoke-virtual {p0, v0}, Lu4h;->i(I)V

    invoke-virtual {p0}, Lu4h;->n()[B

    move-result-object v4

    aput-byte v2, v4, v2

    aput-byte v6, v4, v6

    aput-byte v2, v4, v8

    aput-byte p2, v4, v7

    shr-int/lit8 p2, p1, 0x18

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    const/4 v2, 0x4

    aput-byte p2, v4, v2

    shr-int/lit8 p2, p1, 0x10

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    const/4 v2, 0x5

    aput-byte p2, v4, v2

    shr-int/lit8 p2, p1, 0x8

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    aput-byte p2, v4, v1

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/4 p2, 0x7

    aput-byte p1, v4, p2

    invoke-interface {v9, p0, v0, v6}, Lrae;->b(Lu4h;II)V

    add-int/lit8 v3, v3, 0x9

    return v3

    :cond_6
    add-int/2addr v3, v6

    iget-object p1, v4, Lufe;->n:Lu4h;

    invoke-virtual {p1}, Lu4h;->K()I

    move-result v4

    const/4 v5, -0x2

    invoke-virtual {p1, v5}, Lu4h;->m(I)V

    mul-int/2addr v4, v1

    add-int/2addr v4, v8

    if-eqz p2, :cond_7

    iget-object p0, p0, Lffe;->c:Lu4h;

    invoke-virtual {p0, v4}, Lu4h;->i(I)V

    invoke-virtual {p0}, Lu4h;->n()[B

    move-result-object v1

    invoke-virtual {p1, v1, v2, v4}, Lu4h;->h([BII)V

    aget-byte p1, v1, v8

    and-int/lit16 p1, p1, 0xff

    shl-int/2addr p1, v0

    aget-byte v2, v1, v7

    and-int/lit16 v2, v2, 0xff

    or-int/2addr p1, v2

    add-int/2addr p1, p2

    shr-int/lit8 p2, p1, 0x8

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    aput-byte p2, v1, v8

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    aput-byte p1, v1, v7

    move-object p1, p0

    :cond_7
    invoke-interface {v9, p1, v4, v6}, Lrae;->b(Lu4h;II)V

    add-int/2addr v3, v4

    return v3
.end method

.method public final d()J
    .locals 2

    iget-boolean v0, p0, Lffe;->m:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lffe;->d:Lvfe;

    iget-object v0, v0, Lvfe;->c:[J

    iget p0, p0, Lffe;->f:I

    aget-wide v0, v0, p0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lffe;->b:Lufe;

    iget-object v0, v0, Lufe;->f:[J

    iget p0, p0, Lffe;->h:I

    aget-wide v0, v0, p0

    :goto_0
    return-wide v0
.end method

.method public final e()J
    .locals 2

    iget-boolean v0, p0, Lffe;->m:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lffe;->d:Lvfe;

    iget-object v0, v0, Lvfe;->f:[J

    iget p0, p0, Lffe;->f:I

    aget-wide v0, v0, p0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lffe;->b:Lufe;

    iget p0, p0, Lffe;->f:I

    iget-object v0, v0, Lufe;->i:[J

    aget-wide v0, v0, p0

    :goto_0
    return-wide v0
.end method

.method public final f()Ltfe;
    .locals 4

    iget-boolean v0, p0, Lffe;->m:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lffe;->b:Lufe;

    iget-object v2, v0, Lufe;->a:Lbfe;

    sget v3, Lkfh;->a:I

    iget v2, v2, Lbfe;->a:I

    iget-object v0, v0, Lufe;->m:Ltfe;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lffe;->d:Lvfe;

    iget-object p0, p0, Lvfe;->a:Lsfe;

    invoke-virtual {p0, v2}, Lsfe;->b(I)Ltfe;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    iget-boolean p0, v0, Ltfe;->a:Z

    if-eqz p0, :cond_2

    return-object v0

    :cond_2
    return-object v1
.end method

.method public final h(Lvfe;Lbfe;)V
    .locals 0

    iput-object p1, p0, Lffe;->d:Lvfe;

    iput-object p2, p0, Lffe;->e:Lbfe;

    iget-object p1, p1, Lvfe;->a:Lsfe;

    iget-object p1, p1, Lsfe;->g:Lerj;

    invoke-virtual {p1}, Lerj;->b()Lgpj;

    move-result-object p1

    iget-object p2, p0, Lffe;->j:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lgpj;->e(Ljava/lang/String;)Lgpj;

    invoke-virtual {p1}, Lgpj;->K()Lerj;

    move-result-object p1

    iget-object p2, p0, Lffe;->a:Lrae;

    invoke-interface {p2, p1}, Lrae;->f(Lerj;)V

    invoke-virtual {p0}, Lffe;->i()V

    return-void
.end method

.method public final i()V
    .locals 4

    iget-object v0, p0, Lffe;->b:Lufe;

    const/4 v1, 0x0

    iput v1, v0, Lufe;->d:I

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lufe;->p:J

    iput-boolean v1, v0, Lufe;->q:Z

    iput-boolean v1, v0, Lufe;->k:Z

    iput-boolean v1, v0, Lufe;->o:Z

    const/4 v2, 0x0

    iput-object v2, v0, Lufe;->m:Ltfe;

    iput v1, p0, Lffe;->f:I

    iput v1, p0, Lffe;->h:I

    iput v1, p0, Lffe;->g:I

    iput v1, p0, Lffe;->i:I

    iput-boolean v1, p0, Lffe;->m:Z

    return-void
.end method

.method public final j(Lcom/google/android/gms/internal/ads/zzs;)V
    .locals 3

    iget-object v0, p0, Lffe;->d:Lvfe;

    iget-object v0, v0, Lvfe;->a:Lsfe;

    iget-object v1, p0, Lffe;->b:Lufe;

    iget-object v1, v1, Lufe;->a:Lbfe;

    sget v2, Lkfh;->a:I

    iget v1, v1, Lbfe;->a:I

    invoke-virtual {v0, v1}, Lsfe;->b(I)Ltfe;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Ltfe;->b:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzs;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzs;

    move-result-object p1

    iget-object v0, p0, Lffe;->d:Lvfe;

    iget-object v0, v0, Lvfe;->a:Lsfe;

    iget-object v0, v0, Lsfe;->g:Lerj;

    iget-object v1, p0, Lffe;->j:Ljava/lang/String;

    invoke-virtual {v0}, Lerj;->b()Lgpj;

    move-result-object v0

    invoke-virtual {v0, v1}, Lgpj;->e(Ljava/lang/String;)Lgpj;

    invoke-virtual {v0, p1}, Lgpj;->h(Lcom/google/android/gms/internal/ads/zzs;)Lgpj;

    invoke-virtual {v0}, Lgpj;->K()Lerj;

    move-result-object p1

    iget-object p0, p0, Lffe;->a:Lrae;

    invoke-interface {p0, p1}, Lrae;->f(Lerj;)V

    return-void
.end method

.method public final l()Z
    .locals 5

    iget v0, p0, Lffe;->f:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lffe;->f:I

    iget-boolean v0, p0, Lffe;->m:Z

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return v2

    :cond_0
    iget v0, p0, Lffe;->g:I

    add-int/2addr v0, v1

    iput v0, p0, Lffe;->g:I

    iget-object v3, p0, Lffe;->b:Lufe;

    iget-object v3, v3, Lufe;->g:[I

    iget v4, p0, Lffe;->h:I

    aget v3, v3, v4

    if-ne v0, v3, :cond_1

    add-int/2addr v4, v1

    iput v4, p0, Lffe;->h:I

    iput v2, p0, Lffe;->g:I

    return v2

    :cond_1
    return v1
.end method
