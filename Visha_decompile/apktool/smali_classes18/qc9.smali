.class public Lqc9;
.super Ljava/util/AbstractList;
.source "SourceFile"

# interfaces
.implements Laga;


# instance fields
.field public final b:Lfreemarker/ext/beans/b;

.field public final c:Lnga;


# direct methods
.method public constructor <init>(Lnga;Lfreemarker/ext/beans/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    iput-object p1, p0, Lqc9;->c:Lnga;

    iput-object p2, p0, Lqc9;->b:Lfreemarker/ext/beans/b;

    return-void
.end method


# virtual methods
.method public b()Lzfa;
    .locals 0

    iget-object p0, p0, Lqc9;->c:Lnga;

    return-object p0
.end method

.method public c()Lnga;
    .locals 0

    iget-object p0, p0, Lqc9;->c:Lnga;

    return-object p0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lqc9;->b:Lfreemarker/ext/beans/b;

    iget-object p0, p0, Lqc9;->c:Lnga;

    invoke-interface {p0, p1}, Lnga;->get(I)Lzfa;

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

.method public size()I
    .locals 1

    :try_start_0
    iget-object p0, p0, Lqc9;->c:Lnga;

    invoke-interface {p0}, Lnga;->size()I

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
