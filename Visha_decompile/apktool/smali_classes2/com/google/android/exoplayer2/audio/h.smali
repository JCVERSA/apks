.class public Lcom/google/android/exoplayer2/audio/h;
.super Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;
.source "SourceFile"

# interfaces
.implements Lnd6;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/audio/h$b;
    }
.end annotation


# instance fields
.field public final H0:Landroid/content/Context;

.field public final I0:Lcom/google/android/exoplayer2/audio/b$a;

.field public final J0:Lcom/google/android/exoplayer2/audio/AudioSink;

.field public K0:I

.field public L0:Z

.field public M0:Lcom/google/android/exoplayer2/k;

.field public N0:J

.field public O0:Z

.field public P0:Z

.field public Q0:Z

.field public R0:Z

.field public S0:Lcom/google/android/exoplayer2/w$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/mediacodec/c$b;Lcom/google/android/exoplayer2/mediacodec/e;ZLandroid/os/Handler;Lcom/google/android/exoplayer2/audio/b;Lcom/google/android/exoplayer2/audio/AudioSink;)V
    .locals 6

    const/4 v1, 0x1

    const v5, 0x472c4400    # 44100.0f

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;-><init>(ILcom/google/android/exoplayer2/mediacodec/c$b;Lcom/google/android/exoplayer2/mediacodec/e;ZF)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/h;->H0:Landroid/content/Context;

    iput-object p7, p0, Lcom/google/android/exoplayer2/audio/h;->J0:Lcom/google/android/exoplayer2/audio/AudioSink;

    new-instance p1, Lcom/google/android/exoplayer2/audio/b$a;

    invoke-direct {p1, p5, p6}, Lcom/google/android/exoplayer2/audio/b$a;-><init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/audio/b;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/h;->I0:Lcom/google/android/exoplayer2/audio/b$a;

    new-instance p1, Lcom/google/android/exoplayer2/audio/h$b;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/google/android/exoplayer2/audio/h$b;-><init>(Lcom/google/android/exoplayer2/audio/h;Lcom/google/android/exoplayer2/audio/h$a;)V

    invoke-interface {p7, p1}, Lcom/google/android/exoplayer2/audio/AudioSink;->f(Lcom/google/android/exoplayer2/audio/AudioSink$a;)V

    return-void
.end method

.method public static synthetic V0(Lcom/google/android/exoplayer2/audio/h;)Lcom/google/android/exoplayer2/audio/b$a;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/audio/h;->I0:Lcom/google/android/exoplayer2/audio/b$a;

    return-object p0
.end method

.method public static synthetic W0(Lcom/google/android/exoplayer2/audio/h;)Lcom/google/android/exoplayer2/w$a;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/audio/h;->S0:Lcom/google/android/exoplayer2/w$a;

    return-object p0
.end method

