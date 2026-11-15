.class public final Lcom/yandex/mobile/ads/impl/n12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/uh;


# instance fields
.field private b:I

.field private c:F

.field private d:F

.field private e:Lcom/yandex/mobile/ads/impl/uh$a;

.field private f:Lcom/yandex/mobile/ads/impl/uh$a;

.field private g:Lcom/yandex/mobile/ads/impl/uh$a;

.field private h:Lcom/yandex/mobile/ads/impl/uh$a;

.field private i:Z

.field private j:Lcom/yandex/mobile/ads/impl/m12;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private k:Ljava/nio/ByteBuffer;

.field private l:Ljava/nio/ShortBuffer;

.field private m:Ljava/nio/ByteBuffer;

.field private n:J

.field private o:J

.field private p:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/yandex/mobile/ads/impl/n12;->c:F

    iput v0, p0, Lcom/yandex/mobile/ads/impl/n12;->d:F

    sget-object v0, Lcom/yandex/mobile/ads/impl/uh$a;->e:Lcom/yandex/mobile/ads/impl/uh$a;

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/n12;->e:Lcom/yandex/mobile/ads/impl/uh$a;

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/n12;->f:Lcom/yandex/mobile/ads/impl/uh$a;

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/n12;->g:Lcom/yandex/mobile/ads/impl/uh$a;

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/n12;->h:Lcom/yandex/mobile/ads/impl/uh$a;

    sget-object v0, Lcom/yandex/mobile/ads/impl/uh;->a:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/n12;->k:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/yandex/mobile/ads/impl/n12;->l:Ljava/nio/ShortBuffer;

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/n12;->m:Ljava/nio/ByteBuffer;

    const/4 v0, -0x1

    iput v0, p0, Lcom/yandex/mobile/ads/impl/n12;->b:I

    return-void
.end method


# virtual methods
.method public final a(J)J
    .locals 15

    move-object v0, p0

    .line 8
    iget-wide v1, v0, Lcom/yandex/mobile/ads/impl/n12;->o:J

    const-wide/16 v3, 0x400

    cmp-long v1, v1, v3

    if-ltz v1, :cond_1

    .line 9
    iget-wide v1, v0, Lcom/yandex/mobile/ads/impl/n12;->n:J

    iget-object v3, v0, Lcom/yandex/mobile/ads/impl/n12;->j:Lcom/yandex/mobile/ads/impl/m12;

    .line 10
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/m12;->c()I

    move-result v3

    int-to-long v3, v3

    sub-long v7, v1, v3

    .line 12
    iget-object v1, v0, Lcom/yandex/mobile/ads/impl/n12;->h:Lcom/yandex/mobile/ads/impl/uh$a;

    iget v1, v1, Lcom/yandex/mobile/ads/impl/uh$a;->a:I

    iget-object v2, v0, Lcom/yandex/mobile/ads/impl/n12;->g:Lcom/yandex/mobile/ads/impl/uh$a;

    iget v2, v2, Lcom/yandex/mobile/ads/impl/uh$a;->a:I

    if-ne v1, v2, :cond_0

    .line 13
    iget-wide v9, v0, Lcom/yandex/mobile/ads/impl/n12;->o:J

    move-wide/from16 v5, p1

    invoke-static/range {v5 .. v10}, Lcom/yandex/mobile/ads/impl/f92;->a(JJJ)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    int-to-long v3, v1

    mul-long v11, v7, v3

    .line 14
    iget-wide v0, v0, Lcom/yandex/mobile/ads/impl/n12;->o:J

    int-to-long v2, v2

    mul-long v13, v0, v2

    move-wide/from16 v9, p1

    invoke-static/range {v9 .. v14}, Lcom/yandex/mobile/ads/impl/f92;->a(JJJ)J

    move-result-wide v0

    :goto_0
    return-wide v0

    .line 15
    :cond_1
    iget v0, v0, Lcom/yandex/mobile/ads/impl/n12;->c:F

    float-to-double v0, v0

    move-wide/from16 v2, p1

    long-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-long v0, v0

    return-wide v0
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/uh$a;)Lcom/yandex/mobile/ads/impl/uh$a;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yandex/mobile/ads/impl/uh$b;
        }
    .end annotation

    .line 1
    iget v0, p1, Lcom/yandex/mobile/ads/impl/uh$a;->c:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 2
    iget v0, p0, Lcom/yandex/mobile/ads/impl/n12;->b:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 3
    iget v0, p1, Lcom/yandex/mobile/ads/impl/uh$a;->a:I

    .line 4
    :cond_0
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/n12;->e:Lcom/yandex/mobile/ads/impl/uh$a;

    .line 5
    new-instance v2, Lcom/yandex/mobile/ads/impl/uh$a;

    iget p1, p1, Lcom/yandex/mobile/ads/impl/uh$a;->b:I

    invoke-direct {v2, v0, p1, v1}, Lcom/yandex/mobile/ads/impl/uh$a;-><init>(III)V

    iput-object v2, p0, Lcom/yandex/mobile/ads/impl/n12;->f:Lcom/yandex/mobile/ads/impl/uh$a;

    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lcom/yandex/mobile/ads/impl/n12;->i:Z

    return-object v2

    .line 7
    :cond_1
    new-instance p0, Lcom/yandex/mobile/ads/impl/uh$b;

    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/uh$b;-><init>(Lcom/yandex/mobile/ads/impl/uh$a;)V

    throw p0
