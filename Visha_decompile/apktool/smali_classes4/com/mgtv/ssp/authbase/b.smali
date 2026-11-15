.class public Lcom/mgtv/ssp/authbase/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mgtv/ssp/authbase/b$a;
    }
.end annotation


# direct methods
.method public static a(Landroid/content/Context;Lcom/mgtv/ssp/authbase/b$a;)V
    .locals 5

    .line 2
    new-instance v0, Lcom/mgtv/task/m;

    invoke-direct {v0, p0}, Lcom/mgtv/task/m;-><init>(Landroid/content/Context;)V

    .line 3
    new-instance p0, Lcom/hunantv/imgo/net/ImgoHttpParams;

    invoke-direct {p0}, Lcom/hunantv/imgo/net/ImgoHttpParams;-><init>()V

    .line 4
    const-string v1, "platform"

    const-string v2, "android"

    invoke-virtual {p0, v1, v2}, Lcom/mgtv/task/http/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/mgtv/task/http/HttpParams;

    .line 5
    invoke-static {}, Lcom/hunantv/imgo/b/a;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "abroad"

    invoke-virtual {p0, v2, v1}, Lcom/mgtv/task/http/HttpParams;->put(Ljava/lang/String;Ljava/lang/Number;)Lcom/mgtv/task/http/HttpParams;

    .line 6
    const-string v1, "openid"

    invoke-static {}, Lcom/hunantv/imgo/util/b;->R()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/mgtv/task/http/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/mgtv/task/http/HttpParams;

    .line 7
    const-string v1, "rtype"

    invoke-static {}, Lcom/hunantv/imgo/util/b;->S()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/mgtv/task/http/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/mgtv/task/http/HttpParams;

    .line 8
    const-string v1, "token"

    invoke-static {}, Lcom/hunantv/imgo/util/b;->V()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/mgtv/task/http/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/mgtv/task/http/HttpParams;

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/hunantv/imgo/util/b;->t()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 10
    const-string v2, "seqId"

    invoke-virtual {p0, v2, v1}, Lcom/mgtv/task/http/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/mgtv/task/http/HttpParams;

    .line 11
    const-string v1, "invoker"

    const-string v2, "hunantvphone"

    invoke-virtual {p0, v1, v2}, Lcom/mgtv/task/http/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/mgtv/task/http/HttpParams;

    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const/4 v3, 0x1

    .line 13
    invoke-virtual {v0, v3}, Lcom/mgtv/task/m;->a(Z)Lcom/mgtv/task/m;

    move-result-object v0

    const/16 v3, 0x1388

    invoke-virtual {v0, v3}, Lcom/mgtv/task/m;->b(I)Lcom/mgtv/task/m;

    move-result-object v0

    invoke-static {}, Lcom/hunantv/imgo/net/b;->v()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/mgtv/ssp/authbase/b$1;

    invoke-direct {v4, p1, v1, v2, p0}, Lcom/mgtv/ssp/authbase/b$1;-><init>(Lcom/mgtv/ssp/authbase/b$a;JLcom/hunantv/imgo/net/ImgoHttpParams;)V

    invoke-virtual {v0, v3, p0, v4}, Lcom/mgtv/task/m;->a(Ljava/lang/String;Lcom/mgtv/task/http/HttpParams;Lcom/mgtv/task/http/c;)Lcom/mgtv/task/g;

    return-void
.end method

.method public static synthetic a(Lcom/mgtv/ssp/bean/GetUserToken;Lcom/mgtv/ssp/authbase/b$a;JLcom/hunantv/imgo/net/ImgoHttpParams;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/mgtv/ssp/authbase/b;->b(Lcom/mgtv/ssp/bean/GetUserToken;Lcom/mgtv/ssp/authbase/b$a;JLcom/hunantv/imgo/net/ImgoHttpParams;)V

    return-void
.end method

.method private static b(Lcom/mgtv/ssp/bean/GetUserToken;Lcom/mgtv/ssp/authbase/b$a;JLcom/hunantv/imgo/net/ImgoHttpParams;)V
    .locals 1

    if-eqz p1, :cond_3

    const/4 p2, 0x0

    const/4 p3, 0x1

    if-eqz p0, :cond_0

    move p4, p3

    goto :goto_0

    :cond_0
    move p4, p2

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/mgtv/ssp/bean/GetUserToken;->data:Lcom/mgtv/ssp/bean/GetUserToken$b;

    if-eqz v0, :cond_1

    move p2, p3

    :cond_1
    and-int/2addr p2, p4

    if-eqz p2, :cond_3

    iget-object p2, v0, Lcom/mgtv/ssp/bean/GetUserToken$b;->a:Lcom/mgtv/ssp/bean/GetUserToken$c;

    if-eqz p2, :cond_3

    iget-object p2, p2, Lcom/mgtv/ssp/bean/GetUserToken$c;->a:Lcom/mgtv/ssp/bean/GetUserToken$a;

    if-eqz p2, :cond_3

    iget-object p2, p2, Lcom/mgtv/ssp/bean/GetUserToken$a;->a:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/mgtv/ssp/bean/GetUserToken;->data:Lcom/mgtv/ssp/bean/GetUserToken$b;

    iget-object p2, p2, Lcom/mgtv/ssp/bean/GetUserToken$b;->a:Lcom/mgtv/ssp/bean/GetUserToken$c;

    iget-object p2, p2, Lcom/mgtv/ssp/bean/GetUserToken$c;->a:Lcom/mgtv/ssp/bean/GetUserToken$a;

    iget-object p2, p2, Lcom/mgtv/ssp/bean/GetUserToken$a;->a:Ljava/lang/String;

    invoke-static {}, Lcom/hunantv/imgo/util/b;->X()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    xor-int/2addr p3, p2

    iget-object p4, p0, Lcom/mgtv/ssp/bean/GetUserToken;->data:Lcom/mgtv/ssp/bean/GetUserToken$b;

    iget p4, p4, Lcom/mgtv/ssp/bean/GetUserToken$b;->b:I

    invoke-static {p4}, Lcom/hunantv/imgo/util/b;->a(I)V

    iget-object p4, p0, Lcom/mgtv/ssp/bean/GetUserToken;->data:Lcom/mgtv/ssp/bean/GetUserToken$b;

    iget-object p4, p4, Lcom/mgtv/ssp/bean/GetUserToken$b;->c:Ljava/lang/String;

    invoke-static {p4}, Lcom/hunantv/imgo/util/b;->g(Ljava/lang/String;)V

    if-nez p2, :cond_2

    iget-object p0, p0, Lcom/mgtv/ssp/bean/GetUserToken;->data:Lcom/mgtv/ssp/bean/GetUserToken$b;

    iget-object p0, p0, Lcom/mgtv/ssp/bean/GetUserToken$b;->a:Lcom/mgtv/ssp/bean/GetUserToken$c;

    iget-object p0, p0, Lcom/mgtv/ssp/bean/GetUserToken$c;->a:Lcom/mgtv/ssp/bean/GetUserToken$a;

    iget-object p0, p0, Lcom/mgtv/ssp/bean/GetUserToken$a;->a:Ljava/lang/String;

    invoke-static {p0}, Lcom/hunantv/imgo/util/b;->q(Ljava/lang/String;)V

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_2
    :goto_1
    invoke-interface {p1, p3}, Lcom/mgtv/ssp/authbase/b$a;->onChanged(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "init data error  "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_3
    :goto_3
    return-void
.end method