.method public static X0(Ljava/lang/String;)Z
    .locals 2

    sget v0, Lblb;->a:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_1

    const-string v0, "OMX.SEC.aac.dec"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "samsung"

    sget-object v0, Lblb;->c:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lblb;->b:Ljava/lang/String;

    const-string/jumbo v0, "zeroflte"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "herolte"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "heroqlte"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static Y0()Z
    .locals 2

    sget v0, Lblb;->a:I

    const/16 v1, 0x17

    if-ne v0, v1, :cond_1

    sget-object v0, Lblb;->d:Ljava/lang/String;

    const-string v1, "ZTE B2017G"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "AXON 7 mini"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private Z0(Lcom/google/android/exoplayer2/mediacodec/d;Lcom/google/android/exoplayer2/k;)I
    .locals 1

    const-string v0, "OMX.google.raw.decoder"

    iget-object p1, p1, Lcom/google/android/exoplayer2/mediacodec/d;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget p1, Lblb;->a:I

    const/16 v0, 0x18

    if-ge p1, v0, :cond_1

    const/16 v0, 0x17

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/google/android/exoplayer2/audio/h;->H0:Landroid/content/Context;

    invoke-static {p0}, Lblb;->p0(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    const/4 p0, -0x1

    return p0

    :cond_1
    iget p0, p2, Lcom/google/android/exoplayer2/k;->n:I

    return p0
.end method

.method public static b1(Lcom/google/android/exoplayer2/mediacodec/e;Lcom/google/android/exoplayer2/k;ZLcom/google/android/exoplayer2/audio/AudioSink;)Ljava/util/List;
    .locals 1

    iget-object v0, p1, Lcom/google/android/exoplayer2/k;->m:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-interface {p3, p1}, Lcom/google/android/exoplayer2/audio/AudioSink;->a(Lcom/google/android/exoplayer2/k;)Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-static {}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->v()Lcom/google/android/exoplayer2/mediacodec/d;

    move-result-object p3

    if-eqz p3, :cond_1

    invoke-static {p3}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p3, 0x0

    invoke-interface {p0, v0, p2, p3}, Lcom/google/android/exoplayer2/mediacodec/e;->getDecoderInfos(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->m(Lcom/google/android/exoplayer2/k;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-interface {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/mediacodec/e;->getDecoderInfos(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object p0

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$a;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/common/collect/ImmutableList$a;->l(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList$a;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/common/collect/ImmutableList$a;->l(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList$a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableList$a;->n()Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public D0()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/h;->J0:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/audio/AudioSink;->playToEndOfStream()V
    :try_end_0
    .catch Lcom/google/android/exoplayer2/audio/AudioSink$WriteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-object v1, v0, Lcom/google/android/exoplayer2/audio/AudioSink$WriteException;->format:Lcom/google/android/exoplayer2/k;

    iget-boolean v2, v0, Lcom/google/android/exoplayer2/audio/AudioSink$WriteException;->isRecoverable:Z

    const/16 v3, 0x138a

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/android/exoplayer2/d;->g(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/k;ZI)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object p0

    throw p0
.end method

.method public P0(Lcom/google/android/exoplayer2/k;)Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/audio/h;->J0:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {p0, p1}, Lcom/google/android/exoplayer2/audio/AudioSink;->a(Lcom/google/android/exoplayer2/k;)Z

    move-result p0

    return p0
.end method

.method public Q0(Lcom/google/android/exoplayer2/mediacodec/e;Lcom/google/android/exoplayer2/k;)I
    .locals 10

    iget-object v0, p2, Lcom/google/android/exoplayer2/k;->m:Ljava/lang/String;

    invoke-static {v0}, Lqp6;->h(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lks8;->create(I)I

    move-result p0

    return p0

    :cond_0
    sget v0, Lblb;->a:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_1

    const/16 v0, 0x20

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    iget v2, p2, Lcom/google/android/exoplayer2/k;->F:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    move v2, v3

    goto :goto_1

    :cond_2
    move v2, v1

    :goto_1
    invoke-static {p2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->R0(Lcom/google/android/exoplayer2/k;)Z

    move-result v4

    const/16 v5, 0x8

    const/4 v6, 0x4

    if-eqz v4, :cond_4

    iget-object v7, p0, Lcom/google/android/exoplayer2/audio/h;->J0:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v7, p2}, Lcom/google/android/exoplayer2/audio/AudioSink;->a(Lcom/google/android/exoplayer2/k;)Z

    move-result v7

    if-eqz v7, :cond_4

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->v()Lcom/google/android/exoplayer2/mediacodec/d;

    move-result-object v2

    if-eqz v2, :cond_4

    :cond_3
    invoke-static {v6, v5, v0}, Lks8;->create(III)I

    move-result p0

    return p0

    :cond_4
    const-string v2, "audio/raw"

    iget-object v7, p2, Lcom/google/android/exoplayer2/k;->m:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/h;->J0:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v2, p2}, Lcom/google/android/exoplayer2/audio/AudioSink;->a(Lcom/google/android/exoplayer2/k;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {v3}, Lks8;->create(I)I

    move-result p0

    return p0

    :cond_5
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/h;->J0:Lcom/google/android/exoplayer2/audio/AudioSink;

    iget v7, p2, Lcom/google/android/exoplayer2/k;->z:I

    iget v8, p2, Lcom/google/android/exoplayer2/k;->A:I

    const/4 v9, 0x2

    invoke-static {v9, v7, v8}, Lblb;->W(III)Lcom/google/android/exoplayer2/k;

    move-result-object v7

    invoke-interface {v2, v7}, Lcom/google/android/exoplayer2/audio/AudioSink;->a(Lcom/google/android/exoplayer2/k;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-static {v3}, Lks8;->create(I)I

    move-result p0

    return p0

    :cond_6
    iget-object p0, p0, Lcom/google/android/exoplayer2/audio/h;->J0:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-static {p1, p2, v1, p0}, Lcom/google/android/exoplayer2/audio/h;->b1(Lcom/google/android/exoplayer2/mediacodec/e;Lcom/google/android/exoplayer2/k;ZLcom/google/android/exoplayer2/audio/AudioSink;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-static {v3}, Lks8;->create(I)I

    move-result p0

    return p0

    :cond_7
    if-nez v4, :cond_8

    invoke-static {v9}, Lks8;->create(I)I

    move-result p0

    return p0

    :cond_8
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/mediacodec/d;

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/mediacodec/d;->m(Lcom/google/android/exoplayer2/k;)Z

    move-result v2

    if-nez v2, :cond_a

    move v4, v3

    :goto_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v7

    if-ge v4, v7, :cond_a

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/exoplayer2/mediacodec/d;

    invoke-virtual {v7, p2}, Lcom/google/android/exoplayer2/mediacodec/d;->m(Lcom/google/android/exoplayer2/k;)Z

    move-result v8

    if-eqz v8, :cond_9

    move p0, v1

    move-object p1, v7

    goto :goto_3

    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_a
    move p0, v3

    move v3, v2

    :goto_3
    if-eqz v3, :cond_b

    goto :goto_4

    :cond_b
    const/4 v6, 0x3

    :goto_4
    if-eqz v3, :cond_c

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/mediacodec/d;->p(Lcom/google/android/exoplayer2/k;)Z

    move-result p2

    if-eqz p2, :cond_c

    const/16 v5, 0x10

    :cond_c
    iget-boolean p1, p1, Lcom/google/android/exoplayer2/mediacodec/d;->h:Z

    if-eqz p1, :cond_d

    const/16 p1, 0x40

    goto :goto_5

    :cond_d
    move p1, v1

    :goto_5
    if-eqz p0, :cond_e

    const/16 v1, 0x80

    :cond_e
    invoke-static {v6, v5, v0, p1, v1}, Lks8;->create(IIIII)I

    move-result p0

    return p0
.end method

.method public Y(FLcom/google/android/exoplayer2/k;[Lcom/google/android/exoplayer2/k;)F
    .locals 3

    array-length p0, p3

    const/4 p2, -0x1

    const/4 v0, 0x0

    move v1, p2

    :goto_0
    if-ge v0, p0, :cond_1

    aget-object v2, p3, v0

    iget v2, v2, Lcom/google/android/exoplayer2/k;->A:I

    if-eq v2, p2, :cond_0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-ne v1, p2, :cond_2

    const/high16 p0, -0x40800000    # -1.0f

    goto :goto_1

    :cond_2
    int-to-float p0, v1

    mul-float/2addr p0, p1

    :goto_1
    return p0
.end method

.method public a0(Lcom/google/android/exoplayer2/mediacodec/e;Lcom/google/android/exoplayer2/k;Z)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/audio/h;->J0:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-static {p1, p2, p3, p0}, Lcom/google/android/exoplayer2/audio/h;->b1(Lcom/google/android/exoplayer2/mediacodec/e;Lcom/google/android/exoplayer2/k;ZLcom/google/android/exoplayer2/audio/AudioSink;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->u(Ljava/util/List;Lcom/google/android/exoplayer2/k;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public a1(Lcom/google/android/exoplayer2/mediacodec/d;Lcom/google/android/exoplayer2/k;[Lcom/google/android/exoplayer2/k;)I
    .locals 5

    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/audio/h;->Z0(Lcom/google/android/exoplayer2/mediacodec/d;Lcom/google/android/exoplayer2/k;)I

    move-result v0

    array-length v1, p3

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    return v0

    :cond_0
    array-length v1, p3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p3, v2

    invoke-virtual {p1, p2, v3}, Lcom/google/android/exoplayer2/mediacodec/d;->e(Lcom/google/android/exoplayer2/k;Lcom/google/android/exoplayer2/k;)Llu1;

    move-result-object v4

    iget v4, v4, Llu1;->d:I

    if-eqz v4, :cond_1

    invoke-direct {p0, p1, v3}, Lcom/google/android/exoplayer2/audio/h;->Z0(Lcom/google/android/exoplayer2/mediacodec/d;Lcom/google/android/exoplayer2/k;)I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public b(Lcom/google/android/exoplayer2/s;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/audio/h;->J0:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {p0, p1}, Lcom/google/android/exoplayer2/audio/AudioSink;->b(Lcom/google/android/exoplayer2/s;)V

    return-void
.end method

.method public c0(Lcom/google/android/exoplayer2/mediacodec/d;Lcom/google/android/exoplayer2/k;Landroid/media/MediaCrypto;F)Lcom/google/android/exoplayer2/mediacodec/c$a;
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/d;->l()[Lcom/google/android/exoplayer2/k;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/audio/h;->a1(Lcom/google/android/exoplayer2/mediacodec/d;Lcom/google/android/exoplayer2/k;[Lcom/google/android/exoplayer2/k;)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/audio/h;->K0:I

    iget-object v0, p1, Lcom/google/android/exoplayer2/mediacodec/d;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/exoplayer2/audio/h;->X0(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/h;->L0:Z

    iget-object v0, p1, Lcom/google/android/exoplayer2/mediacodec/d;->c:Ljava/lang/String;

    iget v1, p0, Lcom/google/android/exoplayer2/audio/h;->K0:I

    invoke-virtual {p0, p2, v0, v1, p4}, Lcom/google/android/exoplayer2/audio/h;->c1(Lcom/google/android/exoplayer2/k;Ljava/lang/String;IF)Landroid/media/MediaFormat;

    move-result-object p4

    iget-object v0, p1, Lcom/google/android/exoplayer2/mediacodec/d;->b:Ljava/lang/String;

    const-string v1, "audio/raw"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/google/android/exoplayer2/k;->m:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, p2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/h;->M0:Lcom/google/android/exoplayer2/k;

    invoke-static {p1, p4, p2, p3}, Lcom/google/android/exoplayer2/mediacodec/c$a;->a(Lcom/google/android/exoplayer2/mediacodec/d;Landroid/media/MediaFormat;Lcom/google/android/exoplayer2/k;Landroid/media/MediaCrypto;)Lcom/google/android/exoplayer2/mediacodec/c$a;

    move-result-object p0

    return-object p0
.end method

.method public c1(Lcom/google/android/exoplayer2/k;Ljava/lang/String;IF)Landroid/media/MediaFormat;
    .locals 2

    new-instance v0, Landroid/media/MediaFormat;

    invoke-direct {v0}, Landroid/media/MediaFormat;-><init>()V

    const-string v1, "mime"

    invoke-virtual {v0, v1, p2}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    iget p2, p1, Lcom/google/android/exoplayer2/k;->z:I

    const-string v1, "channel-count"

    invoke-virtual {v0, v1, p2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string p2, "sample-rate"

    iget v1, p1, Lcom/google/android/exoplayer2/k;->A:I

    invoke-virtual {v0, p2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    iget-object p2, p1, Lcom/google/android/exoplayer2/k;->o:Ljava/util/List;

    invoke-static {v0, p2}, Lwf6;->e(Landroid/media/MediaFormat;Ljava/util/List;)V

    const-string p2, "max-input-size"

    invoke-static {v0, p2, p3}, Lwf6;->d(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    sget p2, Lblb;->a:I

    const/16 p3, 0x17

    if-lt p2, p3, :cond_0

    const-string p3, "priority"

    const/4 v1, 0x0

    invoke-virtual {v0, p3, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const/high16 p3, -0x40800000    # -1.0f

    cmpl-float p3, p4, p3

    if-eqz p3, :cond_0

    invoke-static {}, Lcom/google/android/exoplayer2/audio/h;->Y0()Z

    move-result p3

    if-nez p3, :cond_0

    const-string p3, "operating-rate"

    invoke-virtual {v0, p3, p4}, Landroid/media/MediaFormat;->setFloat(Ljava/lang/String;F)V

    :cond_0
    const/16 p3, 0x1c

    if-gt p2, p3, :cond_1

    const-string p3, "audio/ac4"

    iget-object p4, p1, Lcom/google/android/exoplayer2/k;->m:Ljava/lang/String;

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    const-string p3, "ac4-is-sync"

    const/4 p4, 0x1

    invoke-virtual {v0, p3, p4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_1
    const/16 p3, 0x18

    if-lt p2, p3, :cond_2

    iget-object p0, p0, Lcom/google/android/exoplayer2/audio/h;->J0:Lcom/google/android/exoplayer2/audio/AudioSink;

    iget p3, p1, Lcom/google/android/exoplayer2/k;->z:I

    iget p1, p1, Lcom/google/android/exoplayer2/k;->A:I

    const/4 p4, 0x4

    invoke-static {p4, p3, p1}, Lblb;->W(III)Lcom/google/android/exoplayer2/k;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/google/android/exoplayer2/audio/AudioSink;->g(Lcom/google/android/exoplayer2/k;)I

    move-result p0

    const/4 p1, 0x2

    if-ne p0, p1, :cond_2

    const-string p0, "pcm-encoding"

    invoke-virtual {v0, p0, p4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_2
    const/16 p0, 0x20

    if-lt p2, p0, :cond_3

    const-string p0, "max-output-channel-count"

    const/16 p1, 0x63

    invoke-virtual {v0, p0, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_3
    return-object v0
.end method

.method public d1()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/h;->P0:Z

    return-void
.end method

.method public final e1()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/h;->J0:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/h;->isEnded()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/audio/AudioSink;->getCurrentPositionUs(Z)J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/audio/h;->P0:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v2, p0, Lcom/google/android/exoplayer2/audio/h;->N0:J

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    :goto_0
    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/h;->N0:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/h;->P0:Z

    :cond_1
    return-void
.end method

.method public getMediaClock()Lnd6;
    .locals 0

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    const-string p0, "MediaCodecAudioRenderer"

    return-object p0
.end method

.method public getPlaybackParameters()Lcom/google/android/exoplayer2/s;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/audio/h;->J0:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {p0}, Lcom/google/android/exoplayer2/audio/AudioSink;->getPlaybackParameters()Lcom/google/android/exoplayer2/s;

    move-result-object p0

    return-object p0
.end method

.method public getPositionUs()J
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/d;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/h;->e1()V

    :cond_0
    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/h;->N0:J

    return-wide v0
.end method

.method public handleMessage(ILjava/lang/Object;)V
    .locals 1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2}, Lcom/google/android/exoplayer2/d;->handleMessage(ILjava/lang/Object;)V

    goto :goto_0

    :pswitch_0
    check-cast p2, Lcom/google/android/exoplayer2/w$a;

    iput-object p2, p0, Lcom/google/android/exoplayer2/audio/h;->S0:Lcom/google/android/exoplayer2/w$a;

    goto :goto_0

    :pswitch_1
    iget-object p0, p0, Lcom/google/android/exoplayer2/audio/h;->J0:Lcom/google/android/exoplayer2/audio/AudioSink;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/google/android/exoplayer2/audio/AudioSink;->setAudioSessionId(I)V

    goto :goto_0

    :pswitch_2
    iget-object p0, p0, Lcom/google/android/exoplayer2/audio/h;->J0:Lcom/google/android/exoplayer2/audio/AudioSink;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {p0, p1}, Lcom/google/android/exoplayer2/audio/AudioSink;->setSkipSilenceEnabled(Z)V

    goto :goto_0

    :cond_0
    check-cast p2, Lq30;

    iget-object p0, p0, Lcom/google/android/exoplayer2/audio/h;->J0:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {p0, p2}, Lcom/google/android/exoplayer2/audio/AudioSink;->e(Lq30;)V

    goto :goto_0

    :cond_1
    check-cast p2, Lcom/google/android/exoplayer2/audio/a;

    iget-object p0, p0, Lcom/google/android/exoplayer2/audio/h;->J0:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {p0, p2}, Lcom/google/android/exoplayer2/audio/AudioSink;->c(Lcom/google/android/exoplayer2/audio/a;)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/google/android/exoplayer2/audio/h;->J0:Lcom/google/android/exoplayer2/audio/AudioSink;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-interface {p0, p1}, Lcom/google/android/exoplayer2/audio/AudioSink;->setVolume(F)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isEnded()Z
    .locals 1

    invoke-super {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->isEnded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/exoplayer2/audio/h;->J0:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {p0}, Lcom/google/android/exoplayer2/audio/AudioSink;->isEnded()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isReady()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/h;->J0:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/audio/AudioSink;->hasPendingData()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->isReady()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public n()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/h;->Q0:Z

    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/h;->J0:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/audio/AudioSink;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-super {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->n()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/h;->I0:Lcom/google/android/exoplayer2/audio/b$a;

    iget-object p0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->C0:Lju1;

    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/audio/b$a;->o(Lju1;)V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/h;->I0:Lcom/google/android/exoplayer2/audio/b$a;

    iget-object p0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->C0:Lju1;

    invoke-virtual {v1, p0}, Lcom/google/android/exoplayer2/audio/b$a;->o(Lju1;)V

    throw v0

    :catchall_1
    move-exception v0

    :try_start_2
    invoke-super {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->n()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/h;->I0:Lcom/google/android/exoplayer2/audio/b$a;

    iget-object p0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->C0:Lju1;

    invoke-virtual {v1, p0}, Lcom/google/android/exoplayer2/audio/b$a;->o(Lju1;)V

    throw v0

    :catchall_2
    move-exception v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/h;->I0:Lcom/google/android/exoplayer2/audio/b$a;

    iget-object p0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->C0:Lju1;

    invoke-virtual {v1, p0}, Lcom/google/android/exoplayer2/audio/b$a;->o(Lju1;)V

    throw v0
.end method

.method public o(ZZ)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->o(ZZ)V

    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/h;->I0:Lcom/google/android/exoplayer2/audio/b$a;

    iget-object p2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->C0:Lju1;

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/audio/b$a;->p(Lju1;)V

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/d;->h()Lls8;

    move-result-object p1

    iget-boolean p1, p1, Lls8;->a:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/h;->J0:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/audio/AudioSink;->enableTunnelingV21()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/h;->J0:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/audio/AudioSink;->disableTunneling()V

    :goto_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/h;->J0:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/d;->k()Lta8;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/audio/AudioSink;->h(Lta8;)V

    return-void
.end method

.method public p(JZ)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->p(JZ)V

    iget-boolean p3, p0, Lcom/google/android/exoplayer2/audio/h;->R0:Z

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/google/android/exoplayer2/audio/h;->J0:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {p3}, Lcom/google/android/exoplayer2/audio/AudioSink;->d()V

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lcom/google/android/exoplayer2/audio/h;->J0:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {p3}, Lcom/google/android/exoplayer2/audio/AudioSink;->flush()V

    :goto_0
    iput-wide p1, p0, Lcom/google/android/exoplayer2/audio/h;->N0:J

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/audio/h;->O0:Z

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/audio/h;->P0:Z

    return-void
.end method

.method public p0(Ljava/lang/Exception;)V
    .locals 2

    const-string v0, "MediaCodecAudioRenderer"

    const-string v1, "Audio codec error"

    invoke-static {v0, v1, p1}, Lop5;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p0, p0, Lcom/google/android/exoplayer2/audio/h;->I0:Lcom/google/android/exoplayer2/audio/b$a;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/audio/b$a;->k(Ljava/lang/Exception;)V

    return-void
.end method

.method public q()V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-super {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->q()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/audio/h;->Q0:Z

    if-eqz v1, :cond_0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/h;->Q0:Z

    iget-object p0, p0, Lcom/google/android/exoplayer2/audio/h;->J0:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {p0}, Lcom/google/android/exoplayer2/audio/AudioSink;->reset()V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/audio/h;->Q0:Z

    if-eqz v2, :cond_1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/h;->Q0:Z

    iget-object p0, p0, Lcom/google/android/exoplayer2/audio/h;->J0:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {p0}, Lcom/google/android/exoplayer2/audio/AudioSink;->reset()V

    :cond_1
    throw v1
.end method

.method public q0(Ljava/lang/String;Lcom/google/android/exoplayer2/mediacodec/c$a;JJ)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/h;->I0:Lcom/google/android/exoplayer2/audio/b$a;

    move-object v1, p1

    move-wide v2, p3

    move-wide v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/audio/b$a;->m(Ljava/lang/String;JJ)V

    return-void
.end method

.method public r()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->r()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/audio/h;->J0:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {p0}, Lcom/google/android/exoplayer2/audio/AudioSink;->play()V

    return-void
.end method

.method public r0(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/audio/h;->I0:Lcom/google/android/exoplayer2/audio/b$a;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/audio/b$a;->n(Ljava/lang/String;)V

    return-void
.end method

.method public s()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/h;->e1()V

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/h;->J0:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/audio/AudioSink;->pause()V

    invoke-super {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->s()V

    return-void
.end method

.method public s0(Lo44;)Llu1;
    .locals 1

    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->s0(Lo44;)Llu1;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/exoplayer2/audio/h;->I0:Lcom/google/android/exoplayer2/audio/b$a;

    iget-object p1, p1, Lo44;->b:Lcom/google/android/exoplayer2/k;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplayer2/audio/b$a;->q(Lcom/google/android/exoplayer2/k;Llu1;)V

    return-object v0
.end method

.method public t0(Lcom/google/android/exoplayer2/k;Landroid/media/MediaFormat;)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/h;->M0:Lcom/google/android/exoplayer2/k;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move-object p1, v0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->V()Lcom/google/android/exoplayer2/mediacodec/c;

    move-result-object v0

    if-nez v0, :cond_1

    goto/16 :goto_2

    :cond_1
    iget-object v0, p1, Lcom/google/android/exoplayer2/k;->m:Ljava/lang/String;

    const-string v3, "audio/raw"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p1, Lcom/google/android/exoplayer2/k;->B:I

    goto :goto_0

    :cond_2
    sget v0, Lblb;->a:I

    const/16 v4, 0x18

    if-lt v0, v4, :cond_3

    const-string v0, "pcm-encoding"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "v-bits-per-sample"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lblb;->V(I)I

    move-result v0

    goto :goto_0

    :cond_4
    const/4 v0, 0x2

    :goto_0
    new-instance v4, Lcom/google/android/exoplayer2/k$b;

    invoke-direct {v4}, Lcom/google/android/exoplayer2/k$b;-><init>()V

    invoke-virtual {v4, v3}, Lcom/google/android/exoplayer2/k$b;->e0(Ljava/lang/String;)Lcom/google/android/exoplayer2/k$b;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/exoplayer2/k$b;->Y(I)Lcom/google/android/exoplayer2/k$b;

    move-result-object v0

    iget v3, p1, Lcom/google/android/exoplayer2/k;->C:I

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/k$b;->N(I)Lcom/google/android/exoplayer2/k$b;

    move-result-object v0

    iget v3, p1, Lcom/google/android/exoplayer2/k;->D:I

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/k$b;->O(I)Lcom/google/android/exoplayer2/k$b;

    move-result-object v0

    const-string v3, "channel-count"

    invoke-virtual {p2, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/k$b;->H(I)Lcom/google/android/exoplayer2/k$b;

    move-result-object v0

    const-string v3, "sample-rate"

    invoke-virtual {p2, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/google/android/exoplayer2/k$b;->f0(I)Lcom/google/android/exoplayer2/k$b;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/k$b;->E()Lcom/google/android/exoplayer2/k;

    move-result-object p2

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/h;->L0:Z

    if-eqz v0, :cond_5

    iget v0, p2, Lcom/google/android/exoplayer2/k;->z:I

    const/4 v3, 0x6

    if-ne v0, v3, :cond_5

    iget v0, p1, Lcom/google/android/exoplayer2/k;->z:I

    if-ge v0, v3, :cond_5

    new-array v2, v0, [I

    move v0, v1

    :goto_1
    iget v3, p1, Lcom/google/android/exoplayer2/k;->z:I

    if-ge v0, v3, :cond_5

    aput v0, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    move-object p1, p2

    :goto_2
    :try_start_0
    iget-object p2, p0, Lcom/google/android/exoplayer2/audio/h;->J0:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {p2, p1, v1, v2}, Lcom/google/android/exoplayer2/audio/AudioSink;->i(Lcom/google/android/exoplayer2/k;I[I)V
    :try_end_0
    .catch Lcom/google/android/exoplayer2/audio/AudioSink$ConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object p2, p1, Lcom/google/android/exoplayer2/audio/AudioSink$ConfigurationException;->format:Lcom/google/android/exoplayer2/k;

    const/16 v0, 0x1389

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/d;->f(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/k;I)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object p0

    throw p0
.end method

.method public v0()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->v0()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/audio/h;->J0:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {p0}, Lcom/google/android/exoplayer2/audio/AudioSink;->handleDiscontinuity()V

    return-void
.end method

.method public w0(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;)V
    .locals 4

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/h;->O0:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lwk0;->g()Z

    move-result v0

    if-nez v0, :cond_1

    iget-wide v0, p1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->f:J

    iget-wide v2, p0, Lcom/google/android/exoplayer2/audio/h;->N0:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/32 v2, 0x7a120

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-wide v0, p1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->f:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/h;->N0:J

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/audio/h;->O0:Z

    :cond_1
    return-void
.end method

.method public y0(JJLcom/google/android/exoplayer2/mediacodec/c;Ljava/nio/ByteBuffer;IIIJZZLcom/google/android/exoplayer2/k;)Z
    .locals 0

    invoke-static {p6}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/h;->M0:Lcom/google/android/exoplayer2/k;

    const/4 p2, 0x1

    const/4 p3, 0x0

    if-eqz p1, :cond_0

    and-int/lit8 p1, p8, 0x2

    if-eqz p1, :cond_0

    invoke-static {p5}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/exoplayer2/mediacodec/c;

    invoke-interface {p0, p7, p3}, Lcom/google/android/exoplayer2/mediacodec/c;->releaseOutputBuffer(IZ)V

    return p2

    :cond_0
    if-eqz p12, :cond_2

    if-eqz p5, :cond_1

    invoke-interface {p5, p7, p3}, Lcom/google/android/exoplayer2/mediacodec/c;->releaseOutputBuffer(IZ)V

    :cond_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->C0:Lju1;

    iget p3, p1, Lju1;->f:I

    add-int/2addr p3, p9

    iput p3, p1, Lju1;->f:I

    iget-object p0, p0, Lcom/google/android/exoplayer2/audio/h;->J0:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {p0}, Lcom/google/android/exoplayer2/audio/AudioSink;->handleDiscontinuity()V

    return p2

    :cond_2
    :try_start_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/h;->J0:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {p1, p6, p10, p11, p9}, Lcom/google/android/exoplayer2/audio/AudioSink;->handleBuffer(Ljava/nio/ByteBuffer;JI)Z

    move-result p1
    :try_end_0
    .catch Lcom/google/android/exoplayer2/audio/AudioSink$InitializationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/exoplayer2/audio/AudioSink$WriteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_4

    if-eqz p5, :cond_3

    invoke-interface {p5, p7, p3}, Lcom/google/android/exoplayer2/mediacodec/c;->releaseOutputBuffer(IZ)V

    :cond_3
    iget-object p0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->C0:Lju1;

    iget p1, p0, Lju1;->e:I

    add-int/2addr p1, p9

    iput p1, p0, Lju1;->e:I

    return p2

    :cond_4
    return p3

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    :goto_0
    iget-boolean p2, p1, Lcom/google/android/exoplayer2/audio/AudioSink$WriteException;->isRecoverable:Z

    const/16 p3, 0x138a

    invoke-virtual {p0, p1, p14, p2, p3}, Lcom/google/android/exoplayer2/d;->g(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/k;ZI)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object p0

    throw p0

    :goto_1
    iget-object p2, p1, Lcom/google/android/exoplayer2/audio/AudioSink$InitializationException;->format:Lcom/google/android/exoplayer2/k;

    iget-boolean p3, p1, Lcom/google/android/exoplayer2/audio/AudioSink$InitializationException;->isRecoverable:Z

    const/16 p4, 0x1389

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/d;->g(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/k;ZI)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object p0

    throw p0
.end method

.method public z(Lcom/google/android/exoplayer2/mediacodec/d;Lcom/google/android/exoplayer2/k;Lcom/google/android/exoplayer2/k;)Llu1;
    .locals 8

    invoke-virtual {p1, p2, p3}, Lcom/google/android/exoplayer2/mediacodec/d;->e(Lcom/google/android/exoplayer2/k;Lcom/google/android/exoplayer2/k;)Llu1;

    move-result-object v0

    iget v1, v0, Llu1;->e:I

    invoke-direct {p0, p1, p3}, Lcom/google/android/exoplayer2/audio/h;->Z0(Lcom/google/android/exoplayer2/mediacodec/d;Lcom/google/android/exoplayer2/k;)I

    move-result v2

    iget p0, p0, Lcom/google/android/exoplayer2/audio/h;->K0:I

    if-le v2, p0, :cond_0

    or-int/lit8 v1, v1, 0x40

    :cond_0
    move v7, v1

    new-instance p0, Llu1;

    iget-object v3, p1, Lcom/google/android/exoplayer2/mediacodec/d;->a:Ljava/lang/String;

    if-eqz v7, :cond_1

    const/4 p1, 0x0

    :goto_0
    move v6, p1

    goto :goto_1

    :cond_1
    iget p1, v0, Llu1;->d:I

    goto :goto_0

    :goto_1
    move-object v2, p0

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v2 .. v7}, Llu1;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/k;Lcom/google/android/exoplayer2/k;II)V

    return-object p0
.end method
