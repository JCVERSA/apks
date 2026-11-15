.class public final Lf7a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lf7a;->a:Z

    return-void
.end method

.method public synthetic constructor <init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    move p1, p3

    .line 3
    :cond_0
    invoke-direct {p0, p1}, Lf7a;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/io/InputStream;)Landroid/graphics/drawable/PictureDrawable;
    .locals 3

    const-string v0, "source"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-static {p1}, Lcom/caverock/androidsvg/SVG;->l(Ljava/io/InputStream;)Lcom/caverock/androidsvg/SVG;

    move-result-object p1

    const-string v0, "getFromInputStream(source)"

    invoke-static {p1, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/caverock/androidsvg/SVG;->g()Landroid/graphics/RectF;

    move-result-object v0

    iget-boolean p0, p0, Lf7a;->a:Z

    if-eqz p0, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result p0

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/caverock/androidsvg/SVG;->h()F

    move-result p0

    invoke-virtual {p1}, Lcom/caverock/androidsvg/SVG;->f()F

    move-result v1

    :goto_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    cmpl-float v2, p0, v0

    if-lez v2, :cond_1

    cmpl-float v2, v1, v0

    if-lez v2, :cond_1

    invoke-virtual {p1, v0, v0, p0, v1}, Lcom/caverock/androidsvg/SVG;->x(FFFF)V

    :cond_1
    new-instance p0, Landroid/graphics/drawable/PictureDrawable;

    invoke-virtual {p1}, Lcom/caverock/androidsvg/SVG;->r()Landroid/graphics/Picture;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/graphics/drawable/PictureDrawable;-><init>(Landroid/graphics/Picture;)V
    :try_end_0
    .catch Lcom/caverock/androidsvg/SVGParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method
