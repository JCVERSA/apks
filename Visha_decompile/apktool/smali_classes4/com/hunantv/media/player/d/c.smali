.class public Lcom/hunantv/media/player/d/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/hunantv/media/player/d/a/c;

.field private b:Lcom/hunantv/media/player/d/a/b;

.field private c:Lcom/hunantv/media/player/d/e;

.field private d:Lcom/hunantv/media/player/d/e;

.field private e:I

.field private f:[F

.field private g:[F

.field private h:[F

.field private i:[F

.field private j:F

.field private volatile k:I

.field private volatile l:I

.field private volatile m:I

.field private volatile n:I

.field private o:Lcom/hunantv/media/player/d/a/b;

.field private p:[I

.field private q:Lcom/hunantv/media/widget/IVideoView;


# direct methods
.method public constructor <init>(III)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/hunantv/media/player/d/c;->f:[F

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/hunantv/media/player/d/c;->g:[F

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/hunantv/media/player/d/c;->h:[F

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/hunantv/media/player/d/c;->i:[F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/hunantv/media/player/d/c;->j:F

    iput p1, p0, Lcom/hunantv/media/player/d/c;->e:I

    iput p2, p0, Lcom/hunantv/media/player/d/c;->k:I

    iput p3, p0, Lcom/hunantv/media/player/d/c;->l:I

    new-instance p1, Lcom/hunantv/media/player/d/a/c;

    invoke-direct {p1}, Lcom/hunantv/media/player/d/a/c;-><init>()V

    iput-object p1, p0, Lcom/hunantv/media/player/d/c;->a:Lcom/hunantv/media/player/d/a/c;

    new-instance p1, Lcom/hunantv/media/player/d/a/b;

    invoke-direct {p1}, Lcom/hunantv/media/player/d/a/b;-><init>()V

    iput-object p1, p0, Lcom/hunantv/media/player/d/c;->b:Lcom/hunantv/media/player/d/a/b;

    new-instance p1, Lcom/hunantv/media/player/d/e;

    invoke-direct {p1}, Lcom/hunantv/media/player/d/e;-><init>()V

    iput-object p1, p0, Lcom/hunantv/media/player/d/c;->c:Lcom/hunantv/media/player/d/e;

    new-instance p1, Lcom/hunantv/media/player/d/e;

    invoke-direct {p1}, Lcom/hunantv/media/player/d/e;-><init>()V

    iput-object p1, p0, Lcom/hunantv/media/player/d/c;->d:Lcom/hunantv/media/player/d/e;

    invoke-virtual {p0, p2, p3}, Lcom/hunantv/media/player/d/c;->b(II)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 12

    .line 1
    invoke-virtual {p0}, Lcom/hunantv/media/player/d/c;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "init in"

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hunantv/media/player/d/c;->b:Lcom/hunantv/media/player/d/a/b;

    invoke-virtual {v0}, Lcom/hunantv/media/player/d/a/b;->a()V

    iget-object v0, p0, Lcom/hunantv/media/player/d/c;->a:Lcom/hunantv/media/player/d/a/c;

    invoke-virtual {v0}, Lcom/hunantv/media/player/d/a/b;->a()V

    iget-object v1, p0, Lcom/hunantv/media/player/d/c;->i:[F

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x40a00000    # 5.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v1 .. v11}, Landroid/opengl/Matrix;->setLookAtM([FIFFFFFFFFF)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/hunantv/media/player/d/c;->p:[I

    const/16 v1, 0xd33

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    invoke-virtual {p0}, Lcom/hunantv/media/player/d/c;->c()Ljava/lang/String;

    move-result-object p0

    const-string v0, "init out"

    invoke-static {p0, v0}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(II)V
    .locals 3

    .line 2
    invoke-virtual {p0}, Lcom/hunantv/media/player/d/c;->c()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processWindowSizeChanged width:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",height:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput p1, p0, Lcom/hunantv/media/player/d/c;->m:I

    iput p2, p0, Lcom/hunantv/media/player/d/c;->n:I

    iget-object p0, p0, Lcom/hunantv/media/player/d/c;->c:Lcom/hunantv/media/player/d/e;

    if-eqz p0, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/hunantv/media/player/d/e;->a(Z)V

    :cond_0
    return-void
.end method

.method public a(Lcom/hunantv/media/player/d/a/b;)V
    .locals 3

    .line 3
    invoke-virtual {p0}, Lcom/hunantv/media/player/d/c;->c()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFilter in:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/hunantv/media/player/d/a/b;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hunantv/media/player/d/c;->o:Lcom/hunantv/media/player/d/a/b;

    if-eq v0, p1, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hunantv/media/player/d/a/b;->c()V

    :cond_0
    iput-object p1, p0, Lcom/hunantv/media/player/d/c;->o:Lcom/hunantv/media/player/d/a/b;

    invoke-virtual {p1}, Lcom/hunantv/media/player/d/a/b;->a()V

    iget-object p1, p0, Lcom/hunantv/media/player/d/c;->o:Lcom/hunantv/media/player/d/a/b;

    iget v0, p0, Lcom/hunantv/media/player/d/c;->k:I

    iget v1, p0, Lcom/hunantv/media/player/d/c;->l:I

    invoke-virtual {p1, v0, v1}, Lcom/hunantv/media/player/d/a/b;->a(II)V

    :cond_1
    invoke-virtual {p0}, Lcom/hunantv/media/player/d/c;->c()Ljava/lang/String;

    move-result-object p0

    const-string p1, "setFilter out"

    invoke-static {p0, p1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/hunantv/media/widget/IVideoView;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/hunantv/media/player/d/c;->q:Lcom/hunantv/media/widget/IVideoView;

    return-void
.end method

.method public a([F)V
    .locals 14

    .line 5
    iget-object v0, p0, Lcom/hunantv/media/player/d/c;->c:Lcom/hunantv/media/player/d/e;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/hunantv/media/player/d/c;->d:Lcom/hunantv/media/player/d/e;

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/hunantv/media/player/d/e;->b()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/hunantv/media/player/d/c;->c()Ljava/lang/String;

    move-result-object v0

    const-string v2, "mFilterFBO changed init in"

    invoke-static {v0, v2}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hunantv/media/player/d/c;->d:Lcom/hunantv/media/player/d/e;

    iget v2, p0, Lcom/hunantv/media/player/d/c;->k:I

    iget v3, p0, Lcom/hunantv/media/player/d/c;->l:I

    invoke-virtual {v0, v2, v3}, Lcom/hunantv/media/player/d/e;->b(II)V

    iget-object v0, p0, Lcom/hunantv/media/player/d/c;->d:Lcom/hunantv/media/player/d/e;

    invoke-virtual {v0, v1}, Lcom/hunantv/media/player/d/e;->a(Z)V

    invoke-virtual {p0}, Lcom/hunantv/media/player/d/c;->c()Ljava/lang/String;

    move-result-object v0

    const-string v2, "mFilterFBO changed init out"

    invoke-static {v0, v2}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/hunantv/media/player/d/c;->d:Lcom/hunantv/media/player/d/e;

    invoke-virtual {v0}, Lcom/hunantv/media/player/d/e;->d()V

    iget v0, p0, Lcom/hunantv/media/player/d/c;->k:I

    iget v2, p0, Lcom/hunantv/media/player/d/c;->l:I

    invoke-static {v1, v1, v0, v2}, Landroid/opengl/GLES20;->glViewport(IIII)V

    const/16 v0, 0x4000

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    iget-object v2, p0, Lcom/hunantv/media/player/d/c;->f:[F

    iget-object v4, p0, Lcom/hunantv/media/player/d/c;->i:[F

    iget-object v6, p0, Lcom/hunantv/media/player/d/c;->h:[F

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    iget-object v12, p0, Lcom/hunantv/media/player/d/c;->f:[F

    iget-object v10, p0, Lcom/hunantv/media/player/d/c;->g:[F

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v9, 0x0

    move-object v8, v12

    invoke-static/range {v8 .. v13}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    iget-object v2, p0, Lcom/hunantv/media/player/d/c;->a:Lcom/hunantv/media/player/d/a/c;

    iget v3, p0, Lcom/hunantv/media/player/d/c;->e:I

    iget-object v4, p0, Lcom/hunantv/media/player/d/c;->f:[F

    iget v5, p0, Lcom/hunantv/media/player/d/c;->j:F

    invoke-virtual {v2, v3, v4, p1, v5}, Lcom/hunantv/media/player/d/a/c;->a(I[F[FF)V

    iget-object p1, p0, Lcom/hunantv/media/player/d/c;->c:Lcom/hunantv/media/player/d/e;

    invoke-virtual {p1}, Lcom/hunantv/media/player/d/e;->b()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/hunantv/media/player/d/c;->c()Ljava/lang/String;

    move-result-object p1

    const-string v2, "mFBO changed init in"

    invoke-static {p1, v2}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/hunantv/media/player/d/c;->c:Lcom/hunantv/media/player/d/e;

    iget v2, p0, Lcom/hunantv/media/player/d/c;->m:I

    iget v3, p0, Lcom/hunantv/media/player/d/c;->n:I

    invoke-virtual {p1, v2, v3}, Lcom/hunantv/media/player/d/e;->a(II)V

    iget-object p1, p0, Lcom/hunantv/media/player/d/c;->c:Lcom/hunantv/media/player/d/e;

    iget v2, p0, Lcom/hunantv/media/player/d/c;->k:I

    iget v3, p0, Lcom/hunantv/media/player/d/c;->l:I

    invoke-virtual {p1, v2, v3}, Lcom/hunantv/media/player/d/e;->b(II)V

    iget-object p1, p0, Lcom/hunantv/media/player/d/c;->c:Lcom/hunantv/media/player/d/e;

    invoke-virtual {p1, v1}, Lcom/hunantv/media/player/d/e;->a(Z)V

    invoke-virtual {p0}, Lcom/hunantv/media/player/d/c;->c()Ljava/lang/String;

    move-result-object p1

    const-string v2, "mFBO changed init out"

    invoke-static {p1, v2}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object p1, p0, Lcom/hunantv/media/player/d/c;->o:Lcom/hunantv/media/player/d/a/b;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/hunantv/media/player/d/c;->c:Lcom/hunantv/media/player/d/e;

    invoke-virtual {p1}, Lcom/hunantv/media/player/d/e;->d()V

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    iget-object p1, p0, Lcom/hunantv/media/player/d/c;->o:Lcom/hunantv/media/player/d/a/b;

    iget-object v0, p0, Lcom/hunantv/media/player/d/c;->d:Lcom/hunantv/media/player/d/e;

    invoke-virtual {v0}, Lcom/hunantv/media/player/d/e;->a()I

    move-result v0

    iget-object v2, p0, Lcom/hunantv/media/player/d/c;->f:[F

    invoke-virtual {p1, v0, v2}, Lcom/hunantv/media/player/d/a/b;->a(I[F)V

    :cond_3
    const p1, 0x8d40

    invoke-static {p1, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    iget-object p1, p0, Lcom/hunantv/media/player/d/c;->c:Lcom/hunantv/media/player/d/e;

    invoke-virtual {p1}, Lcom/hunantv/media/player/d/e;->e()I

    move-result p1

    iget-object v0, p0, Lcom/hunantv/media/player/d/c;->c:Lcom/hunantv/media/player/d/e;

    invoke-virtual {v0}, Lcom/hunantv/media/player/d/e;->f()I

    move-result v0

    invoke-static {v1, v1, p1, v0}, Landroid/opengl/GLES20;->glViewport(IIII)V

    const/16 p1, 0x4100

    invoke-static {p1}, Landroid/opengl/GLES20;->glClear(I)V

    iget-object p1, p0, Lcom/hunantv/media/player/d/c;->b:Lcom/hunantv/media/player/d/a/b;

    iget-object p0, p0, Lcom/hunantv/media/player/d/c;->c:Lcom/hunantv/media/player/d/e;

    invoke-virtual {p0}, Lcom/hunantv/media/player/d/e;->a()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/hunantv/media/player/d/a/b;->a(I)V

    :cond_4
    :goto_0
    return-void
.end method

.method public b()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/hunantv/media/player/d/c;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "release in"

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hunantv/media/player/d/c;->d:Lcom/hunantv/media/player/d/e;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hunantv/media/player/d/e;->c()V

    iput-object v1, p0, Lcom/hunantv/media/player/d/c;->d:Lcom/hunantv/media/player/d/e;

    :cond_0
    iget-object v0, p0, Lcom/hunantv/media/player/d/c;->c:Lcom/hunantv/media/player/d/e;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/hunantv/media/player/d/e;->c()V

    iput-object v1, p0, Lcom/hunantv/media/player/d/c;->c:Lcom/hunantv/media/player/d/e;

    :cond_1
    invoke-virtual {p0}, Lcom/hunantv/media/player/d/c;->c()Ljava/lang/String;

    move-result-object p0

    const-string v0, "release out"

    invoke-static {p0, v0}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b(II)V
    .locals 8

    .line 2
    if-lez p1, :cond_4

    if-gtz p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/hunantv/media/player/d/c;->c()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processVideoSizeChanged width:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",height:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput p1, p0, Lcom/hunantv/media/player/d/c;->k:I

    iput p2, p0, Lcom/hunantv/media/player/d/c;->l:I

    iget-object v0, p0, Lcom/hunantv/media/player/d/c;->c:Lcom/hunantv/media/player/d/e;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Lcom/hunantv/media/player/d/e;->a(Z)V

    :cond_1
    iget-object v0, p0, Lcom/hunantv/media/player/d/c;->d:Lcom/hunantv/media/player/d/e;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Lcom/hunantv/media/player/d/e;->a(Z)V

    :cond_2
    iget-object v0, p0, Lcom/hunantv/media/player/d/c;->o:Lcom/hunantv/media/player/d/a/b;

    if-eqz v0, :cond_3

    iget v1, p0, Lcom/hunantv/media/player/d/c;->k:I

    iget v2, p0, Lcom/hunantv/media/player/d/c;->l:I

    invoke-virtual {v0, v1, v2}, Lcom/hunantv/media/player/d/a/b;->a(II)V

    :cond_3
    iget-object v0, p0, Lcom/hunantv/media/player/d/c;->b:Lcom/hunantv/media/player/d/a/b;

    invoke-virtual {v0, p1, p2}, Lcom/hunantv/media/player/d/a/b;->a(II)V

    int-to-float p1, p1

    int-to-float p2, p2

    div-float v3, p1, p2

    iput v3, p0, Lcom/hunantv/media/player/d/c;->j:F

    iget-object v0, p0, Lcom/hunantv/media/player/d/c;->g:[F

    neg-float v2, v3

    const/high16 v6, 0x40a00000    # 5.0f

    const/high16 v7, 0x40e00000    # 7.0f

    const/4 v1, 0x0

    const/high16 v4, -0x40800000    # -1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static/range {v0 .. v7}, Landroid/opengl/Matrix;->frustumM([FIFFFFFF)V

    iget-object p0, p0, Lcom/hunantv/media/player/d/c;->h:[F

    const/4 p1, 0x0

    invoke-static {p0, p1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    :cond_4
    :goto_0
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
