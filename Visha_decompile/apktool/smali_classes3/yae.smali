.class public final Lyae;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc9e;


# static fields
.field public static final p:[I

.field public static final q:[I

.field public static final r:[B

.field public static final s:[B


# instance fields
.field public final a:[B

.field public final b:Lrae;

.field public c:Z

.field public d:J

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:J

.field public j:Lf9e;

.field public k:Lrae;

.field public l:Lrae;

.field public m:Lkae;

.field public n:J

.field public o:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x10

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lyae;->p:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lyae;->q:[I

    sget v0, Lkfh;->a:I

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const-string v1, "#!AMR\n"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    sput-object v1, Lyae;->r:[B

    const-string v1, "#!AMR-WB\n"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lyae;->s:[B

    return-void

    nop

    :array_0
    .array-data 4
        0xd
        0xe
        0x10
        0x12
        0x14
        0x15
        0x1b
        0x20
        0x6
        0x7
        0x6
        0x6
        0x1
        0x1
        0x1
        0x1
    .end array-data

    :array_1
    .array-data 4
        0x12
        0x18
        0x21
        0x25
        0x29
        0x2f
        0x33
        0x3b
        0x3d
        0x6
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    new-array p1, p1, [B

    iput-object p1, p0, Lyae;->a:[B

    const/4 p1, -0x1

    iput p1, p0, Lyae;->g:I

    new-instance p1, Ls8e;

    invoke-direct {p1}, Ls8e;-><init>()V

    iput-object p1, p0, Lyae;->b:Lrae;

    iput-object p1, p0, Lyae;->l:Lrae;

    return-void
.end method

.method public static c(Ld9e;[B)Z
    .locals 3

    invoke-interface {p0}, Ld9e;->zzj()V

    array-length v0, p1

    new-array v1, v0, [B

    const/4 v2, 0x0

    invoke-interface {p0, v1, v2, v0}, Ld9e;->i([BII)V

    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final a(Ld9e;)I
    .locals 11

    iget v0, p0, Lyae;->f:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    :try_start_0
    invoke-interface {p1}, Ld9e;->zzj()V

    iget-object v0, p0, Lyae;->a:[B

    invoke-interface {p1, v0, v3, v2}, Ld9e;->i([BII)V

    aget-byte v0, v0, v3

    and-int/lit16 v4, v0, 0x83

    const/4 v5, 0x0

    if-gtz v4, :cond_a

    shr-int/lit8 v0, v0, 0x3

    iget-boolean v4, p0, Lyae;->c:Z

    and-int/lit8 v0, v0, 0xf

    if-eqz v4, :cond_1

    const/16 v6, 0xa

    if-lt v0, v6, :cond_2

    const/16 v6, 0xd

    if-le v0, v6, :cond_1

    goto :goto_0

    :cond_1
    if-nez v4, :cond_8

    const/16 v6, 0xc

    if-lt v0, v6, :cond_2

    const/16 v6, 0xe

    if-gt v0, v6, :cond_2

    goto :goto_3

    :cond_2
    :goto_0
    if-eqz v4, :cond_3

    sget-object v4, Lyae;->q:[I

    aget v0, v4, v0

    goto :goto_1

    :cond_3
    sget-object v4, Lyae;->p:[I

    aget v0, v4, v0

    :goto_1
    iput v0, p0, Lyae;->e:I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    iput v0, p0, Lyae;->f:I

    iget v4, p0, Lyae;->g:I

    if-ne v4, v1, :cond_4

    iput v0, p0, Lyae;->g:I

    move v4, v0

    :cond_4
    if-ne v4, v0, :cond_5

    iget v4, p0, Lyae;->h:I

    add-int/2addr v4, v2

    iput v4, p0, Lyae;->h:I

    :cond_5
    :goto_2
    iget-object v4, p0, Lyae;->l:Lrae;

    invoke-interface {v4, p1, v0, v2}, Lrae;->a(Lk8j;IZ)I

    move-result p1

    if-ne p1, v1, :cond_6

    return v1

    :cond_6
    iget v0, p0, Lyae;->f:I

    sub-int/2addr v0, p1

    iput v0, p0, Lyae;->f:I

    if-lez v0, :cond_7

    return v3

    :cond_7
    iget-object v4, p0, Lyae;->l:Lrae;

    iget-wide v5, p0, Lyae;->d:J

    iget v8, p0, Lyae;->e:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v7, 0x1

    invoke-interface/range {v4 .. v10}, Lrae;->g(JIIILqae;)V

    iget-wide v0, p0, Lyae;->d:J

    const-wide/16 v4, 0x4e20

    add-long/2addr v0, v4

    iput-wide v0, p0, Lyae;->d:J

    return v3

    :cond_8
    :goto_3
    :try_start_1
    const-string p0, "WB"

    const-string p1, "NB"

    if-eq v2, v4, :cond_9

    move-object p0, p1

    :cond_9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal AMR "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " frame type "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v5}, Lcom/google/android/gms/internal/ads/zzaz;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaz;

    move-result-object p0

    throw p0

    :cond_a
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Invalid padding bits for frame header "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v5}, Lcom/google/android/gms/internal/ads/zzaz;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaz;

    move-result-object p0

    throw p0
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return v1
.end method

.method public final b(JJ)V
    .locals 1

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lyae;->d:J

    const/4 v0, 0x0

    iput v0, p0, Lyae;->e:I

    iput v0, p0, Lyae;->f:I

    iput-wide p3, p0, Lyae;->n:J

    iput-wide p1, p0, Lyae;->i:J

    return-void
.end method

.method public final d(Ld9e;Ly9e;)I
    .locals 8

    iget-object p2, p0, Lyae;->k:Lrae;

    invoke-static {p2}, Ln7g;->b(Ljava/lang/Object;)Ljava/lang/Object;

    sget p2, Lkfh;->a:I

    invoke-interface {p1}, Ld9e;->zzf()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-nez p2, :cond_1

    invoke-virtual {p0, p1}, Lyae;->g(Ld9e;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "Could not find AMR header."

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzaz;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaz;

    move-result-object p0

    throw p0

    :cond_1
    :goto_0
    iget-boolean p2, p0, Lyae;->o:Z

    if-nez p2, :cond_6

    const/4 p2, 0x1

    iput-boolean p2, p0, Lyae;->o:Z

    iget-boolean v0, p0, Lyae;->c:Z

    const-string v1, "audio/amr-wb"

    if-eq p2, v0, :cond_2

    const-string v4, "audio/amr"

    goto :goto_1

    :cond_2
    move-object v4, v1

    :goto_1
    if-eq p2, v0, :cond_3

    const-string v1, "audio/3gpp"

    :cond_3
    if-eq p2, v0, :cond_4

    const/16 v5, 0x1f40

    goto :goto_2

    :cond_4
    const/16 v5, 0x3e80

    :goto_2
    if-eqz v0, :cond_5

    sget-object v0, Lyae;->q:[I

    const/16 v6, 0x8

    aget v0, v0, v6

    goto :goto_3

    :cond_5
    sget-object v0, Lyae;->p:[I

    const/4 v6, 0x7

    aget v0, v0, v6

    :goto_3
    iget-object v6, p0, Lyae;->k:Lrae;

    new-instance v7, Lgpj;

    invoke-direct {v7}, Lgpj;-><init>()V

    invoke-virtual {v7, v4}, Lgpj;->e(Ljava/lang/String;)Lgpj;

    invoke-virtual {v7, v1}, Lgpj;->E(Ljava/lang/String;)Lgpj;

    invoke-virtual {v7, v0}, Lgpj;->t(I)Lgpj;

    invoke-virtual {v7, p2}, Lgpj;->b(I)Lgpj;

    invoke-virtual {v7, v5}, Lgpj;->F(I)Lgpj;

    invoke-virtual {v7}, Lgpj;->K()Lerj;

    move-result-object p2

    invoke-interface {v6, p2}, Lrae;->f(Lerj;)V

    :cond_6
    invoke-virtual {p0, p1}, Lyae;->a(Ld9e;)I

    move-result p1

    iget-object p2, p0, Lyae;->m:Lkae;

    if-eqz p2, :cond_7

    goto :goto_4

    :cond_7
    new-instance p2, Ljae;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {p2, v0, v1, v2, v3}, Ljae;-><init>(JJ)V

    iput-object p2, p0, Lyae;->m:Lkae;

    iget-object p0, p0, Lyae;->j:Lf9e;

    invoke-interface {p0, p2}, Lf9e;->i(Lkae;)V

    :goto_4
    const/4 p0, -0x1

    if-ne p1, p0, :cond_8

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public final e(Ld9e;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lyae;->g(Ld9e;)Z

    move-result p0

    return p0
.end method

.method public final f(Lf9e;)V
    .locals 2

    iput-object p1, p0, Lyae;->j:Lf9e;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lf9e;->j(II)Lrae;

    move-result-object v0

    iput-object v0, p0, Lyae;->k:Lrae;

    iput-object v0, p0, Lyae;->l:Lrae;

    invoke-interface {p1}, Lf9e;->zzG()V

    return-void
.end method

.method public final g(Ld9e;)Z
    .locals 4

    sget-object v0, Lyae;->r:[B

    invoke-static {p1, v0}, Lyae;->c(Ld9e;[B)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    iput-boolean v2, p0, Lyae;->c:Z

    array-length p0, v0

    invoke-interface {p1, p0}, Ld9e;->f(I)V

    return v3

    :cond_0
    sget-object v0, Lyae;->s:[B

    invoke-static {p1, v0}, Lyae;->c(Ld9e;[B)Z

    move-result v1

    if-eqz v1, :cond_1

    iput-boolean v3, p0, Lyae;->c:Z

    array-length p0, v0

    invoke-interface {p1, p0}, Ld9e;->f(I)V

    return v3

    :cond_1
    return v2
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
