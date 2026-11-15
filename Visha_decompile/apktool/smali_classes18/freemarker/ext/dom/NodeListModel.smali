.class Lfreemarker/ext/dom/NodeListModel;
.super Lfreemarker/template/SimpleSequence;
.source "SourceFile"

# interfaces
.implements Lofa;
.implements Le1d;


# static fields
.field public static b:Lgc7;

.field static synthetic class$freemarker$template$TemplateBooleanModel:Ljava/lang/Class;

.field static synthetic class$freemarker$template$TemplateDateModel:Ljava/lang/Class;

.field static synthetic class$freemarker$template$TemplateNodeModel:Ljava/lang/Class;

.field static synthetic class$freemarker$template$TemplateNumberModel:Ljava/lang/Class;

.field static synthetic class$freemarker$template$TemplateScalarModel:Ljava/lang/Class;


# instance fields
.field contextNode:Lfreemarker/ext/dom/d;

.field xpathSupport:Lorc;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lg17;

    invoke-direct {v0}, Lg17;-><init>()V

    sput-object v0, Lfreemarker/ext/dom/NodeListModel;->b:Lgc7;

    return-void
.end method

.method public constructor <init>(Lfreemarker/ext/dom/d;)V
    .locals 1

    .line 2
    sget-object v0, Lfreemarker/ext/dom/NodeListModel;->b:Lgc7;

    invoke-direct {p0, v0}, Lfreemarker/template/SimpleSequence;-><init>(Lgc7;)V

    .line 3
    iput-object p1, p0, Lfreemarker/ext/dom/NodeListModel;->contextNode:Lfreemarker/ext/dom/d;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lfreemarker/ext/dom/d;)V
    .locals 1

    .line 12
    sget-object v0, Lfreemarker/ext/dom/NodeListModel;->b:Lgc7;

    invoke-direct {p0, p1, v0}, Lfreemarker/template/SimpleSequence;-><init>(Ljava/util/Collection;Lgc7;)V

    .line 13
    iput-object p2, p0, Lfreemarker/ext/dom/NodeListModel;->contextNode:Lfreemarker/ext/dom/d;

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/NamedNodeMap;Lfreemarker/ext/dom/d;)V
    .locals 3

    .line 8
    sget-object v0, Lfreemarker/ext/dom/NodeListModel;->b:Lgc7;

    invoke-direct {p0, v0}, Lfreemarker/template/SimpleSequence;-><init>(Lgc7;)V

    const/4 v0, 0x0

    .line 9
    :goto_0
    invoke-interface {p1}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 10
    iget-object v1, p0, Lfreemarker/template/SimpleSequence;->list:Ljava/util/List;

    invoke-interface {p1, v0}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 11
    :cond_0
    iput-object p2, p0, Lfreemarker/ext/dom/NodeListModel;->contextNode:Lfreemarker/ext/dom/d;

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Node;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lfreemarker/ext/dom/d;->q(Lorg/w3c/dom/Node;)Lfreemarker/ext/dom/d;

    move-result-object p1

    invoke-direct {p0, p1}, Lfreemarker/ext/dom/NodeListModel;-><init>(Lfreemarker/ext/dom/d;)V

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/NodeList;Lfreemarker/ext/dom/d;)V
    .locals 3

    .line 4
    sget-object v0, Lfreemarker/ext/dom/NodeListModel;->b:Lgc7;

    invoke-direct {p0, v0}, Lfreemarker/template/SimpleSequence;-><init>(Lgc7;)V

    const/4 v0, 0x0

    .line 5
    :goto_0
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 6
    iget-object v1, p0, Lfreemarker/template/SimpleSequence;->list:Ljava/util/List;

    invoke-interface {p1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7
    :cond_0
    iput-object p2, p0, Lfreemarker/ext/dom/NodeListModel;->contextNode:Lfreemarker/ext/dom/d;

    return-void
.end method

.method public static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v0}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public final b(Ljava/lang/String;)[Ljava/lang/Object;
    .locals 6

    new-instance v3, Ljava/lang/Integer;

    invoke-virtual {p0}, Lfreemarker/template/SimpleSequence;->size()I

    move-result v0

    invoke-direct {v3, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0}, Lfreemarker/ext/dom/NodeListModel;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "no matches."

    :goto_0
    move-object v5, p0

    goto :goto_1

    :cond_0
    const-string p0, "multiple matches."

    goto :goto_0

    :goto_1
    const-string v0, "This XML query result can\'t be used as "

    const-string v2, " because for that it had to contain exactly 1 XML node, but it contains "

    const-string v4, " nodes. That is, the constructing XML query has found "

    move-object v1, p1

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final c()Ljava/util/List;
    .locals 4

    invoke-virtual {p0}, Lfreemarker/template/SimpleSequence;->size()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {p0, v2}, Lfreemarker/template/SimpleSequence;->get(I)Lzfa;

    move-result-object v3

    check-cast v3, Lfreemarker/ext/dom/d;

    iget-object v3, v3, Lfreemarker/ext/dom/d;->b:Lorg/w3c/dom/Node;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public explainTypeError([Ljava/lang/Class;)[Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_8

    aget-object v1, p1, v0

    sget-object v2, Lfreemarker/ext/dom/NodeListModel;->class$freemarker$template$TemplateScalarModel:Ljava/lang/Class;

    if-nez v2, :cond_0

    const-string v2, "freemarker.template.TemplateScalarModel"

    invoke-static {v2}, Lfreemarker/ext/dom/NodeListModel;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lfreemarker/ext/dom/NodeListModel;->class$freemarker$template$TemplateScalarModel:Ljava/lang/Class;

    :cond_0
    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_7

    sget-object v2, Lfreemarker/ext/dom/NodeListModel;->class$freemarker$template$TemplateDateModel:Ljava/lang/Class;

    if-nez v2, :cond_1

    const-string v2, "freemarker.template.TemplateDateModel"

    invoke-static {v2}, Lfreemarker/ext/dom/NodeListModel;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lfreemarker/ext/dom/NodeListModel;->class$freemarker$template$TemplateDateModel:Ljava/lang/Class;

    :cond_1
    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_7

    sget-object v2, Lfreemarker/ext/dom/NodeListModel;->class$freemarker$template$TemplateNumberModel:Ljava/lang/Class;

    if-nez v2, :cond_2

    const-string v2, "freemarker.template.TemplateNumberModel"

    invoke-static {v2}, Lfreemarker/ext/dom/NodeListModel;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lfreemarker/ext/dom/NodeListModel;->class$freemarker$template$TemplateNumberModel:Ljava/lang/Class;

    :cond_2
    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_7

    sget-object v2, Lfreemarker/ext/dom/NodeListModel;->class$freemarker$template$TemplateBooleanModel:Ljava/lang/Class;

    if-nez v2, :cond_3

    const-string v2, "freemarker.template.TemplateBooleanModel"

    invoke-static {v2}, Lfreemarker/ext/dom/NodeListModel;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lfreemarker/ext/dom/NodeListModel;->class$freemarker$template$TemplateBooleanModel:Ljava/lang/Class;

    :cond_3
    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_1

    :cond_4
    sget-object v2, Lfreemarker/ext/dom/NodeListModel;->class$freemarker$template$TemplateNodeModel:Ljava/lang/Class;

    if-nez v2, :cond_5

    const-string v2, "freemarker.template.TemplateNodeModel"

    invoke-static {v2}, Lfreemarker/ext/dom/NodeListModel;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lfreemarker/ext/dom/NodeListModel;->class$freemarker$template$TemplateNodeModel:Ljava/lang/Class;

    :cond_5
    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string p1, "node"

    invoke-virtual {p0, p1}, Lfreemarker/ext/dom/NodeListModel;->b(Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_7
    :goto_1
    const-string p1, "string"

    invoke-virtual {p0, p1}, Lfreemarker/ext/dom/NodeListModel;->b(Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_8
    const/4 p0, 0x0

    return-object p0
.end method

.method public filterByName(Ljava/lang/String;)Lfreemarker/ext/dom/NodeListModel;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    new-instance v0, Lfreemarker/ext/dom/NodeListModel;

    iget-object v1, p0, Lfreemarker/ext/dom/NodeListModel;->contextNode:Lfreemarker/ext/dom/d;

    invoke-direct {v0, v1}, Lfreemarker/ext/dom/NodeListModel;-><init>(Lfreemarker/ext/dom/d;)V

    invoke-virtual {p0}, Lfreemarker/template/SimpleSequence;->size()I

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lfreemarker/core/Environment;->y0()Lfreemarker/core/Environment;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    invoke-virtual {p0, v3}, Lfreemarker/template/SimpleSequence;->get(I)Lzfa;

    move-result-object v4

    check-cast v4, Lfreemarker/ext/dom/d;

    instance-of v5, v4, Lfreemarker/ext/dom/b;

    if-eqz v5, :cond_1

    move-object v5, v4

    check-cast v5, Lfreemarker/ext/dom/b;

    invoke-virtual {v5, p1, v2}, Lfreemarker/ext/dom/b;->s(Ljava/lang/String;Lfreemarker/core/Environment;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v0, v4}, Lfreemarker/template/SimpleSequence;->add(Ljava/lang/Object;)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public get(Ljava/lang/String;)Lzfa;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    invoke-virtual {p0}, Lfreemarker/template/SimpleSequence;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    invoke-virtual {p0, v1}, Lfreemarker/template/SimpleSequence;->get(I)Lzfa;

    move-result-object p0

    check-cast p0, Lfreemarker/ext/dom/d;

    invoke-virtual {p0, p1}, Lfreemarker/ext/dom/d;->get(Ljava/lang/String;)Lzfa;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, "@@"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "@@markup"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "@@nested_markup"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "@@text"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    :goto_0
    invoke-virtual {p0}, Lfreemarker/template/SimpleSequence;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p0, v1}, Lfreemarker/template/SimpleSequence;->get(I)Lzfa;

    move-result-object v2

    check-cast v2, Lfreemarker/ext/dom/d;

    invoke-virtual {v2, p1}, Lfreemarker/ext/dom/d;->get(Ljava/lang/String;)Lzfa;

    move-result-object v2

    check-cast v2, Lmga;

    invoke-interface {v2}, Lmga;->getAsString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    new-instance p0, Lfreemarker/template/SimpleScalar;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lfreemarker/template/SimpleScalar;-><init>(Ljava/lang/String;)V

    return-object p0

    :cond_3
    invoke-static {p1}, Ln0a;->B(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    const-string v3, "@"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ln0a;->B(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    :cond_4
    const-string v3, "*"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    const-string v3, "**"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "@*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Lfreemarker/ext/dom/NodeListModel;->getXPathSupport()Lorc;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lfreemarker/template/SimpleSequence;->size()I

    move-result v1

    if-nez v1, :cond_6

    const/4 p0, 0x0

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Lfreemarker/ext/dom/NodeListModel;->c()Ljava/util/List;

    move-result-object p0

    :goto_1
    invoke-interface {v0, p0, p1}, Lorc;->a(Ljava/lang/Object;Ljava/lang/String;)Lzfa;

    move-result-object p0

    return-object p0

    :cond_7
    new-instance v0, Lfreemarker/template/TemplateModelException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Key: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, "\' is not legal for a node sequence ("

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, "). This node sequence contains "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lfreemarker/template/SimpleSequence;->size()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p0, " node(s). "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, "Some keys are valid only for node sequences of size 1. "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, "If you use Xalan (instead of Jaxen), XPath expression keys work only with "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, "node lists of size 1."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lfreemarker/template/TemplateModelException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    :goto_2
    new-instance v0, Lfreemarker/ext/dom/NodeListModel;

    iget-object v3, p0, Lfreemarker/ext/dom/NodeListModel;->contextNode:Lfreemarker/ext/dom/d;

    invoke-direct {v0, v3}, Lfreemarker/ext/dom/NodeListModel;-><init>(Lfreemarker/ext/dom/d;)V

    move v3, v1

    :goto_3
    invoke-virtual {p0}, Lfreemarker/template/SimpleSequence;->size()I

    move-result v4

    if-ge v3, v4, :cond_a

    invoke-virtual {p0, v3}, Lfreemarker/template/SimpleSequence;->get(I)Lzfa;

    move-result-object v4

    check-cast v4, Lfreemarker/ext/dom/d;

    instance-of v5, v4, Lfreemarker/ext/dom/b;

    if-eqz v5, :cond_9

    check-cast v4, Lfreemarker/ext/dom/b;

    invoke-virtual {v4, p1}, Lfreemarker/ext/dom/b;->get(Ljava/lang/String;)Lzfa;

    move-result-object v4

    check-cast v4, Lnga;

    if-eqz v4, :cond_9

    invoke-interface {v4}, Lnga;->size()I

    move-result v5

    move v6, v1

    :goto_4
    if-ge v6, v5, :cond_9

    invoke-interface {v4, v6}, Lnga;->get(I)Lzfa;

    move-result-object v7

    invoke-virtual {v0, v7}, Lfreemarker/template/SimpleSequence;->add(Ljava/lang/Object;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_a
    invoke-virtual {v0}, Lfreemarker/template/SimpleSequence;->size()I

    move-result p0

    if-ne p0, v2, :cond_b

    invoke-virtual {v0, v1}, Lfreemarker/template/SimpleSequence;->get(I)Lzfa;

    move-result-object p0

    return-object p0

    :cond_b
    return-object v0
.end method

.method public getXPathSupport()Lorc;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    iget-object v0, p0, Lfreemarker/ext/dom/NodeListModel;->xpathSupport:Lorc;

    if-nez v0, :cond_1

    iget-object v0, p0, Lfreemarker/ext/dom/NodeListModel;->contextNode:Lfreemarker/ext/dom/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lfreemarker/ext/dom/d;->l()Lorc;

    move-result-object v0

    iput-object v0, p0, Lfreemarker/ext/dom/NodeListModel;->xpathSupport:Lorc;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lfreemarker/template/SimpleSequence;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lfreemarker/template/SimpleSequence;->get(I)Lzfa;

    move-result-object v0

    check-cast v0, Lfreemarker/ext/dom/d;

    invoke-virtual {v0}, Lfreemarker/ext/dom/d;->l()Lorc;

    move-result-object v0

    iput-object v0, p0, Lfreemarker/ext/dom/NodeListModel;->xpathSupport:Lorc;

    :cond_1
    :goto_0
    iget-object p0, p0, Lfreemarker/ext/dom/NodeListModel;->xpathSupport:Lorc;

    return-object p0
.end method

.method public isEmpty()Z
    .locals 0

    invoke-virtual {p0}, Lfreemarker/template/SimpleSequence;->size()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
