.class public Lcom/caverock/androidsvg/SVGImageView$b;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/SVGImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public a:Landroid/content/Context;

.field public b:I

.field public final synthetic c:Lcom/caverock/androidsvg/SVGImageView;


# direct methods
.method public constructor <init>(Lcom/caverock/androidsvg/SVGImageView;Landroid/content/Context;I)V
    .locals 0

    iput-object p1, p0, Lcom/caverock/androidsvg/SVGImageView$b;->c:Lcom/caverock/androidsvg/SVGImageView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/caverock/androidsvg/SVGImageView$b;->a:Landroid/content/Context;

    iput p3, p0, Lcom/caverock/androidsvg/SVGImageView$b;->b:I

    return-void
.end method


# virtual methods
.method public varargs a([Ljava/lang/Integer;)Lcom/caverock/androidsvg/SVG;
    .locals 1

    :try_start_0
    iget-object p1, p0, Lcom/caverock/androidsvg/SVGImageView$b;->a:Landroid/content/Context;

    iget v0, p0, Lcom/caverock/androidsvg/SVGImageView$b;->b:I

    invoke-static {p1, v0}, Lcom/caverock/androidsvg/SVG;->m(Landroid/content/Context;I)Lcom/caverock/androidsvg/SVG;

    move-result-object p0
    :try_end_0
    .catch Lcom/caverock/androidsvg/SVGParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    iget p0, p0, Lcom/caverock/androidsvg/SVGImageView$b;->b:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Error loading resource 0x%x: %s"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "SVGImageView"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public b(Lcom/caverock/androidsvg/SVG;)V
    .locals 1

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGImageView$b;->c:Lcom/caverock/androidsvg/SVGImageView;

    invoke-static {v0, p1}, Lcom/caverock/androidsvg/SVGImageView;->a(Lcom/caverock/androidsvg/SVGImageView;Lcom/caverock/androidsvg/SVG;)Lcom/caverock/androidsvg/SVG;

    iget-object p0, p0, Lcom/caverock/androidsvg/SVGImageView$b;->c:Lcom/caverock/androidsvg/SVGImageView;

    invoke-static {p0}, Lcom/caverock/androidsvg/SVGImageView;->b(Lcom/caverock/androidsvg/SVGImageView;)V

    return-void
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/SVGImageView$b;->a([Ljava/lang/Integer;)Lcom/caverock/androidsvg/SVG;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/caverock/androidsvg/SVG;

    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/SVGImageView$b;->b(Lcom/caverock/androidsvg/SVG;)V

    return-void
.end method
