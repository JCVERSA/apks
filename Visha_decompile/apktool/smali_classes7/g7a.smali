.class public Lg7a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/ResourceDecoder;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/io/InputStream;IILcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/engine/Resource;
    .locals 0

    :try_start_0
    invoke-static {p1}, Lcom/caverock/androidsvg/SVG;->l(Ljava/io/InputStream;)Lcom/caverock/androidsvg/SVG;

    move-result-object p0

    const/high16 p1, -0x80000000

    if-eq p2, p1, :cond_0

    int-to-float p2, p2

    invoke-virtual {p0, p2}, Lcom/caverock/androidsvg/SVG;->y(F)V

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    if-eq p3, p1, :cond_1

    int-to-float p1, p3

    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/SVG;->w(F)V

    :cond_1
    new-instance p1, Lcom/bumptech/glide/load/resource/SimpleResource;

    invoke-direct {p1, p0}, Lcom/bumptech/glide/load/resource/SimpleResource;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/caverock/androidsvg/SVGParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :goto_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Cannot load SVG from stream"

    invoke-direct {p1, p2, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public b(Ljava/io/InputStream;Lcom/bumptech/glide/load/Options;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic decode(Ljava/lang/Object;IILcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/engine/Resource;
    .locals 0

    check-cast p1, Ljava/io/InputStream;

    invoke-virtual {p0, p1, p2, p3, p4}, Lg7a;->a(Ljava/io/InputStream;IILcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/engine/Resource;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic handles(Ljava/lang/Object;Lcom/bumptech/glide/load/Options;)Z
    .locals 0

    check-cast p1, Ljava/io/InputStream;

    invoke-virtual {p0, p1, p2}, Lg7a;->b(Ljava/io/InputStream;Lcom/bumptech/glide/load/Options;)Z

    move-result p0

    return p0
.end method
