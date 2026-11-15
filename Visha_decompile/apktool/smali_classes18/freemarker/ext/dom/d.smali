.class public abstract Lfreemarker/ext/dom/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgga;
.implements Lofa;
.implements Lnga;
.implements Lc8;
.implements Llpc;
.implements Le1d;


# static fields
.field public static final e:Lpq5;

.field public static final f:Ljava/lang/Object;

.field public static final g:Ljava/util/Map;

.field public static h:Lorc;

.field public static i:Ljava/lang/Class;

.field public static synthetic j:Ljava/lang/Class;

.field public static synthetic k:Ljava/lang/Class;

.field public static synthetic l:Ljava/lang/Class;


# instance fields
.field public final b:Lorg/w3c/dom/Node;

.field public c:Lnga;

.field public d:Lfreemarker/ext/dom/d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "freemarker.dom"

    invoke-static {v0}, Lpq5;->k(Ljava/lang/String;)Lpq5;

    move-result-object v0

    sput-object v0, Lfreemarker/ext/dom/d;->e:Lpq5;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lfreemarker/ext/dom/d;->f:Ljava/lang/Object;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lfreemarker/ext/dom/d;->g:Ljava/util/Map;

    :try_start_0
    invoke-static {}, Lfreemarker/ext/dom/d;->m()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    sget-object v0, Lfreemarker/ext/dom/d;->i:Ljava/lang/Class;

    if-nez v0, :cond_0

    sget-object v0, Lfreemarker/ext/dom/d;->e:Lpq5;

    invoke-virtual {v0}, Lpq5;->t()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "No XPath support is available."

    invoke-virtual {v0, v1}, Lpq5;->z(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Node;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfreemarker/ext/dom/d;->b:Lorg/w3c/dom/Node;

    return-void
.end method

.method public static synthetic b(Ljava/lang/String;)Ljava/lang/Class;
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

.method public static e(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .locals 3

    instance-of v0, p0, Lorg/w3c/dom/Text;

    if-nez v0, :cond_2

    instance-of v0, p0, Lorg/w3c/dom/CDATASection;

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    instance-of v0, p0, Lorg/w3c/dom/Element;

    const-string v1, ""

    if-eqz v0, :cond_1

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge v0, v2, :cond_3

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {p0, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-static {v1}, Lfreemarker/ext/dom/d;->e(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    instance-of v0, p0, Lorg/w3c/dom/Document;

    if-eqz v0, :cond_3

    check-cast p0, Lorg/w3c/dom/Document;

    invoke-interface {p0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object p0

    invoke-static {p0}, Lfreemarker/ext/dom/d;->e(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_2
    :goto_1
    check-cast p0, Lorg/w3c/dom/CharacterData;

    invoke-interface {p0}, Lorg/w3c/dom/CharacterData;->getData()Ljava/lang/String;

    move-result-object v1

    :cond_3
    :goto_2
    return-object v1
.end method

.method public static m()V
    .locals 2

    sget-object v0, Lfreemarker/ext/dom/d;->f:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lfreemarker/ext/dom/d;->i:Ljava/lang/Class;

    sput-object v1, Lfreemarker/ext/dom/d;->h:Lorc;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {}, Lfreemarker/ext/dom/d;->p()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    :goto_0
    :try_start_2
    sget-object v1, Lfreemarker/ext/dom/d;->i:Ljava/lang/Class;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v1, :cond_0

    :try_start_3
    invoke-static {}, Lfreemarker/ext/dom/d;->o()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catch_1
    :cond_0
    :try_start_4
    sget-object v1, Lfreemarker/ext/dom/d;->i:Ljava/lang/Class;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v1, :cond_1

    :try_start_5
    invoke-static {}, Lfreemarker/ext/dom/d;->n()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catch_2
    :cond_1
    :try_start_6
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v1
.end method

.method public static n()V
    .locals 2

    const-string v0, "org.jaxen.dom.DOMXPath"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    const-class v0, Lfreemarker/ext/dom/c;

    sget-object v1, Lfreemarker/ext/dom/c;->a:Lzm1;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorc;

    sput-object v1, Lfreemarker/ext/dom/d;->h:Lorc;

    sget-object v1, Lfreemarker/ext/dom/d;->f:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sput-object v0, Lfreemarker/ext/dom/d;->i:Ljava/lang/Class;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lfreemarker/ext/dom/d;->e:Lpq5;

    invoke-virtual {v0}, Lpq5;->q()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Using Jaxen classes for XPath support"

    invoke-virtual {v0, v1}, Lpq5;->d(Ljava/lang/String;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static o()V
    .locals 2

    const-string v0, "com.sun.org.apache.xpath.internal.XPath"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    const-class v0, Ls6a;

    sget-object v1, Ls6a;->a:Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;

    sget-object v1, Lfreemarker/ext/dom/d;->f:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sput-object v0, Lfreemarker/ext/dom/d;->i:Ljava/lang/Class;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lfreemarker/ext/dom/d;->e:Lpq5;

    invoke-virtual {v0}, Lpq5;->q()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Using Sun\'s internal Xalan classes for XPath support"

    invoke-virtual {v0, v1}, Lpq5;->d(Ljava/lang/String;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static p()V
    .locals 2

    const-string v0, "org.apache.xpath.XPath"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    const-class v0, Lsrc;

    sget-object v1, Lsrc;->a:Lorg/apache/xml/utils/PrefixResolver;

    sget-object v1, Lfreemarker/ext/dom/d;->f:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sput-object v0, Lfreemarker/ext/dom/d;->i:Ljava/lang/Class;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lfreemarker/ext/dom/d;->e:Lpq5;

    invoke-virtual {v0}, Lpq5;->q()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Using Xalan classes for XPath support"

    invoke-virtual {v0, v1}, Lpq5;->d(Ljava/lang/String;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static q(Lorg/w3c/dom/Node;)Lfreemarker/ext/dom/d;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    new-instance v0, Liw2;

    check-cast p0, Lorg/w3c/dom/DocumentType;

    invoke-direct {v0, p0}, Liw2;-><init>(Lorg/w3c/dom/DocumentType;)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Lfreemarker/ext/dom/a;

    check-cast p0, Lorg/w3c/dom/Document;

    invoke-direct {v0, p0}, Lfreemarker/ext/dom/a;-><init>(Lorg/w3c/dom/Document;)V

    goto :goto_0

    :pswitch_3
    new-instance v0, Luu7;

    check-cast p0, Lorg/w3c/dom/ProcessingInstruction;

    invoke-direct {v0, p0}, Luu7;-><init>(Lorg/w3c/dom/ProcessingInstruction;)V

    goto :goto_0

    :pswitch_4
    new-instance v0, Llv0;

    check-cast p0, Lorg/w3c/dom/CharacterData;

    invoke-direct {v0, p0}, Llv0;-><init>(Lorg/w3c/dom/CharacterData;)V

    goto :goto_0

    :pswitch_5
    new-instance v0, Lml;

    check-cast p0, Lorg/w3c/dom/Attr;

    invoke-direct {v0, p0}, Lml;-><init>(Lorg/w3c/dom/Attr;)V

    goto :goto_0

    :pswitch_6
    new-instance v0, Lfreemarker/ext/dom/b;

    check-cast p0, Lorg/w3c/dom/Element;

    invoke-direct {v0, p0}, Lfreemarker/ext/dom/b;-><init>(Lorg/w3c/dom/Element;)V

    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public a()Lgga;
    .locals 3

    iget-object v0, p0, Lfreemarker/ext/dom/d;->d:Lfreemarker/ext/dom/d;

    if-nez v0, :cond_1

    iget-object v0, p0, Lfreemarker/ext/dom/d;->b:Lorg/w3c/dom/Node;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lfreemarker/ext/dom/d;->b:Lorg/w3c/dom/Node;

    instance-of v2, v1, Lorg/w3c/dom/Attr;

    if-eqz v2, :cond_0

    check-cast v1, Lorg/w3c/dom/Attr;

    invoke-interface {v1}, Lorg/w3c/dom/Attr;->getOwnerElement()Lorg/w3c/dom/Element;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Lfreemarker/ext/dom/d;->q(Lorg/w3c/dom/Node;)Lfreemarker/ext/dom/d;

    move-result-object v0

    iput-object v0, p0, Lfreemarker/ext/dom/d;->d:Lfreemarker/ext/dom/d;

    :cond_1
    iget-object p0, p0, Lfreemarker/ext/dom/d;->d:Lfreemarker/ext/dom/d;

    return-object p0
.end method

.method public c()Ljava/lang/String;
    .locals 0

    invoke-interface {p0}, Lgga;->d()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_1

    check-cast p1, Lfreemarker/ext/dom/d;

    iget-object p1, p1, Lfreemarker/ext/dom/d;->b:Lorg/w3c/dom/Node;

    iget-object p0, p0, Lfreemarker/ext/dom/d;->b:Lorg/w3c/dom/Node;

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public explainTypeError([Ljava/lang/Class;)[Ljava/lang/Object;
    .locals 2

    const/4 p0, 0x0

    :goto_0
    array-length v0, p1

    if-ge p0, v0, :cond_5

    aget-object v0, p1, p0

    sget-object v1, Lfreemarker/ext/dom/d;->j:Ljava/lang/Class;

    if-nez v1, :cond_0

    const-string v1, "freemarker.template.TemplateDateModel"

    invoke-static {v1}, Lfreemarker/ext/dom/d;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/dom/d;->j:Ljava/lang/Class;

    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_4

    sget-object v1, Lfreemarker/ext/dom/d;->k:Ljava/lang/Class;

    if-nez v1, :cond_1

    const-string v1, "freemarker.template.TemplateNumberModel"

    invoke-static {v1}, Lfreemarker/ext/dom/d;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/dom/d;->k:Ljava/lang/Class;

    :cond_1
    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_4

    sget-object v1, Lfreemarker/ext/dom/d;->l:Ljava/lang/Class;

    if-nez v1, :cond_2

    const-string v1, "freemarker.template.TemplateBooleanModel"

    invoke-static {v1}, Lfreemarker/ext/dom/d;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/dom/d;->l:Ljava/lang/Class;

    :cond_2
    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    const-string p0, "XML node values are always strings (text), that is, they can\'t be used as number, date/time/datetime or boolean without explicit conversion (such as someNode?number, someNode?datetime.xs, someNode?date.xs, someNode?time.xs, someNode?boolean)."

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_5
    const/4 p0, 0x0

    return-object p0
.end method

.method public g()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lfreemarker/ext/dom/d;->b:Lorg/w3c/dom/Node;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    if-eq v0, v2, :cond_0

    return-object v1

    :cond_0
    iget-object p0, p0, Lfreemarker/ext/dom/d;->b:Lorg/w3c/dom/Node;

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object p0

    const-string v4, ""

    if-nez p0, :cond_1

    if-ne v0, v2, :cond_1

    move-object v1, v4

    goto :goto_0

    :cond_1
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-ne v0, v3, :cond_2

    goto :goto_0

    :cond_2
    move-object v1, p0

    :goto_0
    return-object v1
.end method

.method public final get(I)Lzfa;
    .locals 0

    .line 27
    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public get(Ljava/lang/String;)Lzfa;
    .locals 2

    .line 1
    const-string v0, "@@"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2
    const-string v0, "@@text"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    new-instance p1, Lfreemarker/template/SimpleScalar;

    iget-object p0, p0, Lfreemarker/ext/dom/d;->b:Lorg/w3c/dom/Node;

    invoke-static {p0}, Lfreemarker/ext/dom/d;->e(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lfreemarker/template/SimpleScalar;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 4
    :cond_0
    const-string v0, "@@namespace"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 5
    iget-object p0, p0, Lfreemarker/ext/dom/d;->b:Lorg/w3c/dom/Node;

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    new-instance v1, Lfreemarker/template/SimpleScalar;

    invoke-direct {v1, p0}, Lfreemarker/template/SimpleScalar;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v1

    .line 7
    :cond_2
    const-string v0, "@@local_name"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 8
    iget-object p1, p0, Lfreemarker/ext/dom/d;->b:Lorg/w3c/dom/Node;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_3

    .line 9
    invoke-interface {p0}, Lgga;->d()Ljava/lang/String;

    move-result-object p1

    .line 10
    :cond_3
    new-instance p0, Lfreemarker/template/SimpleScalar;

    invoke-direct {p0, p1}, Lfreemarker/template/SimpleScalar;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 11
    :cond_4
    const-string v0, "@@markup"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 12
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    .line 13
    new-instance v0, Lh17;

    iget-object v1, p0, Lfreemarker/ext/dom/d;->b:Lorg/w3c/dom/Node;

    invoke-direct {v0, v1}, Lh17;-><init>(Lorg/w3c/dom/Node;)V

    .line 14
    iget-object p0, p0, Lfreemarker/ext/dom/d;->b:Lorg/w3c/dom/Node;

    invoke-virtual {v0, p0, p1}, Lh17;->f(Lorg/w3c/dom/Node;Ljava/lang/StringBuffer;)V

    .line 15
    new-instance p0, Lfreemarker/template/SimpleScalar;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lfreemarker/template/SimpleScalar;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 16
    :cond_5
    const-string v0, "@@nested_markup"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 17
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    .line 18
    new-instance v0, Lh17;

    iget-object v1, p0, Lfreemarker/ext/dom/d;->b:Lorg/w3c/dom/Node;

    invoke-direct {v0, v1}, Lh17;-><init>(Lorg/w3c/dom/Node;)V

    .line 19
    iget-object p0, p0, Lfreemarker/ext/dom/d;->b:Lorg/w3c/dom/Node;

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lh17;->g(Lorg/w3c/dom/NodeList;Ljava/lang/StringBuffer;)V

    .line 20
    new-instance p0, Lfreemarker/template/SimpleScalar;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lfreemarker/template/SimpleScalar;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 21
    :cond_6
    const-string v0, "@@qname"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 22
    invoke-virtual {p0}, Lfreemarker/ext/dom/d;->c()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_7

    goto :goto_1

    .line 23
    :cond_7
    new-instance v1, Lfreemarker/template/SimpleScalar;

    invoke-direct {v1, p0}, Lfreemarker/template/SimpleScalar;-><init>(Ljava/lang/String;)V

    :goto_1
    return-object v1

    .line 24
    :cond_8
    invoke-virtual {p0}, Lfreemarker/ext/dom/d;->l()Lorc;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 25
    iget-object p0, p0, Lfreemarker/ext/dom/d;->b:Lorg/w3c/dom/Node;

    invoke-interface {v0, p0, p1}, Lorc;->a(Ljava/lang/Object;Ljava/lang/String;)Lzfa;

    move-result-object p0

    return-object p0

    .line 26
    :cond_9
    new-instance p0, Lfreemarker/template/TemplateModelException;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Can\'t try to resolve the XML query key, because no XPath support is available. It\'s either malformed or an XPath expression: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lfreemarker/template/TemplateModelException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getAdaptedObject(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lfreemarker/ext/dom/d;->b:Lorg/w3c/dom/Node;

    return-object p0
.end method

.method public getWrappedObject()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lfreemarker/ext/dom/d;->b:Lorg/w3c/dom/Node;

    return-object p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lfreemarker/ext/dom/d;->b:Lorg/w3c/dom/Node;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public final i()Ljava/lang/String;
    .locals 3

    iget-object p0, p0, Lfreemarker/ext/dom/d;->b:Lorg/w3c/dom/Node;

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result p0

    const-string v0, "text"

    packed-switch p0, :pswitch_data_0

    new-instance v0, Lfreemarker/template/TemplateModelException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Unknown node type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p0, ". This should be impossible!"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lfreemarker/template/TemplateModelException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const-string p0, "notation"

    return-object p0

    :pswitch_1
    const-string p0, "document_fragment"

    return-object p0

    :pswitch_2
    const-string p0, "document_type"

    return-object p0

    :pswitch_3
    const-string p0, "document"

    return-object p0

    :pswitch_4
    const-string p0, "comment"

    return-object p0

    :pswitch_5
    const-string p0, "pi"

    return-object p0

    :pswitch_6
    const-string p0, "entity"

    return-object p0

    :pswitch_7
    const-string p0, "entity_reference"

    return-object p0

    :pswitch_8
    return-object v0

    :pswitch_9
    const-string p0, "attribute"

    return-object p0

    :pswitch_a
    const-string p0, "element"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public k()Lnga;
    .locals 2

    iget-object v0, p0, Lfreemarker/ext/dom/d;->c:Lnga;

    if-nez v0, :cond_0

    new-instance v0, Lfreemarker/ext/dom/NodeListModel;

    iget-object v1, p0, Lfreemarker/ext/dom/d;->b:Lorg/w3c/dom/Node;

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lfreemarker/ext/dom/NodeListModel;-><init>(Lorg/w3c/dom/NodeList;Lfreemarker/ext/dom/d;)V

    iput-object v0, p0, Lfreemarker/ext/dom/d;->c:Lnga;

    :cond_0
    iget-object p0, p0, Lfreemarker/ext/dom/d;->c:Lnga;

    return-object p0
.end method

.method public l()Lorc;
    .locals 4

    sget-object v0, Lfreemarker/ext/dom/d;->h:Lorc;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lfreemarker/ext/dom/d;->b:Lorg/w3c/dom/Node;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lfreemarker/ext/dom/d;->b:Lorg/w3c/dom/Node;

    move-object v0, p0

    check-cast v0, Lorg/w3c/dom/Document;

    :cond_1
    monitor-enter v0

    :try_start_0
    sget-object p0, Lfreemarker/ext/dom/d;->g:Ljava/util/Map;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorc;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_3

    :try_start_1
    sget-object v2, Lfreemarker/ext/dom/d;->i:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorc;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v1, v2

    goto :goto_2

    :catch_0
    move-exception p0

    move-object v1, v2

    goto :goto_1

    :catch_1
    move-exception p0

    :goto_1
    :try_start_3
    sget-object v2, Lfreemarker/ext/dom/d;->e:Lpq5;

    const-string v3, "Error instantiating xpathSupport class"

    invoke-virtual {v2, v3, p0}, Lpq5;->h(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    monitor-exit v0

    return-object v1

    :goto_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public final size()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
