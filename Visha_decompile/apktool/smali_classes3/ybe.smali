.class public final Lybe;
.super Lxbe;
.source "SourceFile"


# instance fields
.field public final b:Lu4h;

.field public final c:Lu4h;

.field public d:I

.field public e:Z

.field public f:Z

.field public g:I


# direct methods
.method public constructor <init>(Lrae;)V
    .locals 1

    invoke-direct {p0, p1}, Lxbe;-><init>(Lrae;)V

    new-instance p1, Lu4h;

    sget-object v0, Ljzh;->a:[B

    invoke-direct {p1, v0}, Lu4h;-><init>([B)V

    iput-object p1, p0, Lybe;->b:Lu4h;

    new-instance p1, Lu4h;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Lu4h;-><init>(I)V

    iput-object p1, p0, Lybe;->c:Lu4h;

    return-void
.end method


# virtual methods
.method public final a(Lu4h;)Z
    .locals 2

    invoke-virtual {p1}, Lu4h;->G()I

    move-result p1

    shr-int/lit8 v0, p1, 0x4

    and-int/lit8 p1, p1, 0xf

    const/4 v1, 0x7

    if-ne p1, v1, :cond_1

    iput v0, p0, Lybe;->g:I

    const/4 p0, 0x5

    if-eq v0, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    new-instance p0, Lcom/google/android/gms/internal/ads/zzafl;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Video format not supported: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzafl;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final b(Lu4h;J)Z
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Lu4h;->G()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lu4h;->B()I

    move-result v3

    int-to-long v3, v3

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v2, :cond_0

    iget-boolean v2, v0, Lybe;->e:Z

    if-nez v2, :cond_4

    new-instance v2, Lu4h;

    invoke-virtual/range {p1 .. p1}, Lu4h;->u()I

    move-result v3

    new-array v3, v3, [B

    invoke-direct {v2, v3}, Lu4h;-><init>([B)V

    invoke-virtual {v2}, Lu4h;->n()[B

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lu4h;->u()I

    move-result v4

    invoke-virtual {v1, v3, v6, v4}, Lu4h;->h([BII)V

    invoke-static {v2}, Lb8e;->a(Lu4h;)Lb8e;

    move-result-object v1

    iget v2, v1, Lb8e;->b:I

    iput v2, v0, Lybe;->d:I

    new-instance v2, Lgpj;

    invoke-direct {v2}, Lgpj;-><init>()V

    const-string v3, "video/x-flv"

    invoke-virtual {v2, v3}, Lgpj;->e(Ljava/lang/String;)Lgpj;

    const-string v3, "video/avc"

    invoke-virtual {v2, v3}, Lgpj;->E(Ljava/lang/String;)Lgpj;

    iget-object v3, v1, Lb8e;->l:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lgpj;->c(Ljava/lang/String;)Lgpj;

    iget v3, v1, Lb8e;->c:I

    invoke-virtual {v2, v3}, Lgpj;->J(I)Lgpj;

    iget v3, v1, Lb8e;->d:I

    invoke-virtual {v2, v3}, Lgpj;->m(I)Lgpj;

    iget v3, v1, Lb8e;->k:F

    invoke-virtual {v2, v3}, Lgpj;->z(F)Lgpj;

    iget-object v1, v1, Lb8e;->a:Ljava/util/List;

    invoke-virtual {v2, v1}, Lgpj;->p(Ljava/util/List;)Lgpj;

    invoke-virtual {v2}, Lgpj;->K()Lerj;

    move-result-object v1

    iget-object v2, v0, Lxbe;->a:Lrae;

    invoke-interface {v2, v1}, Lrae;->f(Lerj;)V

    iput-boolean v5, v0, Lybe;->e:Z

    return v6

    :cond_0
    if-ne v2, v5, :cond_4

    iget-boolean v2, v0, Lybe;->e:Z

    if-eqz v2, :cond_4

    iget v2, v0, Lybe;->g:I

    if-ne v2, v5, :cond_1

    move v2, v5

    goto :goto_0

    :cond_1
    move v2, v6

    :goto_0
    iget-boolean v7, v0, Lybe;->f:Z

    if-nez v7, :cond_2

    if-eqz v2, :cond_4

    move v11, v5

    goto :goto_1

    :cond_2
    move v11, v2

    :goto_1
    iget-object v2, v0, Lybe;->c:Lu4h;

    invoke-virtual {v2}, Lu4h;->n()[B

    move-result-object v7

    aput-byte v6, v7, v6

    aput-byte v6, v7, v5

    const/4 v8, 0x2

    aput-byte v6, v7, v8

    iget v7, v0, Lybe;->d:I

    const/4 v8, 0x4

    rsub-int/lit8 v7, v7, 0x4

    move v12, v6

    :goto_2
    invoke-virtual/range {p1 .. p1}, Lu4h;->u()I

    move-result v9

    if-lez v9, :cond_3

    invoke-virtual {v2}, Lu4h;->n()[B

    move-result-object v9

    iget v10, v0, Lybe;->d:I

    invoke-virtual {v1, v9, v7, v10}, Lu4h;->h([BII)V

    invoke-virtual {v2, v6}, Lu4h;->l(I)V

    iget-object v9, v0, Lybe;->b:Lu4h;

    invoke-virtual {v2}, Lu4h;->J()I

    move-result v10

    invoke-virtual {v9, v6}, Lu4h;->l(I)V

    iget-object v13, v0, Lxbe;->a:Lrae;

    invoke-interface {v13, v9, v8}, Lrae;->d(Lu4h;I)V

    add-int/lit8 v12, v12, 0x4

    invoke-interface {v13, v1, v10}, Lrae;->d(Lu4h;I)V

    add-int/2addr v12, v10

    goto :goto_2

    :cond_3
    const-wide/16 v1, 0x3e8

    mul-long/2addr v3, v1

    add-long v9, p2, v3

    iget-object v8, v0, Lxbe;->a:Lrae;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-interface/range {v8 .. v14}, Lrae;->g(JIIILqae;)V

    iput-boolean v5, v0, Lybe;->f:Z

    return v5

    :cond_4
    return v6
.end method
