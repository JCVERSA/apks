.class public Lfreemarker/template/DefaultMapAdapter;
.super Lnpc;
.source "SourceFile"

# interfaces
.implements Lpfa;
.implements Lc8;
.implements Llpc;
.implements Ldga;
.implements Ljava/io/Serializable;


# instance fields
.field private final map:Ljava/util/Map;


# direct methods
.method private constructor <init>(Ljava/util/Map;Lgc7;)V
    .locals 0

    invoke-direct {p0, p2}, Lnpc;-><init>(Lgc7;)V

    iput-object p1, p0, Lfreemarker/template/DefaultMapAdapter;->map:Ljava/util/Map;

    return-void
.end method

.method public static adapt(Ljava/util/Map;Lic7;)Lfreemarker/template/DefaultMapAdapter;
    .locals 1

    new-instance v0, Lfreemarker/template/DefaultMapAdapter;

    invoke-direct {v0, p0, p1}, Lfreemarker/template/DefaultMapAdapter;-><init>(Ljava/util/Map;Lgc7;)V

    return-object v0
.end method


# virtual methods
.method public get(Ljava/lang/String;)Lzfa;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lfreemarker/template/DefaultMapAdapter;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2

    if-nez v0, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lfreemarker/template/DefaultMapAdapter;->map:Ljava/util/Map;

    instance-of v0, v0, Ljava/util/SortedMap;

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/Character;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Character;-><init>(C)V

    :try_start_1
    iget-object v1, p0, Lfreemarker/template/DefaultMapAdapter;->map:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-virtual {p0, v2}, Lnpc;->wrap(Ljava/lang/Object;)Lzfa;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v3, p0, Lfreemarker/template/DefaultMapAdapter;->map:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lfreemarker/template/DefaultMapAdapter;->map:Ljava/util/Map;

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    if-nez p0, :cond_0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    goto :goto_2

    :cond_0
    return-object v1

    :cond_1
    :goto_0
    return-object v2

    :cond_2
    move-object v0, v1

    goto :goto_4

    :goto_1
    new-instance p1, Lfreemarker/core/_TemplateModelException;

    new-instance v1, Lk0d;

    invoke-direct {v1, v0}, Lk0d;-><init>(Ljava/lang/Object;)V

    const-string v0, "NullPointerException while getting Map entry with Character key "

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lfreemarker/core/_TemplateModelException;-><init>(Ljava/lang/Throwable;[Ljava/lang/Object;)V

    throw p1

    :goto_2
    new-instance p1, Lfreemarker/core/_TemplateModelException;

    new-instance v1, Lk0d;

    invoke-direct {v1, v0}, Lk0d;-><init>(Ljava/lang/Object;)V

    const-string v0, "Class casting exception while getting Map entry with Character key "

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lfreemarker/core/_TemplateModelException;-><init>(Ljava/lang/Throwable;[Ljava/lang/Object;)V

    throw p1

    :cond_3
    invoke-virtual {p0, v2}, Lnpc;->wrap(Ljava/lang/Object;)Lzfa;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object p0, p0, Lfreemarker/template/DefaultMapAdapter;->map:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_3

    :cond_4
    return-object v0

    :cond_5
    :goto_3
    return-object v2

    :cond_6
    :goto_4
    invoke-virtual {p0, v0}, Lnpc;->wrap(Ljava/lang/Object;)Lzfa;

    move-result-object p0

    return-object p0

    :catch_2
    move-exception p0

    goto :goto_5

    :catch_3
    move-exception p0

    goto :goto_6

    :goto_5
    new-instance v0, Lfreemarker/core/_TemplateModelException;

    new-instance v1, Lk0d;

    invoke-direct {v1, p1}, Lk0d;-><init>(Ljava/lang/Object;)V

    const-string p1, "NullPointerException while getting Map entry with String key "

    filled-new-array {p1, v1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lfreemarker/core/_TemplateModelException;-><init>(Ljava/lang/Throwable;[Ljava/lang/Object;)V

    throw v0

    :goto_6
    new-instance v0, Lfreemarker/core/_TemplateModelException;

    new-instance v1, Lk0d;

    invoke-direct {v1, p1}, Lk0d;-><init>(Ljava/lang/Object;)V

    const-string p1, "ClassCastException while getting Map entry with String key "

    filled-new-array {p1, v1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lfreemarker/core/_TemplateModelException;-><init>(Ljava/lang/Throwable;[Ljava/lang/Object;)V

    throw v0
.end method

.method public getAPI()Lzfa;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    invoke-virtual {p0}, Lnpc;->getObjectWrapper()Lgc7;

    move-result-object v0

    check-cast v0, Lic7;

    iget-object p0, p0, Lfreemarker/template/DefaultMapAdapter;->map:Ljava/util/Map;

    invoke-interface {v0, p0}, Lic7;->a(Ljava/lang/Object;)Lofa;

    move-result-object p0

    return-object p0
.end method

.method public getAdaptedObject(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lfreemarker/template/DefaultMapAdapter;->map:Ljava/util/Map;

    return-object p0
.end method

.method public getWrappedObject()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lfreemarker/template/DefaultMapAdapter;->map:Ljava/util/Map;

    return-object p0
.end method

.method public isEmpty()Z
    .locals 0

    iget-object p0, p0, Lfreemarker/template/DefaultMapAdapter;->map:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public keys()Lbfa;
    .locals 2

    new-instance v0, Lfreemarker/template/SimpleCollection;

    iget-object v1, p0, Lfreemarker/template/DefaultMapAdapter;->map:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {p0}, Lnpc;->getObjectWrapper()Lgc7;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lfreemarker/template/SimpleCollection;-><init>(Ljava/util/Collection;Lgc7;)V

    return-object v0
.end method

.method public size()I
    .locals 0

    iget-object p0, p0, Lfreemarker/template/DefaultMapAdapter;->map:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    return p0
.end method

.method public values()Lbfa;
    .locals 2

    new-instance v0, Lfreemarker/template/SimpleCollection;

    iget-object v1, p0, Lfreemarker/template/DefaultMapAdapter;->map:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {p0}, Lnpc;->getObjectWrapper()Lgc7;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lfreemarker/template/SimpleCollection;-><init>(Ljava/util/Collection;Lgc7;)V

    return-object v0
.end method
