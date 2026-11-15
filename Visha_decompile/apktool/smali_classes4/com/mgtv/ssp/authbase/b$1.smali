.class final Lcom/mgtv/ssp/authbase/b$1;
.super Lcom/hunantv/imgo/net/ImgoHttpCallBack;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgtv/ssp/authbase/b;->a(Landroid/content/Context;Lcom/mgtv/ssp/authbase/b$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hunantv/imgo/net/ImgoHttpCallBack<",
        "Lcom/mgtv/ssp/bean/GetUserToken;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/mgtv/ssp/authbase/b$a;

.field final synthetic c:J

.field final synthetic d:Lcom/hunantv/imgo/net/ImgoHttpParams;


# direct methods
.method public constructor <init>(Lcom/mgtv/ssp/authbase/b$a;JLcom/hunantv/imgo/net/ImgoHttpParams;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/ssp/authbase/b$1;->b:Lcom/mgtv/ssp/authbase/b$a;

    iput-wide p2, p0, Lcom/mgtv/ssp/authbase/b$1;->c:J

    iput-object p4, p0, Lcom/mgtv/ssp/authbase/b$1;->d:Lcom/hunantv/imgo/net/ImgoHttpParams;

    invoke-direct {p0}, Lcom/hunantv/imgo/net/ImgoHttpCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/mgtv/ssp/bean/GetUserToken;)V
    .locals 0

    .line 1
    return-void
.end method

.method public a(Lcom/mgtv/ssp/bean/GetUserToken;IILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1    # Lcom/mgtv/ssp/bean/GetUserToken;
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
    iget-object p0, p0, Lcom/mgtv/ssp/authbase/b$1;->b:Lcom/mgtv/ssp/authbase/b$a;

    if-eqz p0, :cond_0

    const/4 p1, 0x1

    .line 6
    :try_start_0
    invoke-interface {p0, p1}, Lcom/mgtv/ssp/authbase/b$a;->onChanged(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 7
    :catch_0
    invoke-virtual {p5}, Ljava/lang/Throwable;->printStackTrace()V

    .line 8
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "init data error  "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p1, Lcom/mgtv/ssp/bean/GetUserToken;

    invoke-virtual {p0, p1}, Lcom/mgtv/ssp/authbase/b$1;->b(Lcom/mgtv/ssp/bean/GetUserToken;)V

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
    check-cast p1, Lcom/mgtv/ssp/bean/GetUserToken;

    invoke-virtual/range {p0 .. p5}, Lcom/mgtv/ssp/authbase/b$1;->a(Lcom/mgtv/ssp/bean/GetUserToken;IILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public b(Lcom/mgtv/ssp/bean/GetUserToken;)V
    .locals 3

    if-nez p1, :cond_0

    .line 2
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p1, "init http vast format erro"

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/mgtv/ssp/authbase/b$1;->b:Lcom/mgtv/ssp/authbase/b$a;

    iget-wide v1, p0, Lcom/mgtv/ssp/authbase/b$1;->c:J

    iget-object p0, p0, Lcom/mgtv/ssp/authbase/b$1;->d:Lcom/hunantv/imgo/net/ImgoHttpParams;

    invoke-static {p1, v0, v1, v2, p0}, Lcom/mgtv/ssp/authbase/b;->a(Lcom/mgtv/ssp/bean/GetUserToken;Lcom/mgtv/ssp/authbase/b$a;JLcom/hunantv/imgo/net/ImgoHttpParams;)V

    :goto_0
    return-void
.end method

.method public synthetic b(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/mgtv/ssp/bean/GetUserToken;

    invoke-virtual {p0, p1}, Lcom/mgtv/ssp/authbase/b$1;->a(Lcom/mgtv/ssp/bean/GetUserToken;)V

    return-void
.end method
