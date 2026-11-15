.class public abstract Lcom/mgtv/data/aphone/core/a/a;
.super Lcom/mgtv/task/http/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/mgtv/task/http/c<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/mgtv/task/http/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/mgtv/task/http/HttpResponseObject;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 6

    .line 2
    invoke-super {p0, p1, p2, p3}, Lcom/mgtv/task/http/c;->a(Lcom/mgtv/task/http/HttpResponseObject;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 3
    check-cast p2, Lcom/mgtv/task/http/HttpTraceObject;

    .line 4
    invoke-virtual {p2}, Lcom/mgtv/task/http/HttpTraceObject;->getHttpStatus()I

    move-result v2

    if-nez p3, :cond_1

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p1}, Lcom/mgtv/task/http/HttpResponseObject;->getCode()I

    move-result v3

    .line 6
    invoke-virtual {p1}, Lcom/mgtv/task/http/HttpResponseObject;->getMsg()Ljava/lang/String;

    move-result-object v4

    .line 7
    invoke-virtual {p2}, Lcom/mgtv/task/http/HttpTraceObject;->getHttpStatus()I

    move-result p2

    const/16 v0, 0xc8

    if-ne p2, v0, :cond_0

    .line 8
    invoke-virtual {p0, p1}, Lcom/mgtv/task/http/c;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    move-object v0, p0

    move-object v5, p3

    .line 9
    invoke-virtual/range {v0 .. v5}, Lcom/mgtv/task/http/c;->a(Ljava/lang/Object;IILjava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/mgtv/task/http/HttpResponseObject;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mgtv/data/aphone/core/a/a;->a(Lcom/mgtv/task/http/HttpResponseObject;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method
