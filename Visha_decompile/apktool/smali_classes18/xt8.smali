.class public Lxt8;
.super Lrd0;
.source "SourceFile"

# interfaces
.implements Lyfa;


# static fields
.field public static final i:Lfq6;


# instance fields
.field public h:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lwt8;

    invoke-direct {v0}, Lwt8;-><init>()V

    sput-object v0, Lxt8;->i:Lfq6;

    return-void
.end method

.method public constructor <init>(Ljava/util/ResourceBundle;Lfreemarker/ext/beans/b;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lrd0;-><init>(Ljava/lang/Object;Lfreemarker/ext/beans/b;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lxt8;->h:Ljava/util/Hashtable;

    return-void
.end method


# virtual methods
.method public c(Ljava/util/Map;Ljava/lang/Class;Ljava/lang/String;)Lzfa;
    .locals 1

    :try_start_0
    iget-object p1, p0, Lrd0;->b:Ljava/lang/Object;

    check-cast p1, Ljava/util/ResourceBundle;

    invoke-virtual {p1, p3}, Ljava/util/ResourceBundle;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lrd0;->o(Ljava/lang/Object;)Lzfa;

    move-result-object p0
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lfreemarker/core/_TemplateModelException;

    new-instance p2, Lk0d;

    invoke-direct {p2, p3}, Lk0d;-><init>(Ljava/lang/Object;)V

    const-string p3, " key in the ResourceBundle. Note that conforming to the ResourceBundle Java API, this is an error and not just a missing sub-variable (a null)."

    const-string v0, "No "

    filled-new-array {v0, p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lfreemarker/core/_TemplateModelException;-><init>(Ljava/lang/Throwable;[Ljava/lang/Object;)V

    throw p1
.end method

.method public exec(Ljava/util/List;)Ljava/lang/Object;
    .locals 5

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lzfa;

    invoke-virtual {p0, v2}, Lrd0;->n(Lzfa;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    :try_start_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object p1, p0, Lrd0;->b:Ljava/lang/Object;

    check-cast p1, Ljava/util/ResourceBundle;

    invoke-virtual {p1, v2}, Ljava/util/ResourceBundle;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lrd0;->o(Ljava/lang/Object;)Lzfa;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, v1

    new-array v1, p1, [Ljava/lang/Object;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lzfa;

    invoke-virtual {p0, v4}, Lrd0;->n(Lzfa;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-instance p1, Lyz9;

    invoke-virtual {p0, v2, v1}, Lxt8;->p(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lrd0;->c:Lfreemarker/ext/beans/b;

    invoke-direct {p1, v0, p0}, Lyz9;-><init>(Ljava/lang/Object;Lfreemarker/ext/beans/b;)V
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :goto_1
    new-instance p1, Lfreemarker/template/TemplateModelException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lfreemarker/template/TemplateModelException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_1
    new-instance p0, Lfreemarker/template/TemplateModelException;

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "No such key: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lfreemarker/template/TemplateModelException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Lfreemarker/template/TemplateModelException;

    const-string p1, "No message key was specified"

    invoke-direct {p0, p1}, Lfreemarker/template/TemplateModelException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lrd0;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/ResourceBundle;

    invoke-virtual {v0}, Ljava/util/ResourceBundle;->getKeys()Ljava/util/Enumeration;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0}, Lrd0;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public l()Ljava/util/Set;
    .locals 2

    invoke-super {p0}, Lrd0;->l()Ljava/util/Set;

    move-result-object v0

    iget-object p0, p0, Lrd0;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/ResourceBundle;

    invoke-virtual {p0}, Ljava/util/ResourceBundle;->getKeys()Ljava/util/Enumeration;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public p(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lxt8;->h:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lxt8;->h:Ljava/util/Hashtable;

    :cond_0
    iget-object v0, p0, Lxt8;->h:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/MessageFormat;

    if-nez v0, :cond_1

    new-instance v0, Ljava/text/MessageFormat;

    iget-object v1, p0, Lrd0;->b:Ljava/lang/Object;

    check-cast v1, Ljava/util/ResourceBundle;

    invoke-virtual {v1, p1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lxt8;->q()Ljava/util/ResourceBundle;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ResourceBundle;->getLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/MessageFormat;->setLocale(Ljava/util/Locale;)V

    iget-object p0, p0, Lxt8;->h:Ljava/util/Hashtable;

    invoke-virtual {p0, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    monitor-enter v0

    :try_start_0
    invoke-virtual {v0, p2}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public q()Ljava/util/ResourceBundle;
    .locals 0

    iget-object p0, p0, Lrd0;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/ResourceBundle;

    return-object p0
.end method

.method public size()I
    .locals 0

    invoke-virtual {p0}, Lxt8;->l()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result p0

    return p0
.end method
