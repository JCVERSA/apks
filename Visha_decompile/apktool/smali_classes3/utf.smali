.class public final Lutf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lvqf;


# instance fields
.field public b:I

.field public c:F

.field public d:F

.field public e:Lcpf;

.field public f:Lcpf;

.field public g:Lcpf;

.field public h:Lcpf;

.field public i:Z

.field public j:Lwsf;

.field public k:Ljava/nio/ByteBuffer;

.field public l:Ljava/nio/ShortBuffer;

.field public m:Ljava/nio/ByteBuffer;

.field public n:J

.field public o:J

.field public p:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lutf;->c:F

    iput v0, p0, Lutf;->d:F

    sget-object v0, Lcpf;->e:Lcpf;

    iput-object v0, p0, Lutf;->e:Lcpf;

    iput-object v0, p0, Lutf;->f:Lcpf;

    iput-object v0, p0, Lutf;->g:Lcpf;

    iput-object v0, p0, Lutf;->h:Lcpf;

    sget-object v0, Lvqf;->a:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lutf;->k:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v1

    iput-object v1, p0, Lutf;->l:Ljava/nio/ShortBuffer;

    iput-object v0, p0, Lutf;->m:Ljava/nio/ByteBuffer;

    const/4 v0, -0x1

    iput v0, p0, Lutf;->b:I

    return-void
.end method


# virtual methods
.method public final a(Ljava/nio/ByteBuffer;)V
    .locals 7

    invoke-virtual {p1}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lutf;->j:Lwsf;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v1

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    iget-wide v3, p0, Lutf;->n:J

    int-to-long v5, v2

    add-long/2addr v3, v5

    iput-wide v3, p0, Lutf;->n:J

    invoke-virtual {v0, v1}, Lwsf;->f(Ljava/nio/ShortBuffer;)V

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result p0

    add-int/2addr p0, v2

    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method public final b(Lcpf;)Lcpf;
    .locals 3

    iget v0, p1, Lcpf;->c:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget v0, p0, Lutf;->b:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    iget v0, p1, Lcpf;->a:I

    :cond_0
    iput-object p1, p0, Lutf;->e:Lcpf;

    new-instance v2, Lcpf;

    iget p1, p1, Lcpf;->b:I

    invoke-direct {v2, v0, p1, v1}, Lcpf;-><init>(III)V

    iput-object v2, p0, Lutf;->f:Lcpf;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lutf;->i:Z

    return-object v2

    :cond_1
    new-instance p0, Lcom/google/android/gms/internal/ads/zzcm;

    const-string v0, "Unhandled input format:"

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzcm;-><init>(Ljava/lang/String;Lcpf;)V

    throw p0
.end method

.method public final c(J)J
    .locals 13

    iget-wide v4, p0, Lutf;->o:J

    const-wide/16 v0, 0x400

    cmp-long v0, v4, v0

    if-ltz v0, :cond_1

    iget-wide v0, p0, Lutf;->n:J

    iget-object v2, p0, Lutf;->j:Lwsf;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Lwsf;->b()I

    move-result v2

    int-to-long v2, v2

    sub-long v2, v0, v2

    iget-object v0, p0, Lutf;->h:Lcpf;

    iget v0, v0, Lcpf;->a:I

    iget-object p0, p0, Lutf;->g:Lcpf;

    iget p0, p0, Lcpf;->a:I

    if-ne v0, p0, :cond_0

    sget-object v6, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    move-wide v0, p1

    invoke-static/range {v0 .. v6}, Lkfh;->P(JJJLjava/math/RoundingMode;)J

    move-result-wide p0

    goto :goto_0

    :cond_0
    int-to-long v0, v0

    mul-long v8, v2, v0

    int-to-long v0, p0

    mul-long v10, v4, v0

    sget-object v12, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    move-wide v6, p1

    invoke-static/range {v6 .. v12}, Lkfh;->P(JJJLjava/math/RoundingMode;)J

    move-result-wide p0

    :goto_0
    return-wide p0

    :cond_1
    iget p0, p0, Lutf;->c:F

    float-to-double v0, p0

    long-to-double p0, p1

    mul-double/2addr v0, p0

    double-to-long p0, v0

    return-wide p0
.end method

.method public final d(F)V
    .locals 2

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    const/4 v1, 0x1

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ln7g;->d(Z)V

    iget v0, p0, Lutf;->d:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_1

    iput p1, p0, Lutf;->d:F

    iput-boolean v1, p0, Lutf;->i:Z

    :cond_1
    return-void
.end method

