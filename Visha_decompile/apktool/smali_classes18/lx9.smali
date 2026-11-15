.class public final Llx9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpfa;


# static fields
.field public static final e:Lpq5;


# instance fields
.field public final b:Ljava/lang/Class;

.field public final c:Lfreemarker/ext/beans/b;

.field public final d:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "freemarker.beans"

    invoke-static {v0}, Lpq5;->k(Ljava/lang/String;)Lpq5;

    move-result-object v0

    sput-object v0, Llx9;->e:Lpq5;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Lfreemarker/ext/beans/b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Llx9;->d:Ljava/util/Map;

    iput-object p1, p0, Llx9;->b:Ljava/lang/Class;

    iput-object p2, p0, Llx9;->c:Lfreemarker/ext/beans/b;

    invoke-virtual {p0}, Llx9;->b()V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 9

    iget-object v0, p0, Llx9;->b:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Llx9;->c:Lfreemarker/ext/beans/b;

    invoke-virtual {v0}, Lfreemarker/ext/beans/b;->t()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Llx9;->b:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, v0

    const/4 v4, 0x0

    if-ge v2, v3, :cond_3

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v5

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v5

    if-eqz v5, :cond_1

    :try_start_0
    iget-object v5, p0, Llx9;->d:Ljava/util/Map;

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Llx9;->c:Lfreemarker/ext/beans/b;

    invoke-virtual {v7}, Lfreemarker/ext/beans/b;->w()Lgc7;

    move-result-object v7

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v7, v3}, Lgc7;->c(Ljava/lang/Object;)Lzfa;

    move-result-object v3

    invoke-interface {v5, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_1
    iget-object v4, p0, Llx9;->d:Ljava/util/Map;

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :catch_0
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Llx9;->c:Lfreemarker/ext/beans/b;

    invoke-virtual {v0}, Lfreemarker/ext/beans/b;->t()I

    move-result v0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_b

    iget-object v0, p0, Llx9;->b:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    :goto_2
    array-length v2, v0

    if-ge v1, v2, :cond_8

    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Llx9;->c:Lfreemarker/ext/beans/b;

    invoke-virtual {v3}, Lfreemarker/ext/beans/b;->q()Lfreemarker/ext/beans/c;

    move-result-object v3

    invoke-virtual {v3, v2}, Lfreemarker/ext/beans/c;->t(Ljava/lang/reflect/Method;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Llx9;->d:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    instance-of v6, v5, Ljava/lang/reflect/Method;

    if-eqz v6, :cond_4

    new-instance v6, Lfu7;

    iget-object v7, p0, Llx9;->c:Lfreemarker/ext/beans/b;

    invoke-virtual {v7}, Lfreemarker/ext/beans/b;->z()Z

    move-result v7

    invoke-direct {v6, v7}, Lfu7;-><init>(Z)V

    check-cast v5, Ljava/lang/reflect/Method;

    invoke-virtual {v6, v5}, Lfu7;->e(Ljava/lang/reflect/Method;)V

    invoke-virtual {v6, v2}, Lfu7;->e(Ljava/lang/reflect/Method;)V

    iget-object v2, p0, Llx9;->d:Ljava/util/Map;

    invoke-interface {v2, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_4
    instance-of v6, v5, Lfu7;

    if-eqz v6, :cond_5

    check-cast v5, Lfu7;

    invoke-virtual {v5, v2}, Lfu7;->e(Ljava/lang/reflect/Method;)V

    goto :goto_3

    :cond_5
    if-eqz v5, :cond_6

    sget-object v6, Llx9;->e:Lpq5;

    invoke-virtual {v6}, Lpq5;->s()Z

    move-result v7

    if-eqz v7, :cond_6

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "Overwriting value ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v5, "] for "

    invoke-virtual {v7, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, " key \'"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, "\' with ["

    invoke-virtual {v7, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v5, "] in static model for "

    invoke-virtual {v7, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v5, p0, Llx9;->b:Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lpq5;->n(Ljava/lang/String;)V

    :cond_6
    iget-object v5, p0, Llx9;->d:Ljava/util/Map;

    invoke-interface {v5, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    :cond_8
    iget-object v0, p0, Llx9;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Ljava/lang/reflect/Method;

    if-eqz v3, :cond_a

    check-cast v2, Ljava/lang/reflect/Method;

    new-instance v3, Llm9;

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    iget-object v6, p0, Llx9;->c:Lfreemarker/ext/beans/b;

    invoke-direct {v3, v4, v2, v5, v6}, Llm9;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Class;Lfreemarker/ext/beans/b;)V

    invoke-interface {v1, v3}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_a
    instance-of v3, v2, Lfu7;

    if-eqz v3, :cond_9

    new-instance v3, Lgu7;

    check-cast v2, Lfu7;

    iget-object v5, p0, Llx9;->c:Lfreemarker/ext/beans/b;

    invoke-direct {v3, v4, v2, v5}, Lgu7;-><init>(Ljava/lang/Object;Lfu7;Lfreemarker/ext/beans/b;)V

    invoke-interface {v1, v3}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_b
    return-void

    :cond_c
    new-instance v0, Lfreemarker/template/TemplateModelException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Can\'t wrap the non-public class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p0, p0, Llx9;->b:Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lfreemarker/template/TemplateModelException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public get(Ljava/lang/String;)Lzfa;
    .locals 3

    iget-object v0, p0, Llx9;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lzfa;

    if-eqz v1, :cond_0

    check-cast v0, Lzfa;

    return-object v0

    :cond_0
    instance-of v1, v0, Ljava/lang/reflect/Field;

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Llx9;->c:Lfreemarker/ext/beans/b;

    invoke-virtual {v1}, Lfreemarker/ext/beans/b;->w()Lgc7;

    move-result-object v1

    check-cast v0, Ljava/lang/reflect/Field;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Lgc7;->c(Ljava/lang/Object;)Lzfa;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    new-instance v0, Lfreemarker/template/TemplateModelException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Illegal access for field "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, " of class "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p0, p0, Llx9;->b:Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lfreemarker/template/TemplateModelException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lfreemarker/template/TemplateModelException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "No such key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, " in class "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p0, p0, Llx9;->b:Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lfreemarker/template/TemplateModelException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isEmpty()Z
    .locals 0

    iget-object p0, p0, Llx9;->d:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public keys()Lbfa;
    .locals 1

    iget-object v0, p0, Llx9;->c:Lfreemarker/ext/beans/b;

    invoke-virtual {v0}, Lfreemarker/ext/beans/b;->w()Lgc7;

    move-result-object v0

    iget-object p0, p0, Llx9;->d:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {v0, p0}, Lgc7;->c(Ljava/lang/Object;)Lzfa;

    move-result-object p0

    check-cast p0, Lbfa;

    return-object p0
.end method

.method public size()I
    .locals 0

    iget-object p0, p0, Llx9;->d:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    return p0
.end method

.method public values()Lbfa;
    .locals 1

    iget-object v0, p0, Llx9;->c:Lfreemarker/ext/beans/b;

    invoke-virtual {v0}, Lfreemarker/ext/beans/b;->w()Lgc7;

    move-result-object v0

    iget-object p0, p0, Llx9;->d:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {v0, p0}, Lgc7;->c(Ljava/lang/Object;)Lzfa;

    move-result-object p0

    check-cast p0, Lbfa;

    return-object p0
.end method
