.class public final Lcom/google/android/exoplayer2/audio/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/audio/AudioProcessor;


# instance fields
.field public b:I

.field public c:F

.field public d:F

.field public e:Lcom/google/android/exoplayer2/audio/AudioProcessor$a;

.field public f:Lcom/google/android/exoplayer2/audio/AudioProcessor$a;

.field public g:Lcom/google/android/exoplayer2/audio/AudioProcessor$a;

.field public h:Lcom/google/android/exoplayer2/audio/AudioProcessor$a;

.field public i:Z

.field public j:Lfs9;

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

    iput v0, p0, Lcom/google/android/exoplayer2/audio/k;->c:F

    iput v0, p0, Lcom/google/android/exoplayer2/audio/k;->d:F

    sget-object v0, Lcom/google/android/exoplayer2/audio/AudioProcessor$a;->e:Lcom/google/android/exoplayer2/audio/AudioProcessor$a;

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/k;->e:Lcom/google/android/exoplayer2/audio/AudioProcessor$a;

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/k;->f:Lcom/google/android/exoplayer2/audio/AudioProcessor$a;

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/k;->g:Lcom/google/android/exoplayer2/audio/AudioProcessor$a;

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/k;->h:Lcom/google/android/exoplayer2/audio/AudioProcessor$a;

    sget-object v0, Lcom/google/android/exoplayer2/audio/AudioProcessor;->a:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/k;->k:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/audio/k;->l:Ljava/nio/ShortBuffer;

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/k;->m:Ljava/nio/ByteBuffer;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer2/audio/k;->b:I

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/audio/AudioProcessor$a;)Lcom/google/android/exoplayer2/audio/AudioProcessor$a;
    .locals 3

    iget v0, p1, Lcom/google/android/exoplayer2/audio/AudioProcessor$a;->c:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/google/android/exoplayer2/audio/k;->b:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    iget v0, p1, Lcom/google/android/exoplayer2/audio/AudioProcessor$a;->a:I

    :cond_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/k;->e:Lcom/google/android/exoplayer2/audio/AudioProcessor$a;

    new-instance v2, Lcom/google/android/exoplayer2/audio/AudioProcessor$a;

    iget p1, p1, Lcom/google/android/exoplayer2/audio/AudioProcessor$a;->b:I

    invoke-direct {v2, v0, p1, v1}, Lcom/google/android/exoplayer2/audio/AudioProcessor$a;-><init>(III)V

    iput-object v2, p0, Lcom/google/android/exoplayer2/audio/k;->f:Lcom/google/android/exoplayer2/audio/AudioProcessor$a;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/audio/k;->i:Z

    return-object v2

    :cond_1
    new-instance p0, Lcom/google/android/exoplayer2/audio/AudioProcessor$UnhandledAudioFormatException;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/audio/AudioProcessor$UnhandledAudioFormatException;-><init>(Lcom/google/android/exoplayer2/audio/AudioProcessor$a;)V

    throw p0
.end method

.method public b(J)J
    .locals 15

    move-object v0, p0

    iget-wide v1, v0, Lcom/google/android/exoplayer2/audio/k;->o:J

    const-wide/16 v3, 0x400

    cmp-long v1, v1, v3

    if-ltz v1, :cond_1

    iget-wide v1, v0, Lcom/google/android/exoplayer2/audio/k;->n:J

    iget-object v3, v0, Lcom/google/android/exoplayer2/audio/k;->j:Lfs9;

    invoke-static {v3}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lfs9;

    invoke-virtual {v3}, Lfs9;->l()I

    move-result v3

    int-to-long v3, v3

    sub-long v7, v1, v3

    iget-object v1, v0, Lcom/google/android/exoplayer2/audio/k;->h:Lcom/google/android/exoplayer2/audio/AudioProcessor$a;

    iget v1, v1, Lcom/google/android/exoplayer2/audio/AudioProcessor$a;->a:I

    iget-object v2, v0, Lcom/google/android/exoplayer2/audio/k;->g:Lcom/google/android/exoplayer2/audio/AudioProcessor$a;

    iget v2, v2, Lcom/google/android/exoplayer2/audio/AudioProcessor$a;->a:I

    if-ne v1, v2, :cond_0

    iget-wide v9, v0, Lcom/google/android/exoplayer2/audio/k;->o:J

    move-wide/from16 v5, p1

    invoke-static/range {v5 .. v10}, Lblb;->B0(JJJ)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    int-to-long v3, v1

    mul-long v11, v7, v3

    iget-wide v0, v0, Lcom/google/android/exoplayer2/audio/k;->o:J

    int-to-long v2, v2

    mul-long v13, v0, v2

    move-wide/from16 v9, p1

    invoke-static/range {v9 .. v14}, Lblb;->B0(JJJ)J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_1
    iget v0, v0, Lcom/google/android/exoplayer2/audio/k;->c:F

    float-to-double v0, v0

    move-wide/from16 v2, p1

    long-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-long v0, v0

    return-wide v0
.end method

.method public c(F)V
    .locals 1

    iget v0, p0, Lcom/google/android/exoplayer2/audio/k;->d:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/google/android/exoplayer2/audio/k;->d:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/audio/k;->i:Z

    :cond_0
    return-void
.end method

.method public d(F)V
    .locals 1

    iget v0, p0, Lcom/google/android/exoplayer2/audio/k;->c:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/google/android/exoplayer2/audio/k;->c:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/audio/k;->i:Z

    :cond_0
    return-void
.end method

