.class public Lao4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public final synthetic b:Lbga;

.field public final synthetic c:Lbo4;


# direct methods
.method public constructor <init>(Lbo4;Lbga;)V
    .locals 0

    iput-object p1, p0, Lao4;->c:Lbo4;

    iput-object p2, p0, Lao4;->b:Lbga;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lao4;)Lbo4;
    .locals 0

    iget-object p0, p0, Lao4;->c:Lbo4;

    return-object p0
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    :try_start_0
    iget-object p0, p0, Lao4;->b:Lbga;

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
    .locals 2

    :try_start_0
    iget-object v0, p0, Lao4;->c:Lbo4;

    invoke-static {v0}, Lbo4;->b(Lbo4;)Lco4;

    move-result-object v0

    invoke-static {v0}, Lco4;->c(Lco4;)Lfreemarker/ext/beans/b;

    move-result-object v0

    iget-object v1, p0, Lao4;->b:Lbga;

    invoke-interface {v1}, Lbga;->next()Lzfa;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfreemarker/ext/beans/b;->b(Lzfa;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Lfreemarker/template/TemplateModelException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v1, Lzn4;

    invoke-direct {v1, p0, v0}, Lzn4;-><init>(Lao4;Ljava/lang/Object;)V

    return-object v1

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
