.class public final Lf29;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llrb;
.implements Lxq0;


# instance fields
.field public final b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final d:Lji8;

.field public final e:Lb64;

.field public final f:Laoa;

.field public final g:Laoa;

.field public final h:[F

.field public final i:[F

.field public j:I

.field public k:Landroid/graphics/SurfaceTexture;

.field public volatile l:I

.field public m:I

.field public n:[B


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lf29;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lf29;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Lji8;

    invoke-direct {v0}, Lji8;-><init>()V

    iput-object v0, p0, Lf29;->d:Lji8;

    new-instance v0, Lb64;

    invoke-direct {v0}, Lb64;-><init>()V

    iput-object v0, p0, Lf29;->e:Lb64;

    new-instance v0, Laoa;

    invoke-direct {v0}, Laoa;-><init>()V

    iput-object v0, p0, Lf29;->f:Laoa;

    new-instance v0, Laoa;

    invoke-direct {v0}, Laoa;-><init>()V

    iput-object v0, p0, Lf29;->g:Laoa;

    const/16 v0, 0x10

    new-array v1, v0, [F

    iput-object v1, p0, Lf29;->h:[F

    new-array v0, v0, [F

    iput-object v0, p0, Lf29;->i:[F

    const/4 v0, 0x0

    iput v0, p0, Lf29;->l:I

    const/4 v0, -0x1

    iput v0, p0, Lf29;->m:I

    return-void
.end method

.method public static synthetic b(Lf29;Landroid/graphics/SurfaceTexture;)V
    .locals 0

    invoke-virtual {p0, p1}, Lf29;->e(Landroid/graphics/SurfaceTexture;)V

    return-void
.end method


# virtual methods
.method public a(JJLcom/google/android/exoplayer2/k;Landroid/media/MediaFormat;)V
    .locals 0

    iget-object p6, p0, Lf29;->f:Laoa;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p6, p3, p4, p1}, Laoa;->a(JLjava/lang/Object;)V

    iget-object p1, p5, Lcom/google/android/exoplayer2/k;->w:[B

    iget p2, p5, Lcom/google/android/exoplayer2/k;->x:I

    invoke-virtual {p0, p1, p2, p3, p4}, Lf29;->g([BIJ)V

    return-void
.end method

.method public c([FZ)V
    .locals 8

    const/16 v0, 0x4000

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    invoke-static {}, Lcom/google/android/exoplayer2/util/GlUtil;->c()V

    iget-object v0, p0, Lf29;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lf29;->k:Landroid/graphics/SurfaceTexture;

    invoke-static {v0}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    invoke-static {}, Lcom/google/android/exoplayer2/util/GlUtil;->c()V

    iget-object v0, p0, Lf29;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lf29;->h:[F

    invoke-static {v0, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    :cond_0
    iget-object v0, p0, Lf29;->k:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->getTimestamp()J

    move-result-wide v0

    iget-object v2, p0, Lf29;->f:Laoa;

    invoke-virtual {v2, v0, v1}, Laoa;->g(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    if-eqz v2, :cond_1

    iget-object v3, p0, Lf29;->e:Lb64;

    iget-object v4, p0, Lf29;->h:[F

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6}, Lb64;->c([FJ)Z

    :cond_1
    iget-object v2, p0, Lf29;->g:Laoa;

    invoke-virtual {v2, v0, v1}, Laoa;->j(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhi8;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lf29;->d:Lji8;

    invoke-virtual {v1, v0}, Lji8;->d(Lhi8;)V

    :cond_2
    iget-object v2, p0, Lf29;->i:[F

    iget-object v6, p0, Lf29;->h:[F

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v4, p1

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    iget-object p1, p0, Lf29;->d:Lji8;

    iget v0, p0, Lf29;->j:I

    iget-object p0, p0, Lf29;->i:[F

    invoke-virtual {p1, v0, p0, p2}, Lji8;->a(I[FZ)V

    return-void
.end method

.method public d()Landroid/graphics/SurfaceTexture;
    .locals 2

    const/high16 v0, 0x3f000000    # 0.5f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v0, v0, v1}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    invoke-static {}, Lcom/google/android/exoplayer2/util/GlUtil;->c()V

    iget-object v0, p0, Lf29;->d:Lji8;

    invoke-virtual {v0}, Lji8;->b()V

    invoke-static {}, Lcom/google/android/exoplayer2/util/GlUtil;->c()V

    invoke-static {}, Lcom/google/android/exoplayer2/util/GlUtil;->f()I

    move-result v0

    iput v0, p0, Lf29;->j:I

    new-instance v0, Landroid/graphics/SurfaceTexture;

    iget v1, p0, Lf29;->j:I

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lf29;->k:Landroid/graphics/SurfaceTexture;

    new-instance v1, Le29;

    invoke-direct {v1, p0}, Le29;-><init>(Lf29;)V

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    iget-object p0, p0, Lf29;->k:Landroid/graphics/SurfaceTexture;

    return-object p0
.end method

.method public final synthetic e(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    iget-object p0, p0, Lf29;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public f(I)V
    .locals 0

    iput p1, p0, Lf29;->l:I

    return-void
.end method

.method public final g([BIJ)V
    .locals 2

    iget-object v0, p0, Lf29;->n:[B

    iget v1, p0, Lf29;->m:I

    iput-object p1, p0, Lf29;->n:[B

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    iget p2, p0, Lf29;->l:I

    :cond_0
    iput p2, p0, Lf29;->m:I

    if-ne v1, p2, :cond_1

    iget-object p1, p0, Lf29;->n:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lf29;->n:[B

    if-eqz p1, :cond_2

    iget p2, p0, Lf29;->m:I

    invoke-static {p1, p2}, Lii8;->a([BI)Lhi8;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    invoke-static {p1}, Lji8;->c(Lhi8;)Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_1

    :cond_3
    iget p1, p0, Lf29;->m:I

    invoke-static {p1}, Lhi8;->b(I)Lhi8;

    move-result-object p1

    :goto_1
    iget-object p0, p0, Lf29;->g:Laoa;

    invoke-virtual {p0, p3, p4, p1}, Laoa;->a(JLjava/lang/Object;)V

    return-void
.end method

.method public onCameraMotion(J[F)V
    .locals 0

    iget-object p0, p0, Lf29;->e:Lb64;

    invoke-virtual {p0, p1, p2, p3}, Lb64;->e(J[F)V

    return-void
.end method

.method public onCameraMotionReset()V
    .locals 1

    iget-object v0, p0, Lf29;->f:Laoa;

    invoke-virtual {v0}, Laoa;->c()V

    iget-object v0, p0, Lf29;->e:Lb64;

    invoke-virtual {v0}, Lb64;->d()V

    iget-object p0, p0, Lf29;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
