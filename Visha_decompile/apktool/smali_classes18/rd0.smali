.class public Lrd0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpfa;
.implements Lc8;
.implements Llpc;
.implements Ldga;


# static fields
.field public static final e:Lpq5;

.field public static final f:Lzfa;

.field public static final g:Lfq6;


# instance fields
.field public final b:Ljava/lang/Object;

.field public final c:Lfreemarker/ext/beans/b;

.field public d:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "freemarker.beans"

    invoke-static {v0}, Lpq5;->k(Ljava/lang/String;)Lpq5;

    move-result-object v0

    sput-object v0, Lrd0;->e:Lpq5;

    new-instance v0, Lfreemarker/template/SimpleScalar;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1}, Lfreemarker/template/SimpleScalar;-><init>(Ljava/lang/String;)V

    sput-object v0, Lrd0;->f:Lzfa;

    new-instance v0, Lqd0;

    invoke-direct {v0}, Lqd0;-><init>()V

    sput-object v0, Lrd0;->g:Lfq6;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lfreemarker/ext/beans/b;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lrd0;-><init>(Ljava/lang/Object;Lfreemarker/ext/beans/b;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lfreemarker/ext/beans/b;Z)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lrd0;->b:Ljava/lang/Object;

    .line 4
    iput-object p2, p0, Lrd0;->c:Lfreemarker/ext/beans/b;

    if-eqz p3, :cond_0

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p2}, Lfreemarker/ext/beans/b;->q()Lfreemarker/ext/beans/c;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p1}, Lfreemarker/ext/beans/c;->k(Ljava/lang/Class;)Ljava/util/Map;

    :cond_0
    return-void
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lrd0;->b:Ljava/lang/Object;

    if-nez p0, :cond_0

    const-string p0, "null"

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public c(Ljava/util/Map;Ljava/lang/Class;Ljava/lang/String;)Lzfa;
    .locals 0

    sget-object p2, Lfreemarker/ext/beans/c;->t:Ljava/lang/Object;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/reflect/Method;

    if-nez p1, :cond_0

    sget-object p0, Lrd0;->f:Lzfa;

    return-object p0

    :cond_0
    iget-object p2, p0, Lrd0;->c:Lfreemarker/ext/beans/b;

    iget-object p0, p0, Lrd0;->b:Ljava/lang/Object;

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p2, p0, p1, p3}, Lfreemarker/ext/beans/b;->y(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Lzfa;

    move-result-object p0

    return-object p0
.end method

.method public final e(Ljava/lang/Object;Ljava/util/Map;)Lzfa;
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lrd0;->d:Ljava/util/HashMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzfa;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_7

    :cond_0
    move-object v0, v1

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    sget-object v2, Lrd0;->f:Lzfa;

    instance-of v3, p1, Ljava/beans/IndexedPropertyDescriptor;

    if-eqz v3, :cond_2

    move-object v0, p1

    check-cast v0, Ljava/beans/IndexedPropertyDescriptor;

    invoke-virtual {v0}, Ljava/beans/IndexedPropertyDescriptor;->getIndexedReadMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    new-instance v1, Llm9;

    iget-object v2, p0, Lrd0;->b:Ljava/lang/Object;

    invoke-static {p2, v0}, Lfreemarker/ext/beans/c;->m(Ljava/util/Map;Ljava/lang/reflect/AccessibleObject;)[Ljava/lang/Class;

    move-result-object p2

    iget-object v3, p0, Lrd0;->c:Lfreemarker/ext/beans/b;

    invoke-direct {v1, v2, v0, p2, v3}, Llm9;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Class;Lfreemarker/ext/beans/b;)V

    :goto_1
    move-object v0, v1

    :goto_2
    move-object v2, v0

    goto :goto_3

    :cond_2
    instance-of v3, p1, Ljava/beans/PropertyDescriptor;

    if-eqz v3, :cond_3

    move-object p2, p1

    check-cast p2, Ljava/beans/PropertyDescriptor;

    iget-object v2, p0, Lrd0;->c:Lfreemarker/ext/beans/b;

    iget-object v3, p0, Lrd0;->b:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/beans/PropertyDescriptor;->getReadMethod()Ljava/lang/reflect/Method;

    move-result-object p2

    invoke-virtual {v2, v3, p2, v1}, Lfreemarker/ext/beans/b;->y(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Lzfa;

    move-result-object v2

    goto :goto_3

    :cond_3
    instance-of v1, p1, Ljava/lang/reflect/Field;

    if-eqz v1, :cond_4

    iget-object p2, p0, Lrd0;->c:Lfreemarker/ext/beans/b;

    move-object v1, p1

    check-cast v1, Ljava/lang/reflect/Field;

    iget-object v2, p0, Lrd0;->b:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v1}, Lfreemarker/ext/beans/b;->c(Ljava/lang/Object;)Lzfa;

    move-result-object v2

    goto :goto_3

    :cond_4
    instance-of v1, p1, Ljava/lang/reflect/Method;

    if-eqz v1, :cond_5

    move-object v0, p1

    check-cast v0, Ljava/lang/reflect/Method;

    new-instance v1, Llm9;

    iget-object v2, p0, Lrd0;->b:Ljava/lang/Object;

    invoke-static {p2, v0}, Lfreemarker/ext/beans/c;->m(Ljava/util/Map;Ljava/lang/reflect/AccessibleObject;)[Ljava/lang/Class;

    move-result-object p2

    iget-object v3, p0, Lrd0;->c:Lfreemarker/ext/beans/b;

    invoke-direct {v1, v2, v0, p2, v3}, Llm9;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Class;Lfreemarker/ext/beans/b;)V

    goto :goto_1

    :cond_5
    instance-of p2, p1, Lfu7;

    if-eqz p2, :cond_6

    new-instance v0, Lgu7;

    iget-object p2, p0, Lrd0;->b:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Lfu7;

    iget-object v2, p0, Lrd0;->c:Lfreemarker/ext/beans/b;

    invoke-direct {v0, p2, v1, v2}, Lgu7;-><init>(Ljava/lang/Object;Lfu7;Lfreemarker/ext/beans/b;)V

    goto :goto_2

    :cond_6
    :goto_3
    if-eqz v0, :cond_8

    monitor-enter p0

    :try_start_1
    iget-object p2, p0, Lrd0;->d:Ljava/util/HashMap;

    if-nez p2, :cond_7

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lrd0;->d:Ljava/util/HashMap;

    goto :goto_4

    :catchall_1
    move-exception p1

    goto :goto_5

    :cond_7
    :goto_4
    iget-object p2, p0, Lrd0;->d:Ljava/util/HashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p0

    goto :goto_6

    :goto_5
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    :cond_8
    :goto_6
    return-object v2

    :goto_7
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public get(Ljava/lang/String;)Lzfa;
    .locals 6

    iget-object v0, p0, Lrd0;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lrd0;->c:Lfreemarker/ext/beans/b;

    invoke-virtual {v1}, Lfreemarker/ext/beans/b;->q()Lfreemarker/ext/beans/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lfreemarker/ext/beans/c;->k(Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v1

    :try_start_0
    iget-object v2, p0, Lrd0;->c:Lfreemarker/ext/beans/b;

    invoke-virtual {v2}, Lfreemarker/ext/beans/b;->B()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v2, v1}, Lrd0;->e(Ljava/lang/Object;Ljava/util/Map;)Lzfa;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception p0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {p0, v1, v0, p1}, Lrd0;->c(Ljava/util/Map;Ljava/lang/Class;Ljava/lang/String;)Lzfa;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1, v0, p1}, Lrd0;->c(Ljava/util/Map;Ljava/lang/Class;Ljava/lang/String;)Lzfa;

    move-result-object v0

    iget-object v2, p0, Lrd0;->c:Lfreemarker/ext/beans/b;

    invoke-virtual {v2, v3}, Lfreemarker/ext/beans/b;->c(Ljava/lang/Object;)Lzfa;

    move-result-object v2

    if-eq v0, v2, :cond_2

    sget-object v4, Lrd0;->f:Lzfa;

    if-eq v0, v4, :cond_2

    return-object v0

    :cond_2
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {p0, v4, v1}, Lrd0;->e(Ljava/lang/Object;Ljava/util/Map;)Lzfa;

    move-result-object v4

    sget-object v5, Lrd0;->f:Lzfa;

    if-ne v4, v5, :cond_3

    if-ne v0, v2, :cond_3

    move-object v0, v2

    goto :goto_0

    :cond_3
    move-object v0, v4

    goto :goto_0

    :cond_4
    move-object v0, v3

    :goto_0
    sget-object v2, Lrd0;->f:Lzfa;

    if-ne v0, v2, :cond_7

    iget-object v0, p0, Lrd0;->c:Lfreemarker/ext/beans/b;

    invoke-virtual {v0}, Lfreemarker/ext/beans/b;->C()Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Lrd0;->e:Lpq5;

    invoke-virtual {v0}, Lpq5;->q()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0, p1, v1}, Lrd0;->m(Ljava/lang/String;Ljava/util/Map;)V

    :cond_5
    iget-object v0, p0, Lrd0;->c:Lfreemarker/ext/beans/b;

    invoke-virtual {v0, v3}, Lfreemarker/ext/beans/b;->c(Ljava/lang/Object;)Lzfa;

    move-result-object v0

    goto :goto_1

    :cond_6
    new-instance v0, Lfreemarker/ext/beans/InvalidPropertyException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "No such bean property: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lfreemarker/ext/beans/InvalidPropertyException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lfreemarker/template/TemplateModelException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_7
    :goto_1
    return-object v0

    :goto_2
    new-instance v1, Lfreemarker/core/_TemplateModelException;

    new-instance v2, Lk0d;

    invoke-direct {v2, p1}, Lk0d;-><init>(Ljava/lang/Object;)V

    new-instance p1, Lg0d;

    invoke-direct {p1, p0}, Lg0d;-><init>(Lzfa;)V

    const-string p0, "An error has occurred when reading existing sub-variable "

    const-string v3, "; see cause exception! The type of the containing value was: "

    filled-new-array {p0, v2, v3, p1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v1, v0, p0}, Lfreemarker/core/_TemplateModelException;-><init>(Ljava/lang/Throwable;[Ljava/lang/Object;)V

    throw v1

    :goto_3
    throw p0
.end method

.method public getAPI()Lzfa;
    .locals 1

    iget-object v0, p0, Lrd0;->c:Lfreemarker/ext/beans/b;

    iget-object p0, p0, Lrd0;->b:Ljava/lang/Object;

    invoke-virtual {v0, p0}, Lfreemarker/ext/beans/b;->a(Ljava/lang/Object;)Lofa;

    move-result-object p0

    return-object p0
.end method

.method public getAdaptedObject(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lrd0;->b:Ljava/lang/Object;

    return-object p0
.end method

.method public getWrappedObject()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lrd0;->b:Ljava/lang/Object;

    return-object p0
.end method

.method public isEmpty()Z
    .locals 3

    iget-object p0, p0, Lrd0;->b:Ljava/lang/Object;

    instance-of v0, p0, Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_0

    move v1, v2

    :cond_0
    return v1

    :cond_1
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_2

    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    return p0

    :cond_2
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_3

    check-cast p0, Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    return p0

    :cond_3
    if-eqz p0, :cond_4

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, p0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    :cond_4
    move v1, v2

    :cond_5
    return v1
.end method

.method public keys()Lbfa;
    .locals 3

    new-instance v0, Lfreemarker/core/CollectionAndSequence;

    new-instance v1, Lfreemarker/template/SimpleSequence;

    invoke-virtual {p0}, Lrd0;->l()Ljava/util/Set;

    move-result-object v2

    iget-object p0, p0, Lrd0;->c:Lfreemarker/ext/beans/b;

    invoke-direct {v1, v2, p0}, Lfreemarker/template/SimpleSequence;-><init>(Ljava/util/Collection;Lgc7;)V

    invoke-direct {v0, v1}, Lfreemarker/core/CollectionAndSequence;-><init>(Lnga;)V

    return-object v0
.end method

.method public l()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lrd0;->c:Lfreemarker/ext/beans/b;

    invoke-virtual {v0}, Lfreemarker/ext/beans/b;->q()Lfreemarker/ext/beans/c;

    move-result-object v0

    iget-object p0, p0, Lrd0;->b:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v0, p0}, Lfreemarker/ext/beans/c;->w(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public final m(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3

    sget-object v0, Lrd0;->e:Lpq5;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {p1}, Ln0a;->F(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, " was not found on instance of "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p0, p0, Lrd0;->b:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, ". Introspection information for "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, "the class is: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lpq5;->d(Ljava/lang/String;)V

    return-void
.end method

.method public n(Lzfa;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lrd0;->c:Lfreemarker/ext/beans/b;

    invoke-virtual {p0, p1}, Lfreemarker/ext/beans/b;->b(Lzfa;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public o(Ljava/lang/Object;)Lzfa;
    .locals 0

    iget-object p0, p0, Lrd0;->c:Lfreemarker/ext/beans/b;

    invoke-virtual {p0}, Lfreemarker/ext/beans/b;->w()Lgc7;

    move-result-object p0

    invoke-interface {p0, p1}, Lgc7;->c(Ljava/lang/Object;)Lzfa;

    move-result-object p0

    return-object p0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lrd0;->c:Lfreemarker/ext/beans/b;

    invoke-virtual {v0}, Lfreemarker/ext/beans/b;->q()Lfreemarker/ext/beans/c;

    move-result-object v0

    iget-object p0, p0, Lrd0;->b:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v0, p0}, Lfreemarker/ext/beans/c;->v(Ljava/lang/Class;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lrd0;->b:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public values()Lbfa;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lrd0;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0}, Lrd0;->keys()Lbfa;

    move-result-object v1

    invoke-interface {v1}, Lbfa;->iterator()Lbga;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Lbga;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Lbga;->next()Lzfa;

    move-result-object v2

    check-cast v2, Lmga;

    invoke-interface {v2}, Lmga;->getAsString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lrd0;->get(Ljava/lang/String;)Lzfa;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v1, Lfreemarker/core/CollectionAndSequence;

    new-instance v2, Lfreemarker/template/SimpleSequence;

    iget-object p0, p0, Lrd0;->c:Lfreemarker/ext/beans/b;

    invoke-direct {v2, v0, p0}, Lfreemarker/template/SimpleSequence;-><init>(Ljava/util/Collection;Lgc7;)V

    invoke-direct {v1, v2}, Lfreemarker/core/CollectionAndSequence;-><init>(Lnga;)V

    return-object v1
.end method
