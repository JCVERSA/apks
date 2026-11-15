.class public Lfreemarker/ext/dom/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorc;


# static fields
.field public static final a:Lzm1;

.field public static final b:Ljava/util/ArrayList;

.field public static final c:Lorg/jaxen/NamespaceContext;

.field public static final d:Lorg/jaxen/VariableContext;

.field public static final e:Lorg/jaxen/FunctionContext;

.field public static final f:Lzm1;

.field public static final g:Lorg/jaxen/Navigator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lc95;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lc95;-><init>(I)V

    sput-object v0, Lfreemarker/ext/dom/c;->a:Lzm1;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lfreemarker/ext/dom/c;->b:Ljava/util/ArrayList;

    new-instance v0, Ld95;

    invoke-direct {v0}, Ld95;-><init>()V

    sput-object v0, Lfreemarker/ext/dom/c;->c:Lorg/jaxen/NamespaceContext;

    new-instance v0, Le95;

    invoke-direct {v0}, Le95;-><init>()V

    sput-object v0, Lfreemarker/ext/dom/c;->d:Lorg/jaxen/VariableContext;

    new-instance v0, Lf95;

    invoke-direct {v0}, Lf95;-><init>()V

    sput-object v0, Lfreemarker/ext/dom/c;->e:Lorg/jaxen/FunctionContext;

    new-instance v0, Lzm1;

    invoke-direct {v0, v1}, Lzm1;-><init>(I)V

    sput-object v0, Lfreemarker/ext/dom/c;->f:Lzm1;

    new-instance v0, Lg95;

    invoke-direct {v0}, Lg95;-><init>()V

    sput-object v0, Lfreemarker/ext/dom/c;->g:Lorg/jaxen/Navigator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/String;)Lzfa;
    .locals 3

    :try_start_0
    sget-object v0, Lfreemarker/ext/dom/c;->a:Lzm1;

    invoke-virtual {v0}, Lzm1;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    monitor-enter v0
    :try_end_0
    .catch Lfreemarker/template/utility/UndeclaredThrowableException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/jaxen/JaxenException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jaxen/BaseXPath;

    if-nez v1, :cond_0

    new-instance v1, Lorg/jaxen/BaseXPath;

    sget-object v2, Lfreemarker/ext/dom/c;->g:Lorg/jaxen/Navigator;

    invoke-direct {v1, p2, v2}, Lorg/jaxen/BaseXPath;-><init>(Ljava/lang/String;Lorg/jaxen/Navigator;)V

    sget-object v2, Lfreemarker/ext/dom/c;->c:Lorg/jaxen/NamespaceContext;

    invoke-virtual {v1, v2}, Lorg/jaxen/BaseXPath;->setNamespaceContext(Lorg/jaxen/NamespaceContext;)V

    sget-object v2, Lfreemarker/ext/dom/c;->e:Lorg/jaxen/FunctionContext;

    invoke-virtual {v1, v2}, Lorg/jaxen/BaseXPath;->setFunctionContext(Lorg/jaxen/FunctionContext;)V

    sget-object v2, Lfreemarker/ext/dom/c;->d:Lorg/jaxen/VariableContext;

    invoke-virtual {v1, v2}, Lorg/jaxen/BaseXPath;->setVariableContext(Lorg/jaxen/VariableContext;)V

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    :try_start_2
    sget-object p1, Lfreemarker/ext/dom/c;->b:Ljava/util/ArrayList;

    :goto_1
    invoke-virtual {v1, p1}, Lorg/jaxen/BaseXPath;->selectNodes(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    sget-object p0, Lgc7;->b:Lgc7;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lgc7;->c(Ljava/lang/Object;)Lzfa;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_3

    :catch_1
    move-exception p0

    goto :goto_4

    :cond_2
    new-instance p2, Lfreemarker/ext/dom/NodeListModel;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, Lfreemarker/ext/dom/NodeListModel;-><init>(Ljava/util/List;Lfreemarker/ext/dom/d;)V

    iput-object p0, p2, Lfreemarker/ext/dom/NodeListModel;->xpathSupport:Lorc;
    :try_end_2
    .catch Lfreemarker/template/utility/UndeclaredThrowableException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/jaxen/JaxenException; {:try_start_2 .. :try_end_2} :catch_0

    return-object p2

    :goto_2
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0
    :try_end_4
    .catch Lfreemarker/template/utility/UndeclaredThrowableException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lorg/jaxen/JaxenException; {:try_start_4 .. :try_end_4} :catch_0

    :goto_3
    new-instance p1, Lfreemarker/template/TemplateModelException;

    invoke-direct {p1, p0}, Lfreemarker/template/TemplateModelException;-><init>(Ljava/lang/Exception;)V

    throw p1

    :goto_4
    invoke-virtual {p0}, Lfreemarker/template/utility/UndeclaredThrowableException;->getUndeclaredThrowable()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p2, p1, Lfreemarker/template/TemplateModelException;

    if-eqz p2, :cond_3

    check-cast p1, Lfreemarker/template/TemplateModelException;

    throw p1

    :cond_3
    throw p0
.end method
