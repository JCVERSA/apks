.class public Lco4;
.super Ljava/util/AbstractMap;
.source "SourceFile"

# interfaces
.implements Laga;


# instance fields
.field public final b:Lfreemarker/ext/beans/b;

.field public final c:Lofa;

.field public d:Ljava/util/Set;


# direct methods
.method public constructor <init>(Lofa;Lfreemarker/ext/beans/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    iput-object p1, p0, Lco4;->c:Lofa;

    iput-object p2, p0, Lco4;->b:Lfreemarker/ext/beans/b;

    return-void
.end method

.method public static synthetic a(Lco4;)Lpfa;
    .locals 0

    invoke-virtual {p0}, Lco4;->d()Lpfa;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lco4;)Lfreemarker/ext/beans/b;
    .locals 0

    iget-object p0, p0, Lco4;->b:Lfreemarker/ext/beans/b;

    return-object p0
.end method


# virtual methods
.method public b()Lzfa;
    .locals 0

    iget-object p0, p0, Lco4;->c:Lofa;

    return-object p0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lco4;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-super {p0, p1}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final d()Lpfa;
    .locals 3

    iget-object v0, p0, Lco4;->c:Lofa;

    instance-of v1, v0, Lpfa;

    if-eqz v1, :cond_0

    check-cast v0, Lpfa;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Operation supported only on TemplateHashModelEx. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p0, p0, Lco4;->c:Lofa;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, " does not implement it though."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lco4;->d:Ljava/util/Set;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lbo4;

    invoke-direct {v0, p0}, Lbo4;-><init>(Lco4;)V

    iput-object v0, p0, Lco4;->d:Ljava/util/Set;

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lco4;->b:Lfreemarker/ext/beans/b;

    iget-object p0, p0, Lco4;->c:Lofa;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lofa;->get(Ljava/lang/String;)Lzfa;

    move-result-object p0

    invoke-virtual {v0, p0}, Lfreemarker/ext/beans/b;->b(Lzfa;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Lfreemarker/template/TemplateModelException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lfreemarker/template/utility/UndeclaredThrowableException;

    invoke-direct {p1, p0}, Lfreemarker/template/utility/UndeclaredThrowableException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public isEmpty()Z
    .locals 1

    :try_start_0
    iget-object p0, p0, Lco4;->c:Lofa;

    invoke-interface {p0}, Lofa;->isEmpty()Z

    move-result p0
    :try_end_0
    .catch Lfreemarker/template/TemplateModelException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance v0, Lfreemarker/template/utility/UndeclaredThrowableException;

    invoke-direct {v0, p0}, Lfreemarker/template/utility/UndeclaredThrowableException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