.end method

.method public final a(F)V
    .locals 1

    .line 25
    iget v0, p0, Lcom/yandex/mobile/ads/impl/n12;->d:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 26
    iput p1, p0, Lcom/yandex/mobile/ads/impl/n12;->d:F

    const/4 p1, 0x1

    .line 27
    iput-boolean p1, p0, Lcom/yandex/mobile/ads/impl/n12;->i:Z

    :cond_0
    return-void
.end method

.method public final a(Ljava/nio/ByteBuffer;)V
    .locals 7

    .line 17
    invoke-virtual {p1}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/n12;->j:Lcom/yandex/mobile/ads/impl/m12;

    .line 19
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v1

    .line 21
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    .line 22
    iget-wide v3, p0, Lcom/yandex/mobile/ads/impl/n12;->n:J

    int-to-long v5, v2

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/yandex/mobile/ads/impl/n12;->n:J

    .line 23
    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/impl/m12;->b(Ljava/nio/ShortBuffer;)V

    .line 24
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result p0

    add-int/2addr p0, v2

    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method public final a()Z
    .locals 1

    .line 16
    iget-boolean v0, p0, Lcom/yandex/mobile/ads/impl/n12;->p:Z

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/n12;->j:Lcom/yandex/mobile/ads/impl/m12;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/m12;->b()I

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

.method public final b()V
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1
    iput v0, p0, Lcom/yandex/mobile/ads/impl/n12;->c:F

    .line 2
    iput v0, p0, Lcom/yandex/mobile/ads/impl/n12;->d:F

    .line 3
    sget-object v0, Lcom/yandex/mobile/ads/impl/uh$a;->e:Lcom/yandex/mobile/ads/impl/uh$a;

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/n12;->e:Lcom/yandex/mobile/ads/impl/uh$a;

    .line 4
    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/n12;->f:Lcom/yandex/mobile/ads/impl/uh$a;

    .line 5
    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/n12;->g:Lcom/yandex/mobile/ads/impl/uh$a;

    .line 6
    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/n12;->h:Lcom/yandex/mobile/ads/impl/uh$a;

    .line 7
    sget-object v0, Lcom/yandex/mobile/ads/impl/uh;->a:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/n12;->k:Ljava/nio/ByteBuffer;

    .line 8
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/yandex/mobile/ads/impl/n12;->l:Ljava/nio/ShortBuffer;

    .line 9
    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/n12;->m:Ljava/nio/ByteBuffer;

    const/4 v0, -0x1

    .line 10
    iput v0, p0, Lcom/yandex/mobile/ads/impl/n12;->b:I

    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lcom/yandex/mobile/ads/impl/n12;->i:Z

    const/4 v1, 0x0

    .line 12
    iput-object v1, p0, Lcom/yandex/mobile/ads/impl/n12;->j:Lcom/yandex/mobile/ads/impl/m12;

    const-wide/16 v1, 0x0

    .line 13
    iput-wide v1, p0, Lcom/yandex/mobile/ads/impl/n12;->n:J

    .line 14
    iput-wide v1, p0, Lcom/yandex/mobile/ads/impl/n12;->o:J

    .line 15
    iput-boolean v0, p0, Lcom/yandex/mobile/ads/impl/n12;->p:Z

    return-void
.end method

.method public final b(F)V
    .locals 1

    .line 16
    iget v0, p0, Lcom/yandex/mobile/ads/impl/n12;->c:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 17
    iput p1, p0, Lcom/yandex/mobile/ads/impl/n12;->c:F

    const/4 p1, 0x1

    .line 18
    iput-boolean p1, p0, Lcom/yandex/mobile/ads/impl/n12;->i:Z

    :cond_0
    return-void
