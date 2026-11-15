.class public Lcom/caverock/androidsvg/SVG;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/caverock/androidsvg/SVG$v;,
        Lcom/caverock/androidsvg/SVG$w;,
        Lcom/caverock/androidsvg/SVG$b0;,
        Lcom/caverock/androidsvg/SVG$r;,
        Lcom/caverock/androidsvg/SVG$c1;,
        Lcom/caverock/androidsvg/SVG$n;,
        Lcom/caverock/androidsvg/SVG$x;,
        Lcom/caverock/androidsvg/SVG$e;,
        Lcom/caverock/androidsvg/SVG$o0;,
        Lcom/caverock/androidsvg/SVG$k0;,
        Lcom/caverock/androidsvg/SVG$c0;,
        Lcom/caverock/androidsvg/SVG$j;,
        Lcom/caverock/androidsvg/SVG$q;,
        Lcom/caverock/androidsvg/SVG$r0;,
        Lcom/caverock/androidsvg/SVG$q0;,
        Lcom/caverock/androidsvg/SVG$x0;,
        Lcom/caverock/androidsvg/SVG$s0;,
        Lcom/caverock/androidsvg/SVG$a1;,
        Lcom/caverock/androidsvg/SVG$t0;,
        Lcom/caverock/androidsvg/SVG$u0;,
        Lcom/caverock/androidsvg/SVG$y0;,
        Lcom/caverock/androidsvg/SVG$w0;,
        Lcom/caverock/androidsvg/SVG$v0;,
        Lcom/caverock/androidsvg/SVG$z0;,
        Lcom/caverock/androidsvg/SVG$z;,
        Lcom/caverock/androidsvg/SVG$y;,
        Lcom/caverock/androidsvg/SVG$p;,
        Lcom/caverock/androidsvg/SVG$i;,
        Lcom/caverock/androidsvg/SVG$d;,
        Lcom/caverock/androidsvg/SVG$a0;,
        Lcom/caverock/androidsvg/SVG$u;,
        Lcom/caverock/androidsvg/SVG$b1;,
        Lcom/caverock/androidsvg/SVG$k;,
        Lcom/caverock/androidsvg/SVG$h;,
        Lcom/caverock/androidsvg/SVG$s;,
        Lcom/caverock/androidsvg/SVG$l;,
        Lcom/caverock/androidsvg/SVG$d0;,
        Lcom/caverock/androidsvg/SVG$p0;,
        Lcom/caverock/androidsvg/SVG$n0;,
        Lcom/caverock/androidsvg/SVG$m;,
        Lcom/caverock/androidsvg/SVG$f0;,
        Lcom/caverock/androidsvg/SVG$h0;,
        Lcom/caverock/androidsvg/SVG$g0;,
        Lcom/caverock/androidsvg/SVG$e0;,
        Lcom/caverock/androidsvg/SVG$i0;,
        Lcom/caverock/androidsvg/SVG$j0;,
        Lcom/caverock/androidsvg/SVG$l0;,
        Lcom/caverock/androidsvg/SVG$c;,
        Lcom/caverock/androidsvg/SVG$o;,
        Lcom/caverock/androidsvg/SVG$t;,
        Lcom/caverock/androidsvg/SVG$g;,
        Lcom/caverock/androidsvg/SVG$f;,
        Lcom/caverock/androidsvg/SVG$m0;,
        Lcom/caverock/androidsvg/SVG$Style;,
        Lcom/caverock/androidsvg/SVG$b;,
        Lcom/caverock/androidsvg/SVG$GradientSpread;,
        Lcom/caverock/androidsvg/SVG$Unit;
    }
.end annotation


# static fields
.field public static g:Z = true


# instance fields
.field public a:Lcom/caverock/androidsvg/SVG$d0;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:F

.field public e:Lcom/caverock/androidsvg/CSSParser$n;

