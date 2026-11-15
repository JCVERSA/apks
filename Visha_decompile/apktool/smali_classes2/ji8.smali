.class public final Lji8;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lji8$a;
    }
.end annotation


# static fields
.field public static final j:[F

.field public static final k:[F

.field public static final l:[F

.field public static final m:[F

.field public static final n:[F


# instance fields
.field public a:I

.field public b:Lji8$a;

.field public c:Lji8$a;

.field public d:Lfi4;

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x9

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    sput-object v1, Lji8;->j:[F

    new-array v1, v0, [F

    fill-array-data v1, :array_1

    sput-object v1, Lji8;->k:[F

    new-array v1, v0, [F

    fill-array-data v1, :array_2

    sput-object v1, Lji8;->l:[F

    new-array v1, v0, [F

    fill-array-data v1, :array_3

    sput-object v1, Lji8;->m:[F

    new-array v0, v0, [F

    fill-array-data v0, :array_4

    sput-object v0, Lji8;->n:[F

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        -0x40800000    # -1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        -0x41000000    # -0.5f
        0x0
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        -0x41000000    # -0.5f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x3f000000    # 0.5f
        0x0
        0x0
        0x0
        -0x40800000    # -1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_4
    .array-data 4
        0x3f000000    # 0.5f
        0x0
        0x0
        0x0
        -0x40800000    # -1.0f
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static c(Lhi8;)Z
    .locals 4

    iget-object v0, p0, Lhi8;->a:Lhi8$a;

    iget-object p0, p0, Lhi8;->b:Lhi8$a;

    invoke-virtual {v0}, Lhi8$a;->b()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    invoke-virtual {v0, v2}, Lhi8$a;->a(I)Lhi8$b;

    move-result-object v0

    iget v0, v0, Lhi8$b;->a:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lhi8$a;->b()I

    move-result v0

    if-ne v0, v3, :cond_0

    invoke-virtual {p0, v2}, Lhi8$a;->a(I)Lhi8$b;

    move-result-object p0

    iget p0, p0, Lhi8$b;->a:I

    if-nez p0, :cond_0

    move v2, v3

    :cond_0
    return v2
.end method


# virtual methods
.method public a(I[FZ)V
    .locals 18

    move-object/from16 v0, p0

    if-eqz p3, :cond_0

    iget-object v1, v0, Lji8;->c:Lji8$a;

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lji8;->b:Lji8$a;

    :goto_0
    if-nez v1, :cond_1

    return-void

    :cond_1
    iget v2, v0, Lji8;->a:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    if-eqz p3, :cond_2

    sget-object v2, Lji8;->l:[F

    goto :goto_1

    :cond_2
    sget-object v2, Lji8;->k:[F

    goto :goto_1

    :cond_3
    const/4 v4, 0x2

    if-ne v2, v4, :cond_5

    if-eqz p3, :cond_4

    sget-object v2, Lji8;->n:[F

    goto :goto_1

    :cond_4
    sget-object v2, Lji8;->m:[F

    goto :goto_1

    :cond_5
    sget-object v2, Lji8;->j:[F

    :goto_1
    iget v4, v0, Lji8;->f:I

    const/4 v5, 0x0

    invoke-static {v4, v3, v5, v2, v5}, Landroid/opengl/GLES20;->glUniformMatrix3fv(IIZ[FI)V

    iget v2, v0, Lji8;->e:I

    move-object/from16 v4, p2

    invoke-static {v2, v3, v5, v4, v5}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    const v2, 0x84c0

    invoke-static {v2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const v2, 0x8d65

    move/from16 v3, p1

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget v2, v0, Lji8;->i:I

    invoke-static {v2, v5}, Landroid/opengl/GLES20;->glUniform1i(II)V

    invoke-static {}, Lcom/google/android/exoplayer2/util/GlUtil;->c()V

    iget v6, v0, Lji8;->g:I

    const/16 v10, 0xc

    invoke-static {v1}, Lji8$a;->a(Lji8$a;)Ljava/nio/FloatBuffer;

    move-result-object v11

    const/4 v7, 0x3

    const/16 v8, 0x1406

    const/4 v9, 0x0

    invoke-static/range {v6 .. v11}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    invoke-static {}, Lcom/google/android/exoplayer2/util/GlUtil;->c()V

    iget v12, v0, Lji8;->h:I

    const/16 v16, 0x8

    invoke-static {v1}, Lji8$a;->b(Lji8$a;)Ljava/nio/FloatBuffer;

    move-result-object v17

    const/4 v13, 0x2

    const/16 v14, 0x1406

    const/4 v15, 0x0

    invoke-static/range {v12 .. v17}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    invoke-static {}, Lcom/google/android/exoplayer2/util/GlUtil;->c()V

    invoke-static {v1}, Lji8$a;->c(Lji8$a;)I

    move-result v0

    invoke-static {v1}, Lji8$a;->d(Lji8$a;)I

    move-result v1

    invoke-static {v0, v5, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    invoke-static {}, Lcom/google/android/exoplayer2/util/GlUtil;->c()V

    return-void
.end method

.method public b()V
    .locals 3

    new-instance v0, Lfi4;

    const-string/jumbo v1, "uniform mat4 uMvpMatrix;\nuniform mat3 uTexMatrix;\nattribute vec4 aPosition;\nattribute vec2 aTexCoords;\nvarying vec2 vTexCoords;\n// Standard transformation.\nvoid main() {\n  gl_Position = uMvpMatrix * aPosition;\n  vTexCoords = (uTexMatrix * vec3(aTexCoords, 1)).xy;\n}\n"

    const-string v2, "// This is required since the texture data is GL_TEXTURE_EXTERNAL_OES.\n#extension GL_OES_EGL_image_external : require\nprecision mediump float;\n// Standard texture rendering shader.\nuniform samplerExternalOES uTexture;\nvarying vec2 vTexCoords;\nvoid main() {\n  gl_FragColor = texture2D(uTexture, vTexCoords);\n}\n"

    invoke-direct {v0, v1, v2}, Lfi4;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lji8;->d:Lfi4;

    const-string/jumbo v1, "uMvpMatrix"

    invoke-virtual {v0, v1}, Lfi4;->j(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lji8;->e:I

    iget-object v0, p0, Lji8;->d:Lfi4;

    const-string/jumbo v1, "uTexMatrix"

    invoke-virtual {v0, v1}, Lfi4;->j(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lji8;->f:I

    iget-object v0, p0, Lji8;->d:Lfi4;

    const-string v1, "aPosition"

    invoke-virtual {v0, v1}, Lfi4;->e(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lji8;->g:I

    iget-object v0, p0, Lji8;->d:Lfi4;

    const-string v1, "aTexCoords"

    invoke-virtual {v0, v1}, Lfi4;->e(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lji8;->h:I

    iget-object v0, p0, Lji8;->d:Lfi4;

    const-string/jumbo v1, "uTexture"

    invoke-virtual {v0, v1}, Lfi4;->j(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lji8;->i:I

    return-void
.end method

.method public d(Lhi8;)V
    .locals 3

    invoke-static {p1}, Lji8;->c(Lhi8;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p1, Lhi8;->c:I

    iput v0, p0, Lji8;->a:I

    new-instance v0, Lji8$a;

    iget-object v1, p1, Lhi8;->a:Lhi8$a;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lhi8$a;->a(I)Lhi8$b;

    move-result-object v1

    invoke-direct {v0, v1}, Lji8$a;-><init>(Lhi8$b;)V

    iput-object v0, p0, Lji8;->b:Lji8$a;

    iget-boolean v1, p1, Lhi8;->d:Z

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Lji8$a;

    iget-object p1, p1, Lhi8;->b:Lhi8$a;

    invoke-virtual {p1, v2}, Lhi8$a;->a(I)Lhi8$b;

    move-result-object p1

    invoke-direct {v0, p1}, Lji8$a;-><init>(Lhi8$b;)V

    :goto_0
    iput-object v0, p0, Lji8;->c:Lji8$a;

    return-void
.end method