.end method

.method public final c()Ljava/nio/ByteBuffer;
    .locals 6

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/n12;->j:Lcom/yandex/mobile/ads/impl/m12;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/m12;->b()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/n12;->k:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/Buffer;->capacity()I

    move-result v2

    if-ge v2, v1, :cond_0

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/yandex/mobile/ads/impl/n12;->k:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/yandex/mobile/ads/impl/n12;->l:Ljava/nio/ShortBuffer;

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/n12;->k:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/n12;->l:Ljava/nio/ShortBuffer;

    invoke-virtual {v2}, Ljava/nio/ShortBuffer;->clear()Ljava/nio/Buffer;

    :goto_0
    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/n12;->l:Ljava/nio/ShortBuffer;

    invoke-virtual {v0, v2}, Lcom/yandex/mobile/ads/impl/m12;->a(Ljava/nio/ShortBuffer;)V

    iget-wide v2, p0, Lcom/yandex/mobile/ads/impl/n12;->o:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/yandex/mobile/ads/impl/n12;->o:J

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/n12;->k:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/n12;->k:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/n12;->m:Ljava/nio/ByteBuffer;

    :cond_1
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/n12;->m:Ljava/nio/ByteBuffer;

    sget-object v1, Lcom/yandex/mobile/ads/impl/uh;->a:Ljava/nio/ByteBuffer;

    iput-object v1, p0, Lcom/yandex/mobile/ads/impl/n12;->m:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public final d()V
    .locals 1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/n12;->j:Lcom/yandex/mobile/ads/impl/m12;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/m12;->e()V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yandex/mobile/ads/impl/n12;->p:Z

    return-void
.end method

.method public final flush()V
    .locals 9

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/n12;->isActive()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/n12;->e:Lcom/yandex/mobile/ads/impl/uh$a;

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/n12;->g:Lcom/yandex/mobile/ads/impl/uh$a;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/n12;->f:Lcom/yandex/mobile/ads/impl/uh$a;

    iput-object v1, p0, Lcom/yandex/mobile/ads/impl/n12;->h:Lcom/yandex/mobile/ads/impl/uh$a;

    iget-boolean v2, p0, Lcom/yandex/mobile/ads/impl/n12;->i:Z

    if-eqz v2, :cond_0

    new-instance v2, Lcom/yandex/mobile/ads/impl/m12;

    iget v4, v0, Lcom/yandex/mobile/ads/impl/uh$a;->a:I

    iget v5, v0, Lcom/yandex/mobile/ads/impl/uh$a;->b:I

    iget v6, p0, Lcom/yandex/mobile/ads/impl/n12;->c:F

    iget v7, p0, Lcom/yandex/mobile/ads/impl/n12;->d:F

    iget v8, v1, Lcom/yandex/mobile/ads/impl/uh$a;->a:I

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Lcom/yandex/mobile/ads/impl/m12;-><init>(IIFFI)V

    iput-object v2, p0, Lcom/yandex/mobile/ads/impl/n12;->j:Lcom/yandex/mobile/ads/impl/m12;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/n12;->j:Lcom/yandex/mobile/ads/impl/m12;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/m12;->a()V

    :cond_1
    :goto_0
    sget-object v0, Lcom/yandex/mobile/ads/impl/uh;->a:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/n12;->m:Ljava/nio/ByteBuffer;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/yandex/mobile/ads/impl/n12;->n:J

    iput-wide v0, p0, Lcom/yandex/mobile/ads/impl/n12;->o:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yandex/mobile/ads/impl/n12;->p:Z

    return-void
.end method

.method public final isActive()Z
    .locals 3

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/n12;->f:Lcom/yandex/mobile/ads/impl/uh$a;

    iget v0, v0, Lcom/yandex/mobile/ads/impl/uh$a;->a:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/yandex/mobile/ads/impl/n12;->c:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v2, 0x38d1b717    # 1.0E-4f

    cmpl-float v0, v0, v2

    if-gez v0, :cond_0

    iget v0, p0, Lcom/yandex/mobile/ads/impl/n12;->d:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v2

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/n12;->f:Lcom/yandex/mobile/ads/impl/uh$a;

    iget v0, v0, Lcom/yandex/mobile/ads/impl/uh$a;->a:I

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/n12;->e:Lcom/yandex/mobile/ads/impl/uh$a;

    iget p0, p0, Lcom/yandex/mobile/ads/impl/uh$a;->a:I

    if-eq v0, p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
