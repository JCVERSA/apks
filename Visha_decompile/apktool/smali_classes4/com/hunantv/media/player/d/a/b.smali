.class public Lcom/hunantv/media/player/d/a/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hunantv/media/player/d/a/d;


# static fields
.field protected static final a:[F

.field protected static final b:I


# instance fields
.field protected c:I

.field protected d:I

.field protected e:I

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:I

.field private i:I

.field private j:I

.field private final k:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x14

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/hunantv/media/player/d/a/b;->a:[F

    array-length v0, v0

    div-int/lit8 v0, v0, 0x5

    sput v0, Lcom/hunantv/media/player/d/a/b;->b:I

    return-void

    nop

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    const-string v0, "attribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying highp vec2 vTextureCoord;\nvoid main() {\ngl_Position = aPosition;\nvTextureCoord = aTextureCoord.xy;\n}\n"

    const-string v1, "precision mediump float;\nvarying highp vec2 vTextureCoord;\nuniform lowp sampler2D sTexture;\nvoid main() {\ngl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n"

    invoke-direct {p0, v0, v1}, Lcom/hunantv/media/player/d/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/hunantv/media/player/d/a/b;->k:Ljava/util/HashMap;

    invoke-virtual {p0, p1, p2}, Lcom/hunantv/media/player/d/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/hunantv/media/player/d/a/b;->k:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    iget v0, p0, Lcom/hunantv/media/player/d/a/b;->h:I

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/hunantv/media/player/d/a/b;->h:I

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    :cond_1
    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/hunantv/media/player/d/a/b;->b()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not get attrib or uniform location for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hunantv/media/player/pragma/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object p0, p0, Lcom/hunantv/media/player/d/a/b;->k:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v0
.end method

.method public a()V
    .locals 4

    .line 2
    invoke-virtual {p0}, Lcom/hunantv/media/player/d/a/b;->c()V

    invoke-virtual {p0}, Lcom/hunantv/media/player/d/a/b;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "setup in"

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/hunantv/media/player/d/a/b;->f:Ljava/lang/String;

    const v1, 0x8b31

    invoke-static {v0, v1}, Lcom/hunantv/media/player/d/a/a;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/hunantv/media/player/d/a/b;->i:I

    iget-object v0, p0, Lcom/hunantv/media/player/d/a/b;->g:Ljava/lang/String;

    const v1, 0x8b30

    invoke-static {v0, v1}, Lcom/hunantv/media/player/d/a/a;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/hunantv/media/player/d/a/b;->j:I

    iget v1, p0, Lcom/hunantv/media/player/d/a/b;->i:I

    invoke-static {v1, v0}, Lcom/hunantv/media/player/d/a/a;->a(II)I

    move-result v0

    iput v0, p0, Lcom/hunantv/media/player/d/a/b;->h:I

    sget-object v0, Lcom/hunantv/media/player/d/a/b;->a:[F

    invoke-static {v0}, Lcom/hunantv/media/player/d/a/a;->a([F)I

    move-result v0

    iput v0, p0, Lcom/hunantv/media/player/d/a/b;->c:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/hunantv/media/player/d/a/b;->b()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "throw filter setup failed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/hunantv/media/player/pragma/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0}, Lcom/hunantv/media/player/d/a/b;->b()Ljava/lang/String;

    move-result-object p0

    const-string v0, "setup out"

    invoke-static {p0, v0}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(I)V
    .locals 10

    .line 3
    invoke-virtual {p0}, Lcom/hunantv/media/player/d/a/b;->e()V

    iget v0, p0, Lcom/hunantv/media/player/d/a/b;->c:I

    const v1, 0x8892

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    const-string v0, "aPosition"

    invoke-virtual {p0, v0}, Lcom/hunantv/media/player/d/a/b;->a(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    invoke-virtual {p0, v0}, Lcom/hunantv/media/player/d/a/b;->a(Ljava/lang/String;)I

    move-result v3

    const/16 v7, 0x14

    const/4 v8, 0x0

    const/4 v4, 0x3

    const/16 v5, 0x1406

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    const-string v2, "aTextureCoord"

    invoke-virtual {p0, v2}, Lcom/hunantv/media/player/d/a/b;->a(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    invoke-virtual {p0, v2}, Lcom/hunantv/media/player/d/a/b;->a(Ljava/lang/String;)I

    move-result v4

    const/16 v8, 0x14

    const/16 v9, 0xc

    const/4 v5, 0x2

    const/16 v6, 0x1406

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    const v3, 0x84c0

    invoke-static {v3}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const/16 v3, 0xde1

    invoke-static {v3, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const-string p1, "sTexture"

    invoke-virtual {p0, p1}, Lcom/hunantv/media/player/d/a/b;->a(Ljava/lang/String;)I

    move-result p1

    const/4 v4, 0x0

    invoke-static {p1, v4}, Landroid/opengl/GLES20;->glUniform1i(II)V

    invoke-virtual {p0}, Lcom/hunantv/media/player/d/a/b;->d()V

    const/4 p1, 0x5

    sget v5, Lcom/hunantv/media/player/d/a/b;->b:I

    invoke-static {p1, v4, v5}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    invoke-virtual {p0, v0}, Lcom/hunantv/media/player/d/a/b;->a(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    invoke-virtual {p0, v2}, Lcom/hunantv/media/player/d/a/b;->a(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-static {v1, v4}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    return-void
.end method

.method public a(II)V
    .locals 0

    .line 4
    iput p1, p0, Lcom/hunantv/media/player/d/a/b;->d:I

    iput p2, p0, Lcom/hunantv/media/player/d/a/b;->e:I

    invoke-virtual {p0, p1, p2}, Lcom/hunantv/media/player/d/a/b;->b(II)V

    return-void
.end method

.method public a(I[F)V
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lcom/hunantv/media/player/d/a/b;->a(I)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/hunantv/media/player/d/a/b;->f:Ljava/lang/String;

    iput-object p2, p0, Lcom/hunantv/media/player/d/a/b;->g:Ljava/lang/String;

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public b(II)V
    .locals 0

    .line 2
    return-void
.end method

.method public c()V
    .locals 3

    iget v0, p0, Lcom/hunantv/media/player/d/a/b;->h:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/hunantv/media/player/d/a/b;->h:I

    iget v1, p0, Lcom/hunantv/media/player/d/a/b;->i:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    iput v0, p0, Lcom/hunantv/media/player/d/a/b;->i:I

    iget v1, p0, Lcom/hunantv/media/player/d/a/b;->j:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    iput v0, p0, Lcom/hunantv/media/player/d/a/b;->j:I

    iget v1, p0, Lcom/hunantv/media/player/d/a/b;->c:I

    filled-new-array {v1}, [I

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2, v1, v0}, Landroid/opengl/GLES20;->glDeleteBuffers(I[II)V

    iput v0, p0, Lcom/hunantv/media/player/d/a/b;->c:I

    iget-object p0, p0, Lcom/hunantv/media/player/d/a/b;->k:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public final e()V
    .locals 0

    iget p0, p0, Lcom/hunantv/media/player/d/a/b;->h:I

    invoke-static {p0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    return-void
.end method

.method public final f()I
    .locals 0

    iget p0, p0, Lcom/hunantv/media/player/d/a/b;->c:I

    return p0
.end method

.method public g()Ljava/lang/String;
    .locals 0

    const-string p0, "Normal"

    return-object p0
.end method

.method public h()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
