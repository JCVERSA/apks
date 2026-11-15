.class public abstract Lflj;
.super La1j;
.source "SourceFile"


# static fields
.field public static final A0:[B


# instance fields
.field public final A:Ljava/util/ArrayDeque;

.field public final B:Lejj;

.field public C:Lerj;

.field public D:Lerj;

.field public E:Lw9j;

.field public F:Landroid/media/MediaCrypto;

.field public G:J

.field public H:F

.field public I:F

.field public J:Lrkj;

.field public K:Lerj;

.field public L:Landroid/media/MediaFormat;

.field public M:Z

.field public N:F

.field public O:Ljava/util/ArrayDeque;

.field public P:Lcom/google/android/gms/internal/ads/zztc;

.field public Q:Ltkj;

.field public R:I

.field public S:Z

.field public T:Z

.field public U:Z

.field public V:Z

.field public W:Z

.field public X:J

.field public Y:J

.field public Z:I

.field public a0:I

.field public b0:Ljava/nio/ByteBuffer;

.field public c0:Z

.field public d0:Z

.field public e0:Z

.field public f0:Z

.field public g0:Z

.field public h0:Z

.field public i0:I

.field public j0:I

.field public k0:I

.field public l0:Z

.field public m0:Z

.field public n0:Z

.field public o0:J

.field public p0:J

.field public q0:Z

.field public r0:Z

.field public final s:Lpkj;

.field public s0:Z

.field public final t:Lhlj;

.field public t0:Ld1j;

.field public final u:F

.field public u0:Ldlj;

.field public final v:Lxzi;

.field public v0:J

.field public final w:Lxzi;

.field public w0:Z

.field public final x:Lxzi;

.field public x0:Z

.field public final y:Likj;

.field public y0:Lpjj;

.field public final z:Landroid/media/MediaCodec$BufferInfo;

.field public z0:Lpjj;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x26

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lflj;->A0:[B

    return-void

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x1t
        0x67t
        0x42t
        -0x40t
        0xbt
        -0x26t
        0x25t
        -0x70t
        0x0t
        0x0t
        0x1t
        0x68t
        -0x32t
        0xft
        0x13t
        0x20t
        0x0t
        0x0t
        0x1t
        0x65t
        -0x78t
        -0x7ct
        0xdt
        -0x32t
        0x71t
        0x18t
        -0x60t
        0x0t
        0x2ft
        -0x41t
        0x1ct
        0x31t
        -0x3dt
        0x27t
        0x5dt
        0x78t
    .end array-data
.end method

.method public constructor <init>(ILpkj;Lhlj;ZF)V
    .locals 0

    invoke-direct {p0, p1}, La1j;-><init>(I)V

    iput-object p2, p0, Lflj;->s:Lpkj;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p3, p0, Lflj;->t:Lhlj;

    iput p5, p0, Lflj;->u:F

    new-instance p1, Lxzi;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p2}, Lxzi;-><init>(II)V

    iput-object p1, p0, Lflj;->v:Lxzi;

    new-instance p1, Lxzi;

    invoke-direct {p1, p2, p2}, Lxzi;-><init>(II)V

    iput-object p1, p0, Lflj;->w:Lxzi;

    new-instance p1, Lxzi;

    const/4 p3, 0x2

    invoke-direct {p1, p3, p2}, Lxzi;-><init>(II)V

    iput-object p1, p0, Lflj;->x:Lxzi;

    new-instance p1, Likj;

    invoke-direct {p1}, Likj;-><init>()V

    iput-object p1, p0, Lflj;->y:Likj;

    new-instance p3, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {p3}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object p3, p0, Lflj;->z:Landroid/media/MediaCodec$BufferInfo;

    const/high16 p3, 0x3f800000    # 1.0f

    iput p3, p0, Lflj;->H:F

    iput p3, p0, Lflj;->I:F

    const-wide p3, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p3, p0, Lflj;->G:J

    new-instance p5, Ljava/util/ArrayDeque;

    invoke-direct {p5}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p5, p0, Lflj;->A:Ljava/util/ArrayDeque;

    sget-object p5, Ldlj;->e:Ldlj;

    iput-object p5, p0, Lflj;->u0:Ldlj;

    invoke-virtual {p1, p2}, Lxzi;->j(I)V

    iget-object p1, p1, Lxzi;->d:Ljava/nio/ByteBuffer;

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object p5

    invoke-virtual {p1, p5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    new-instance p1, Lejj;

    invoke-direct {p1}, Lejj;-><init>()V

    iput-object p1, p0, Lflj;->B:Lejj;

    const/high16 p1, -0x40800000    # -1.0f

    iput p1, p0, Lflj;->N:F

    iput p2, p0, Lflj;->R:I

    iput p2, p0, Lflj;->i0:I

    const/4 p1, -0x1

    iput p1, p0, Lflj;->Z:I

    iput p1, p0, Lflj;->a0:I

    iput-wide p3, p0, Lflj;->Y:J

    iput-wide p3, p0, Lflj;->o0:J

    iput-wide p3, p0, Lflj;->p0:J

    iput-wide p3, p0, Lflj;->v0:J

    iput-wide p3, p0, Lflj;->X:J

    iput p2, p0, Lflj;->j0:I

    iput p2, p0, Lflj;->k0:I

    new-instance p1, Ld1j;

    invoke-direct {p1}, Ld1j;-><init>()V

    iput-object p1, p0, Lflj;->t0:Ld1j;

    return-void
.end method

.method public static bridge synthetic I0(Lflj;)Lw9j;
    .locals 0

    iget-object p0, p0, Lflj;->E:Lw9j;

    return-object p0
.end method

.method public static b0(Lerj;)Z
    .locals 0

    iget p0, p0, Lerj;->L:I

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private final e0()V
    .locals 1

    iget-object v0, p0, Lflj;->z0:Lpjj;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, p0, Lflj;->y0:Lpjj;

    const/4 v0, 0x0

    iput v0, p0, Lflj;->j0:I

    iput v0, p0, Lflj;->k0:I

    return-void
.end method

.method private final z0()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lflj;->Z:I

    iget-object p0, p0, Lflj;->w:Lxzi;

    const/4 v0, 0x0

    iput-object v0, p0, Lxzi;->d:Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public abstract A0()V
.end method

.method public abstract B0()V
.end method

.method public abstract C0(JJLrkj;Ljava/nio/ByteBuffer;IIIJZZLerj;)Z
.end method

.method public D0(Lerj;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final E0()F
    .locals 0

    iget p0, p0, Lflj;->H:F

    return p0
.end method

.method public F0(Lxzi;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final G0()J
    .locals 2

    iget-object p0, p0, Lflj;->u0:Ldlj;

    iget-wide v0, p0, Ldlj;->c:J

    return-wide v0
.end method

.method public H()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lflj;->C:Lerj;

    sget-object v0, Ldlj;->e:Ldlj;

    invoke-virtual {p0, v0}, Lflj;->d0(Ldlj;)V

    iget-object v0, p0, Lflj;->A:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    invoke-virtual {p0}, Lflj;->V()Z

    return-void
.end method

.method public final H0()J
    .locals 2

    iget-object p0, p0, Lflj;->u0:Ldlj;

    iget-wide v0, p0, Ldlj;->b:J

    return-wide v0
.end method

.method public I(ZZ)V
    .locals 0

    new-instance p1, Ld1j;

    invoke-direct {p1}, Ld1j;-><init>()V

    iput-object p1, p0, Lflj;->t0:Ld1j;

    return-void
.end method

.method public J(JZ)V
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lflj;->q0:Z

    iput-boolean p1, p0, Lflj;->r0:Z

    iget-boolean p2, p0, Lflj;->e0:Z

    if-eqz p2, :cond_0

    iget-object p2, p0, Lflj;->y:Likj;

    invoke-virtual {p2}, Lezi;->b()V

    iget-object p2, p0, Lflj;->x:Lxzi;

    invoke-virtual {p2}, Lezi;->b()V

    iput-boolean p1, p0, Lflj;->f0:Z

    iget-object p1, p0, Lflj;->B:Lejj;

    invoke-virtual {p1}, Lejj;->b()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lflj;->U()Z

    :goto_0
    iget-object p1, p0, Lflj;->u0:Ldlj;

    iget-object p1, p1, Ldlj;->d:Ldbh;

    invoke-virtual {p1}, Ldbh;->a()I

    move-result p2

    if-lez p2, :cond_1

    const/4 p2, 0x1

    iput-boolean p2, p0, Lflj;->s0:Z

    :cond_1
    invoke-virtual {p1}, Ldbh;->e()V

    iget-object p0, p0, Lflj;->A:Ljava/util/ArrayDeque;

    invoke-virtual {p0}, Ljava/util/ArrayDeque;->clear()V

    return-void
.end method

.method public final J0()Lw9j;
    .locals 0

    iget-object p0, p0, Lflj;->E:Lw9j;

    return-object p0
.end method

.method public abstract K(FLerj;[Lerj;)F
.end method

.method public final K0()Lrkj;
    .locals 0

    iget-object p0, p0, Lflj;->J:Lrkj;

    return-object p0
.end method

.method public L(Ljava/lang/Throwable;Ltkj;)Lcom/google/android/gms/internal/ads/zzsy;
    .locals 0

    new-instance p0, Lcom/google/android/gms/internal/ads/zzsy;

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzsy;-><init>(Ljava/lang/Throwable;Ltkj;)V

    return-object p0
.end method

.method public final M()Ltkj;
    .locals 0

    iget-object p0, p0, Lflj;->Q:Ltkj;

    return-object p0
.end method

.method public final N()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lflj;->x0:Z

    return-void
.end method

.method public final O()V
    .locals 28

    move-object/from16 v8, p0

    const/16 v10, 0x20

    const/4 v12, 0x1

    const-string v13, "MediaCodecRenderer"

    iget-object v0, v8, Lflj;->J:Lrkj;

    if-nez v0, :cond_4d

    iget-boolean v0, v8, Lflj;->e0:Z

    if-nez v0, :cond_4d

    iget-object v14, v8, Lflj;->C:Lerj;

    if-nez v14, :cond_0

    goto/16 :goto_22

    :cond_0
    invoke-virtual {v8, v14}, Lflj;->X(Lerj;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual/range {p0 .. p0}, Lflj;->o0()V

    iget-object v0, v14, Lerj;->o:Ljava/lang/String;

    const-string v1, "audio/mp4a-latm"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "audio/mpeg"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "audio/opus"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, v8, Lflj;->y:Likj;

    invoke-virtual {v0, v12}, Likj;->p(I)V

    goto :goto_0

    :cond_1
    iget-object v0, v8, Lflj;->y:Likj;

    invoke-virtual {v0, v10}, Likj;->p(I)V

    :goto_0
    iput-boolean v12, v8, Lflj;->e0:Z

    return-void

    :cond_2
    iget-object v0, v8, Lflj;->z0:Lpjj;

    iput-object v0, v8, Lflj;->y0:Lpjj;

    if-eqz v0, :cond_3

    invoke-static {v12}, Ln7g;->f(Z)V

    iget-object v0, v8, Lflj;->y0:Lpjj;

    sget-boolean v1, Lxjj;->a:Z

    invoke-virtual {v0}, Lpjj;->a()Lcom/google/android/gms/internal/ads/zzrr;

    :cond_3
    const/4 v15, 0x0

    :try_start_0
    iget-object v6, v8, Lflj;->C:Lerj;

    const/4 v7, 0x0

    if-eqz v6, :cond_4c

    iget-object v0, v8, Lflj;->O:Ljava/util/ArrayDeque;
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zztc; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_5

    :try_start_1
    iget-object v0, v8, Lflj;->t:Lhlj;

    invoke-virtual {v8, v0, v6, v15}, Lflj;->r0(Lhlj;Lerj;Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v1, v8, Lflj;->O:Ljava/util/ArrayDeque;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, v8, Lflj;->O:Ljava/util/ArrayDeque;

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltkj;

    invoke-virtual {v1, v0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catch_0
    move-exception v0

    move-object/from16 v21, v14

    goto/16 :goto_21

    :catch_1
    move-exception v0

    goto :goto_2

    :cond_4
    :goto_1
    iput-object v7, v8, Lflj;->P:Lcom/google/android/gms/internal/ads/zztc;
    :try_end_1
    .catch Lcom/google/android/gms/internal/ads/zztn; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/google/android/gms/internal/ads/zztc; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :goto_2
    :try_start_2
    new-instance v1, Lcom/google/android/gms/internal/ads/zztc;

    const v2, -0xc34e

    invoke-direct {v1, v6, v0, v15, v2}, Lcom/google/android/gms/internal/ads/zztc;-><init>(Lerj;Ljava/lang/Throwable;ZI)V

    throw v1

    :cond_5
    :goto_3
    iget-object v0, v8, Lflj;->O:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4b

    iget-object v4, v8, Lflj;->O:Ljava/util/ArrayDeque;

    if-eqz v4, :cond_4a

    :goto_4
    iget-object v0, v8, Lflj;->J:Lrkj;

    if-nez v0, :cond_49

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ltkj;

    if-eqz v5, :cond_48

    invoke-virtual {v8, v6}, Lflj;->Y(Lerj;)Z

    invoke-virtual {v8, v5}, Lflj;->a0(Ltkj;)Z

    move-result v0
    :try_end_2
    .catch Lcom/google/android/gms/internal/ads/zztc; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz v0, :cond_4d

    :try_start_3
    iget-object v0, v8, Lflj;->C:Lerj;

    if-eqz v0, :cond_45

    iget-object v2, v5, Ltkj;->a:Ljava/lang/String;

    sget v1, Lkfh;->a:I

    iget v1, v8, Lflj;->I:F

    invoke-virtual/range {p0 .. p0}, La1j;->w()[Lerj;

    move-result-object v3

    invoke-virtual {v8, v1, v0, v3}, Lflj;->K(FLerj;[Lerj;)F

    move-result v1

    iget v3, v8, Lflj;->u:F

    cmpg-float v3, v1, v3

    const/high16 v16, -0x40800000    # -1.0f

    if-gtz v3, :cond_6

    move/from16 v1, v16

    :cond_6
    invoke-virtual/range {p0 .. p0}, La1j;->D()Ltbg;

    move-result-object v3

    invoke-interface {v3}, Ltbg;->zzb()J

    move-result-wide v17

    invoke-virtual {v8, v5, v0, v7, v1}, Lflj;->q0(Ltkj;Lerj;Landroid/media/MediaCrypto;F)Lokj;

    move-result-object v3

    sget v15, Lkfh;->a:I

    const/16 v10, 0x1f

    if-lt v15, v10, :cond_7

    invoke-virtual/range {p0 .. p0}, La1j;->G()Ltfj;

    move-result-object v10

    invoke-virtual {v10}, Ltfj;->a()Landroid/media/metrics/LogSessionId;

    move-result-object v10

    invoke-static {}, Lze6;->a()Landroid/media/metrics/LogSessionId;

    move-result-object v15

    invoke-static {v10, v15}, Laf6;->a(Landroid/media/metrics/LogSessionId;Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_7

    iget-object v15, v3, Lokj;->b:Landroid/media/MediaFormat;

    const-string v9, "log-session-id"

    invoke-static {v10}, Lod6;->a(Landroid/media/metrics/LogSessionId;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v15, v9, v10}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_5

    :catch_2
    move-exception v0

    move-object v11, v5

    move-object v9, v6

    move-object v10, v7

    move-object/from16 v21, v14

    move-object v14, v13

    move-object v13, v4

    goto/16 :goto_1f

    :cond_7
    :goto_5
    :try_start_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "createCodec:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v9, v8, Lflj;->s:Lpkj;

    invoke-interface {v9, v3}, Lpkj;->a(Lokj;)Lrkj;

    move-result-object v9

    iput-object v9, v8, Lflj;->J:Lrkj;

    new-instance v10, Lclj;

    invoke-direct {v10, v8, v7}, Lclj;-><init>(Lflj;Lelj;)V

    invoke-interface {v9, v10}, Lrkj;->c(Lqkj;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-static {}, Landroid/os/Trace;->endSection()V

    invoke-virtual/range {p0 .. p0}, La1j;->D()Ltbg;

    move-result-object v9

    invoke-interface {v9}, Ltbg;->zzb()J

    move-result-wide v9

    invoke-virtual {v5, v0}, Ltkj;->e(Lerj;)Z

    move-result v15
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    if-nez v15, :cond_37

    :try_start_6
    const-string v15, "Format exceeds selected codec\'s capabilities [%s, %s]"

    const-string v7, ","

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "id="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v0, Lerj;->a:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ", mimeType="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v0, Lerj;->o:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v0, Lerj;->n:Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_c

    if-eqz v12, :cond_8

    move-object/from16 v19, v4

    :try_start_7
    const-string v4, ", container="

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_6

    :catch_3
    move-exception v0

    move-object v11, v5

    move-object v9, v6

    move-object/from16 v21, v14

    const/4 v10, 0x0

    const/4 v12, 0x1

    move-object v14, v13

    move-object/from16 v13, v19

    goto/16 :goto_1f

    :cond_8
    move-object/from16 v19, v4

    :goto_6
    :try_start_8
    iget v4, v0, Lerj;->j:I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_b

    const/4 v12, -0x1

    if-eq v4, v12, :cond_9

    :try_start_9
    const-string v12, ", bitrate="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    :cond_9
    :try_start_a
    iget-object v4, v0, Lerj;->k:Ljava/lang/String;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_b

    if-eqz v4, :cond_a

    :try_start_b
    const-string v12, ", codecs="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3

    :cond_a
    :try_start_c
    iget-object v4, v0, Lerj;->s:Lcom/google/android/gms/internal/ads/zzs;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_b

    if-eqz v4, :cond_11

    :try_start_d
    new-instance v12, Ljava/util/LinkedHashSet;

    invoke-direct {v12}, Ljava/util/LinkedHashSet;-><init>()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_5

    move-object/from16 v20, v6

    move-object/from16 v21, v14

    const/4 v6, 0x0

    :goto_7
    :try_start_e
    iget v14, v4, Lcom/google/android/gms/internal/ads/zzs;->zzb:I

    if-ge v6, v14, :cond_10

    invoke-virtual {v4, v6}, Lcom/google/android/gms/internal/ads/zzs;->zza(I)Lcom/google/android/gms/internal/ads/zzr;

    move-result-object v14

    iget-object v14, v14, Lcom/google/android/gms/internal/ads/zzr;->zza:Ljava/util/UUID;

    move-object/from16 v22, v4

    sget-object v4, Leui;->b:Ljava/util/UUID;

    invoke-virtual {v14, v4}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    const-string v4, "cenc"

    invoke-interface {v12, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_8
    move-object/from16 v23, v3

    :goto_9
    const/4 v3, 0x1

    goto :goto_c

    :catch_4
    move-exception v0

    :goto_a
    move-object v11, v5

    move-object v14, v13

    :goto_b
    move-object/from16 v13, v19

    move-object/from16 v9, v20

    const/4 v10, 0x0

    const/4 v12, 0x1

    goto/16 :goto_1f

    :cond_b
    sget-object v4, Leui;->c:Ljava/util/UUID;

    invoke-virtual {v14, v4}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    const-string v4, "clearkey"

    invoke-interface {v12, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_c
    sget-object v4, Leui;->e:Ljava/util/UUID;

    invoke-virtual {v14, v4}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    const-string v4, "playready"

    invoke-interface {v12, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_d
    sget-object v4, Leui;->d:Ljava/util/UUID;

    invoke-virtual {v14, v4}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    const-string v4, "widevine"

    invoke-interface {v12, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_e
    sget-object v4, Leui;->a:Ljava/util/UUID;

    invoke-virtual {v14, v4}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    const-string v4, "universal"

    invoke-interface {v12, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_f
    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v23, v3

    const-string v3, "unknown ("

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v12, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :goto_c
    add-int/2addr v6, v3

    move-object/from16 v4, v22

    move-object/from16 v3, v23

    goto/16 :goto_7

    :cond_10
    move-object/from16 v23, v3

    const-string v3, ", drm=["

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v11, v12, v7}, Lo2i;->b(Ljava/lang/StringBuilder;Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x5d

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_4

    goto :goto_d

    :catch_5
    move-exception v0

    move-object/from16 v20, v6

    move-object/from16 v21, v14

    goto :goto_a

    :cond_11
    move-object/from16 v23, v3

    move-object/from16 v20, v6

    move-object/from16 v21, v14

    :goto_d
    :try_start_f
    iget v3, v0, Lerj;->v:I
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_a

    const/4 v4, -0x1

    if-eq v3, v4, :cond_12

    :try_start_10
    iget v6, v0, Lerj;->w:I

    if-eq v6, v4, :cond_12

    const-string v4, ", res="

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "x"

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_4

    :cond_12
    :try_start_11
    iget v3, v0, Lerj;->z:F

    move-wide/from16 v24, v9

    float-to-double v9, v3

    sget v4, Lj6i;->a:I
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_a

    const-wide/high16 v26, -0x4010000000000000L    # -1.0

    move-object v6, v5

    add-double v4, v9, v26

    move-object v14, v13

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    :try_start_12
    invoke-static {v4, v5, v12, v13}, Ljava/lang/Math;->copySign(DD)D

    move-result-wide v4
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_9

    const-wide v26, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double v4, v4, v26

    if-lez v4, :cond_14

    cmpl-double v4, v9, v12

    if-eqz v4, :cond_14

    :try_start_13
    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-nez v4, :cond_14

    goto :goto_f

    :catch_6
    move-exception v0

    :goto_e
    move-object v11, v6

    goto/16 :goto_b

    :cond_13
    :goto_f
    const-string v4, ", par="

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "%.3f"

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v5, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_6

    :cond_14
    :try_start_14
    iget-object v3, v0, Lerj;->C:Lh6j;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_9

    if-eqz v3, :cond_16

    :try_start_15
    invoke-virtual {v3}, Lh6j;->e()Z

    move-result v4

    if-nez v4, :cond_15

    invoke-virtual {v3}, Lh6j;->f()Z

    move-result v4

    if-eqz v4, :cond_16

    :cond_15
    const-string v4, ", color="

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lh6j;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_6

    :cond_16
    :try_start_16
    iget v3, v0, Lerj;->x:F
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_9

    cmpl-float v4, v3, v16

    if-eqz v4, :cond_17

    :try_start_17
    const-string v4, ", fps="

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_6

    :cond_17
    :try_start_18
    iget v3, v0, Lerj;->D:I
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_9

    const/4 v4, -0x1

    if-eq v3, v4, :cond_18

    :try_start_19
    const-string v4, ", maxSubLayers="

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_6

    :cond_18
    :try_start_1a
    iget v3, v0, Lerj;->E:I
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_9

    const/4 v4, -0x1

    if-eq v3, v4, :cond_19

    :try_start_1b
    const-string v4, ", channels="

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_6

    :cond_19
    :try_start_1c
    iget v3, v0, Lerj;->F:I
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_9

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1a

    :try_start_1d
    const-string v4, ", sample_rate="

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_6

    :cond_1a
    :try_start_1e
    iget-object v3, v0, Lerj;->d:Ljava/lang/String;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_9

    if-eqz v3, :cond_1b

    :try_start_1f
    const-string v4, ", language="

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_6

    :cond_1b
    :try_start_20
    iget-object v3, v0, Lerj;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_9

    const-string v5, "]"

    if-nez v4, :cond_1c

    :try_start_21
    const-string v4, ", labels=["

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Lcoj;

    invoke-direct {v4}, Lcoj;-><init>()V

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/p7;->b(Ljava/util/List;Lm2i;)Ljava/util/List;

    move-result-object v3

    invoke-static {v11, v3, v7}, Lo2i;->b(Ljava/lang/StringBuilder;Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_6

    :cond_1c
    :try_start_22
    iget v3, v0, Lerj;->e:I
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_9

    if-eqz v3, :cond_1f

    :try_start_23
    const-string v4, ", selectionFlags=["

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v9, 0x1

    and-int/lit8 v10, v3, 0x1

    if-eqz v10, :cond_1d

    const-string v9, "default"

    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1d
    const/4 v9, 0x2

    and-int/2addr v3, v9

    if-eqz v3, :cond_1e

    const-string v3, "forced"

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1e
    invoke-static {v11, v4, v7}, Lo2i;->b(Ljava/lang/StringBuilder;Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_6

    :cond_1f
    :try_start_24
    iget v3, v0, Lerj;->f:I
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_9

    const v4, 0x8000

    if-eqz v3, :cond_30

    :try_start_25
    const-string v9, ", roleFlags=["

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_7

    const/4 v10, 0x1

    and-int/lit8 v12, v3, 0x1

    if-eqz v12, :cond_20

    :try_start_26
    const-string v10, "main"

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_20
    const/4 v10, 0x2

    and-int/lit8 v12, v3, 0x2

    if-eqz v12, :cond_21

    const-string v10, "alt"

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_21
    const/4 v10, 0x4

    and-int/lit8 v12, v3, 0x4

    if-eqz v12, :cond_22

    const-string v10, "supplementary"

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_22
    and-int/lit8 v10, v3, 0x8

    if-eqz v10, :cond_23

    const-string v10, "commentary"

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_23
    and-int/lit8 v10, v3, 0x10

    if-eqz v10, :cond_24

    const-string v10, "dub"

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_24
    const/16 v10, 0x20

    and-int/lit8 v12, v3, 0x20

    if-eqz v12, :cond_25

    const-string v12, "emergency"

    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_25
    and-int/lit8 v12, v3, 0x40

    if-eqz v12, :cond_26

    const-string v12, "caption"

    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_26
    and-int/lit16 v12, v3, 0x80

    if-eqz v12, :cond_27

    const-string v12, "subtitle"

    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_27
    and-int/lit16 v12, v3, 0x100

    if-eqz v12, :cond_28

    const-string v12, "sign"

    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_28
    and-int/lit16 v12, v3, 0x200

    if-eqz v12, :cond_29

    const-string v12, "describes-video"

    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_29
    and-int/lit16 v12, v3, 0x400

    if-eqz v12, :cond_2a

    const-string v12, "describes-music"

    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2a
    and-int/lit16 v12, v3, 0x800

    if-eqz v12, :cond_2b

    const-string v12, "enhanced-intelligibility"

    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2b
    and-int/lit16 v12, v3, 0x1000

    if-eqz v12, :cond_2c

    const-string v12, "transcribes-dialog"

    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2c
    and-int/lit16 v12, v3, 0x2000

    if-eqz v12, :cond_2d

    const-string v12, "easy-read"

    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2d
    and-int/lit16 v12, v3, 0x4000

    if-eqz v12, :cond_2e

    const-string v12, "trick-play"

    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2e
    and-int v12, v3, v4

    if-eqz v12, :cond_2f

    const-string v12, "auxiliary"

    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2f
    invoke-static {v11, v9, v7}, Lo2i;->b(Ljava/lang/StringBuilder;Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_26} :catch_6

    goto :goto_11

    :catch_7
    move-exception v0

    :goto_10
    const/16 v10, 0x20

    goto/16 :goto_e

    :cond_30
    const/16 v10, 0x20

    :goto_11
    and-int/2addr v3, v4

    if-eqz v3, :cond_36

    :try_start_27
    const-string v3, ", auxiliaryTrackType="

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lerj;->g:I
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_27} :catch_8

    if-eqz v3, :cond_35

    const/4 v4, 0x1

    if-eq v3, v4, :cond_34

    const/4 v4, 0x2

    if-eq v3, v4, :cond_33

    const/4 v4, 0x3

    if-eq v3, v4, :cond_32

    const/4 v9, 0x4

    if-ne v3, v9, :cond_31

    :try_start_28
    const-string v3, "depth metadata"

    goto :goto_12

    :cond_31
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unsupported auxiliary track type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_32
    const/4 v9, 0x4

    const-string v3, "depth-inverse"

    goto :goto_12

    :cond_33
    const/4 v9, 0x4

    const-string v3, "depth-linear"

    goto :goto_12

    :cond_34
    const/4 v9, 0x4

    const-string v3, "original"

    goto :goto_12

    :cond_35
    const/4 v9, 0x4

    const-string v3, "undefined"

    :goto_12
    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_13

    :catch_8
    move-exception v0

    const/4 v9, 0x4

    goto/16 :goto_e

    :cond_36
    const/4 v9, 0x4

    :goto_13
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3, v2}, [Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v4, v15, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v14, v3}, Lzrg;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_16

    :catch_9
    move-exception v0

    :goto_14
    const/4 v9, 0x4

    goto :goto_10

    :catch_a
    move-exception v0

    move-object v6, v5

    move-object v14, v13

    goto :goto_14

    :catch_b
    move-exception v0

    :goto_15
    move-object/from16 v20, v6

    move-object/from16 v21, v14

    const/4 v9, 0x4

    const/16 v10, 0x20

    move-object v6, v5

    move-object v14, v13

    goto/16 :goto_e

    :catch_c
    move-exception v0

    move-object/from16 v19, v4

    goto :goto_15

    :cond_37
    move-object/from16 v23, v3

    move-object/from16 v19, v4

    move-object/from16 v20, v6

    move-wide/from16 v24, v9

    move-object/from16 v21, v14

    const/4 v9, 0x4

    const/16 v10, 0x20

    move-object v6, v5

    move-object v14, v13

    :goto_16
    iput-object v6, v8, Lflj;->Q:Ltkj;

    iput v1, v8, Lflj;->N:F

    iput-object v0, v8, Lflj;->K:Lerj;

    sget v0, Lkfh;->a:I

    const/16 v1, 0x19

    if-gt v0, v1, :cond_39

    const-string v3, "OMX.Exynos.avc.dec.secure"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_39

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v4, "SM-T585"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_38

    const-string v4, "SM-A510"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_38

    const-string v4, "SM-A520"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_38

    const-string v4, "SM-J700"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_39

    :cond_38
    const/4 v3, 0x2

    goto :goto_18

    :cond_39
    const/16 v3, 0x18

    if-ge v0, v3, :cond_3a

    const-string v3, "OMX.Nvidia.h264.decode"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3b

    const-string v3, "OMX.Nvidia.h264.decode.secure"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3a

    goto :goto_17

    :cond_3a
    const/4 v3, 0x0

    goto :goto_18

    :cond_3b
    :goto_17
    const-string v3, "flounder"

    sget-object v4, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3c

    const-string v3, "flounder_lte"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3c

    const-string v3, "grouper"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3c

    const-string v3, "tilapia"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3a

    :cond_3c
    const/4 v3, 0x1

    :goto_18
    iput v3, v8, Lflj;->R:I

    const/16 v3, 0x1d

    if-ne v0, v3, :cond_3d

    const-string v4, "c2.android.aac.decoder"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3d

    const/4 v4, 0x1

    goto :goto_19

    :cond_3d
    const/4 v4, 0x0

    :goto_19
    iput-boolean v4, v8, Lflj;->S:Z

    const/16 v4, 0x17

    if-gt v0, v4, :cond_3e

    const-string v4, "OMX.google.vorbis.decoder"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3e

    const/4 v4, 0x1

    goto :goto_1a

    :cond_3e
    const/4 v4, 0x0

    :goto_1a
    iput-boolean v4, v8, Lflj;->T:Z

    iget-object v4, v6, Ltkj;->a:Ljava/lang/String;

    if-gt v0, v1, :cond_40

    const-string v1, "OMX.rk.video_decoder.avc"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3f

    goto :goto_1c

    :cond_3f
    :goto_1b
    const/4 v0, 0x1

    goto :goto_1d

    :cond_40
    :goto_1c
    if-gt v0, v3, :cond_41

    const-string v0, "OMX.broadcom.video_decoder.tunnel"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3f

    const-string v0, "OMX.broadcom.video_decoder.tunnel.secure"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3f

    const-string v0, "OMX.bcm.vdec.avc.tunnel"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3f

    const-string v0, "OMX.bcm.vdec.avc.tunnel.secure"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3f

    const-string v0, "OMX.bcm.vdec.hevc.tunnel"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3f

    const-string v0, "OMX.bcm.vdec.hevc.tunnel.secure"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3f

    :cond_41
    const-string v0, "Amazon"

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    const-string v0, "AFTS"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    iget-boolean v0, v6, Ltkj;->f:Z

    if-eqz v0, :cond_42

    goto :goto_1b

    :cond_42
    const/4 v0, 0x0

    :goto_1d
    iput-boolean v0, v8, Lflj;->W:Z

    iget-object v0, v8, Lflj;->J:Lrkj;

    if-eqz v0, :cond_44

    invoke-virtual/range {p0 .. p0}, La1j;->l()I

    move-result v0

    const/4 v11, 0x2

    if-ne v0, v11, :cond_43

    invoke-virtual/range {p0 .. p0}, La1j;->D()Ltbg;

    move-result-object v0

    invoke-interface {v0}, Ltbg;->zzb()J

    move-result-wide v0

    const-wide/16 v3, 0x3e8

    add-long/2addr v0, v3

    iput-wide v0, v8, Lflj;->Y:J

    :cond_43
    iget-object v0, v8, Lflj;->t0:Ld1j;

    iget v1, v0, Ld1j;->a:I
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_28} :catch_6

    const/4 v12, 0x1

    add-int/2addr v1, v12

    :try_start_29
    iput v1, v0, Ld1j;->a:I
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_29} :catch_e

    sub-long v15, v24, v17

    move-object/from16 v1, p0

    move-object/from16 v3, v23

    move-object/from16 v13, v19

    move-wide/from16 v4, v24

    move-object v11, v6

    move-object/from16 v9, v20

    const/4 v10, 0x0

    move-wide v6, v15

    :try_start_2a
    invoke-virtual/range {v1 .. v7}, Lflj;->w0(Ljava/lang/String;Lokj;JJ)V

    :goto_1e
    move-object v6, v9

    move-object v7, v10

    move-object v4, v13

    move-object v13, v14

    move-object/from16 v14, v21

    const/16 v10, 0x20

    const/4 v15, 0x0

    goto/16 :goto_4

    :catch_d
    move-exception v0

    goto :goto_1f

    :catch_e
    move-exception v0

    move-object v11, v6

    move-object/from16 v13, v19

    move-object/from16 v9, v20

    const/4 v10, 0x0

    goto :goto_1f

    :cond_44
    move-object v11, v6

    move-object/from16 v13, v19

    move-object/from16 v9, v20

    const/4 v10, 0x0

    const/4 v12, 0x1

    throw v10

    :catchall_0
    move-exception v0

    move-object v11, v5

    move-object v9, v6

    move-object v10, v7

    move-object/from16 v21, v14

    move-object v14, v13

    move-object v13, v4

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v0

    :cond_45
    move-object v11, v5

    move-object v9, v6

    move-object v10, v7

    move-object/from16 v21, v14

    move-object v14, v13

    move-object v13, v4

    throw v10
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2a} :catch_d

    :goto_1f
    :try_start_2b
    iget-object v1, v11, Ltkj;->a:Ljava/lang/String;

    const-string v2, "Failed to initialize decoder: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1, v0}, Lzrg;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v13}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    new-instance v1, Lcom/google/android/gms/internal/ads/zztc;

    const/4 v2, 0x0

    invoke-direct {v1, v9, v0, v2, v11}, Lcom/google/android/gms/internal/ads/zztc;-><init>(Lerj;Ljava/lang/Throwable;ZLtkj;)V

    invoke-virtual {v8, v1}, Lflj;->v0(Ljava/lang/Exception;)V

    iget-object v0, v8, Lflj;->P:Lcom/google/android/gms/internal/ads/zztc;

    if-nez v0, :cond_46

    iput-object v1, v8, Lflj;->P:Lcom/google/android/gms/internal/ads/zztc;

    goto :goto_20

    :catch_f
    move-exception v0

    goto :goto_21

    :cond_46
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zztc;->zza(Lcom/google/android/gms/internal/ads/zztc;Lcom/google/android/gms/internal/ads/zztc;)Lcom/google/android/gms/internal/ads/zztc;

    move-result-object v0

    iput-object v0, v8, Lflj;->P:Lcom/google/android/gms/internal/ads/zztc;

    :goto_20
    invoke-virtual {v13}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_47

    goto :goto_1e

    :cond_47
    iget-object v0, v8, Lflj;->P:Lcom/google/android/gms/internal/ads/zztc;

    throw v0

    :cond_48
    move-object v10, v7

    move-object/from16 v21, v14

    throw v10

    :cond_49
    move-object v10, v7

    move-object/from16 v21, v14

    iput-object v10, v8, Lflj;->O:Ljava/util/ArrayDeque;

    return-void

    :cond_4a
    move-object v10, v7

    move-object/from16 v21, v14

    throw v10

    :cond_4b
    move-object v9, v6

    move-object v10, v7

    move-object/from16 v21, v14

    new-instance v0, Lcom/google/android/gms/internal/ads/zztc;

    const v1, -0xc34f

    const/4 v2, 0x0

    invoke-direct {v0, v9, v10, v2, v1}, Lcom/google/android/gms/internal/ads/zztc;-><init>(Lerj;Ljava/lang/Throwable;ZI)V

    throw v0

    :cond_4c
    move-object v10, v7

    move-object/from16 v21, v14

    throw v10
    :try_end_2b
    .catch Lcom/google/android/gms/internal/ads/zztc; {:try_start_2b .. :try_end_2b} :catch_f

    :goto_21
    const/16 v1, 0xfa1

    move-object/from16 v2, v21

    const/4 v3, 0x0

    invoke-virtual {v8, v0, v2, v3, v1}, La1j;->z(Ljava/lang/Throwable;Lerj;ZI)Lcom/google/android/gms/internal/ads/zzii;

    move-result-object v0

    throw v0

    :cond_4d
    :goto_22
    return-void
.end method

.method public P(J)V
    .locals 3

    iput-wide p1, p0, Lflj;->v0:J

    :goto_0
    iget-object v0, p0, Lflj;->A:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldlj;

    iget-wide v1, v1, Ldlj;->a:J

    cmp-long v1, p1, v1

    if-ltz v1, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldlj;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, v0}, Lflj;->d0(Ldlj;)V

    invoke-virtual {p0}, Lflj;->A0()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public Q(Lxzi;)V
    .locals 0

    return-void
.end method

.method public final R()V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lflj;->J:Lrkj;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lrkj;->zzm()V

    iget-object v1, p0, Lflj;->t0:Ld1j;

    iget v2, v1, Ld1j;->b:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Ld1j;->b:I

    iget-object v1, p0, Lflj;->Q:Ltkj;

    if-eqz v1, :cond_0

    iget-object v1, v1, Ltkj;->a:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lflj;->x0(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    iput-object v0, p0, Lflj;->J:Lrkj;

    iput-object v0, p0, Lflj;->F:Landroid/media/MediaCrypto;

    iput-object v0, p0, Lflj;->y0:Lpjj;

    invoke-virtual {p0}, Lflj;->T()V

    return-void

    :goto_1
    iput-object v0, p0, Lflj;->J:Lrkj;

    iput-object v0, p0, Lflj;->F:Landroid/media/MediaCrypto;

    iput-object v0, p0, Lflj;->y0:Lpjj;

    invoke-virtual {p0}, Lflj;->T()V

    throw v1
.end method

.method public S()V
    .locals 3

    invoke-direct {p0}, Lflj;->z0()V

    invoke-virtual {p0}, Lflj;->c0()V

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lflj;->Y:J

    const/4 v2, 0x0

    iput-boolean v2, p0, Lflj;->m0:Z

    iput-wide v0, p0, Lflj;->X:J

    iput-boolean v2, p0, Lflj;->l0:Z

    iput-boolean v2, p0, Lflj;->U:Z

    iput-boolean v2, p0, Lflj;->V:Z

    iput-boolean v2, p0, Lflj;->c0:Z

    iput-boolean v2, p0, Lflj;->d0:Z

    iput-wide v0, p0, Lflj;->o0:J

    iput-wide v0, p0, Lflj;->p0:J

    iput-wide v0, p0, Lflj;->v0:J

    iput v2, p0, Lflj;->j0:I

    iput v2, p0, Lflj;->k0:I

    iget-boolean v0, p0, Lflj;->h0:Z

    iput v0, p0, Lflj;->i0:I

    return-void
.end method

.method public final T()V
    .locals 2

    invoke-virtual {p0}, Lflj;->S()V

    const/4 v0, 0x0

    iput-object v0, p0, Lflj;->O:Ljava/util/ArrayDeque;

    iput-object v0, p0, Lflj;->Q:Ltkj;

    iput-object v0, p0, Lflj;->K:Lerj;

    iput-object v0, p0, Lflj;->L:Landroid/media/MediaFormat;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lflj;->M:Z

    iput-boolean v0, p0, Lflj;->n0:Z

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lflj;->N:F

    iput v0, p0, Lflj;->R:I

    iput-boolean v0, p0, Lflj;->S:Z

    iput-boolean v0, p0, Lflj;->T:Z

    iput-boolean v0, p0, Lflj;->W:Z

    iput-boolean v0, p0, Lflj;->h0:Z

    iput v0, p0, Lflj;->i0:I

    return-void
.end method

.method public final U()Z
    .locals 1

    invoke-virtual {p0}, Lflj;->V()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lflj;->O()V

    :cond_0
    return v0
.end method

.method public final V()Z
    .locals 4

    iget-object v0, p0, Lflj;->J:Lrkj;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lflj;->k0:I

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eq v0, v2, :cond_4

    iget-boolean v2, p0, Lflj;->S:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lflj;->n0:Z

    if-eqz v2, :cond_4

    :cond_1
    iget-boolean v2, p0, Lflj;->T:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lflj;->m0:Z

    if-nez v2, :cond_4

    :cond_2
    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    sget v0, Lkfh;->a:I

    :try_start_0
    invoke-direct {p0}, Lflj;->e0()V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzii; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MediaCodecRenderer"

    const-string v2, "Failed to update the DRM session, releasing the codec instead."

    invoke-static {v1, v2, v0}, Lzrg;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lflj;->R()V

    return v3

    :cond_3
    :goto_0
    invoke-virtual {p0}, Lflj;->s0()V

    return v1

    :cond_4
    invoke-virtual {p0}, Lflj;->R()V

    return v3
.end method

.method public final W()Z
    .locals 0

    iget-boolean p0, p0, Lflj;->e0:Z

    return p0
.end method

.method public final X(Lerj;)Z
    .locals 1

    iget-object v0, p0, Lflj;->z0:Lpjj;

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lflj;->D0(Lerj;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public Y(Lerj;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public Z(Lxzi;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public a0(Ltkj;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final c0()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lflj;->a0:I

    const/4 v0, 0x0

    iput-object v0, p0, Lflj;->b0:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public d(FF)V
    .locals 0

    iput p1, p0, Lflj;->H:F

    iput p2, p0, Lflj;->I:F

    iget-object p1, p0, Lflj;->K:Lerj;

    invoke-virtual {p0, p1}, Lflj;->k0(Lerj;)Z

    return-void
.end method

.method public final d0(Ldlj;)V
    .locals 4

    iput-object p1, p0, Lflj;->u0:Ldlj;

    iget-wide v0, p1, Ldlj;->c:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lflj;->w0:Z

    :cond_0
    return-void
.end method

.method public e(ILjava/lang/Object;)V
    .locals 1

    const/16 v0, 0xb

    if-ne p1, v0, :cond_0

    check-cast p2, Lw9j;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p0, Lflj;->E:Lw9j;

    :cond_0
    return-void
.end method

.method public f()Z
    .locals 0

    iget-boolean p0, p0, Lflj;->r0:Z

    return p0
.end method

.method public final f0()Z
    .locals 2

    iget-boolean v0, p0, Lflj;->l0:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iput v1, p0, Lflj;->j0:I

    iget-boolean v0, p0, Lflj;->T:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    iput v0, p0, Lflj;->k0:I

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lflj;->k0:I

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lflj;->e0()V

    :goto_0
    return v1
.end method

.method public final g(Lerj;)I
    .locals 3

    :try_start_0
    iget-object v0, p0, Lflj;->t:Lhlj;

    invoke-virtual {p0, v0, p1}, Lflj;->l0(Lhlj;Lerj;)I

    move-result p0
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zztn; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    const/16 v2, 0xfa2

    invoke-virtual {p0, v0, p1, v1, v2}, La1j;->z(Ljava/lang/Throwable;Lerj;ZI)Lcom/google/android/gms/internal/ads/zzii;

    move-result-object p0

    throw p0
.end method

.method public final g0()Z
    .locals 0

    iget p0, p0, Lflj;->a0:I

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final h0(JJ)Z
    .locals 3

    cmp-long v0, p3, p1

    const/4 v1, 0x0

    if-gez v0, :cond_2

    iget-object p0, p0, Lflj;->D:Lerj;

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    iget-object p0, p0, Lerj;->o:Ljava/lang/String;

    const-string v2, "audio/opus"

    invoke-static {p0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {p1, p2, p3, p4}, Lx9e;->f(JJ)Z

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

.method public final i0(I)Z
    .locals 4

    invoke-virtual {p0}, La1j;->E()Lp7j;

    move-result-object v0

    iget-object v1, p0, Lflj;->v:Lxzi;

    invoke-virtual {v1}, Lezi;->b()V

    or-int/lit8 p1, p1, 0x4

    invoke-virtual {p0, v0, v1, p1}, La1j;->y(Lp7j;Lxzi;I)I

    move-result p1

    const/4 v2, -0x5

    const/4 v3, 0x1

    if-ne p1, v2, :cond_0

    invoke-virtual {p0, v0}, Lflj;->n0(Lp7j;)Lg1j;

    return v3

    :cond_0
    const/4 v0, -0x4

    if-ne p1, v0, :cond_1

    invoke-virtual {v1}, Lezi;->f()Z

    move-result p1

    if-eqz p1, :cond_1

    iput-boolean v3, p0, Lflj;->q0:Z

    invoke-virtual {p0}, Lflj;->t0()V

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final j0(J)Z
    .locals 4

    iget-wide v0, p0, Lflj;->G:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    invoke-virtual {p0}, La1j;->D()Ltbg;

    move-result-object v0

    invoke-interface {v0}, Ltbg;->zzb()J

    move-result-wide v0

    sub-long/2addr v0, p1

    iget-wide p0, p0, Lflj;->G:J

    cmp-long p0, v0, p0

    if-gez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final k0(Lerj;)Z
    .locals 4

    sget v0, Lkfh;->a:I

    iget-object v0, p0, Lflj;->J:Lrkj;

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    iget v0, p0, Lflj;->k0:I

    const/4 v2, 0x3

    if-eq v0, v2, :cond_3

    invoke-virtual {p0}, La1j;->l()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lflj;->I:F

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, La1j;->w()[Lerj;

    move-result-object v2

    invoke-virtual {p0, v0, p1, v2}, Lflj;->K(FLerj;[Lerj;)F

    move-result p1

    iget v0, p0, Lflj;->N:F

    cmpl-float v2, v0, p1

    if-eqz v2, :cond_3

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v3, p1, v2

    if-nez v3, :cond_1

    invoke-virtual {p0}, Lflj;->p0()V

    const/4 p0, 0x0

    return p0

    :cond_1
    cmpl-float v0, v0, v2

    if-nez v0, :cond_2

    iget v0, p0, Lflj;->u:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_3

    :cond_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "operating-rate"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    iget-object v2, p0, Lflj;->J:Lrkj;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v2, v0}, Lrkj;->zzq(Landroid/os/Bundle;)V

    iput p1, p0, Lflj;->N:F

    :cond_3
    :goto_0
    return v1
.end method

.method public abstract l0(Lhlj;Lerj;)I
.end method

.method public m(JJ)V
    .locals 26

    move-object/from16 v15, p0

    const/4 v14, 0x0

    const/4 v13, 0x1

    :try_start_0
    iget-boolean v1, v15, Lflj;->r0:Z
    :try_end_0
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_0 .. :try_end_0} :catch_1e
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1d

    if-eqz v1, :cond_0

    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lflj;->B0()V
    :try_end_1
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object v1, v0

    move v3, v14

    :goto_0
    move-object v4, v15

    goto/16 :goto_2e

    :catch_1
    move-exception v0

    move-object v1, v0

    move v3, v14

    :goto_1
    move-object v4, v15

    goto/16 :goto_32

    :cond_0
    :try_start_2
    iget-object v1, v15, Lflj;->C:Lerj;
    :try_end_2
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_2 .. :try_end_2} :catch_1e
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1d

    const/4 v11, 0x2

    if-nez v1, :cond_2

    :try_start_3
    invoke-virtual {v15, v11}, Lflj;->i0(I)Z

    move-result v1
    :try_end_3
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0

    if-eqz v1, :cond_1

    goto :goto_2

    :cond_1
    return-void

    :cond_2
    :goto_2
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lflj;->O()V

    iget-boolean v1, v15, Lflj;->e0:Z
    :try_end_4
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_4 .. :try_end_4} :catch_1e
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_1d

    const/4 v10, 0x0

    if-eqz v1, :cond_1a

    :try_start_5
    const-string v1, "bypassRender"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :goto_3
    iget-boolean v1, v15, Lflj;->r0:Z

    xor-int/2addr v1, v13

    invoke-static {v1}, Ln7g;->f(Z)V

    iget-object v11, v15, Lflj;->y:Likj;

    invoke-virtual {v11}, Likj;->r()Z

    move-result v1
    :try_end_5
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_5 .. :try_end_5} :catch_d
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_c

    if-eqz v1, :cond_5

    :try_start_6
    iget-object v7, v11, Lxzi;->d:Ljava/nio/ByteBuffer;

    iget v8, v15, Lflj;->a0:I

    invoke-virtual {v11}, Likj;->n()I

    move-result v16

    iget-wide v4, v11, Lxzi;->f:J

    invoke-virtual/range {p0 .. p0}, La1j;->B()J

    move-result-wide v1

    invoke-virtual {v11}, Likj;->o()J

    move-result-wide v12

    invoke-virtual {v15, v1, v2, v12, v13}, Lflj;->h0(JJ)Z

    move-result v13

    invoke-virtual {v11}, Lezi;->f()Z

    move-result v19

    iget-object v12, v15, Lflj;->D:Lerj;
    :try_end_6
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_2

    if-eqz v12, :cond_4

    const/4 v6, 0x0

    const/4 v9, 0x0

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v20, v4

    move-wide/from16 v4, p3

    move/from16 v10, v16

    move-object/from16 v16, v11

    move-object/from16 v18, v12

    move-wide/from16 v11, v20

    move/from16 v14, v19

    move-object/from16 v15, v18

    :try_start_7
    invoke-virtual/range {v1 .. v15}, Lflj;->C0(JJLrkj;Ljava/nio/ByteBuffer;IIIJZZLerj;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual/range {v16 .. v16}, Likj;->o()J

    move-result-wide v1
    :try_end_7
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_4

    move-object/from16 v15, p0

    :try_start_8
    invoke-virtual {v15, v1, v2}, Lflj;->P(J)V

    invoke-virtual/range {v16 .. v16}, Lezi;->b()V

    const/4 v14, 0x0

    goto :goto_8

    :catch_2
    move-exception v0

    :goto_4
    move-object v1, v0

    move-object v4, v15

    :goto_5
    const/4 v3, 0x0

    const/4 v13, 0x1

    goto/16 :goto_2e

    :catch_3
    move-exception v0

    :goto_6
    move-object v1, v0

    move-object v4, v15

    :goto_7
    const/4 v3, 0x0

    goto/16 :goto_32

    :catch_4
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_4

    :catch_5
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_6

    :cond_3
    move-object/from16 v15, p0

    const/4 v12, 0x0

    const/4 v13, 0x1

    goto/16 :goto_12

    :cond_4
    move-object v14, v10

    throw v14
    :try_end_8
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_8} :catch_2

    :cond_5
    move-object v14, v10

    move-object/from16 v16, v11

    :goto_8
    :try_start_9
    iget-boolean v1, v15, Lflj;->q0:Z
    :try_end_9
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_9 .. :try_end_9} :catch_a
    .catch Ljava/lang/IllegalStateException; {:try_start_9 .. :try_end_9} :catch_b

    if-eqz v1, :cond_6

    const/4 v13, 0x1

    :try_start_a
    iput-boolean v13, v15, Lflj;->r0:Z
    :try_end_a
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_a .. :try_end_a} :catch_6

    const/4 v12, 0x0

    goto/16 :goto_12

    :catch_6
    move-exception v0

    move-object v1, v0

    move-object v4, v15

    :goto_9
    const/4 v3, 0x0

    goto/16 :goto_2e

    :cond_6
    const/4 v13, 0x1

    :try_start_b
    iget-boolean v1, v15, Lflj;->f0:Z

    if-eqz v1, :cond_7

    iget-object v1, v15, Lflj;->x:Lxzi;

    move-object/from16 v2, v16

    invoke-virtual {v2, v1}, Likj;->q(Lxzi;)Z

    move-result v1

    invoke-static {v1}, Ln7g;->f(Z)V
    :try_end_b
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_b .. :try_end_b} :catch_a
    .catch Ljava/lang/IllegalStateException; {:try_start_b .. :try_end_b} :catch_9

    const/4 v12, 0x0

    :try_start_c
    iput-boolean v12, v15, Lflj;->f0:Z

    goto :goto_c

    :catch_7
    move-exception v0

    :goto_a
    move-object v1, v0

    move v3, v12

    goto/16 :goto_0

    :catch_8
    move-exception v0

    :goto_b
    move-object v1, v0

    move v3, v12

    goto/16 :goto_1

    :catch_9
    move-exception v0

    const/4 v12, 0x0

    goto :goto_a

    :catch_a
    move-exception v0

    const/4 v12, 0x0

    goto :goto_b

    :cond_7
    move-object/from16 v2, v16

    const/4 v12, 0x0

    :goto_c
    iget-boolean v1, v15, Lflj;->g0:Z

    if-eqz v1, :cond_9

    invoke-virtual {v2}, Likj;->r()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual/range {p0 .. p0}, Lflj;->o0()V

    iput-boolean v12, v15, Lflj;->g0:Z

    invoke-virtual/range {p0 .. p0}, Lflj;->O()V

    iget-boolean v1, v15, Lflj;->e0:Z

    if-eqz v1, :cond_19

    goto :goto_e

    :cond_8
    :goto_d
    move-object v10, v14

    move v14, v12

    goto/16 :goto_3

    :cond_9
    :goto_e
    iget-boolean v1, v15, Lflj;->q0:Z

    xor-int/2addr v1, v13

    invoke-static {v1}, Ln7g;->f(Z)V

    invoke-virtual/range {p0 .. p0}, La1j;->E()Lp7j;

    move-result-object v1

    iget-object v3, v15, Lflj;->x:Lxzi;

    invoke-virtual {v3}, Lezi;->b()V

    :cond_a
    invoke-virtual {v3}, Lezi;->b()V

    invoke-virtual {v15, v1, v3, v12}, La1j;->y(Lp7j;Lxzi;I)I

    move-result v4

    const/4 v10, -0x5

    if-eq v4, v10, :cond_16

    const/4 v5, -0x4

    if-eq v4, v5, :cond_b

    invoke-virtual/range {p0 .. p0}, La1j;->zzQ()Z

    move-result v1

    if-eqz v1, :cond_17

    iget-wide v3, v15, Lflj;->o0:J

    iput-wide v3, v15, Lflj;->p0:J

    goto/16 :goto_11

    :cond_b
    invoke-virtual {v3}, Lezi;->f()Z

    move-result v4

    if-eqz v4, :cond_c

    iput-boolean v13, v15, Lflj;->q0:Z

    iget-wide v3, v15, Lflj;->o0:J

    iput-wide v3, v15, Lflj;->p0:J

    goto/16 :goto_11

    :cond_c
    iget-wide v4, v15, Lflj;->o0:J

    iget-wide v6, v3, Lxzi;->f:J

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, v15, Lflj;->o0:J

    invoke-virtual/range {p0 .. p0}, La1j;->zzQ()Z

    move-result v6

    if-nez v6, :cond_d

    iget-object v6, v15, Lflj;->w:Lxzi;

    invoke-virtual {v6}, Lezi;->h()Z

    move-result v6

    if-eqz v6, :cond_e

    :cond_d
    iput-wide v4, v15, Lflj;->p0:J

    :cond_e
    iget-boolean v4, v15, Lflj;->s0:Z
    :try_end_c
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_c .. :try_end_c} :catch_8
    .catch Ljava/lang/IllegalStateException; {:try_start_c .. :try_end_c} :catch_7

    const-string v5, "audio/opus"

    if-eqz v4, :cond_11

    :try_start_d
    iget-object v4, v15, Lflj;->C:Lerj;

    if-eqz v4, :cond_10

    iput-object v4, v15, Lflj;->D:Lerj;

    iget-object v4, v4, Lerj;->o:Ljava/lang/String;

    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    iget-object v4, v15, Lflj;->D:Lerj;

    iget-object v4, v4, Lerj;->r:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_f

    iget-object v4, v15, Lflj;->D:Lerj;

    iget-object v4, v4, Lerj;->r:Ljava/util/List;

    invoke-interface {v4, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    invoke-static {v4}, Lx9e;->a([B)I

    move-result v4

    iget-object v6, v15, Lflj;->D:Lerj;

    invoke-virtual {v6}, Lerj;->b()Lgpj;

    move-result-object v6

    invoke-virtual {v6, v4}, Lgpj;->i(I)Lgpj;

    invoke-virtual {v6}, Lgpj;->K()Lerj;

    move-result-object v4

    iput-object v4, v15, Lflj;->D:Lerj;

    :cond_f
    iget-object v4, v15, Lflj;->D:Lerj;

    invoke-virtual {v15, v4, v14}, Lflj;->y0(Lerj;Landroid/media/MediaFormat;)V

    iput-boolean v12, v15, Lflj;->s0:Z

    goto :goto_f

    :cond_10
    throw v14

    :cond_11
    :goto_f
    invoke-virtual {v3}, Lxzi;->k()V

    iget-object v4, v15, Lflj;->D:Lerj;

    if-eqz v4, :cond_13

    iget-object v4, v4, Lerj;->o:Ljava/lang/String;

    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-virtual {v3}, Lezi;->e()Z

    move-result v4

    if-eqz v4, :cond_12

    iget-object v4, v15, Lflj;->D:Lerj;

    iput-object v4, v3, Lxzi;->b:Lerj;

    invoke-virtual {v15, v3}, Lflj;->u0(Lxzi;)V

    :cond_12
    invoke-virtual/range {p0 .. p0}, La1j;->B()J

    move-result-wide v4

    iget-wide v6, v3, Lxzi;->f:J

    invoke-static {v4, v5, v6, v7}, Lx9e;->f(JJ)Z

    move-result v4

    if-eqz v4, :cond_13

    iget-object v4, v15, Lflj;->B:Lejj;

    iget-object v5, v15, Lflj;->D:Lerj;

    iget-object v5, v5, Lerj;->r:Ljava/util/List;

    invoke-virtual {v4, v3, v5}, Lejj;->a(Lxzi;Ljava/util/List;)V

    :cond_13
    invoke-virtual {v2}, Likj;->r()Z

    move-result v4

    if-nez v4, :cond_14

    goto :goto_10

    :cond_14
    invoke-virtual/range {p0 .. p0}, La1j;->B()J

    move-result-wide v4

    invoke-virtual {v2}, Likj;->o()J

    move-result-wide v6

    invoke-virtual {v15, v4, v5, v6, v7}, Lflj;->h0(JJ)Z

    move-result v6

    iget-wide v7, v3, Lxzi;->f:J

    invoke-virtual {v15, v4, v5, v7, v8}, Lflj;->h0(JJ)Z

    move-result v4

    if-ne v6, v4, :cond_15

    :goto_10
    invoke-virtual {v2, v3}, Likj;->q(Lxzi;)Z

    move-result v4

    if-nez v4, :cond_a

    :cond_15
    iput-boolean v13, v15, Lflj;->f0:Z

    goto :goto_11

    :cond_16
    invoke-virtual {v15, v1}, Lflj;->n0(Lp7j;)Lg1j;

    :cond_17
    :goto_11
    invoke-virtual {v2}, Likj;->r()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-virtual {v2}, Lxzi;->k()V

    :cond_18
    invoke-virtual {v2}, Likj;->r()Z

    move-result v1

    if-nez v1, :cond_8

    iget-boolean v1, v15, Lflj;->q0:Z

    if-nez v1, :cond_8

    iget-boolean v1, v15, Lflj;->g0:Z

    if-eqz v1, :cond_19

    goto/16 :goto_d

    :cond_19
    :goto_12
    invoke-static {}, Landroid/os/Trace;->endSection()V
    :try_end_d
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_d .. :try_end_d} :catch_8
    .catch Ljava/lang/IllegalStateException; {:try_start_d .. :try_end_d} :catch_7

    move v3, v12

    move-object v4, v15

    goto/16 :goto_2d

    :catch_b
    move-exception v0

    const/4 v12, 0x0

    const/4 v13, 0x1

    goto/16 :goto_a

    :catch_c
    move-exception v0

    move v12, v14

    goto/16 :goto_a

    :catch_d
    move-exception v0

    move v12, v14

    goto/16 :goto_b

    :cond_1a
    move v12, v14

    move-object v14, v10

    const/4 v10, -0x5

    :try_start_e
    iget-object v1, v15, Lflj;->J:Lrkj;

    if-eqz v1, :cond_51

    invoke-virtual/range {p0 .. p0}, La1j;->D()Ltbg;

    move-result-object v1

    invoke-interface {v1}, Ltbg;->zzb()J

    move-result-wide v8

    const-string v1, "drainAndFeed"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :goto_13
    iget-object v6, v15, Lflj;->J:Lrkj;

    if-eqz v6, :cond_50

    invoke-virtual/range {p0 .. p0}, Lflj;->g0()Z

    move-result v1
    :try_end_e
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_e .. :try_end_e} :catch_1c
    .catch Ljava/lang/IllegalStateException; {:try_start_e .. :try_end_e} :catch_1b

    if-nez v1, :cond_2a

    :try_start_f
    iget-object v1, v15, Lflj;->z:Landroid/media/MediaCodec$BufferInfo;

    invoke-interface {v6, v1}, Lrkj;->i(Landroid/media/MediaCodec$BufferInfo;)I

    move-result v2

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    if-gez v2, :cond_21

    const/4 v1, -0x2

    if-ne v2, v1, :cond_1d

    iput-boolean v13, v15, Lflj;->n0:Z

    iget-object v1, v15, Lflj;->J:Lrkj;

    if-eqz v1, :cond_1c

    invoke-interface {v1}, Lrkj;->zzc()Landroid/media/MediaFormat;

    move-result-object v1

    iget v2, v15, Lflj;->R:I

    if-eqz v2, :cond_1b

    const-string v2, "width"

    invoke-virtual {v1, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_1b

    const-string v2, "height"

    invoke-virtual {v1, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v3, :cond_1b

    iput-boolean v13, v15, Lflj;->V:Z

    :goto_14
    move-wide v1, v8

    move-object/from16 v16, v14

    move-object v4, v15

    goto/16 :goto_1f

    :cond_1b
    iput-object v1, v15, Lflj;->L:Landroid/media/MediaFormat;

    iput-boolean v13, v15, Lflj;->M:Z

    goto :goto_14

    :cond_1c
    throw v14

    :cond_1d
    iget-boolean v1, v15, Lflj;->W:Z

    if-eqz v1, :cond_1f

    iget-boolean v1, v15, Lflj;->q0:Z

    if-nez v1, :cond_1e

    iget v1, v15, Lflj;->j0:I

    if-ne v1, v11, :cond_1f

    :cond_1e
    invoke-virtual/range {p0 .. p0}, Lflj;->t0()V

    :cond_1f
    iget-wide v1, v15, Lflj;->X:J

    cmp-long v3, v1, v3

    if-eqz v3, :cond_20

    const-wide/16 v3, 0x64

    add-long/2addr v1, v3

    invoke-virtual/range {p0 .. p0}, La1j;->D()Ltbg;

    move-result-object v3

    invoke-interface {v3}, Ltbg;->zza()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gez v1, :cond_20

    invoke-virtual/range {p0 .. p0}, Lflj;->t0()V

    :cond_20
    :goto_15
    move-wide v1, v8

    move-object/from16 v16, v14

    move-object v4, v15

    goto/16 :goto_20

    :cond_21
    iget-boolean v5, v15, Lflj;->V:Z

    if-eqz v5, :cond_22

    iput-boolean v12, v15, Lflj;->V:Z

    invoke-interface {v6, v2, v12}, Lrkj;->h(IZ)V

    goto :goto_14

    :cond_22
    iget v5, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-nez v5, :cond_23

    iget v5, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_23

    invoke-virtual/range {p0 .. p0}, Lflj;->t0()V

    goto :goto_15

    :cond_23
    iput v2, v15, Lflj;->a0:I

    invoke-interface {v6, v2}, Lrkj;->zzg(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, v15, Lflj;->b0:Ljava/nio/ByteBuffer;

    if-eqz v2, :cond_24

    iget v5, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v2, v15, Lflj;->b0:Ljava/nio/ByteBuffer;

    iget v5, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v7, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v5, v7

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    :cond_24
    iget-wide v10, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual/range {p0 .. p0}, La1j;->B()J

    move-result-wide v17

    cmp-long v2, v10, v17

    if-gez v2, :cond_25

    move v2, v13

    goto :goto_16

    :cond_25
    move v2, v12

    :goto_16
    iput-boolean v2, v15, Lflj;->c0:Z

    iget-wide v10, v15, Lflj;->p0:J

    cmp-long v2, v10, v3

    if-eqz v2, :cond_26

    iget-wide v2, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    cmp-long v2, v10, v2

    if-gtz v2, :cond_26

    move v2, v13

    goto :goto_17

    :cond_26
    move v2, v12

    :goto_17
    iput-boolean v2, v15, Lflj;->d0:Z

    iget-wide v1, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-object v3, v15, Lflj;->u0:Ldlj;

    iget-object v3, v3, Ldlj;->d:Ldbh;

    invoke-virtual {v3, v1, v2}, Ldbh;->c(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lerj;

    if-nez v1, :cond_27

    iget-boolean v2, v15, Lflj;->w0:Z

    if-eqz v2, :cond_27

    iget-object v2, v15, Lflj;->L:Landroid/media/MediaFormat;

    if-eqz v2, :cond_27

    iget-object v1, v15, Lflj;->u0:Ldlj;

    iget-object v1, v1, Ldlj;->d:Ldbh;

    invoke-virtual {v1}, Ldbh;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lerj;

    :cond_27
    if-eqz v1, :cond_28

    iput-object v1, v15, Lflj;->D:Lerj;

    goto :goto_18

    :cond_28
    iget-boolean v1, v15, Lflj;->M:Z

    if-eqz v1, :cond_2a

    iget-object v1, v15, Lflj;->D:Lerj;

    if-eqz v1, :cond_2a

    :goto_18
    iget-object v1, v15, Lflj;->D:Lerj;

    if-eqz v1, :cond_29

    iget-object v2, v15, Lflj;->L:Landroid/media/MediaFormat;

    invoke-virtual {v15, v1, v2}, Lflj;->y0(Lerj;Landroid/media/MediaFormat;)V

    iput-boolean v12, v15, Lflj;->M:Z

    iput-boolean v12, v15, Lflj;->w0:Z

    goto :goto_19

    :cond_29
    throw v14
    :try_end_f
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_f .. :try_end_f} :catch_8
    .catch Ljava/lang/IllegalStateException; {:try_start_f .. :try_end_f} :catch_7

    :cond_2a
    :goto_19
    :try_start_10
    iget-object v7, v15, Lflj;->b0:Ljava/nio/ByteBuffer;

    iget v10, v15, Lflj;->a0:I

    iget-object v11, v15, Lflj;->z:Landroid/media/MediaCodec$BufferInfo;

    iget v4, v11, Landroid/media/MediaCodec$BufferInfo;->flags:I

    iget-wide v2, v11, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-boolean v5, v15, Lflj;->c0:Z

    iget-boolean v1, v15, Lflj;->d0:Z

    iget-object v14, v15, Lflj;->D:Lerj;
    :try_end_10
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_10 .. :try_end_10} :catch_1c
    .catch Ljava/lang/IllegalStateException; {:try_start_10 .. :try_end_10} :catch_1b

    if-eqz v14, :cond_4f

    const/16 v17, 0x1

    move/from16 v18, v1

    move-object/from16 v1, p0

    move-wide/from16 v19, v2

    move-wide/from16 v2, p1

    move/from16 v21, v4

    move/from16 v22, v5

    move-wide/from16 v4, p3

    move-wide/from16 v23, v8

    move v8, v10

    move/from16 v9, v21

    move/from16 v10, v17

    move-object/from16 v25, v11

    move-wide/from16 v11, v19

    move/from16 v13, v22

    move-object/from16 v17, v14

    const/16 v16, 0x0

    move/from16 v14, v18

    move-object/from16 v15, v17

    :try_start_11
    invoke-virtual/range {v1 .. v15}, Lflj;->C0(JJLrkj;Ljava/nio/ByteBuffer;IIIJZZLerj;)Z

    move-result v1
    :try_end_11
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_11 .. :try_end_11} :catch_1a
    .catch Ljava/lang/IllegalStateException; {:try_start_11 .. :try_end_11} :catch_19

    if-eqz v1, :cond_2f

    move-object/from16 v1, v25

    :try_start_12
    iget-wide v2, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J
    :try_end_12
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_12 .. :try_end_12} :catch_11
    .catch Ljava/lang/IllegalStateException; {:try_start_12 .. :try_end_12} :catch_10

    move-object/from16 v4, p0

    :try_start_13
    invoke-virtual {v4, v2, v3}, Lflj;->P(J)V

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2b

    const/4 v14, 0x1

    goto :goto_1a

    :cond_2b
    const/4 v14, 0x0

    :goto_1a
    if-nez v14, :cond_2c

    iget-boolean v1, v4, Lflj;->m0:Z

    if-eqz v1, :cond_2c

    iget-boolean v1, v4, Lflj;->d0:Z

    if-eqz v1, :cond_2c

    invoke-virtual/range {p0 .. p0}, La1j;->D()Ltbg;

    move-result-object v1

    invoke-interface {v1}, Ltbg;->zza()J

    move-result-wide v1

    iput-wide v1, v4, Lflj;->X:J

    goto :goto_1d

    :catch_e
    move-exception v0

    :goto_1b
    move-object v1, v0

    goto/16 :goto_5

    :catch_f
    move-exception v0

    :goto_1c
    move-object v1, v0

    goto/16 :goto_7

    :cond_2c
    :goto_1d
    invoke-virtual/range {p0 .. p0}, Lflj;->c0()V

    if-eqz v14, :cond_2d

    invoke-virtual/range {p0 .. p0}, Lflj;->t0()V

    :goto_1e
    move-wide/from16 v1, v23

    goto :goto_20

    :cond_2d
    move-wide/from16 v1, v23

    :goto_1f
    invoke-virtual {v4, v1, v2}, Lflj;->j0(J)Z

    move-result v3
    :try_end_13
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_13 .. :try_end_13} :catch_f
    .catch Ljava/lang/IllegalStateException; {:try_start_13 .. :try_end_13} :catch_e

    if-nez v3, :cond_2e

    goto :goto_20

    :cond_2e
    move-wide v8, v1

    move-object v15, v4

    move-object/from16 v14, v16

    const/4 v10, -0x5

    const/4 v11, 0x2

    const/4 v12, 0x0

    const/4 v13, 0x1

    goto/16 :goto_13

    :catch_10
    move-exception v0

    move-object/from16 v4, p0

    goto :goto_1b

    :catch_11
    move-exception v0

    move-object/from16 v4, p0

    goto :goto_1c

    :cond_2f
    move-object/from16 v4, p0

    goto :goto_1e

    :goto_20
    :try_start_14
    iget-object v5, v4, Lflj;->J:Lrkj;

    if-eqz v5, :cond_30

    iget v3, v4, Lflj;->j0:I

    const/4 v12, 0x2

    if-eq v3, v12, :cond_30

    iget-boolean v3, v4, Lflj;->q0:Z

    if-eqz v3, :cond_31

    :cond_30
    const/4 v3, 0x0

    const/4 v13, 0x1

    goto/16 :goto_2a

    :cond_31
    iget v3, v4, Lflj;->Z:I
    :try_end_14
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_14 .. :try_end_14} :catch_17
    .catch Ljava/lang/IllegalStateException; {:try_start_14 .. :try_end_14} :catch_18

    if-gez v3, :cond_32

    :try_start_15
    invoke-interface {v5}, Lrkj;->zza()I

    move-result v3

    iput v3, v4, Lflj;->Z:I

    if-ltz v3, :cond_30

    iget-object v6, v4, Lflj;->w:Lxzi;

    invoke-interface {v5, v3}, Lrkj;->e(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    iput-object v3, v6, Lxzi;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Lezi;->b()V
    :try_end_15
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_15 .. :try_end_15} :catch_f
    .catch Ljava/lang/IllegalStateException; {:try_start_15 .. :try_end_15} :catch_e

    :cond_32
    :try_start_16
    iget v3, v4, Lflj;->j0:I
    :try_end_16
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_16 .. :try_end_16} :catch_17
    .catch Ljava/lang/IllegalStateException; {:try_start_16 .. :try_end_16} :catch_18

    const/4 v13, 0x1

    if-ne v3, v13, :cond_34

    :try_start_17
    iget-boolean v1, v4, Lflj;->W:Z

    if-nez v1, :cond_33

    iput-boolean v13, v4, Lflj;->m0:Z

    iget v6, v4, Lflj;->Z:I

    const-wide/16 v9, 0x0

    const/4 v11, 0x4

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface/range {v5 .. v11}, Lrkj;->a(IIIJI)V

    invoke-direct/range {p0 .. p0}, Lflj;->z0()V

    goto :goto_21

    :catch_12
    move-exception v0

    move-object v1, v0

    goto/16 :goto_9

    :cond_33
    :goto_21
    iput v12, v4, Lflj;->j0:I
    :try_end_17
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_17 .. :try_end_17} :catch_f
    .catch Ljava/lang/IllegalStateException; {:try_start_17 .. :try_end_17} :catch_12

    const/4 v3, 0x0

    goto/16 :goto_2a

    :cond_34
    :try_start_18
    iget-boolean v3, v4, Lflj;->U:Z
    :try_end_18
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_18 .. :try_end_18} :catch_17
    .catch Ljava/lang/IllegalStateException; {:try_start_18 .. :try_end_18} :catch_16

    if-eqz v3, :cond_36

    const/4 v3, 0x0

    :try_start_19
    iput-boolean v3, v4, Lflj;->U:Z

    iget-object v6, v4, Lflj;->w:Lxzi;

    iget-object v6, v6, Lxzi;->d:Ljava/nio/ByteBuffer;

    if-eqz v6, :cond_35

    sget-object v7, Lflj;->A0:[B

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    iget v6, v4, Lflj;->Z:I

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x26

    invoke-interface/range {v5 .. v11}, Lrkj;->a(IIIJI)V

    invoke-direct/range {p0 .. p0}, Lflj;->z0()V

    iput-boolean v13, v4, Lflj;->l0:Z

    goto/16 :goto_29

    :catch_13
    move-exception v0

    :goto_22
    move-object v1, v0

    goto/16 :goto_2e

    :catch_14
    move-exception v0

    :goto_23
    move-object v1, v0

    goto/16 :goto_32

    :cond_35
    throw v16

    :cond_36
    const/4 v3, 0x0

    iget v6, v4, Lflj;->i0:I

    if-ne v6, v13, :cond_3a

    move v14, v3

    :goto_24
    iget-object v6, v4, Lflj;->K:Lerj;

    if-eqz v6, :cond_39

    iget-object v6, v6, Lerj;->r:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v14, v6, :cond_38

    iget-object v6, v4, Lflj;->K:Lerj;

    iget-object v6, v6, Lerj;->r:Ljava/util/List;

    invoke-interface {v6, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    iget-object v7, v4, Lflj;->w:Lxzi;

    iget-object v7, v7, Lxzi;->d:Ljava/nio/ByteBuffer;

    if-eqz v7, :cond_37

    invoke-virtual {v7, v6}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    add-int/lit8 v14, v14, 0x1

    goto :goto_24

    :cond_37
    throw v16

    :cond_38
    iput v12, v4, Lflj;->i0:I

    goto :goto_25

    :cond_39
    throw v16

    :cond_3a
    :goto_25
    iget-object v6, v4, Lflj;->w:Lxzi;

    iget-object v7, v6, Lxzi;->d:Ljava/nio/ByteBuffer;

    if-eqz v7, :cond_4d

    invoke-virtual {v7}, Ljava/nio/Buffer;->position()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, La1j;->E()Lp7j;

    move-result-object v8
    :try_end_19
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_19 .. :try_end_19} :catch_14
    .catch Ljava/lang/IllegalStateException; {:try_start_19 .. :try_end_19} :catch_13

    :try_start_1a
    invoke-virtual {v4, v8, v6, v3}, La1j;->y(Lp7j;Lxzi;I)I

    move-result v6
    :try_end_1a
    .catch Lcom/google/android/gms/internal/ads/zzhm; {:try_start_1a .. :try_end_1a} :catch_15
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_1a .. :try_end_1a} :catch_14
    .catch Ljava/lang/IllegalStateException; {:try_start_1a .. :try_end_1a} :catch_13

    const/4 v9, -0x3

    if-ne v6, v9, :cond_3b

    :try_start_1b
    invoke-virtual/range {p0 .. p0}, La1j;->zzQ()Z

    move-result v1

    if-eqz v1, :cond_4e

    iget-wide v1, v4, Lflj;->o0:J

    iput-wide v1, v4, Lflj;->p0:J

    goto/16 :goto_2a

    :cond_3b
    const/4 v14, -0x5

    if-ne v6, v14, :cond_3d

    iget v5, v4, Lflj;->i0:I

    if-ne v5, v12, :cond_3c

    iget-object v5, v4, Lflj;->w:Lxzi;

    invoke-virtual {v5}, Lezi;->b()V

    iput v13, v4, Lflj;->i0:I

    :cond_3c
    invoke-virtual {v4, v8}, Lflj;->n0(Lp7j;)Lg1j;

    goto/16 :goto_29

    :cond_3d
    iget-object v6, v4, Lflj;->w:Lxzi;

    invoke-virtual {v6}, Lezi;->f()Z

    move-result v8

    if-eqz v8, :cond_40

    iget-wide v1, v4, Lflj;->o0:J

    iput-wide v1, v4, Lflj;->p0:J

    iget v1, v4, Lflj;->i0:I

    if-ne v1, v12, :cond_3e

    invoke-virtual {v6}, Lezi;->b()V

    iput v13, v4, Lflj;->i0:I

    :cond_3e
    iput-boolean v13, v4, Lflj;->q0:Z

    iget-boolean v1, v4, Lflj;->l0:Z

    if-nez v1, :cond_3f

    invoke-virtual/range {p0 .. p0}, Lflj;->t0()V

    goto/16 :goto_2a

    :cond_3f
    iget-boolean v1, v4, Lflj;->W:Z

    if-nez v1, :cond_4e

    iput-boolean v13, v4, Lflj;->m0:Z

    iget v6, v4, Lflj;->Z:I

    const-wide/16 v9, 0x0

    const/4 v11, 0x4

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface/range {v5 .. v11}, Lrkj;->a(IIIJI)V

    invoke-direct/range {p0 .. p0}, Lflj;->z0()V

    goto/16 :goto_2a

    :cond_40
    iget-boolean v8, v4, Lflj;->l0:Z

    if-nez v8, :cond_41

    invoke-virtual {v6}, Lezi;->g()Z

    move-result v8

    if-nez v8, :cond_41

    invoke-virtual {v6}, Lezi;->b()V

    iget v5, v4, Lflj;->i0:I

    if-ne v5, v12, :cond_4c

    iput v13, v4, Lflj;->i0:I

    goto/16 :goto_29

    :cond_41
    invoke-virtual {v4, v6}, Lflj;->Z(Lxzi;)Z

    move-result v8

    if-nez v8, :cond_4c

    invoke-virtual {v6}, Lxzi;->l()Z

    move-result v8

    if-eqz v8, :cond_42

    iget-object v9, v6, Lxzi;->c:Lpzi;

    invoke-virtual {v9, v7}, Lpzi;->b(I)V

    :cond_42
    iget-wide v9, v6, Lxzi;->f:J

    iget-boolean v7, v4, Lflj;->s0:Z

    if-eqz v7, :cond_46

    iget-object v7, v4, Lflj;->A:Ljava/util/ArrayDeque;

    invoke-virtual {v7}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_44

    invoke-virtual {v7}, Ljava/util/ArrayDeque;->peekLast()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ldlj;

    iget-object v7, v7, Ldlj;->d:Ldbh;

    iget-object v11, v4, Lflj;->C:Lerj;

    if-eqz v11, :cond_43

    invoke-virtual {v7, v9, v10, v11}, Ldbh;->d(JLjava/lang/Object;)V

    goto :goto_26

    :cond_43
    throw v16

    :cond_44
    iget-object v7, v4, Lflj;->u0:Ldlj;

    iget-object v7, v7, Ldlj;->d:Ldbh;

    iget-object v11, v4, Lflj;->C:Lerj;

    if-eqz v11, :cond_45

    invoke-virtual {v7, v9, v10, v11}, Ldbh;->d(JLjava/lang/Object;)V

    :goto_26
    iput-boolean v3, v4, Lflj;->s0:Z

    goto :goto_27

    :cond_45
    throw v16

    :cond_46
    :goto_27
    iget-wide v14, v4, Lflj;->o0:J

    invoke-static {v14, v15, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v14

    iput-wide v14, v4, Lflj;->o0:J

    invoke-virtual/range {p0 .. p0}, La1j;->zzQ()Z

    move-result v7

    if-nez v7, :cond_47

    invoke-virtual {v6}, Lezi;->h()Z

    move-result v7

    if-eqz v7, :cond_48

    :cond_47
    iput-wide v14, v4, Lflj;->p0:J

    :cond_48
    invoke-virtual {v6}, Lxzi;->k()V

    invoke-virtual {v6}, Lezi;->e()Z

    move-result v7

    if-eqz v7, :cond_49

    invoke-virtual {v4, v6}, Lflj;->u0(Lxzi;)V

    :cond_49
    invoke-virtual {v4, v6}, Lflj;->Q(Lxzi;)V

    invoke-virtual {v4, v6}, Lflj;->F0(Lxzi;)I

    if-eqz v8, :cond_4a

    iget v7, v4, Lflj;->Z:I

    iget-object v8, v6, Lxzi;->c:Lpzi;

    const/4 v11, 0x0

    const/4 v14, 0x0

    move v6, v7

    move v7, v14

    invoke-interface/range {v5 .. v11}, Lrkj;->d(IILpzi;JI)V

    goto :goto_28

    :cond_4a
    iget v7, v4, Lflj;->Z:I

    iget-object v6, v6, Lxzi;->d:Ljava/nio/ByteBuffer;

    if-eqz v6, :cond_4b

    invoke-virtual {v6}, Ljava/nio/Buffer;->limit()I

    move-result v8

    const/4 v11, 0x0

    const/4 v14, 0x0

    move v6, v7

    move v7, v14

    invoke-interface/range {v5 .. v11}, Lrkj;->a(IIIJI)V

    :goto_28
    invoke-direct/range {p0 .. p0}, Lflj;->z0()V

    iput-boolean v13, v4, Lflj;->l0:Z

    iput v3, v4, Lflj;->i0:I

    iget-object v5, v4, Lflj;->t0:Ld1j;

    iget v6, v5, Ld1j;->c:I

    add-int/2addr v6, v13

    iput v6, v5, Ld1j;->c:I

    goto :goto_29

    :cond_4b
    throw v16

    :catch_15
    move-exception v0

    move-object v5, v0

    invoke-virtual {v4, v5}, Lflj;->v0(Ljava/lang/Exception;)V

    invoke-virtual {v4, v3}, Lflj;->i0(I)Z

    invoke-virtual/range {p0 .. p0}, Lflj;->s0()V

    :cond_4c
    :goto_29
    invoke-virtual {v4, v1, v2}, Lflj;->j0(J)Z

    move-result v5

    if-eqz v5, :cond_4e

    goto/16 :goto_20

    :cond_4d
    throw v16

    :catch_16
    move-exception v0

    const/4 v3, 0x0

    goto/16 :goto_22

    :catch_17
    move-exception v0

    const/4 v3, 0x0

    goto/16 :goto_23

    :catch_18
    move-exception v0

    const/4 v3, 0x0

    const/4 v13, 0x1

    goto/16 :goto_22

    :cond_4e
    :goto_2a
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_2d

    :catch_19
    move-exception v0

    const/4 v3, 0x0

    const/4 v13, 0x1

    move-object/from16 v4, p0

    goto/16 :goto_22

    :catch_1a
    move-exception v0

    const/4 v3, 0x0

    move-object/from16 v4, p0

    goto/16 :goto_23

    :cond_4f
    move v3, v12

    move-object v4, v15

    const/16 v16, 0x0

    throw v16

    :catch_1b
    move-exception v0

    move v3, v12

    :goto_2b
    move-object v4, v15

    goto/16 :goto_22

    :catch_1c
    move-exception v0

    move v3, v12

    :goto_2c
    move-object v4, v15

    goto/16 :goto_23

    :cond_50
    move v3, v12

    move-object/from16 v16, v14

    move-object v4, v15

    throw v16

    :cond_51
    move v3, v12

    move-object v4, v15

    iget-object v1, v4, Lflj;->t0:Ld1j;

    iget v2, v1, Ld1j;->d:I

    invoke-virtual/range {p0 .. p2}, La1j;->A(J)I

    move-result v5

    add-int/2addr v2, v5

    iput v2, v1, Ld1j;->d:I

    invoke-virtual {v4, v13}, Lflj;->i0(I)Z

    :goto_2d
    iget-object v1, v4, Lflj;->t0:Ld1j;

    invoke-virtual {v1}, Ld1j;->a()V
    :try_end_1b
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_1b .. :try_end_1b} :catch_14
    .catch Ljava/lang/IllegalStateException; {:try_start_1b .. :try_end_1b} :catch_13

    return-void

    :catch_1d
    move-exception v0

    move v3, v14

    goto :goto_2b

    :catch_1e
    move-exception v0

    move v3, v14

    goto :goto_2c

    :goto_2e
    instance-of v2, v1, Landroid/media/MediaCodec$CodecException;

    if-eqz v2, :cond_52

    goto :goto_2f

    :cond_52
    invoke-virtual {v1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    array-length v6, v5

    if-lez v6, :cond_56

    aget-object v5, v5, v3

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "android.media.MediaCodec"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_56

    :goto_2f
    invoke-virtual {v4, v1}, Lflj;->v0(Ljava/lang/Exception;)V

    if-eqz v2, :cond_53

    move-object v2, v1

    check-cast v2, Landroid/media/MediaCodec$CodecException;

    invoke-virtual {v2}, Landroid/media/MediaCodec$CodecException;->isRecoverable()Z

    move-result v2

    if-eqz v2, :cond_53

    move v14, v13

    goto :goto_30

    :cond_53
    move v14, v3

    :goto_30
    if-eqz v14, :cond_54

    invoke-virtual/range {p0 .. p0}, Lflj;->R()V

    :cond_54
    iget-object v2, v4, Lflj;->Q:Ltkj;

    invoke-virtual {v4, v1, v2}, Lflj;->L(Ljava/lang/Throwable;Ltkj;)Lcom/google/android/gms/internal/ads/zzsy;

    move-result-object v1

    iget v2, v1, Lcom/google/android/gms/internal/ads/zzsy;->zza:I

    const/16 v3, 0x44d

    if-ne v2, v3, :cond_55

    const/16 v2, 0xfa6

    goto :goto_31

    :cond_55
    const/16 v2, 0xfa3

    :goto_31
    iget-object v3, v4, Lflj;->C:Lerj;

    invoke-virtual {v4, v1, v3, v14, v2}, La1j;->z(Ljava/lang/Throwable;Lerj;ZI)Lcom/google/android/gms/internal/ads/zzii;

    move-result-object v1

    throw v1

    :cond_56
    throw v1

    :goto_32
    iget-object v2, v4, Lflj;->C:Lerj;

    invoke-virtual {v1}, Landroid/media/MediaCodec$CryptoException;->getErrorCode()I

    move-result v5

    invoke-static {v5}, Lkfh;->G(I)I

    move-result v5

    invoke-virtual {v4, v1, v2, v3, v5}, La1j;->z(Ljava/lang/Throwable;Lerj;ZI)Lcom/google/android/gms/internal/ads/zzii;

    move-result-object v1

    throw v1
.end method

.method public abstract m0(Ltkj;Lerj;Lerj;)Lg1j;
.end method

.method public n0(Lp7j;)Lg1j;
    .locals 12

    const/4 v0, 0x1

    iput-boolean v0, p0, Lflj;->s0:Z

    iget-object v1, p1, Lp7j;->a:Lerj;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v1, Lerj;->o:Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz v2, :cond_13

    const-string v4, "video/av01"

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    iget-object v2, v1, Lerj;->r:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lerj;->b()Lgpj;

    move-result-object v1

    invoke-virtual {v1, v4}, Lgpj;->p(Ljava/util/List;)Lgpj;

    invoke-virtual {v1}, Lgpj;->K()Lerj;

    move-result-object v1

    :cond_0
    move-object v8, v1

    iget-object p1, p1, Lp7j;->b:Lpjj;

    iput-object p1, p0, Lflj;->z0:Lpjj;

    iput-object v8, p0, Lflj;->C:Lerj;

    iget-boolean p1, p0, Lflj;->e0:Z

    if-eqz p1, :cond_1

    iput-boolean v0, p0, Lflj;->g0:Z

    return-object v4

    :cond_1
    iget-object p1, p0, Lflj;->J:Lrkj;

    if-nez p1, :cond_2

    iput-object v4, p0, Lflj;->O:Ljava/util/ArrayDeque;

    invoke-virtual {p0}, Lflj;->O()V

    return-object v4

    :cond_2
    iget-object v1, p0, Lflj;->Q:Ltkj;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v7, p0, Lflj;->K:Lerj;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Lflj;->y0:Lpjj;

    iget-object v4, p0, Lflj;->z0:Lpjj;

    if-ne v2, v4, :cond_12

    if-eq v4, v2, :cond_3

    move v2, v0

    goto :goto_0

    :cond_3
    move v2, v3

    :goto_0
    if-eqz v2, :cond_4

    sget v4, Lkfh;->a:I

    :cond_4
    invoke-virtual {p0, v1, v7, v8}, Lflj;->m0(Ltkj;Lerj;Lerj;)Lg1j;

    move-result-object v4

    iget v5, v4, Lg1j;->d:I

    const/4 v6, 0x3

    if-eqz v5, :cond_f

    const/16 v9, 0x10

    const/4 v10, 0x2

    if-eq v5, v0, :cond_b

    if-eq v5, v10, :cond_7

    invoke-virtual {p0, v8}, Lflj;->k0(Lerj;)Z

    move-result v0

    if-nez v0, :cond_5

    :goto_1
    move v10, v9

    goto/16 :goto_4

    :cond_5
    iput-object v8, p0, Lflj;->K:Lerj;

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lflj;->f0()Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_4

    :cond_6
    :goto_2
    move v10, v3

    goto :goto_4

    :cond_7
    invoke-virtual {p0, v8}, Lflj;->k0(Lerj;)Z

    move-result v11

    if-nez v11, :cond_8

    goto :goto_1

    :cond_8
    iput-boolean v0, p0, Lflj;->h0:Z

    iput v0, p0, Lflj;->i0:I

    iget v9, p0, Lflj;->R:I

    if-eq v9, v10, :cond_a

    if-ne v9, v0, :cond_9

    iget v9, v8, Lerj;->v:I

    iget v11, v7, Lerj;->v:I

    if-ne v9, v11, :cond_9

    iget v9, v8, Lerj;->w:I

    iget v11, v7, Lerj;->w:I

    if-ne v9, v11, :cond_9

    goto :goto_3

    :cond_9
    move v0, v3

    :cond_a
    :goto_3
    iput-boolean v0, p0, Lflj;->U:Z

    iput-object v8, p0, Lflj;->K:Lerj;

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lflj;->f0()Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_4

    :cond_b
    invoke-virtual {p0, v8}, Lflj;->k0(Lerj;)Z

    move-result v11

    if-nez v11, :cond_c

    goto :goto_1

    :cond_c
    iput-object v8, p0, Lflj;->K:Lerj;

    if-eqz v2, :cond_d

    invoke-virtual {p0}, Lflj;->f0()Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_4

    :cond_d
    iget-boolean v2, p0, Lflj;->l0:Z

    if-eqz v2, :cond_6

    iput v0, p0, Lflj;->j0:I

    iget-boolean v2, p0, Lflj;->T:Z

    if-eqz v2, :cond_e

    iput v6, p0, Lflj;->k0:I

    goto :goto_4

    :cond_e
    iput v0, p0, Lflj;->k0:I

    goto :goto_2

    :cond_f
    invoke-virtual {p0}, Lflj;->p0()V

    goto :goto_2

    :goto_4
    if-eqz v5, :cond_11

    iget-object v0, p0, Lflj;->J:Lrkj;

    if-ne v0, p1, :cond_10

    iget p0, p0, Lflj;->k0:I

    if-ne p0, v6, :cond_11

    :cond_10
    iget-object v6, v1, Ltkj;->a:Ljava/lang/String;

    new-instance p0, Lg1j;

    const/4 v9, 0x0

    move-object v5, p0

    invoke-direct/range {v5 .. v10}, Lg1j;-><init>(Ljava/lang/String;Lerj;Lerj;II)V

    return-object p0

    :cond_11
    return-object v4

    :cond_12
    invoke-virtual {p0}, Lflj;->p0()V

    iget-object v6, v1, Ltkj;->a:Ljava/lang/String;

    new-instance p0, Lg1j;

    const/4 v9, 0x0

    const/16 v10, 0x80

    move-object v5, p0

    invoke-direct/range {v5 .. v10}, Lg1j;-><init>(Ljava/lang/String;Lerj;Lerj;II)V

    return-object p0

    :cond_13
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Sample MIME type is null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    const/16 v0, 0xfa5

    invoke-virtual {p0, p1, v1, v3, v0}, La1j;->z(Ljava/lang/Throwable;Lerj;ZI)Lcom/google/android/gms/internal/ads/zzii;

    move-result-object p0

    throw p0
.end method

.method public final o0()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lflj;->g0:Z

    iget-object v1, p0, Lflj;->y:Likj;

    invoke-virtual {v1}, Lezi;->b()V

    iget-object v1, p0, Lflj;->x:Lxzi;

    invoke-virtual {v1}, Lezi;->b()V

    iput-boolean v0, p0, Lflj;->f0:Z

    iput-boolean v0, p0, Lflj;->e0:Z

    iget-object p0, p0, Lflj;->B:Lejj;

    invoke-virtual {p0}, Lejj;->b()V

    return-void
.end method

.method public final p0()V
    .locals 1

    iget-boolean v0, p0, Lflj;->l0:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput v0, p0, Lflj;->j0:I

    const/4 v0, 0x3

    iput v0, p0, Lflj;->k0:I

    return-void

    :cond_0
    invoke-virtual {p0}, Lflj;->R()V

    invoke-virtual {p0}, Lflj;->O()V

    return-void
.end method

.method public abstract q0(Ltkj;Lerj;Landroid/media/MediaCrypto;F)Lokj;
.end method

.method public r()V
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lflj;->o0()V

    invoke-virtual {p0}, Lflj;->R()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v0, p0, Lflj;->z0:Lpjj;

    return-void

    :catchall_0
    move-exception v1

    iput-object v0, p0, Lflj;->z0:Lpjj;

    throw v1
.end method

.method public abstract r0(Lhlj;Lerj;Z)Ljava/util/List;
.end method

.method public final s0()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lflj;->J:Lrkj;

    invoke-static {v0}, Ln7g;->b(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0}, Lrkj;->zzj()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lflj;->S()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lflj;->S()V

    throw v0
.end method

.method public final t0()V
    .locals 3

    iget v0, p0, Lflj;->k0:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    iput-boolean v1, p0, Lflj;->r0:Z

    invoke-virtual {p0}, Lflj;->B0()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lflj;->R()V

    invoke-virtual {p0}, Lflj;->O()V

    return-void

    :cond_1
    invoke-virtual {p0}, Lflj;->s0()V

    invoke-direct {p0}, Lflj;->e0()V

    return-void

    :cond_2
    invoke-virtual {p0}, Lflj;->s0()V

    return-void
.end method

.method public u([Lerj;JJLbnj;)V
    .locals 12

    move-object v0, p0

    iget-object v1, v0, Lflj;->u0:Ldlj;

    iget-wide v1, v1, Ldlj;->c:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    new-instance v1, Ldlj;

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    move-object v5, v1

    move-wide v8, p2

    move-wide/from16 v10, p4

    invoke-direct/range {v5 .. v11}, Ldlj;-><init>(JJJ)V

    invoke-virtual {p0, v1}, Lflj;->d0(Ldlj;)V

    iget-boolean v1, v0, Lflj;->x0:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lflj;->A0()V

    return-void

    :cond_0
    iget-object v1, v0, Lflj;->A:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-wide v5, v0, Lflj;->o0:J

    cmp-long v2, v5, v3

    if-eqz v2, :cond_1

    iget-wide v7, v0, Lflj;->v0:J

    cmp-long v2, v7, v3

    if-eqz v2, :cond_3

    cmp-long v2, v7, v5

    if-ltz v2, :cond_3

    :cond_1
    new-instance v1, Ldlj;

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    move-object v5, v1

    move-wide v8, p2

    move-wide/from16 v10, p4

    invoke-direct/range {v5 .. v11}, Ldlj;-><init>(JJJ)V

    invoke-virtual {p0, v1}, Lflj;->d0(Ldlj;)V

    iget-object v1, v0, Lflj;->u0:Ldlj;

    iget-wide v1, v1, Ldlj;->c:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lflj;->A0()V

    :cond_2
    return-void

    :cond_3
    new-instance v9, Ldlj;

    iget-wide v3, v0, Lflj;->o0:J

    move-object v2, v9

    move-wide v5, p2

    move-wide/from16 v7, p4

    invoke-direct/range {v2 .. v8}, Ldlj;-><init>(JJJ)V

    invoke-virtual {v1, v9}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public abstract u0(Lxzi;)V
.end method

.method public abstract v0(Ljava/lang/Exception;)V
.end method

.method public abstract w0(Ljava/lang/String;Lokj;JJ)V
.end method

.method public abstract x0(Ljava/lang/String;)V
.end method

.method public abstract y0(Lerj;Landroid/media/MediaFormat;)V
.end method

.method public zzX()Z
    .locals 7

    iget-object v0, p0, Lflj;->C:Lerj;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, La1j;->v()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lflj;->g0()Z

    move-result v0

    if-nez v0, :cond_1

    iget-wide v3, p0, Lflj;->Y:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v3, v5

    if-eqz v0, :cond_2

    invoke-virtual {p0}, La1j;->D()Ltbg;

    move-result-object v0

    invoke-interface {v0}, Ltbg;->zzb()J

    move-result-wide v3

    iget-wide v5, p0, Lflj;->Y:J

    cmp-long p0, v3, v5

    if-ltz p0, :cond_0

    goto :goto_0

    :cond_0
    return v2

    :cond_1
    move v1, v2

    :cond_2
    :goto_0
    return v1
.end method

.method public final zze()I
    .locals 0

    const/16 p0, 0x8

    return p0
.end method
