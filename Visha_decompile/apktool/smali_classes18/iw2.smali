.class public Liw2;
.super Lfreemarker/ext/dom/d;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lorg/w3c/dom/DocumentType;)V
    .locals 0

    invoke-direct {p0, p1}, Lfreemarker/ext/dom/d;-><init>(Lorg/w3c/dom/Node;)V

    return-void
.end method


# virtual methods
.method public d()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "@document_type$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p0, p0, Lfreemarker/ext/dom/d;->b:Lorg/w3c/dom/Node;

    check-cast p0, Lorg/w3c/dom/DocumentType;

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public get(Ljava/lang/String;)Lzfa;
    .locals 0

    new-instance p0, Lfreemarker/template/TemplateModelException;

    const-string p1, "accessing properties of a DTD is not currently supported"

    invoke-direct {p0, p1}, Lfreemarker/template/TemplateModelException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isEmpty()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
