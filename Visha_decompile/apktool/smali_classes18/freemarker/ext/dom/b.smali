.class public Lfreemarker/ext/dom/b;
.super Lfreemarker/ext/dom/d;
.source "SourceFile"

# interfaces
.implements Lmga;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;)V
    .locals 0

    invoke-direct {p0, p1}, Lfreemarker/ext/dom/d;-><init>(Lorg/w3c/dom/Node;)V

    return-void
.end method


# virtual methods
.method public c()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lfreemarker/ext/dom/b;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lfreemarker/ext/dom/d;->g()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Lfreemarker/core/Environment;->y0()Lfreemarker/core/Environment;

    move-result-object v1

    invoke-virtual {v1}, Lfreemarker/core/Environment;->F0()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string p0, "D"

    goto :goto_0

    :cond_1
    invoke-virtual {v1, p0}, Lfreemarker/core/Environment;->b1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    if-nez p0, :cond_2

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, ":"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_3
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    :goto_1
    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lfreemarker/ext/dom/d;->b:Lorg/w3c/dom/Node;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object p0, p0, Lfreemarker/ext/dom/d;->b:Lorg/w3c/dom/Node;

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public get(Ljava/lang/String;)Lzfa;
    .locals 4

    const-string v0, "*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    new-instance p1, Lfreemarker/ext/dom/NodeListModel;

    invoke-direct {p1, p0}, Lfreemarker/ext/dom/NodeListModel;-><init>(Lfreemarker/ext/dom/d;)V

    invoke-virtual {p0}, Lfreemarker/ext/dom/d;->k()Lnga;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Lnga;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    invoke-interface {p0, v2}, Lnga;->get(I)Lzfa;

    move-result-object v0

    check-cast v0, Lfreemarker/ext/dom/d;

    iget-object v1, v0, Lfreemarker/ext/dom/d;->b:Lorg/w3c/dom/Node;

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    if-ne v1, v3, :cond_0

    invoke-virtual {p1, v0}, Lfreemarker/template/SimpleSequence;->add(Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object p1

    :cond_2
    const-string v1, "**"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object p1, p0, Lfreemarker/ext/dom/d;->b:Lorg/w3c/dom/Node;

    check-cast p1, Lorg/w3c/dom/Element;

    new-instance v1, Lfreemarker/ext/dom/NodeListModel;

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p1

    invoke-direct {v1, p1, p0}, Lfreemarker/ext/dom/NodeListModel;-><init>(Lorg/w3c/dom/NodeList;Lfreemarker/ext/dom/d;)V

    return-object v1

    :cond_3
    const-string v0, "@"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "@@"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "@*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto/16 :goto_1

    :cond_4
    const-string v0, "@@start_tag"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance p1, Lh17;

    iget-object v0, p0, Lfreemarker/ext/dom/d;->b:Lorg/w3c/dom/Node;

    invoke-direct {p1, v0}, Lh17;-><init>(Lorg/w3c/dom/Node;)V

    new-instance v0, Lfreemarker/template/SimpleScalar;

    iget-object p0, p0, Lfreemarker/ext/dom/d;->b:Lorg/w3c/dom/Node;

    check-cast p0, Lorg/w3c/dom/Element;

    invoke-virtual {p1, p0}, Lh17;->d(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lfreemarker/template/SimpleScalar;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_5
    const-string v0, "@@end_tag"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance p1, Lh17;

    iget-object v0, p0, Lfreemarker/ext/dom/d;->b:Lorg/w3c/dom/Node;

    invoke-direct {p1, v0}, Lh17;-><init>(Lorg/w3c/dom/Node;)V

    new-instance v0, Lfreemarker/template/SimpleScalar;

    iget-object p0, p0, Lfreemarker/ext/dom/d;->b:Lorg/w3c/dom/Node;

    check-cast p0, Lorg/w3c/dom/Element;

    invoke-virtual {p1, p0}, Lh17;->c(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lfreemarker/template/SimpleScalar;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_6
    const-string v0, "@@attributes_markup"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v0, Lh17;

    iget-object v1, p0, Lfreemarker/ext/dom/d;->b:Lorg/w3c/dom/Node;

    invoke-direct {v0, v1}, Lh17;-><init>(Lorg/w3c/dom/Node;)V

    iget-object p0, p0, Lfreemarker/ext/dom/d;->b:Lorg/w3c/dom/Node;

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lh17;->e(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/StringBuffer;)V

    new-instance p0, Lfreemarker/template/SimpleScalar;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lfreemarker/template/SimpleScalar;-><init>(Ljava/lang/String;)V

    return-object p0

    :cond_7
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ln0a;->B(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lfreemarker/ext/dom/b;->r(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object p1

    if-nez p1, :cond_8

    new-instance p1, Lfreemarker/ext/dom/NodeListModel;

    invoke-direct {p1, p0}, Lfreemarker/ext/dom/NodeListModel;-><init>(Lfreemarker/ext/dom/d;)V

    return-object p1

    :cond_8
    invoke-static {p1}, Lfreemarker/ext/dom/d;->q(Lorg/w3c/dom/Node;)Lfreemarker/ext/dom/d;

    move-result-object p0

    return-object p0

    :cond_9
    :goto_1
    new-instance p1, Lfreemarker/ext/dom/NodeListModel;

    iget-object v0, p0, Lfreemarker/ext/dom/d;->b:Lorg/w3c/dom/Node;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lfreemarker/ext/dom/NodeListModel;-><init>(Lorg/w3c/dom/NamedNodeMap;Lfreemarker/ext/dom/d;)V

    return-object p1

    :cond_a
    invoke-static {p1}, Ln0a;->B(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lfreemarker/ext/dom/d;->k()Lnga;

    move-result-object p0

    check-cast p0, Lfreemarker/ext/dom/NodeListModel;

    invoke-virtual {p0, p1}, Lfreemarker/ext/dom/NodeListModel;->filterByName(Ljava/lang/String;)Lfreemarker/ext/dom/NodeListModel;

    move-result-object p0

    invoke-virtual {p0}, Lfreemarker/template/SimpleSequence;->size()I

    move-result p1

    if-ne p1, v3, :cond_b

    invoke-virtual {p0, v2}, Lfreemarker/template/SimpleSequence;->get(I)Lzfa;

    move-result-object p0

    :cond_b
    return-object p0

    :cond_c
    invoke-super {p0, p1}, Lfreemarker/ext/dom/d;->get(Ljava/lang/String;)Lzfa;

    move-result-object p0

    return-object p0
.end method

.method public getAsString()Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lfreemarker/ext/dom/d;->b:Lorg/w3c/dom/Node;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    const-string v1, ""

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v2, v3, :cond_3

    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_2

    const/4 v5, 0x3

    if-eq v4, v5, :cond_0

    const/4 v5, 0x4

    if-ne v4, v5, :cond_1

    :cond_0
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Only elements with no child elements can be processed as text.\nThis element with name \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p0, p0, Lfreemarker/ext/dom/d;->b:Lorg/w3c/dom/Node;

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, "\" has a child element named: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lfreemarker/template/TemplateModelException;

    invoke-direct {v0, p0}, Lfreemarker/template/TemplateModelException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    return-object v1
.end method

.method public isEmpty()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final r(Ljava/lang/String;)Lorg/w3c/dom/Attr;
    .locals 4

    iget-object p0, p0, Lfreemarker/ext/dom/d;->b:Lorg/w3c/dom/Node;

    check-cast p0, Lorg/w3c/dom/Element;

    invoke-interface {p0, p1}, Lorg/w3c/dom/Element;->getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/16 v1, 0x3a

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-lez v1, :cond_2

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "D"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lfreemarker/core/Environment;->y0()Lfreemarker/core/Environment;

    move-result-object v2

    invoke-virtual {v2}, Lfreemarker/core/Environment;->F0()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    invoke-static {}, Lfreemarker/core/Environment;->y0()Lfreemarker/core/Environment;

    move-result-object v3

    invoke-virtual {v3, v2}, Lfreemarker/core/Environment;->V0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    if-eqz v2, :cond_2

    invoke-interface {p0, v2, p1}, Lorg/w3c/dom/Element;->getAttributeNodeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method public s(Ljava/lang/String;Lfreemarker/core/Environment;)Z
    .locals 1

    invoke-virtual {p0}, Lfreemarker/ext/dom/b;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lfreemarker/ext/dom/d;->g()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, v0, p0, p2}, Ln0a;->N(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/Environment;)Z

    move-result p0

    return p0
.end method