.field public f:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG;->a:Lcom/caverock/androidsvg/SVG$d0;

    const-string v0, ""

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG;->c:Ljava/lang/String;

    const/high16 v0, 0x42c00000    # 96.0f

    iput v0, p0, Lcom/caverock/androidsvg/SVG;->d:F

    new-instance v0, Lcom/caverock/androidsvg/CSSParser$n;

    invoke-direct {v0}, Lcom/caverock/androidsvg/CSSParser$n;-><init>()V

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG;->e:Lcom/caverock/androidsvg/CSSParser$n;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG;->f:Ljava/util/Map;

    return-void
.end method

.method public static k()Lr09;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public static l(Ljava/io/InputStream;)Lcom/caverock/androidsvg/SVG;
    .locals 2

    new-instance v0, Lcom/caverock/androidsvg/SVGParser;

    invoke-direct {v0}, Lcom/caverock/androidsvg/SVGParser;-><init>()V

    sget-boolean v1, Lcom/caverock/androidsvg/SVG;->g:Z

    invoke-virtual {v0, p0, v1}, Lcom/caverock/androidsvg/SVGParser;->z(Ljava/io/InputStream;Z)Lcom/caverock/androidsvg/SVG;

    move-result-object p0

    return-object p0
.end method

.method public static m(Landroid/content/Context;I)Lcom/caverock/androidsvg/SVG;
    .locals 0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/caverock/androidsvg/SVG;->n(Landroid/content/res/Resources;I)Lcom/caverock/androidsvg/SVG;

    move-result-object p0

    return-object p0
.end method

.method public static n(Landroid/content/res/Resources;I)Lcom/caverock/androidsvg/SVG;
    .locals 1

    new-instance v0, Lcom/caverock/androidsvg/SVGParser;

    invoke-direct {v0}, Lcom/caverock/androidsvg/SVGParser;-><init>()V

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p0

    :try_start_0
    sget-boolean p1, Lcom/caverock/androidsvg/SVG;->g:Z

    invoke-virtual {v0, p0, p1}, Lcom/caverock/androidsvg/SVGParser;->z(Ljava/io/InputStream;Z)Lcom/caverock/androidsvg/SVG;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-object p1

    :catchall_0
    move-exception p1

    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    throw p1
.end method

