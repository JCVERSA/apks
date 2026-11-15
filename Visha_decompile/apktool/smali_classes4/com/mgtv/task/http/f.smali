.class public Lcom/mgtv/task/http/f;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/mgtv/task/http/HttpParams;Lcom/mgtv/task/http/c;)Lcom/mgtv/task/http/e;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/mgtv/task/http/HttpParams;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/mgtv/task/http/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/mgtv/task/http/HttpParams;",
            "Lcom/mgtv/task/http/c<",
            "TT;>;)",
            "Lcom/mgtv/task/http/e;"
        }
    .end annotation

    new-instance v0, Lcom/mgtv/task/http/HttpRequestObject;

    invoke-direct {v0}, Lcom/mgtv/task/http/HttpRequestObject;-><init>()V

    iput-object p1, v0, Lcom/mgtv/task/http/HttpRequestObject;->url:Ljava/lang/String;

    iput-object p2, v0, Lcom/mgtv/task/http/HttpRequestObject;->params:Lcom/mgtv/task/http/HttpParams;

    new-instance p1, Lcom/mgtv/task/http/HttpTraceObject;

    invoke-direct {p1}, Lcom/mgtv/task/http/HttpTraceObject;-><init>()V

    iput-object p1, v0, Lcom/mgtv/task/http/HttpRequestObject;->traceData:Lcom/mgtv/task/http/HttpTraceObject;

    new-instance p1, Lcom/mgtv/task/http/e;

    invoke-direct {p1}, Lcom/mgtv/task/http/e;-><init>()V

    iput-object v0, p1, Lcom/mgtv/task/f;->b:Ljava/lang/Object;

    iput-object p3, p1, Lcom/mgtv/task/f;->c:Lcom/mgtv/task/d;

    new-instance p2, Lcom/mgtv/task/http/g;

    invoke-direct {p2, p0}, Lcom/mgtv/task/http/g;-><init>(Landroid/content/Context;)V

    new-instance p0, Lcom/mgtv/task/http/host/a;

    invoke-direct {p0}, Lcom/mgtv/task/http/host/a;-><init>()V

    invoke-virtual {p2, p0}, Lcom/mgtv/task/http/g;->a(Lcom/mgtv/task/http/retry/c;)V

    iput-object p2, p1, Lcom/mgtv/task/f;->a:Lcom/mgtv/task/n;

    return-object p1
.end method
