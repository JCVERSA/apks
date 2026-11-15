.class Lcom/mgtv/thirdsdk/playcore/e/h$1;
.super Lcom/hunantv/imgo/net/ImgoHttpCallBack;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgtv/thirdsdk/playcore/e/h;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hunantv/imgo/net/ImgoHttpCallBack<",
        "Lcom/hunantv/imgo/net/entity/PlayerRealUrlEntity;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/mgtv/thirdsdk/playcore/e/h;


# direct methods
.method public constructor <init>(Lcom/mgtv/thirdsdk/playcore/e/h;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/thirdsdk/playcore/e/h$1;->b:Lcom/mgtv/thirdsdk/playcore/e/h;

    invoke-direct {p0}, Lcom/hunantv/imgo/net/ImgoHttpCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/hunantv/imgo/net/entity/PlayerRealUrlEntity;)V
    .locals 0

    .line 1
    return-void
.end method

.method public a(Lcom/hunantv/imgo/net/entity/PlayerRealUrlEntity;IILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 6

    .line 4
    invoke-super/range {p0 .. p5}, Lcom/mgtv/task/http/c;->a(Ljava/lang/Object;IILjava/lang/String;Ljava/lang/Throwable;)V

    .line 5
    new-instance v5, Lcom/hunantv/imgo/net/entity/b;

    invoke-direct {v5}, Lcom/hunantv/imgo/net/entity/b;-><init>()V

    .line 6
    invoke-virtual {p0}, Lcom/mgtv/task/http/c;->e()Lcom/mgtv/task/http/HttpTraceObject;

    move-result-object p1

    const/4 p3, 0x1

    invoke-virtual {p1, p3}, Lcom/mgtv/task/http/HttpTraceObject;->getStepDuration(I)J

    move-result-wide v0

    iput-wide v0, v5, Lcom/hunantv/imgo/net/entity/b;->a:J

    .line 7
    invoke-virtual {p0}, Lcom/mgtv/task/http/c;->e()Lcom/mgtv/task/http/HttpTraceObject;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mgtv/task/http/HttpTraceObject;->getResponse()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v5, Lcom/hunantv/imgo/net/entity/b;->c:Ljava/lang/String;

    .line 8
    invoke-virtual {p0}, Lcom/hunantv/imgo/net/ImgoHttpCallBack;->a_()Lcom/hunantv/imgo/net/ImgoHttpCallBack$ErrorType;

    move-result-object p1

    sget-object p3, Lcom/hunantv/imgo/net/ImgoHttpCallBack$ErrorType;->BUSINESS_ERROR:Lcom/hunantv/imgo/net/ImgoHttpCallBack$ErrorType;

    if-ne p1, p3, :cond_0

    .line 9
    iget-object p1, p0, Lcom/mgtv/thirdsdk/playcore/e/h$1;->b:Lcom/mgtv/thirdsdk/playcore/e/h;

    invoke-static {p1}, Lcom/mgtv/thirdsdk/playcore/e/h;->a(Lcom/mgtv/thirdsdk/playcore/e/h;)Lcom/mgtv/thirdsdk/playcore/e;

    move-result-object p1

    iget-object p1, p1, Lcom/mgtv/thirdsdk/playcore/e;->b:Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    if-eqz p1, :cond_3

    .line 10
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/e/h$1;->b:Lcom/mgtv/thirdsdk/playcore/e/h;

    invoke-static {p0}, Lcom/mgtv/thirdsdk/playcore/e/h;->a(Lcom/mgtv/thirdsdk/playcore/e/h;)Lcom/mgtv/thirdsdk/playcore/e;

    move-result-object p0

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/e;->b:Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    invoke-virtual {p0, p2, p4, p5, v5}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->b(ILjava/lang/String;Ljava/lang/Throwable;Lcom/hunantv/imgo/net/entity/b;)V

    goto :goto_2

    .line 11
    :cond_0
    iget-object p1, p0, Lcom/mgtv/thirdsdk/playcore/e/h$1;->b:Lcom/mgtv/thirdsdk/playcore/e/h;

    invoke-static {p1}, Lcom/mgtv/thirdsdk/playcore/e/h;->a(Lcom/mgtv/thirdsdk/playcore/e/h;)Lcom/mgtv/thirdsdk/playcore/e;

    move-result-object p1

    const/4 p3, 0x0

    iput-object p3, p1, Lcom/mgtv/thirdsdk/playcore/e;->A:Ljava/lang/String;

    .line 12
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "201"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p5, :cond_1

    .line 13
    instance-of p3, p5, Ljava/net/SocketTimeoutException;

    if-eqz p3, :cond_2

    .line 14
    const-string p1, "203000"

    :cond_1
    :goto_0
    move-object v1, p1

    goto :goto_1

    .line 15
    :cond_2
    instance-of p3, p5, Lcom/mgtv/task/http/HttpFormatException;

    if-eqz p3, :cond_1

    .line 16
    const-string p1, "202000"

    goto :goto_0

    .line 17
    :goto_1
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/h$1;->b:Lcom/mgtv/thirdsdk/playcore/e/h;

    const-string v2, ""

    move v3, p2

    move-object v4, p5

    invoke-static/range {v0 .. v5}, Lcom/mgtv/thirdsdk/playcore/e/h;->a(Lcom/mgtv/thirdsdk/playcore/e/h;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Throwable;Lcom/hunantv/imgo/net/entity/b;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p1, Lcom/hunantv/imgo/net/entity/PlayerRealUrlEntity;

    invoke-virtual {p0, p1}, Lcom/mgtv/thirdsdk/playcore/e/h$1;->b(Lcom/hunantv/imgo/net/entity/PlayerRealUrlEntity;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;IILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 3
    check-cast p1, Lcom/hunantv/imgo/net/entity/PlayerRealUrlEntity;

    invoke-virtual/range {p0 .. p5}, Lcom/mgtv/thirdsdk/playcore/e/h$1;->a(Lcom/hunantv/imgo/net/entity/PlayerRealUrlEntity;IILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public b(Lcom/hunantv/imgo/net/entity/PlayerRealUrlEntity;)V
    .locals 5

    .line 2
    new-instance v0, Lcom/hunantv/imgo/net/entity/b;

    invoke-direct {v0}, Lcom/hunantv/imgo/net/entity/b;-><init>()V

    .line 3
    invoke-virtual {p0}, Lcom/mgtv/task/http/c;->e()Lcom/mgtv/task/http/HttpTraceObject;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/mgtv/task/http/HttpTraceObject;->getStepDuration(I)J

    move-result-wide v3

    iput-wide v3, v0, Lcom/hunantv/imgo/net/entity/b;->a:J

    .line 4
    invoke-virtual {p0}, Lcom/mgtv/task/http/c;->e()Lcom/mgtv/task/http/HttpTraceObject;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mgtv/task/http/HttpTraceObject;->getUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hunantv/imgo/net/entity/b;->b:Ljava/lang/String;

    .line 5
    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/e/h$1;->b:Lcom/mgtv/thirdsdk/playcore/e/h;

    invoke-static {v1}, Lcom/mgtv/thirdsdk/playcore/e/h;->a(Lcom/mgtv/thirdsdk/playcore/e/h;)Lcom/mgtv/thirdsdk/playcore/e;

    move-result-object v1

    iput-object p1, v1, Lcom/mgtv/thirdsdk/playcore/e;->L:Lcom/hunantv/imgo/net/entity/PlayerRealUrlEntity;

    .line 6
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 7
    invoke-static {}, Lcom/hunantv/imgo/b/c;->a()Lcom/hunantv/imgo/b/c;

    move-result-object v3

    iget-object v3, v3, Lcom/hunantv/imgo/b/c;->f:Ljava/lang/String;

    const-string v4, "suuid"

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_0

    .line 8
    iget-object v3, p1, Lcom/hunantv/imgo/net/entity/PlayerRealUrlEntity;->info:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 9
    invoke-static {v3, v1}, Lcom/hunantv/imgo/util/w;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    .line 10
    iget-object v3, p0, Lcom/mgtv/thirdsdk/playcore/e/h$1;->b:Lcom/mgtv/thirdsdk/playcore/e/h;

    invoke-static {v3}, Lcom/mgtv/thirdsdk/playcore/e/h;->a(Lcom/mgtv/thirdsdk/playcore/e/h;)Lcom/mgtv/thirdsdk/playcore/e;

    move-result-object v3

    invoke-static {v1}, Lcom/mgtv/thirdsdk/playcore/c/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/mgtv/thirdsdk/playcore/e;->M:Ljava/lang/String;

    .line 11
    :cond_0
    const-string v1, "204000"

    if-nez p1, :cond_1

    .line 12
    iget-object p1, p0, Lcom/mgtv/thirdsdk/playcore/e/h$1;->b:Lcom/mgtv/thirdsdk/playcore/e/h;

    invoke-static {p1}, Lcom/mgtv/thirdsdk/playcore/e/h;->a(Lcom/mgtv/thirdsdk/playcore/e/h;)Lcom/mgtv/thirdsdk/playcore/e;

    move-result-object p1

    iget-object p1, p1, Lcom/mgtv/thirdsdk/playcore/e;->b:Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    if-eqz p1, :cond_3

    .line 13
    iget-object p1, p0, Lcom/mgtv/thirdsdk/playcore/e/h$1;->b:Lcom/mgtv/thirdsdk/playcore/e/h;

    invoke-static {p1}, Lcom/mgtv/thirdsdk/playcore/e/h;->a(Lcom/mgtv/thirdsdk/playcore/e/h;)Lcom/mgtv/thirdsdk/playcore/e;

    move-result-object p1

    iget-object p1, p1, Lcom/mgtv/thirdsdk/playcore/e;->b:Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    invoke-virtual {p1, v1, v0}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a(Ljava/lang/String;Lcom/hunantv/imgo/net/entity/b;)V

    goto :goto_0

    .line 14
    :cond_1
    iget-object v3, p1, Lcom/hunantv/imgo/net/entity/PlayerRealUrlEntity;->info:Ljava/lang/String;

    if-eqz v3, :cond_2

    const-string v3, "ok"

    iget-object p1, p1, Lcom/hunantv/imgo/net/entity/PlayerRealUrlEntity;->status:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 15
    iget-object p1, p0, Lcom/mgtv/thirdsdk/playcore/e/h$1;->b:Lcom/mgtv/thirdsdk/playcore/e/h;

    invoke-static {p1}, Lcom/mgtv/thirdsdk/playcore/e/h;->a(Lcom/mgtv/thirdsdk/playcore/e/h;)Lcom/mgtv/thirdsdk/playcore/e;

    move-result-object p1

    iget-object p1, p1, Lcom/mgtv/thirdsdk/playcore/e;->b:Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    if-eqz p1, :cond_3

    .line 16
    iget-object p1, p0, Lcom/mgtv/thirdsdk/playcore/e/h$1;->b:Lcom/mgtv/thirdsdk/playcore/e/h;

    invoke-static {p1}, Lcom/mgtv/thirdsdk/playcore/e/h;->a(Lcom/mgtv/thirdsdk/playcore/e/h;)Lcom/mgtv/thirdsdk/playcore/e;

    move-result-object p1

    iget-object p1, p1, Lcom/mgtv/thirdsdk/playcore/e;->b:Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    invoke-virtual {p1, v1, v0}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a(Ljava/lang/String;Lcom/hunantv/imgo/net/entity/b;)V

    goto :goto_0

    .line 17
    :cond_2
    iget-object p1, p0, Lcom/mgtv/thirdsdk/playcore/e/h$1;->b:Lcom/mgtv/thirdsdk/playcore/e/h;

    invoke-static {p1}, Lcom/mgtv/thirdsdk/playcore/e/h;->a(Lcom/mgtv/thirdsdk/playcore/e/h;)Lcom/mgtv/thirdsdk/playcore/e;

    move-result-object p1

    iget-object p1, p1, Lcom/mgtv/thirdsdk/playcore/e;->b:Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    if-eqz p1, :cond_3

    .line 18
    iget-object p1, p0, Lcom/mgtv/thirdsdk/playcore/e/h$1;->b:Lcom/mgtv/thirdsdk/playcore/e/h;

    invoke-static {p1}, Lcom/mgtv/thirdsdk/playcore/e/h;->a(Lcom/mgtv/thirdsdk/playcore/e/h;)Lcom/mgtv/thirdsdk/playcore/e;

    move-result-object p1

    iget-object p1, p1, Lcom/mgtv/thirdsdk/playcore/e;->b:Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    invoke-virtual {p1, v2}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->n(Z)V

    .line 19
    iget-object p1, p0, Lcom/mgtv/thirdsdk/playcore/e/h$1;->b:Lcom/mgtv/thirdsdk/playcore/e/h;

    invoke-static {p1}, Lcom/mgtv/thirdsdk/playcore/e/h;->a(Lcom/mgtv/thirdsdk/playcore/e/h;)Lcom/mgtv/thirdsdk/playcore/e;

    move-result-object p1

    iget-object p1, p1, Lcom/mgtv/thirdsdk/playcore/e;->b:Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/e/h$1;->b:Lcom/mgtv/thirdsdk/playcore/e/h;

    invoke-static {v1}, Lcom/mgtv/thirdsdk/playcore/e/h;->a(Lcom/mgtv/thirdsdk/playcore/e/h;)Lcom/mgtv/thirdsdk/playcore/e;

    move-result-object v1

    iget v1, v1, Lcom/mgtv/thirdsdk/playcore/e;->aC:I

    invoke-virtual {p1, v1, v0}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a(ILcom/hunantv/imgo/net/entity/b;)V

    .line 20
    iget-object p1, p0, Lcom/mgtv/thirdsdk/playcore/e/h$1;->b:Lcom/mgtv/thirdsdk/playcore/e/h;

    invoke-static {p1}, Lcom/mgtv/thirdsdk/playcore/e/h;->a(Lcom/mgtv/thirdsdk/playcore/e/h;)Lcom/mgtv/thirdsdk/playcore/e;

    move-result-object p1

    iget-object p1, p1, Lcom/mgtv/thirdsdk/playcore/e;->b:Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/e/h$1;->b:Lcom/mgtv/thirdsdk/playcore/e/h;

    invoke-static {v1}, Lcom/mgtv/thirdsdk/playcore/e/h;->a(Lcom/mgtv/thirdsdk/playcore/e/h;)Lcom/mgtv/thirdsdk/playcore/e;

    move-result-object v1

    iget-object v1, v1, Lcom/mgtv/thirdsdk/playcore/e;->L:Lcom/hunantv/imgo/net/entity/PlayerRealUrlEntity;

    invoke-virtual {p1, v1}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a(Lcom/hunantv/imgo/net/entity/PlayerRealUrlEntity;)V

    .line 21
    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/e/h$1;->b:Lcom/mgtv/thirdsdk/playcore/e/h;

    invoke-virtual {p0, v0}, Lcom/mgtv/thirdsdk/playcore/e/h;->a(Lcom/hunantv/imgo/net/entity/b;)V

    return-void
.end method

.method public synthetic b(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/hunantv/imgo/net/entity/PlayerRealUrlEntity;

    invoke-virtual {p0, p1}, Lcom/mgtv/thirdsdk/playcore/e/h$1;->a(Lcom/hunantv/imgo/net/entity/PlayerRealUrlEntity;)V

    return-void
.end method
