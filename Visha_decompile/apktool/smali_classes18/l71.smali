.class public Ll71;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public final b:Lbga;

.field public final synthetic c:Lm71;


# direct methods
.method public constructor <init>(Lm71;)V
    .locals 0

    iput-object p1, p0, Ll71;->c:Lm71;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lm71;->c(Lm71;)Lbfa;

    move-result-object p1

    invoke-interface {p1}, Lbfa;->iterator()Lbga;

    move-result-object p1

    iput-object p1, p0, Ll71;->b:Lbga;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    :try_start_0
    iget-object p0, p0, Ll71;->b:Lbga;

    invoke-interface {p0}, Lbga;->hasNext()Z

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

.method public next()Ljava/lang/Object;
    .locals 1

    :try_start_0
    iget-object v0, p0, Ll71;->c:Lm71;

    invoke-static {v0}, Lm71;->f(Lm71;)Lfreemarker/ext/beans/b;

    move-result-object v0

    iget-object p0, p0, Ll71;->b:Lbga;

    invoke-interface {p0}, Lbga;->next()Lzfa;

    move-result-object p0

    invoke-virtual {v0, p0}, Lfreemarker/ext/beans/b;->b(Lzfa;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Lfreemarker/template/TemplateModelException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Lfreemarker/template/utility/UndeclaredThrowableException;

    invoke-direct {v0, p0}, Lfreemarker/template/utility/UndeclaredThrowableException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public remove()V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
