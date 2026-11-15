.class public Lfreemarker/ext/dom/a;
.super Lfreemarker/ext/dom/d;
.source "SourceFile"

# interfaces
.implements Lofa;


# instance fields
.field public m:Lfreemarker/ext/dom/b;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Document;)V
    .locals 0

    invoke-direct {p0, p1}, Lfreemarker/ext/dom/d;-><init>(Lorg/w3c/dom/Node;)V

    return-void
.end method


# virtual methods
.method public d()Ljava/lang/String;
    .locals 0

    const-string p0, "@document"

    return-object p0
.end method

.method public get(Ljava/lang/String;)Lzfa;
    .locals 2

    const-string v0, "*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lfreemarker/ext/dom/a;->r()Lfreemarker/ext/dom/b;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v1, "**"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p1, p0, Lfreemarker/ext/dom/d;->b:Lorg/w3c/dom/Node;

    check-cast p1, Lorg/w3c/dom/Document;

    invoke-interface {p1, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p1

    new-instance v0, Lfreemarker/ext/dom/NodeListModel;

    invoke-direct {v0, p1, p0}, Lfreemarker/ext/dom/NodeListModel;-><init>(Lorg/w3c/dom/NodeList;Lfreemarker/ext/dom/d;)V

    return-object v0

    :cond_1
    invoke-static {p1}, Ln0a;->B(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lfreemarker/ext/dom/d;->b:Lorg/w3c/dom/Node;

    check-cast v0, Lorg/w3c/dom/Document;

    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-static {v0}, Lfreemarker/ext/dom/d;->q(Lorg/w3c/dom/Node;)Lfreemarker/ext/dom/d;

    move-result-object v0

    check-cast v0, Lfreemarker/ext/dom/b;

    invoke-static {}, Lfreemarker/core/Environment;->y0()Lfreemarker/core/Environment;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lfreemarker/ext/dom/b;->s(Ljava/lang/String;Lfreemarker/core/Environment;)Z

    move-result p1

    if-eqz p1, :cond_2

    return-object v0

    :cond_2
    new-instance p1, Lfreemarker/ext/dom/NodeListModel;

    invoke-direct {p1, p0}, Lfreemarker/ext/dom/NodeListModel;-><init>(Lfreemarker/ext/dom/d;)V

    return-object p1

    :cond_3
    invoke-super {p0, p1}, Lfreemarker/ext/dom/d;->get(Ljava/lang/String;)Lzfa;

    move-result-object p0

    return-object p0
.end method

.method public isEmpty()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public r()Lfreemarker/ext/dom/b;
    .locals 1

    iget-object v0, p0, Lfreemarker/ext/dom/a;->m:Lfreemarker/ext/dom/b;

    if-nez v0, :cond_0

    iget-object v0, p0, Lfreemarker/ext/dom/d;->b:Lorg/w3c/dom/Node;

    check-cast v0, Lorg/w3c/dom/Document;

    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-static {v0}, Lfreemarker/ext/dom/d;->q(Lorg/w3c/dom/Node;)Lfreemarker/ext/dom/d;

    move-result-object v0

    check-cast v0, Lfreemarker/ext/dom/b;

    iput-object v0, p0, Lfreemarker/ext/dom/a;->m:Lfreemarker/ext/dom/b;

    :cond_0
    iget-object p0, p0, Lfreemarker/ext/dom/a;->m:Lfreemarker/ext/dom/b;

    return-object p0
.end method