.method public final e(F)V
    .locals 2

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    const/4 v1, 0x1

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ln7g;->d(Z)V

    iget v0, p0, Lutf;->c:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_1

    iput p1, p0, Lutf;->c:F

    iput-boolean v1, p0, Lutf;->i:Z

    :cond_1
    return-void
.end method

.method public final zzb()Ljava/nio/ByteBuffer;
    .locals 6

    iget-object v0, p0, Lutf;->j:Lwsf;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lwsf;->a()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v2, p0, Lutf;->k:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/Buffer;->capacity()I

    move-result v2

    if-ge v2, v1, :cond_0

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lutf;->k:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v2

    iput-object v2, p0, Lutf;->l:Ljava/nio/ShortBuffer;

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lutf;->k:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget-object v2, p0, Lutf;->l:Ljava/nio/ShortBuffer;

    invoke-virtual {v2}, Ljava/nio/ShortBuffer;->clear()Ljava/nio/Buffer;

    :goto_0
    iget-object v2, p0, Lutf;->l:Ljava/nio/ShortBuffer;

    invoke-virtual {v0, v2}, Lwsf;->d(Ljava/nio/ShortBuffer;)V

    iget-wide v2, p0, Lutf;->o:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lutf;->o:J

    iget-object v0, p0, Lutf;->k:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lutf;->k:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lutf;->m:Ljava/nio/ByteBuffer;

    :cond_1
    iget-object v0, p0, Lutf;->m:Ljava/nio/ByteBuffer;

    sget-object v1, Lvqf;->a:Ljava/nio/ByteBuffer;

    iput-object v1, p0, Lutf;->m:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public final zzc()V
    .locals 9

    invoke-virtual {p0}, Lutf;->zzg()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lutf;->e:Lcpf;

    iput-object v0, p0, Lutf;->g:Lcpf;

    iget-object v1, p0, Lutf;->f:Lcpf;

    iput-object v1, p0, Lutf;->h:Lcpf;

    iget-boolean v2, p0, Lutf;->i:Z

    if-eqz v2, :cond_0

    new-instance v2, Lwsf;

    iget v4, v0, Lcpf;->a:I

    iget v5, v0, Lcpf;->b:I

    iget v6, p0, Lutf;->c:F

    iget v7, p0, Lutf;->d:F

    iget v8, v1, Lcpf;->a:I

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Lwsf;-><init>(IIFFI)V

    iput-object v2, p0, Lutf;->j:Lwsf;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lutf;->j:Lwsf;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lwsf;->c()V

    :cond_1
    :goto_0
    sget-object v0, Lvqf;->a:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lutf;->m:Ljava/nio/ByteBuffer;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lutf;->n:J

    iput-wide v0, p0, Lutf;->o:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lutf;->p:Z

    return-void
.end method

.method public final zzd()V
    .locals 1

    iget-object v0, p0, Lutf;->j:Lwsf;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lwsf;->e()V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lutf;->p:Z

    return-void
.end method

.method public final zzf()V
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lutf;->c:F

    iput v0, p0, Lutf;->d:F

    sget-object v0, Lcpf;->e:Lcpf;

    iput-object v0, p0, Lutf;->e:Lcpf;

    iput-object v0, p0, Lutf;->f:Lcpf;

    iput-object v0, p0, Lutf;->g:Lcpf;

    iput-object v0, p0, Lutf;->h:Lcpf;

    sget-object v0, Lvqf;->a:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lutf;->k:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v1

    iput-object v1, p0, Lutf;->l:Ljava/nio/ShortBuffer;

    iput-object v0, p0, Lutf;->m:Ljava/nio/ByteBuffer;

    const/4 v0, -0x1

    iput v0, p0, Lutf;->b:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lutf;->i:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lutf;->j:Lwsf;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lutf;->n:J

    iput-wide v1, p0, Lutf;->o:J

    iput-boolean v0, p0, Lutf;->p:Z

    return-void
.end method

.method public final zzg()Z
    .locals 3

    iget-object v0, p0, Lutf;->f:Lcpf;

    iget v0, v0, Lcpf;->a:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lutf;->c:F

    const/high16 v1, -0x40800000    # -1.0f

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v2, 0x38d1b717    # 1.0E-4f

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    iget v0, p0, Lutf;->d:F

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    iget-object v0, p0, Lutf;->f:Lcpf;

    iget v0, v0, Lcpf;->a:I

    iget-object p0, p0, Lutf;->e:Lcpf;

    iget p0, p0, Lcpf;->a:I

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final zzh()Z
    .locals 2

    iget-boolean v0, p0, Lutf;->p:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lutf;->j:Lwsf;

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lwsf;->a()I

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    move v1, v0

    :cond_2
    :goto_0
    return v1
.end method