.method public static o(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG;
    .locals 2

    new-instance v0, Lcom/caverock/androidsvg/SVGParser;

    invoke-direct {v0}, Lcom/caverock/androidsvg/SVGParser;-><init>()V

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    sget-boolean p0, Lcom/caverock/androidsvg/SVG;->g:Z

    invoke-virtual {v0, v1, p0}, Lcom/caverock/androidsvg/SVGParser;->z(Ljava/io/InputStream;Z)Lcom/caverock/androidsvg/SVG;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public A(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/caverock/androidsvg/SVG;->b:Ljava/lang/String;

    return-void
.end method

.method public a(Lcom/caverock/androidsvg/CSSParser$n;)V
    .locals 0

    iget-object p0, p0, Lcom/caverock/androidsvg/SVG;->e:Lcom/caverock/androidsvg/CSSParser$n;

    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/CSSParser$n;->b(Lcom/caverock/androidsvg/CSSParser$n;)V

    return-void
.end method

.method public b()V
    .locals 1

    iget-object p0, p0, Lcom/caverock/androidsvg/SVG;->e:Lcom/caverock/androidsvg/CSSParser$n;

    sget-object v0, Lcom/caverock/androidsvg/CSSParser$Source;->RenderOptions:Lcom/caverock/androidsvg/CSSParser$Source;

    invoke-virtual {p0, v0}, Lcom/caverock/androidsvg/CSSParser$n;->e(Lcom/caverock/androidsvg/CSSParser$Source;)V

    return-void
.end method

.method public final c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string p0, "\""

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p1, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\\\""

    invoke-virtual {p1, v0, p0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p0, "\'"

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\\\'"

    invoke-virtual {p1, v0, p0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :cond_1
    :goto_0
    const-string p0, "\\\n"

    const-string v0, ""

    invoke-virtual {p1, p0, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "\\A"

    const-string v0, "\n"

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public d()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/caverock/androidsvg/SVG;->e:Lcom/caverock/androidsvg/CSSParser$n;

    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$n;->c()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final e(F)Lcom/caverock/androidsvg/SVG$b;
    .locals 7

    iget-object v0, p0, Lcom/caverock/androidsvg/SVG;->a:Lcom/caverock/androidsvg/SVG$d0;

    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$d0;->s:Lcom/caverock/androidsvg/SVG$o;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$d0;->t:Lcom/caverock/androidsvg/SVG$o;

    const/high16 v2, -0x40800000    # -1.0f

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVG$o;->i()Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, v1, Lcom/caverock/androidsvg/SVG$o;->c:Lcom/caverock/androidsvg/SVG$Unit;

    sget-object v4, Lcom/caverock/androidsvg/SVG$Unit;->percent:Lcom/caverock/androidsvg/SVG$Unit;

    if-eq v3, v4, :cond_5

    sget-object v5, Lcom/caverock/androidsvg/SVG$Unit;->em:Lcom/caverock/androidsvg/SVG$Unit;

    if-eq v3, v5, :cond_5

    sget-object v6, Lcom/caverock/androidsvg/SVG$Unit;->ex:Lcom/caverock/androidsvg/SVG$Unit;

    if-ne v3, v6, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {v1, p1}, Lcom/caverock/androidsvg/SVG$o;->c(F)F

    move-result v1

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVG$o;->i()Z

    move-result p0

    if-nez p0, :cond_2

    iget-object p0, v0, Lcom/caverock/androidsvg/SVG$o;->c:Lcom/caverock/androidsvg/SVG$Unit;

    if-eq p0, v4, :cond_2

    if-eq p0, v5, :cond_2

    if-ne p0, v6, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1}, Lcom/caverock/androidsvg/SVG$o;->c(F)F

    move-result p0

    goto :goto_1

    :cond_2
    :goto_0
    new-instance p0, Lcom/caverock/androidsvg/SVG$b;

    invoke-direct {p0, v2, v2, v2, v2}, Lcom/caverock/androidsvg/SVG$b;-><init>(FFFF)V

    return-object p0

    :cond_3
    iget-object p0, p0, Lcom/caverock/androidsvg/SVG;->a:Lcom/caverock/androidsvg/SVG$d0;

    iget-object p0, p0, Lcom/caverock/androidsvg/SVG$p0;->p:Lcom/caverock/androidsvg/SVG$b;

    if-eqz p0, :cond_4

    iget p1, p0, Lcom/caverock/androidsvg/SVG$b;->d:F

    mul-float/2addr p1, v1

    iget p0, p0, Lcom/caverock/androidsvg/SVG$b;->c:F

    div-float p0, p1, p0

    goto :goto_1

    :cond_4
    move p0, v1

    :goto_1
    new-instance p1, Lcom/caverock/androidsvg/SVG$b;

    const/4 v0, 0x0

    invoke-direct {p1, v0, v0, v1, p0}, Lcom/caverock/androidsvg/SVG$b;-><init>(FFFF)V

    return-object p1

    :cond_5
    :goto_2
    new-instance p0, Lcom/caverock/androidsvg/SVG$b;

    invoke-direct {p0, v2, v2, v2, v2}, Lcom/caverock/androidsvg/SVG$b;-><init>(FFFF)V

    return-object p0
.end method

.method public f()F
    .locals 1

    iget-object v0, p0, Lcom/caverock/androidsvg/SVG;->a:Lcom/caverock/androidsvg/SVG$d0;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/caverock/androidsvg/SVG;->d:F

    invoke-virtual {p0, v0}, Lcom/caverock/androidsvg/SVG;->e(F)Lcom/caverock/androidsvg/SVG$b;

    move-result-object p0

    iget p0, p0, Lcom/caverock/androidsvg/SVG$b;->d:F

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "SVG document is empty"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public g()Landroid/graphics/RectF;
    .locals 1

    iget-object p0, p0, Lcom/caverock/androidsvg/SVG;->a:Lcom/caverock/androidsvg/SVG$d0;

    if-eqz p0, :cond_1

    iget-object p0, p0, Lcom/caverock/androidsvg/SVG$p0;->p:Lcom/caverock/androidsvg/SVG$b;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVG$b;->d()Landroid/graphics/RectF;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "SVG document is empty"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public h()F
    .locals 1

    iget-object v0, p0, Lcom/caverock/androidsvg/SVG;->a:Lcom/caverock/androidsvg/SVG$d0;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/caverock/androidsvg/SVG;->d:F

    invoke-virtual {p0, v0}, Lcom/caverock/androidsvg/SVG;->e(F)Lcom/caverock/androidsvg/SVG$b;

    move-result-object p0

    iget p0, p0, Lcom/caverock/androidsvg/SVG$b;->c:F

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "SVG document is empty"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final i(Lcom/caverock/androidsvg/SVG$h0;Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$j0;
    .locals 3

    move-object v0, p1

    check-cast v0, Lcom/caverock/androidsvg/SVG$j0;

    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$j0;->c:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    invoke-interface {p1}, Lcom/caverock/androidsvg/SVG$h0;->getChildren()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/SVG$l0;

    instance-of v1, v0, Lcom/caverock/androidsvg/SVG$j0;

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    move-object v1, v0

    check-cast v1, Lcom/caverock/androidsvg/SVG$j0;

    iget-object v2, v1, Lcom/caverock/androidsvg/SVG$j0;->c:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    return-object v1

    :cond_3
    instance-of v1, v0, Lcom/caverock/androidsvg/SVG$h0;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/caverock/androidsvg/SVG$h0;

    invoke-virtual {p0, v0, p2}, Lcom/caverock/androidsvg/SVG;->i(Lcom/caverock/androidsvg/SVG$h0;Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$j0;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method

.method public j(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$j0;
    .locals 1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG;->a:Lcom/caverock/androidsvg/SVG$d0;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$j0;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/caverock/androidsvg/SVG;->a:Lcom/caverock/androidsvg/SVG$d0;

    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/caverock/androidsvg/SVG;->f:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/caverock/androidsvg/SVG$j0;

    return-object p0

    :cond_2
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG;->a:Lcom/caverock/androidsvg/SVG$d0;

    invoke-virtual {p0, v0, p1}, Lcom/caverock/androidsvg/SVG;->i(Lcom/caverock/androidsvg/SVG$h0;Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$j0;

    move-result-object v0

    iget-object p0, p0, Lcom/caverock/androidsvg/SVG;->f:Ljava/util/Map;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public p()Lcom/caverock/androidsvg/SVG$d0;
    .locals 0

    iget-object p0, p0, Lcom/caverock/androidsvg/SVG;->a:Lcom/caverock/androidsvg/SVG$d0;

    return-object p0
.end method

.method public q()Z
    .locals 0

    iget-object p0, p0, Lcom/caverock/androidsvg/SVG;->e:Lcom/caverock/androidsvg/CSSParser$n;

    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$n;->d()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public r()Landroid/graphics/Picture;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/caverock/androidsvg/SVG;->t(Lcom/caverock/androidsvg/a;)Landroid/graphics/Picture;

    move-result-object p0

    return-object p0
.end method

.method public s(IILcom/caverock/androidsvg/a;)Landroid/graphics/Picture;
    .locals 3

    new-instance v0, Landroid/graphics/Picture;

    invoke-direct {v0}, Landroid/graphics/Picture;-><init>()V

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Picture;->beginRecording(II)Landroid/graphics/Canvas;

    move-result-object v1

    if-eqz p3, :cond_0

    iget-object v2, p3, Lcom/caverock/androidsvg/a;->f:Lcom/caverock/androidsvg/SVG$b;

    if-nez v2, :cond_2

    :cond_0
    if-nez p3, :cond_1

    new-instance p3, Lcom/caverock/androidsvg/a;

    invoke-direct {p3}, Lcom/caverock/androidsvg/a;-><init>()V

    goto :goto_0

    :cond_1
    new-instance v2, Lcom/caverock/androidsvg/a;

    invoke-direct {v2, p3}, Lcom/caverock/androidsvg/a;-><init>(Lcom/caverock/androidsvg/a;)V

    move-object p3, v2

    :goto_0
    int-to-float p1, p1

    int-to-float p2, p2

    const/4 v2, 0x0

    invoke-virtual {p3, v2, v2, p1, p2}, Lcom/caverock/androidsvg/a;->h(FFFF)Lcom/caverock/androidsvg/a;

    :cond_2
    new-instance p1, Lcom/caverock/androidsvg/b;

    iget p2, p0, Lcom/caverock/androidsvg/SVG;->d:F

    invoke-direct {p1, v1, p2}, Lcom/caverock/androidsvg/b;-><init>(Landroid/graphics/Canvas;F)V

    invoke-virtual {p1, p0, p3}, Lcom/caverock/androidsvg/b;->G0(Lcom/caverock/androidsvg/SVG;Lcom/caverock/androidsvg/a;)V

    invoke-virtual {v0}, Landroid/graphics/Picture;->endRecording()V

    return-object v0
.end method

.method public t(Lcom/caverock/androidsvg/a;)Landroid/graphics/Picture;
    .locals 5

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/caverock/androidsvg/a;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/caverock/androidsvg/a;->d:Lcom/caverock/androidsvg/SVG$b;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG;->a:Lcom/caverock/androidsvg/SVG$d0;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$p0;->p:Lcom/caverock/androidsvg/SVG$b;

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/caverock/androidsvg/a;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p1, Lcom/caverock/androidsvg/a;->f:Lcom/caverock/androidsvg/SVG$b;

    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVG$b;->b()F

    move-result v0

    iget-object v1, p1, Lcom/caverock/androidsvg/a;->f:Lcom/caverock/androidsvg/SVG$b;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVG$b;->c()F

    move-result v1

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    invoke-virtual {p0, v0, v1, p1}, Lcom/caverock/androidsvg/SVG;->s(IILcom/caverock/androidsvg/a;)Landroid/graphics/Picture;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object v1, p0, Lcom/caverock/androidsvg/SVG;->a:Lcom/caverock/androidsvg/SVG$d0;

    iget-object v2, v1, Lcom/caverock/androidsvg/SVG$d0;->s:Lcom/caverock/androidsvg/SVG$o;

    if-eqz v2, :cond_2

    iget-object v3, v2, Lcom/caverock/androidsvg/SVG$o;->c:Lcom/caverock/androidsvg/SVG$Unit;

    sget-object v4, Lcom/caverock/androidsvg/SVG$Unit;->percent:Lcom/caverock/androidsvg/SVG$Unit;

    if-eq v3, v4, :cond_2

    iget-object v3, v1, Lcom/caverock/androidsvg/SVG$d0;->t:Lcom/caverock/androidsvg/SVG$o;

    if-eqz v3, :cond_2

    iget-object v3, v3, Lcom/caverock/androidsvg/SVG$o;->c:Lcom/caverock/androidsvg/SVG$Unit;

    if-eq v3, v4, :cond_2

    iget v0, p0, Lcom/caverock/androidsvg/SVG;->d:F

    invoke-virtual {v2, v0}, Lcom/caverock/androidsvg/SVG$o;->c(F)F

    move-result v0

    iget-object v1, p0, Lcom/caverock/androidsvg/SVG;->a:Lcom/caverock/androidsvg/SVG$d0;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$d0;->t:Lcom/caverock/androidsvg/SVG$o;

    iget v2, p0, Lcom/caverock/androidsvg/SVG;->d:F

    invoke-virtual {v1, v2}, Lcom/caverock/androidsvg/SVG$o;->c(F)F

    move-result v1

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    invoke-virtual {p0, v0, v1, p1}, Lcom/caverock/androidsvg/SVG;->s(IILcom/caverock/androidsvg/a;)Landroid/graphics/Picture;

    move-result-object p0

    return-object p0

    :cond_2
    if-eqz v2, :cond_3

    if-eqz v0, :cond_3

    iget v1, p0, Lcom/caverock/androidsvg/SVG;->d:F

    invoke-virtual {v2, v1}, Lcom/caverock/androidsvg/SVG$o;->c(F)F

    move-result v1

    iget v2, v0, Lcom/caverock/androidsvg/SVG$b;->d:F

    mul-float/2addr v2, v1

    iget v0, v0, Lcom/caverock/androidsvg/SVG$b;->c:F

    div-float/2addr v2, v0

    float-to-double v0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    float-to-double v1, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    invoke-virtual {p0, v0, v1, p1}, Lcom/caverock/androidsvg/SVG;->s(IILcom/caverock/androidsvg/a;)Landroid/graphics/Picture;

    move-result-object p0

    return-object p0

    :cond_3
    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$d0;->t:Lcom/caverock/androidsvg/SVG$o;

    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    iget v2, p0, Lcom/caverock/androidsvg/SVG;->d:F

    invoke-virtual {v1, v2}, Lcom/caverock/androidsvg/SVG$o;->c(F)F

    move-result v1

    iget v2, v0, Lcom/caverock/androidsvg/SVG$b;->c:F

    mul-float/2addr v2, v1

    iget v0, v0, Lcom/caverock/androidsvg/SVG$b;->d:F

    div-float/2addr v2, v0

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    invoke-virtual {p0, v0, v1, p1}, Lcom/caverock/androidsvg/SVG;->s(IILcom/caverock/androidsvg/a;)Landroid/graphics/Picture;

    move-result-object p0

    return-object p0

    :cond_4
    const/16 v0, 0x200

    invoke-virtual {p0, v0, v0, p1}, Lcom/caverock/androidsvg/SVG;->s(IILcom/caverock/androidsvg/a;)Landroid/graphics/Picture;

    move-result-object p0

    return-object p0
.end method

.method public u(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$l0;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/SVG;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    const-string v1, "#"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/SVG;->j(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$j0;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0
.end method

.method public v(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/caverock/androidsvg/SVG;->c:Ljava/lang/String;

    return-void
.end method

.method public w(F)V
    .locals 1

    iget-object p0, p0, Lcom/caverock/androidsvg/SVG;->a:Lcom/caverock/androidsvg/SVG$d0;

    if-eqz p0, :cond_0

    new-instance v0, Lcom/caverock/androidsvg/SVG$o;

    invoke-direct {v0, p1}, Lcom/caverock/androidsvg/SVG$o;-><init>(F)V

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$d0;->t:Lcom/caverock/androidsvg/SVG$o;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "SVG document is empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public x(FFFF)V
    .locals 1

    iget-object p0, p0, Lcom/caverock/androidsvg/SVG;->a:Lcom/caverock/androidsvg/SVG$d0;

    if-eqz p0, :cond_0

    new-instance v0, Lcom/caverock/androidsvg/SVG$b;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/caverock/androidsvg/SVG$b;-><init>(FFFF)V

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$p0;->p:Lcom/caverock/androidsvg/SVG$b;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "SVG document is empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public y(F)V
    .locals 1

    iget-object p0, p0, Lcom/caverock/androidsvg/SVG;->a:Lcom/caverock/androidsvg/SVG$d0;

    if-eqz p0, :cond_0

    new-instance v0, Lcom/caverock/androidsvg/SVG$o;

    invoke-direct {v0, p1}, Lcom/caverock/androidsvg/SVG$o;-><init>(F)V

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$d0;->s:Lcom/caverock/androidsvg/SVG$o;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "SVG document is empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public z(Lcom/caverock/androidsvg/SVG$d0;)V
    .locals 0

    iput-object p1, p0, Lcom/caverock/androidsvg/SVG;->a:Lcom/caverock/androidsvg/SVG$d0;

    return-void
.end method
