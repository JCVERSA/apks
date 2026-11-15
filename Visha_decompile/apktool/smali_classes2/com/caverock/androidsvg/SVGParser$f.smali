.class public Lcom/caverock/androidsvg/SVGParser$f;
.super Lorg/xml/sax/ext/DefaultHandler2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/SVGParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "f"
.end annotation


# instance fields
.field public final synthetic b:Lcom/caverock/androidsvg/SVGParser;


# direct methods
.method public constructor <init>(Lcom/caverock/androidsvg/SVGParser;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/caverock/androidsvg/SVGParser$f;->b:Lcom/caverock/androidsvg/SVGParser;

    invoke-direct {p0}, Lorg/xml/sax/ext/DefaultHandler2;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/caverock/androidsvg/SVGParser;Lcom/caverock/androidsvg/SVGParser$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGParser$f;-><init>(Lcom/caverock/androidsvg/SVGParser;)V

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1

    iget-object p0, p0, Lcom/caverock/androidsvg/SVGParser$f;->b:Lcom/caverock/androidsvg/SVGParser;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-static {p0, v0}, Lcom/caverock/androidsvg/SVGParser;->c(Lcom/caverock/androidsvg/SVGParser;Ljava/lang/String;)V

    return-void
.end method

.method public endDocument()V
    .locals 0

    iget-object p0, p0, Lcom/caverock/androidsvg/SVGParser$f;->b:Lcom/caverock/androidsvg/SVGParser;

    invoke-static {p0}, Lcom/caverock/androidsvg/SVGParser;->e(Lcom/caverock/androidsvg/SVGParser;)V

    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/caverock/androidsvg/SVGParser$f;->b:Lcom/caverock/androidsvg/SVGParser;

    invoke-static {p0, p1, p2, p3}, Lcom/caverock/androidsvg/SVGParser;->d(Lcom/caverock/androidsvg/SVGParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/caverock/androidsvg/SVGParser$g;

    invoke-direct {v0, p2}, Lcom/caverock/androidsvg/SVGParser$g;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/caverock/androidsvg/SVGParser$f;->b:Lcom/caverock/androidsvg/SVGParser;

    invoke-static {p2, v0}, Lcom/caverock/androidsvg/SVGParser;->f(Lcom/caverock/androidsvg/SVGParser;Lcom/caverock/androidsvg/SVGParser$g;)Ljava/util/Map;

    move-result-object p2

    iget-object p0, p0, Lcom/caverock/androidsvg/SVGParser$f;->b:Lcom/caverock/androidsvg/SVGParser;

    invoke-static {p0, p1, p2}, Lcom/caverock/androidsvg/SVGParser;->g(Lcom/caverock/androidsvg/SVGParser;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public startDocument()V
    .locals 0

    iget-object p0, p0, Lcom/caverock/androidsvg/SVGParser$f;->b:Lcom/caverock/androidsvg/SVGParser;

    invoke-static {p0}, Lcom/caverock/androidsvg/SVGParser;->a(Lcom/caverock/androidsvg/SVGParser;)V

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 0

    iget-object p0, p0, Lcom/caverock/androidsvg/SVGParser$f;->b:Lcom/caverock/androidsvg/SVGParser;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/caverock/androidsvg/SVGParser;->b(Lcom/caverock/androidsvg/SVGParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    return-void
.end method
