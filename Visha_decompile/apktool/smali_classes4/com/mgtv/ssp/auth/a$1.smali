.class Lcom/mgtv/ssp/auth/a$1;
.super Lcom/hunantv/imgo/net/ImgoHttpCallBack;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgtv/ssp/auth/a;->a(Landroid/content/Context;Ljava/lang/String;Lcom/mgtv/ssp/bean/config/a;Lcom/mgtv/ssp/MgSspInitCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hunantv/imgo/net/ImgoHttpCallBack<",
        "Lcom/mgtv/ssp/bean/InitBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/mgtv/ssp/bean/config/a;

.field final synthetic d:Lcom/mgtv/ssp/MgSspInitCallback;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Lcom/mgtv/ssp/net/ContentSdkBaseImgoHttpParams;

.field final synthetic g:J

.field final synthetic h:Lcom/mgtv/ssp/auth/a;


# direct methods
.method public constructor <init>(Lcom/mgtv/ssp/auth/a;Landroid/content/Context;Lcom/mgtv/ssp/bean/config/a;Lcom/mgtv/ssp/MgSspInitCallback;Ljava/lang/String;Lcom/mgtv/ssp/net/ContentSdkBaseImgoHttpParams;J)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/ssp/auth/a$1;->h:Lcom/mgtv/ssp/auth/a;

    iput-object p2, p0, Lcom/mgtv/ssp/auth/a$1;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/mgtv/ssp/auth/a$1;->c:Lcom/mgtv/ssp/bean/config/a;

    iput-object p4, p0, Lcom/mgtv/ssp/auth/a$1;->d:Lcom/mgtv/ssp/MgSspInitCallback;

    iput-object p5, p0, Lcom/mgtv/ssp/auth/a$1;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/mgtv/ssp/auth/a$1;->f:Lcom/mgtv/ssp/net/ContentSdkBaseImgoHttpParams;

    iput-wide p7, p0, Lcom/mgtv/ssp/auth/a$1;->g:J

    invoke-direct {p0}, Lcom/hunantv/imgo/net/ImgoHttpCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/mgtv/task/http/HttpResponseObject;)Lcom/mgtv/ssp/bean/InitBean;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 16
    iget-object v0, p0, Lcom/mgtv/ssp/auth/a$1;->h:Lcom/mgtv/ssp/auth/a;

    iget-object v1, p1, Lcom/mgtv/task/http/HttpResponseObject;->data:Lcom/google/gson/JsonElement;

    invoke-static {v0, v1}, Lcom/mgtv/ssp/auth/a;->a(Lcom/mgtv/ssp/auth/a;Lcom/google/gson/JsonElement;)V

    .line 17
    :cond_0
    invoke-super {p0, p1}, Lcom/mgtv/task/http/c;->b(Lcom/mgtv/task/http/HttpResponseObject;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mgtv/ssp/bean/InitBean;

    return-object p0
.end method

.method public a(Lcom/mgtv/ssp/bean/InitBean;)V
    .locals 0

    .line 1
    return-void
.end method

.method public a(Lcom/mgtv/ssp/bean/InitBean;IILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1    # Lcom/mgtv/ssp/bean/InitBean;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 4
    invoke-super/range {p0 .. p5}, Lcom/mgtv/task/http/c;->a(Ljava/lang/Object;IILjava/lang/String;Ljava/lang/Throwable;)V

    .line 5
    iget-object p1, p0, Lcom/mgtv/ssp/auth/a$1;->h:Lcom/mgtv/ssp/auth/a;

    iget-object p2, p0, Lcom/mgtv/ssp/auth/a$1;->b:Landroid/content/Context;

    iget-object p4, p0, Lcom/mgtv/ssp/auth/a$1;->c:Lcom/mgtv/ssp/bean/config/a;

    iget-object v0, p0, Lcom/mgtv/ssp/auth/a$1;->d:Lcom/mgtv/ssp/MgSspInitCallback;

    invoke-static {p1, p2, p4, v0}, Lcom/mgtv/ssp/auth/a;->a(Lcom/mgtv/ssp/auth/a;Landroid/content/Context;Lcom/mgtv/ssp/bean/config/a;Lcom/mgtv/ssp/MgSspInitCallback;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/mgtv/ssp/auth/a$1;->d:Lcom/mgtv/ssp/MgSspInitCallback;

    if-eqz p1, :cond_0

    const p2, 0x1adb0

    .line 6
    const-string p4, "init fail"

    invoke-interface {p1, p2, p4}, Lcom/mgtv/ssp/MgSspInitCallback;->onResult(ILjava/lang/String;)V

    .line 7
    :cond_0
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p2, "init http fail"

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 8
    new-instance p1, Lcom/hunantv/imgo/data/ErrorData;

    invoke-direct {p1}, Lcom/hunantv/imgo/data/ErrorData;-><init>()V

    .line 9
    iget-object p2, p0, Lcom/mgtv/ssp/auth/a$1;->e:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/hunantv/imgo/data/ErrorData;->setUrl(Ljava/lang/String;)V

    .line 10
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ""

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/hunantv/imgo/data/ErrorData;->setCode(Ljava/lang/String;)V

    .line 11
    iget-object p2, p0, Lcom/mgtv/ssp/auth/a$1;->f:Lcom/mgtv/ssp/net/ContentSdkBaseImgoHttpParams;

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lcom/mgtv/task/http/HttpParams;->buildParameter()Ljava/lang/String;

    move-result-object p3

    :goto_0
    invoke-virtual {p1, p3}, Lcom/hunantv/imgo/data/ErrorData;->setParam(Ljava/lang/String;)V

    if-eqz p5, :cond_2

    .line 12
    invoke-virtual {p5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/hunantv/imgo/data/ErrorData;->setMsg(Ljava/lang/String;)V

    .line 13
    :cond_2
    iget-object p2, p0, Lcom/mgtv/ssp/auth/a$1;->b:Landroid/content/Context;

    invoke-static {p2}, Lcom/hunantv/imgo/util/p;->a(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 14
    iget-object p2, p0, Lcom/mgtv/ssp/auth/a$1;->h:Lcom/mgtv/ssp/auth/a;

    invoke-static {p2}, Lcom/mgtv/ssp/auth/a;->a(Lcom/mgtv/ssp/auth/a;)V

    .line 15
    :cond_3
    iget-object p2, p0, Lcom/mgtv/ssp/auth/a$1;->h:Lcom/mgtv/ssp/auth/a;

    iget-wide p3, p0, Lcom/mgtv/ssp/auth/a$1;->g:J

    const/4 p0, 0x0

    invoke-static {p2, p3, p4, p0, p1}, Lcom/mgtv/ssp/auth/a;->a(Lcom/mgtv/ssp/auth/a;JZLcom/hunantv/imgo/data/ErrorData;)V

    return-void
.end method

.method public synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p1, Lcom/mgtv/ssp/bean/InitBean;

    invoke-virtual {p0, p1}, Lcom/mgtv/ssp/auth/a$1;->b(Lcom/mgtv/ssp/bean/InitBean;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;IILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    check-cast p1, Lcom/mgtv/ssp/bean/InitBean;

    invoke-virtual/range {p0 .. p5}, Lcom/mgtv/ssp/auth/a$1;->a(Lcom/mgtv/ssp/bean/InitBean;IILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public synthetic b(Lcom/mgtv/task/http/HttpResponseObject;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/mgtv/ssp/auth/a$1;->a(Lcom/mgtv/task/http/HttpResponseObject;)Lcom/mgtv/ssp/bean/InitBean;

    move-result-object p0

    return-object p0
.end method

.method public b(Lcom/mgtv/ssp/bean/InitBean;)V
    .locals 7

    if-nez p1, :cond_2

    .line 3
    iget-object p1, p0, Lcom/mgtv/ssp/auth/a$1;->h:Lcom/mgtv/ssp/auth/a;

    iget-object v0, p0, Lcom/mgtv/ssp/auth/a$1;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/mgtv/ssp/auth/a$1;->c:Lcom/mgtv/ssp/bean/config/a;

    iget-object v2, p0, Lcom/mgtv/ssp/auth/a$1;->d:Lcom/mgtv/ssp/MgSspInitCallback;

    invoke-static {p1, v0, v1, v2}, Lcom/mgtv/ssp/auth/a;->a(Lcom/mgtv/ssp/auth/a;Landroid/content/Context;Lcom/mgtv/ssp/bean/config/a;Lcom/mgtv/ssp/MgSspInitCallback;)Z

    move-result p1

    const-string v0, "http vast format error"

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/mgtv/ssp/auth/a$1;->d:Lcom/mgtv/ssp/MgSspInitCallback;

    if-eqz p1, :cond_0

    const v1, 0x186a2

    .line 4
    invoke-interface {p1, v1, v0}, Lcom/mgtv/ssp/MgSspInitCallback;->onResult(ILjava/lang/String;)V

    .line 5
    :cond_0
    new-instance p1, Lcom/hunantv/imgo/data/ErrorData;

    invoke-direct {p1}, Lcom/hunantv/imgo/data/ErrorData;-><init>()V

    .line 6
    iget-object v1, p0, Lcom/mgtv/ssp/auth/a$1;->e:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/hunantv/imgo/data/ErrorData;->setUrl(Ljava/lang/String;)V

    .line 7
    const-string v1, "100002"

    invoke-virtual {p1, v1}, Lcom/hunantv/imgo/data/ErrorData;->setCode(Ljava/lang/String;)V

    .line 8
    iget-object v1, p0, Lcom/mgtv/ssp/auth/a$1;->f:Lcom/mgtv/ssp/net/ContentSdkBaseImgoHttpParams;

    if-nez v1, :cond_1

    const-string v1, ""

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/mgtv/task/http/HttpParams;->buildParameter()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {p1, v1}, Lcom/hunantv/imgo/data/ErrorData;->setParam(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p1, v0}, Lcom/hunantv/imgo/data/ErrorData;->setMsg(Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/mgtv/ssp/auth/a$1;->h:Lcom/mgtv/ssp/auth/a;

    iget-wide v1, p0, Lcom/mgtv/ssp/auth/a$1;->g:J

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, p1}, Lcom/mgtv/ssp/auth/a;->a(Lcom/mgtv/ssp/auth/a;JZLcom/hunantv/imgo/data/ErrorData;)V

    .line 11
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "init http vast format erro"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 12
    iget-object p0, p0, Lcom/mgtv/ssp/auth/a$1;->h:Lcom/mgtv/ssp/auth/a;

    invoke-static {p0}, Lcom/mgtv/ssp/auth/a;->a(Lcom/mgtv/ssp/auth/a;)V

    goto :goto_1

    .line 13
    :cond_2
    iget-object v0, p0, Lcom/mgtv/ssp/auth/a$1;->h:Lcom/mgtv/ssp/auth/a;

    iget-object v1, p0, Lcom/mgtv/ssp/auth/a$1;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/mgtv/ssp/auth/a$1;->d:Lcom/mgtv/ssp/MgSspInitCallback;

    iget-wide v4, p0, Lcom/mgtv/ssp/auth/a$1;->g:J

    iget-object v6, p0, Lcom/mgtv/ssp/auth/a$1;->f:Lcom/mgtv/ssp/net/ContentSdkBaseImgoHttpParams;

    move-object v2, p1

    invoke-static/range {v0 .. v6}, Lcom/mgtv/ssp/auth/a;->a(Lcom/mgtv/ssp/auth/a;Landroid/content/Context;Lcom/mgtv/ssp/bean/InitBean;Lcom/mgtv/ssp/MgSspInitCallback;JLcom/mgtv/ssp/net/ContentSdkBaseImgoHttpParams;)V

    .line 14
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/mgtv/ssp/auth/a$1$1;

    invoke-direct {v0, p0}, Lcom/mgtv/ssp/auth/a$1$1;-><init>(Lcom/mgtv/ssp/auth/a$1;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 15
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :goto_1
    return-void
.end method

.method public synthetic b(Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p1, Lcom/mgtv/ssp/bean/InitBean;

    invoke-virtual {p0, p1}, Lcom/mgtv/ssp/auth/a$1;->a(Lcom/mgtv/ssp/bean/InitBean;)V

    return-void
.end method
