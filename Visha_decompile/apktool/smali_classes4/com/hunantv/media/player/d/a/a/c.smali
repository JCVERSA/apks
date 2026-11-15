.class public Lcom/hunantv/media/player/d/a/a/c;
.super Lcom/hunantv/media/player/d/a/a/a;
.source "SourceFile"


# instance fields
.field private k:F

.field private l:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "unsharp_edge_vertex.sh"

    const-string v1, "unsharp_edge_fragment.sh"

    invoke-direct {p0, p1, v0, v1}, Lcom/hunantv/media/player/d/a/a/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const p1, 0x3f4ccccd    # 0.8f

    iput p1, p0, Lcom/hunantv/media/player/d/a/a/c;->k:F

    const p1, 0x3f866666    # 1.05f

    iput p1, p0, Lcom/hunantv/media/player/d/a/a/c;->l:F

    return-void
.end method


# virtual methods
.method public d()V
    .locals 5

    const-string v0, "texelWidthOffset"

    invoke-virtual {p0, v0}, Lcom/hunantv/media/player/d/a/b;->a(Ljava/lang/String;)I

    move-result v0

    iget v1, p0, Lcom/hunantv/media/player/d/a/b;->d:I

    int-to-double v1, v1

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    div-double v1, v3, v1

    double-to-float v1, v1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    const-string v0, "texelHeightOffset"

    invoke-virtual {p0, v0}, Lcom/hunantv/media/player/d/a/b;->a(Ljava/lang/String;)I

    move-result v0

    iget v1, p0, Lcom/hunantv/media/player/d/a/b;->e:I

    int-to-double v1, v1

    div-double/2addr v3, v1

    double-to-float v1, v3

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    const-string v0, "lumaContrastRatio"

    invoke-virtual {p0, v0}, Lcom/hunantv/media/player/d/a/b;->a(Ljava/lang/String;)I

    move-result v0

    iget v1, p0, Lcom/hunantv/media/player/d/a/a/c;->l:F

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    const-string v0, "unsharpRatio"

    invoke-virtual {p0, v0}, Lcom/hunantv/media/player/d/a/b;->a(Ljava/lang/String;)I

    move-result v0

    iget p0, p0, Lcom/hunantv/media/player/d/a/a/c;->k:F

    invoke-static {v0, p0}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 0

    const-string p0, "UnSharpEdge"

    return-object p0
.end method

.method public h()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