.method public flush()V
    .locals 9

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/k;->isActive()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/k;->e:Lcom/google/android/exoplayer2/audio/AudioProcessor$a;

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/k;->g:Lcom/google/android/exoplayer2/audio/AudioProcessor$a;

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/k;->f:Lcom/google/android/exoplayer2/audio/AudioProcessor$a;

    iput-object v1, p0, Lcom/google/android/exoplayer2/audio/k;->h:Lcom/google/android/exoplayer2/audio/AudioProcessor$a;

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/audio/k;->i:Z

    if-eqz v2, :cond_0

    new-instance v2, Lfs9;

    iget v4, v0, Lcom/google/android/exoplayer2/audio/AudioProcessor$a;->a:I

    iget v5, v0, Lcom/google/android/exoplayer2/audio/AudioProcessor$a;->b:I

    iget v6, p0, Lcom/google/android/exoplayer2/audio/k;->c:F

    iget v7, p0, Lcom/google/android/exoplayer2/audio/k;->d:F

    iget v8, v1, Lcom/google/android/exoplayer2/audio/AudioProcessor$a;->a:I

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Lfs9;-><init>(IIFFI)V

    iput-object v2, p0, Lcom/google/android/exoplayer2/audio/k;->j:Lfs9;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/k;->j:Lfs9;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lfs9;->i()V

    :cond_1
    :goto_0
    sget-object v0, Lcom/google/android/exoplayer2/audio/AudioProcessor;->a:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/k;->m:Ljava/nio/ByteBuffer;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/k;->n:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/k;->o:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/k;->p:Z

    return-void
.end method

.method public getOutput()Ljava/nio/ByteBuffer;
    .locals 6

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/k;->j:Lfs9;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lfs9;->k()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/k;->k:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/Buffer;->capacity()I

    move-result v2

    if-ge v2, v1, :cond_0

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/exoplayer2/audio/k;->k:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/exoplayer2/audio/k;->l:Ljava/nio/ShortBuffer;

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/k;->k:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/k;->l:Ljava/nio/ShortBuffer;

    invoke-virtual {v2}, Ljava/nio/ShortBuffer;->clear()Ljava/nio/Buffer;

    :goto_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/k;->l:Ljava/nio/ShortBuffer;

    invoke-virtual {v0, v2}, Lfs9;->j(Ljava/nio/ShortBuffer;)V

    iget-wide v2, p0, Lcom/google/android/exoplayer2/audio/k;->o:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/exoplayer2/audio/k;->o:J

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/k;->k:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/k;->k:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/k;->m:Ljava/nio/ByteBuffer;

    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/k;->m:Ljava/nio/ByteBuffer;

    sget-object v1, Lcom/google/android/exoplayer2/audio/AudioProcessor;->a:Ljava/nio/ByteBuffer;

    iput-object v1, p0, Lcom/google/android/exoplayer2/audio/k;->m:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public isActive()Z
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/k;->f:Lcom/google/android/exoplayer2/audio/AudioProcessor$a;

    iget v0, v0, Lcom/google/android/exoplayer2/audio/AudioProcessor$a;->a:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/google/android/exoplayer2/audio/k;->c:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v2, 0x38d1b717    # 1.0E-4f

    cmpl-float v0, v0, v2

    if-gez v0, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer2/audio/k;->d:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v2

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/k;->f:Lcom/google/android/exoplayer2/audio/AudioProcessor$a;

    iget v0, v0, Lcom/google/android/exoplayer2/audio/AudioProcessor$a;->a:I

    iget-object p0, p0, Lcom/google/android/exoplayer2/audio/k;->e:Lcom/google/android/exoplayer2/audio/AudioProcessor$a;

    iget p0, p0, Lcom/google/android/exoplayer2/audio/AudioProcessor$a;->a:I

    if-eq v0, p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isEnded()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/k;->p:Z

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/google/android/exoplayer2/audio/k;->j:Lfs9;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lfs9;->k()I

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public queueEndOfStream()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/k;->j:Lfs9;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lfs9;->s()V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/k;->p:Z

    return-void
.end method

.method public queueInput(Ljava/nio/ByteBuffer;)V
    .locals 7

    invoke-virtual {p1}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/k;->j:Lfs9;

    invoke-static {v0}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfs9;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v1

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    iget-wide v3, p0, Lcom/google/android/exoplayer2/audio/k;->n:J

    int-to-long v5, v2

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/google/android/exoplayer2/audio/k;->n:J

    invoke-virtual {v0, v1}, Lfs9;->t(Ljava/nio/ShortBuffer;)V

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result p0

    add-int/2addr p0, v2

    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method public reset()V
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/google/android/exoplayer2/audio/k;->c:F

    iput v0, p0, Lcom/google/android/exoplayer2/audio/k;->d:F

    sget-object v0, Lcom/google/android/exoplayer2/audio/AudioProcessor$a;->e:Lcom/google/android/exoplayer2/audio/AudioProcessor$a;

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/k;->e:Lcom/google/android/exoplayer2/audio/AudioProcessor$a;

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/k;->f:Lcom/google/android/exoplayer2/audio/AudioProcessor$a;

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/k;->g:Lcom/google/android/exoplayer2/audio/AudioProcessor$a;

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/k;->h:Lcom/google/android/exoplayer2/audio/AudioProcessor$a;

    sget-object v0, Lcom/google/android/exoplayer2/audio/AudioProcessor;->a:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/k;->k:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/audio/k;->l:Ljava/nio/ShortBuffer;

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/k;->m:Ljava/nio/ByteBuffer;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer2/audio/k;->b:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/k;->i:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/exoplayer2/audio/k;->j:Lfs9;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/google/android/exoplayer2/audio/k;->n:J

    iput-wide v1, p0, Lcom/google/android/exoplayer2/audio/k;->o:J

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/k;->p:Z

    return-void
.end method
