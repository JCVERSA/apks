.class public Lgu7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyfa;
.implements Lnga;


# instance fields
.field public final b:Ljava/lang/Object;

.field public final c:Lfu7;

.field public final d:Lfreemarker/ext/beans/b;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lfu7;Lfreemarker/ext/beans/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgu7;->b:Ljava/lang/Object;

    iput-object p2, p0, Lgu7;->c:Lfu7;

    iput-object p3, p0, Lgu7;->d:Lfreemarker/ext/beans/b;

    return-void
.end method


# virtual methods
.method public exec(Ljava/util/List;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lgu7;->c:Lfu7;

    iget-object v1, p0, Lgu7;->d:Lfreemarker/ext/beans/b;

    invoke-virtual {v0, p1, v1}, Lfu7;->f(Ljava/util/List;Lfreemarker/ext/beans/b;)Lan6;

    move-result-object p1

    :try_start_0
    iget-object v0, p0, Lgu7;->d:Lfreemarker/ext/beans/b;

    iget-object v1, p0, Lgu7;->b:Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lan6;->c(Lfreemarker/ext/beans/b;Ljava/lang/Object;)Lzfa;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    instance-of v1, v0, Lfreemarker/template/TemplateModelException;

    if-eqz v1, :cond_0

    check-cast v0, Lfreemarker/template/TemplateModelException;

    throw v0

    :cond_0
    iget-object p0, p0, Lgu7;->b:Ljava/lang/Object;

    invoke-virtual {p1}, Lan6;->a()Lqq0;

    move-result-object p1

    invoke-static {p0, p1, v0}, Lu0d;->m(Ljava/lang/Object;Lqq0;Ljava/lang/Throwable;)Lfreemarker/template/TemplateModelException;

    move-result-object p0

    throw p0
.end method

.method public get(I)Lzfa;
    .locals 2

    new-instance v0, Lfreemarker/template/SimpleNumber;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {v0, v1}, Lfreemarker/template/SimpleNumber;-><init>(Ljava/lang/Number;)V

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lgu7;->exec(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lzfa;

    return-object p0
.end method

.method public size()I
    .locals 3

    new-instance v0, Lfreemarker/template/TemplateModelException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "?size is unsupported for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lfreemarker/template/TemplateModelException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
