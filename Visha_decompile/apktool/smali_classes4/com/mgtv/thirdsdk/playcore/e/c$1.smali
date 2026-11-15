.class Lcom/mgtv/thirdsdk/playcore/e/c$1;
.super Lcom/hunantv/imgo/net/ImgoHttpCallBack;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgtv/thirdsdk/playcore/e/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hunantv/imgo/net/ImgoHttpCallBack<",
        "Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/mgtv/thirdsdk/playcore/e/c;


# direct methods
.method public constructor <init>(Lcom/mgtv/thirdsdk/playcore/e/c;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/thirdsdk/playcore/e/c$1;->c:Lcom/mgtv/thirdsdk/playcore/e/c;

    iput-object p2, p0, Lcom/mgtv/thirdsdk/playcore/e/c$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Lcom/hunantv/imgo/net/ImgoHttpCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;)V
    .locals 0

    .line 1
    return-void
.end method

.method public a(Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;IILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 7

    .line 4
    invoke-super/range {p0 .. p5}, Lcom/mgtv/task/http/c;->a(Ljava/lang/Object;IILjava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 5
    invoke-static {}, Lcom/mgtv/thirdsdk/playcore/e/c;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed---------->result:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/hunantv/imgo/log/e;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 6
    :cond_0
    new-instance v1, Lcom/hunantv/imgo/net/entity/b;

    invoke-direct {v1}, Lcom/hunantv/imgo/net/entity/b;-><init>()V

    .line 7
    invoke-virtual {p0}, Lcom/mgtv/task/http/c;->e()Lcom/mgtv/task/http/HttpTraceObject;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mgtv/task/http/HttpTraceObject;->getStepDuration(I)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/hunantv/imgo/net/entity/b;->a:J

    .line 8
    invoke-virtual {p0}, Lcom/mgtv/task/http/c;->e()Lcom/mgtv/task/http/HttpTraceObject;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mgtv/task/http/HttpTraceObject;->getFinalUrl()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/hunantv/imgo/net/entity/b;->b:Ljava/lang/String;

    .line 9
    iget-object v2, p0, Lcom/mgtv/thirdsdk/playcore/e/c$1;->c:Lcom/mgtv/thirdsdk/playcore/e/c;

    invoke-static {v2}, Lcom/mgtv/thirdsdk/playcore/e/c;->b(Lcom/mgtv/thirdsdk/playcore/e/c;)Lcom/hunantv/imgo/net/ImgoHttpParams;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mgtv/task/http/HttpParams;->getParams()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mgtv/thirdsdk/playcore/e/c$1;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mgtv/thirdsdk/playcore/e/c$1;->c:Lcom/mgtv/thirdsdk/playcore/e/c;

    invoke-static {v3}, Lcom/mgtv/thirdsdk/playcore/e/c;->b(Lcom/mgtv/thirdsdk/playcore/e/c;)Lcom/hunantv/imgo/net/ImgoHttpParams;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mgtv/task/http/HttpParams;->getParams()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 11
    :goto_0
    invoke-virtual {p0}, Lcom/hunantv/imgo/net/ImgoHttpCallBack;->a_()Lcom/hunantv/imgo/net/ImgoHttpCallBack$ErrorType;

    move-result-object v3

    sget-object v4, Lcom/hunantv/imgo/net/ImgoHttpCallBack$ErrorType;->BUSINESS_ERROR:Lcom/hunantv/imgo/net/ImgoHttpCallBack$ErrorType;

    const/4 v5, 0x0

    const-string v6, ""

    if-ne v3, v4, :cond_c

    .line 12
    iget-object p5, p0, Lcom/mgtv/thirdsdk/playcore/e/c$1;->c:Lcom/mgtv/thirdsdk/playcore/e/c;

    invoke-static {p5, p1}, Lcom/mgtv/thirdsdk/playcore/e/c;->a(Lcom/mgtv/thirdsdk/playcore/e/c;Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;)V

    .line 13
    iget-object p5, p0, Lcom/mgtv/thirdsdk/playcore/e/c$1;->c:Lcom/mgtv/thirdsdk/playcore/e/c;

    invoke-static {p5}, Lcom/mgtv/thirdsdk/playcore/e/c;->a(Lcom/mgtv/thirdsdk/playcore/e/c;)Lcom/mgtv/thirdsdk/playcore/e;

    move-result-object p5

    iget-object p5, p5, Lcom/mgtv/thirdsdk/playcore/e;->K:Lcom/hunantv/imgo/net/entity/a;

    .line 14
    invoke-virtual {p5, p2}, Lcom/hunantv/imgo/net/entity/a;->a(I)Lcom/hunantv/imgo/net/entity/a;

    move-result-object p2

    .line 15
    invoke-virtual {p2, p4}, Lcom/hunantv/imgo/net/entity/a;->a(Ljava/lang/String;)Lcom/hunantv/imgo/net/entity/a;

    move-result-object p2

    .line 16
    invoke-virtual {p2, p1}, Lcom/hunantv/imgo/net/entity/a;->a(Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;)Lcom/hunantv/imgo/net/entity/a;

    move-result-object p1

    iget-object p2, p0, Lcom/mgtv/thirdsdk/playcore/e/c$1;->c:Lcom/mgtv/thirdsdk/playcore/e/c;

    .line 17
    invoke-static {p2}, Lcom/mgtv/thirdsdk/playcore/e/c;->a(Lcom/mgtv/thirdsdk/playcore/e/c;)Lcom/mgtv/thirdsdk/playcore/e;

    move-result-object p2

    iget-object p2, p2, Lcom/mgtv/thirdsdk/playcore/e;->h:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/hunantv/imgo/net/entity/a;->b(Ljava/lang/String;)Lcom/hunantv/imgo/net/entity/a;

    .line 18
    invoke-static {}, Lcom/mgtv/thirdsdk/playcore/e/c;->a()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "code:"

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p5, "; info:"

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v0}, Lcom/hunantv/imgo/log/e;->b(Ljava/lang/String;Ljava/lang/Object;Z)V

    const/16 p1, 0x2727

    if-ne p3, p1, :cond_3

    .line 19
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a(ZLcom/hunantv/imgo/net/entity/b;)V

    .line 20
    new-instance p1, Lcom/hunantv/imgo/data/ErrorData;

    invoke-direct {p1}, Lcom/hunantv/imgo/data/ErrorData;-><init>()V

    .line 21
    invoke-virtual {p1, p4}, Lcom/hunantv/imgo/data/ErrorData;->setMsg(Ljava/lang/String;)V

    .line 22
    iget-object p2, p0, Lcom/mgtv/thirdsdk/playcore/e/c$1;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/hunantv/imgo/data/ErrorData;->setUrl(Ljava/lang/String;)V

    .line 23
    iget-object p2, p0, Lcom/mgtv/thirdsdk/playcore/e/c$1;->c:Lcom/mgtv/thirdsdk/playcore/e/c;

    invoke-static {p2}, Lcom/mgtv/thirdsdk/playcore/e/c;->b(Lcom/mgtv/thirdsdk/playcore/e/c;)Lcom/hunantv/imgo/net/ImgoHttpParams;

    move-result-object p2

    if-nez p2, :cond_2

    move-object p2, v6

    goto :goto_1

    :cond_2
    iget-object p2, p0, Lcom/mgtv/thirdsdk/playcore/e/c$1;->c:Lcom/mgtv/thirdsdk/playcore/e/c;

    invoke-static {p2}, Lcom/mgtv/thirdsdk/playcore/e/c;->b(Lcom/mgtv/thirdsdk/playcore/e/c;)Lcom/hunantv/imgo/net/ImgoHttpParams;

    move-result-object p2

    invoke-virtual {p2}, Lcom/mgtv/task/http/HttpParams;->buildParameter()Ljava/lang/String;

    move-result-object p2

    :goto_1
    invoke-virtual {p1, p2}, Lcom/hunantv/imgo/data/ErrorData;->setParam(Ljava/lang/String;)V

    .line 24
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/hunantv/imgo/data/ErrorData;->setCode(Ljava/lang/String;)V

    .line 25
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object p2

    invoke-virtual {p2, v5, p1}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a(ZLcom/hunantv/imgo/data/ErrorData;)V

    .line 26
    iget-object p1, p0, Lcom/mgtv/thirdsdk/playcore/e/c$1;->c:Lcom/mgtv/thirdsdk/playcore/e/c;

    invoke-static {p1}, Lcom/mgtv/thirdsdk/playcore/e/c;->a(Lcom/mgtv/thirdsdk/playcore/e/c;)Lcom/mgtv/thirdsdk/playcore/e;

    move-result-object p1

    iput-boolean v0, p1, Lcom/mgtv/thirdsdk/playcore/e;->aJ:Z

    .line 27
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/e/c$1;->c:Lcom/mgtv/thirdsdk/playcore/e/c;

    invoke-static {p0, v0}, Lcom/mgtv/thirdsdk/playcore/e/c;->a(Lcom/mgtv/thirdsdk/playcore/e/c;Z)V

    return-void

    :cond_3
    const/16 p1, 0x2728

    if-eq p3, p1, :cond_a

    const/16 p1, 0x2718

    if-ne p3, p1, :cond_4

    goto/16 :goto_6

    .line 28
    :cond_4
    new-instance p1, Lcom/hunantv/imgo/data/ErrorData;

    invoke-direct {p1}, Lcom/hunantv/imgo/data/ErrorData;-><init>()V

    .line 29
    invoke-virtual {p1, p4}, Lcom/hunantv/imgo/data/ErrorData;->setMsg(Ljava/lang/String;)V

    .line 30
    iget-object p2, p0, Lcom/mgtv/thirdsdk/playcore/e/c$1;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/hunantv/imgo/data/ErrorData;->setUrl(Ljava/lang/String;)V

    .line 31
    iget-object p2, p0, Lcom/mgtv/thirdsdk/playcore/e/c$1;->c:Lcom/mgtv/thirdsdk/playcore/e/c;

    invoke-static {p2}, Lcom/mgtv/thirdsdk/playcore/e/c;->b(Lcom/mgtv/thirdsdk/playcore/e/c;)Lcom/hunantv/imgo/net/ImgoHttpParams;

    move-result-object p2

    if-nez p2, :cond_5

    move-object p2, v6

    goto :goto_2

    :cond_5
    iget-object p2, p0, Lcom/mgtv/thirdsdk/playcore/e/c$1;->c:Lcom/mgtv/thirdsdk/playcore/e/c;

    invoke-static {p2}, Lcom/mgtv/thirdsdk/playcore/e/c;->b(Lcom/mgtv/thirdsdk/playcore/e/c;)Lcom/hunantv/imgo/net/ImgoHttpParams;

    move-result-object p2

    invoke-virtual {p2}, Lcom/mgtv/task/http/HttpParams;->buildParameter()Ljava/lang/String;

    move-result-object p2

    :goto_2
    invoke-virtual {p1, p2}, Lcom/hunantv/imgo/data/ErrorData;->setParam(Ljava/lang/String;)V

    .line 32
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/hunantv/imgo/data/ErrorData;->setCode(Ljava/lang/String;)V

    const/16 p2, 0x2726

    if-ne p3, p2, :cond_8

    .line 33
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object p2

    invoke-virtual {p2, v0, v1}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a(ZLcom/hunantv/imgo/net/entity/b;)V

    .line 34
    iget-object p2, p0, Lcom/mgtv/thirdsdk/playcore/e/c$1;->c:Lcom/mgtv/thirdsdk/playcore/e/c;

    invoke-static {p2}, Lcom/mgtv/thirdsdk/playcore/e/c;->a(Lcom/mgtv/thirdsdk/playcore/e/c;)Lcom/mgtv/thirdsdk/playcore/e;

    move-result-object p2

    iget-object p2, p2, Lcom/mgtv/thirdsdk/playcore/e;->K:Lcom/hunantv/imgo/net/entity/a;

    iget-object p2, p2, Lcom/hunantv/imgo/net/entity/a;->d:Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;

    iget-object p2, p2, Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;->videoSources:Ljava/util/List;

    invoke-static {p2}, Lcom/hunantv/imgo/util/l;->a(Ljava/util/List;)Z

    move-result p2

    if-nez p2, :cond_6

    iget-object p2, p0, Lcom/mgtv/thirdsdk/playcore/e/c$1;->c:Lcom/mgtv/thirdsdk/playcore/e/c;

    .line 35
    invoke-static {p2}, Lcom/mgtv/thirdsdk/playcore/e/c;->a(Lcom/mgtv/thirdsdk/playcore/e/c;)Lcom/mgtv/thirdsdk/playcore/e;

    move-result-object p2

    iget-object p2, p2, Lcom/mgtv/thirdsdk/playcore/e;->l:Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;

    if-eqz p2, :cond_6

    iget-object p2, p0, Lcom/mgtv/thirdsdk/playcore/e/c$1;->c:Lcom/mgtv/thirdsdk/playcore/e/c;

    .line 36
    invoke-static {p2}, Lcom/mgtv/thirdsdk/playcore/e/c;->a(Lcom/mgtv/thirdsdk/playcore/e/c;)Lcom/mgtv/thirdsdk/playcore/e;

    move-result-object p2

    iget-object p2, p2, Lcom/mgtv/thirdsdk/playcore/e;->l:Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;

    iget-object p2, p2, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;->url:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_6

    .line 37
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object p2

    invoke-virtual {p2, v0, p1}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a(ZLcom/hunantv/imgo/data/ErrorData;)V

    goto :goto_3

    .line 38
    :cond_6
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object p2

    invoke-virtual {p2, v5, p1}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a(ZLcom/hunantv/imgo/data/ErrorData;)V

    .line 39
    :goto_3
    iget-object p1, p0, Lcom/mgtv/thirdsdk/playcore/e/c$1;->c:Lcom/mgtv/thirdsdk/playcore/e/c;

    invoke-static {p1}, Lcom/mgtv/thirdsdk/playcore/e/c;->c(Lcom/mgtv/thirdsdk/playcore/e/c;)Lcom/mgtv/thirdsdk/playcore/c$b;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 40
    iget-object p1, p0, Lcom/mgtv/thirdsdk/playcore/e/c$1;->c:Lcom/mgtv/thirdsdk/playcore/e/c;

    invoke-static {p1}, Lcom/mgtv/thirdsdk/playcore/e/c;->a(Lcom/mgtv/thirdsdk/playcore/e/c;)Lcom/mgtv/thirdsdk/playcore/e;

    move-result-object p1

    iput-boolean v5, p1, Lcom/mgtv/thirdsdk/playcore/e;->aJ:Z

    .line 41
    iget-object p1, p0, Lcom/mgtv/thirdsdk/playcore/e/c$1;->c:Lcom/mgtv/thirdsdk/playcore/e/c;

    invoke-static {p1}, Lcom/mgtv/thirdsdk/playcore/e/c;->c(Lcom/mgtv/thirdsdk/playcore/e/c;)Lcom/mgtv/thirdsdk/playcore/c$b;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/mgtv/thirdsdk/playcore/c$b;->a(I)V

    goto :goto_4

    .line 42
    :cond_7
    iget-object p1, p0, Lcom/mgtv/thirdsdk/playcore/e/c$1;->c:Lcom/mgtv/thirdsdk/playcore/e/c;

    invoke-static {p1}, Lcom/mgtv/thirdsdk/playcore/e/c;->a(Lcom/mgtv/thirdsdk/playcore/e/c;)Lcom/mgtv/thirdsdk/playcore/e;

    move-result-object p1

    iput-boolean v0, p1, Lcom/mgtv/thirdsdk/playcore/e;->aJ:Z

    .line 43
    :goto_4
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/e/c$1;->c:Lcom/mgtv/thirdsdk/playcore/e/c;

    invoke-static {p0, v0}, Lcom/mgtv/thirdsdk/playcore/e/c;->a(Lcom/mgtv/thirdsdk/playcore/e/c;Z)V

    return-void

    .line 44
    :cond_8
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object p2

    invoke-virtual {p2, v5, v1}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a(ZLcom/hunantv/imgo/net/entity/b;)V

    .line 45
    invoke-virtual {p1, p4}, Lcom/hunantv/imgo/data/ErrorData;->setMsg(Ljava/lang/String;)V

    .line 46
    iget-object p2, p0, Lcom/mgtv/thirdsdk/playcore/e/c$1;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/hunantv/imgo/data/ErrorData;->setUrl(Ljava/lang/String;)V

    .line 47
    iget-object p2, p0, Lcom/mgtv/thirdsdk/playcore/e/c$1;->c:Lcom/mgtv/thirdsdk/playcore/e/c;

    invoke-static {p2}, Lcom/mgtv/thirdsdk/playcore/e/c;->b(Lcom/mgtv/thirdsdk/playcore/e/c;)Lcom/hunantv/imgo/net/ImgoHttpParams;

    move-result-object p2

    if-nez p2, :cond_9

    move-object p2, v6

    goto :goto_5

    :cond_9
    iget-object p2, p0, Lcom/mgtv/thirdsdk/playcore/e/c$1;->c:Lcom/mgtv/thirdsdk/playcore/e/c;

    invoke-static {p2}, Lcom/mgtv/thirdsdk/playcore/e/c;->b(Lcom/mgtv/thirdsdk/playcore/e/c;)Lcom/hunantv/imgo/net/ImgoHttpParams;

    move-result-object p2

    invoke-virtual {p2}, Lcom/mgtv/task/http/HttpParams;->buildParameter()Ljava/lang/String;

    move-result-object p2

    :goto_5
    invoke-virtual {p1, p2}, Lcom/hunantv/imgo/data/ErrorData;->setParam(Ljava/lang/String;)V

    .line 48
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/hunantv/imgo/data/ErrorData;->setCode(Ljava/lang/String;)V

    .line 49
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object p2

    invoke-virtual {p2, v5, p1}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a(ZLcom/hunantv/imgo/data/ErrorData;)V

    goto/16 :goto_9

    .line 50
    :cond_a
    :goto_6
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a(ZLcom/hunantv/imgo/net/entity/b;)V

    .line 51
    new-instance p1, Lcom/hunantv/imgo/data/ErrorData;

    invoke-direct {p1}, Lcom/hunantv/imgo/data/ErrorData;-><init>()V

    .line 52
    invoke-virtual {p1, p4}, Lcom/hunantv/imgo/data/ErrorData;->setMsg(Ljava/lang/String;)V

    .line 53
    iget-object p2, p0, Lcom/mgtv/thirdsdk/playcore/e/c$1;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/hunantv/imgo/data/ErrorData;->setUrl(Ljava/lang/String;)V

    .line 54
    iget-object p2, p0, Lcom/mgtv/thirdsdk/playcore/e/c$1;->c:Lcom/mgtv/thirdsdk/playcore/e/c;

    invoke-static {p2}, Lcom/mgtv/thirdsdk/playcore/e/c;->b(Lcom/mgtv/thirdsdk/playcore/e/c;)Lcom/hunantv/imgo/net/ImgoHttpParams;

    move-result-object p2

    if-nez p2, :cond_b

    move-object p2, v6

    goto :goto_7

    :cond_b
    iget-object p2, p0, Lcom/mgtv/thirdsdk/playcore/e/c$1;->c:Lcom/mgtv/thirdsdk/playcore/e/c;

    invoke-static {p2}, Lcom/mgtv/thirdsdk/playcore/e/c;->b(Lcom/mgtv/thirdsdk/playcore/e/c;)Lcom/hunantv/imgo/net/ImgoHttpParams;

    move-result-object p2

    invoke-virtual {p2}, Lcom/mgtv/task/http/HttpParams;->buildParameter()Ljava/lang/String;

    move-result-object p2

    :goto_7
    invoke-virtual {p1, p2}, Lcom/hunantv/imgo/data/ErrorData;->setParam(Ljava/lang/String;)V

    .line 55
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/hunantv/imgo/data/ErrorData;->setCode(Ljava/lang/String;)V

    .line 56
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object p2

    invoke-virtual {p2, v5, p1}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a(ZLcom/hunantv/imgo/data/ErrorData;)V

    .line 57
    iget-object p1, p0, Lcom/mgtv/thirdsdk/playcore/e/c$1;->c:Lcom/mgtv/thirdsdk/playcore/e/c;

    invoke-static {p1}, Lcom/mgtv/thirdsdk/playcore/e/c;->a(Lcom/mgtv/thirdsdk/playcore/e/c;)Lcom/mgtv/thirdsdk/playcore/e;

    move-result-object p1

    iput-boolean v0, p1, Lcom/mgtv/thirdsdk/playcore/e;->aJ:Z

    .line 58
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/e/c$1;->c:Lcom/mgtv/thirdsdk/playcore/e/c;

    invoke-static {p0, v0}, Lcom/mgtv/thirdsdk/playcore/e/c;->a(Lcom/mgtv/thirdsdk/playcore/e/c;Z)V

    return-void

    .line 59
    :cond_c
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object p1

    invoke-virtual {p1, p2, v2, p5, v1}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a(ILjava/lang/String;Ljava/lang/Throwable;Lcom/hunantv/imgo/net/entity/b;)V

    .line 60
    new-instance p1, Lcom/hunantv/imgo/data/ErrorData;

    invoke-direct {p1}, Lcom/hunantv/imgo/data/ErrorData;-><init>()V

    .line 61
    invoke-virtual {p1, p4}, Lcom/hunantv/imgo/data/ErrorData;->setMsg(Ljava/lang/String;)V

    .line 62
    iget-object p2, p0, Lcom/mgtv/thirdsdk/playcore/e/c$1;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/hunantv/imgo/data/ErrorData;->setUrl(Ljava/lang/String;)V

    .line 63
    iget-object p2, p0, Lcom/mgtv/thirdsdk/playcore/e/c$1;->c:Lcom/mgtv/thirdsdk/playcore/e/c;

    invoke-static {p2}, Lcom/mgtv/thirdsdk/playcore/e/c;->b(Lcom/mgtv/thirdsdk/playcore/e/c;)Lcom/hunantv/imgo/net/ImgoHttpParams;

    move-result-object p2

    if-nez p2, :cond_d

    move-object p2, v6

    goto :goto_8

    :cond_d
    iget-object p2, p0, Lcom/mgtv/thirdsdk/playcore/e/c$1;->c:Lcom/mgtv/thirdsdk/playcore/e/c;

    invoke-static {p2}, Lcom/mgtv/thirdsdk/playcore/e/c;->b(Lcom/mgtv/thirdsdk/playcore/e/c;)Lcom/hunantv/imgo/net/ImgoHttpParams;

    move-result-object p2

    invoke-virtual {p2}, Lcom/mgtv/task/http/HttpParams;->buildParameter()Ljava/lang/String;

    move-result-object p2

    :goto_8
    invoke-virtual {p1, p2}, Lcom/hunantv/imgo/data/ErrorData;->setParam(Ljava/lang/String;)V

    .line 64
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/hunantv/imgo/data/ErrorData;->setCode(Ljava/lang/String;)V

    .line 65
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object p2

    invoke-virtual {p2, v5, p1}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a(ZLcom/hunantv/imgo/data/ErrorData;)V

    .line 66
    :goto_9
    iget-object p1, p0, Lcom/mgtv/thirdsdk/playcore/e/c$1;->c:Lcom/mgtv/thirdsdk/playcore/e/c;

    invoke-static {p1}, Lcom/mgtv/thirdsdk/playcore/e/c;->a(Lcom/mgtv/thirdsdk/playcore/e/c;)Lcom/mgtv/thirdsdk/playcore/e;

    move-result-object p1

    iput-boolean v0, p1, Lcom/mgtv/thirdsdk/playcore/e;->aJ:Z

    .line 67
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/e/c$1;->c:Lcom/mgtv/thirdsdk/playcore/e/c;

    invoke-static {p0, v0}, Lcom/mgtv/thirdsdk/playcore/e/c;->a(Lcom/mgtv/thirdsdk/playcore/e/c;Z)V

    return-void
.end method

.method public synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p1, Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;

    invoke-virtual {p0, p1}, Lcom/mgtv/thirdsdk/playcore/e/c$1;->b(Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;IILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 3
    check-cast p1, Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;

    invoke-virtual/range {p0 .. p5}, Lcom/mgtv/thirdsdk/playcore/e/c$1;->a(Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;IILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public b(Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;)V
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 2
    invoke-static {}, Lcom/mgtv/thirdsdk/playcore/e/c;->a()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "success-------->result:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/hunantv/imgo/log/e;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 3
    iget-object v2, p0, Lcom/mgtv/thirdsdk/playcore/e/c$1;->c:Lcom/mgtv/thirdsdk/playcore/e/c;

    invoke-static {v2, p1}, Lcom/mgtv/thirdsdk/playcore/e/c;->a(Lcom/mgtv/thirdsdk/playcore/e/c;Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;)V

    .line 4
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object v2

    iget-object v3, p1, Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;->clipId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->o(Ljava/lang/String;)V

    .line 5
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object v2

    invoke-static {}, Lcom/hunantv/imgo/b/e;->c()Lcom/hunantv/imgo/b/e;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hunantv/imgo/b/e;->b()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/hunantv/imgo/util/p;->a()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/mgtv/thirdsdk/playcore/e/c$1;->c:Lcom/mgtv/thirdsdk/playcore/e/c;

    invoke-static {v3}, Lcom/mgtv/thirdsdk/playcore/e/c;->a(Lcom/mgtv/thirdsdk/playcore/e/c;)Lcom/mgtv/thirdsdk/playcore/e;

    move-result-object v3

    iget-boolean v3, v3, Lcom/mgtv/thirdsdk/playcore/e;->aF:Z

    if-nez v3, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v0

    :goto_0
    invoke-virtual {v2, v3}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a(Z)V

    .line 6
    :cond_1
    invoke-virtual {p0}, Lcom/mgtv/task/http/c;->e()Lcom/mgtv/task/http/HttpTraceObject;

    move-result-object v2

    .line 7
    invoke-static {}, Lcom/mgtv/thirdsdk/playcore/e/c;->a()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u6574\u4f53-------->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Lcom/mgtv/task/http/HttpTraceObject;->getStepDuration(I)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Lcom/hunantv/imgo/log/e;->b(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 8
    invoke-static {}, Lcom/mgtv/thirdsdk/playcore/e/c;->a()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u8bf7\u6c42\u6784\u5efa-------->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Lcom/mgtv/task/http/HttpTraceObject;->getStepDuration(I)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Lcom/hunantv/imgo/log/e;->b(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 9
    invoke-static {}, Lcom/mgtv/thirdsdk/playcore/e/c;->a()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u8bf7\u6c42\u6574\u4f53\u6267\u884c-------->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x3

    invoke-virtual {v2, v5}, Lcom/mgtv/task/http/HttpTraceObject;->getStepDuration(I)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Lcom/hunantv/imgo/log/e;->b(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 10
    invoke-static {}, Lcom/mgtv/thirdsdk/playcore/e/c;->a()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u6700\u540e\u4e00\u6b21\u8bf7\u6c42\u6267\u884c-------->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x4

    invoke-virtual {v2, v5}, Lcom/mgtv/task/http/HttpTraceObject;->getStepDuration(I)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Lcom/hunantv/imgo/log/e;->b(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 11
    invoke-static {}, Lcom/mgtv/thirdsdk/playcore/e/c;->a()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u8fd4\u56de\u6570\u636e\u89e3\u6790-------->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x5

    invoke-virtual {v2, v5}, Lcom/mgtv/task/http/HttpTraceObject;->getStepDuration(I)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2, v1}, Lcom/hunantv/imgo/log/e;->b(Ljava/lang/String;Ljava/lang/Object;Z)V

    const/4 v2, 0x0

    if-nez p1, :cond_2

    move-object v3, v2

    goto :goto_1

    .line 12
    :cond_2
    iget-object v3, p1, Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;->videoSources:Ljava/util/List;

    .line 13
    :goto_1
    new-instance v9, Lcom/hunantv/imgo/net/entity/b;

    invoke-direct {v9}, Lcom/hunantv/imgo/net/entity/b;-><init>()V

    .line 14
    invoke-virtual {p0}, Lcom/mgtv/task/http/c;->e()Lcom/mgtv/task/http/HttpTraceObject;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/mgtv/task/http/HttpTraceObject;->getStepDuration(I)J

    move-result-wide v4

    iput-wide v4, v9, Lcom/hunantv/imgo/net/entity/b;->a:J

    .line 15
    invoke-virtual {p0}, Lcom/mgtv/task/http/c;->e()Lcom/mgtv/task/http/HttpTraceObject;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mgtv/task/http/HttpTraceObject;->getFinalUrl()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v9, Lcom/hunantv/imgo/net/entity/b;->b:Ljava/lang/String;

    .line 16
    iget-object v4, p0, Lcom/mgtv/thirdsdk/playcore/e/c$1;->c:Lcom/mgtv/thirdsdk/playcore/e/c;

    invoke-static {v4}, Lcom/mgtv/thirdsdk/playcore/e/c;->b(Lcom/mgtv/thirdsdk/playcore/e/c;)Lcom/hunantv/imgo/net/ImgoHttpParams;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mgtv/task/http/HttpParams;->getParams()Ljava/util/Map;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 17
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/mgtv/thirdsdk/playcore/e/c$1;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/mgtv/thirdsdk/playcore/e/c$1;->c:Lcom/mgtv/thirdsdk/playcore/e/c;

    invoke-static {v5}, Lcom/mgtv/thirdsdk/playcore/e/c;->b(Lcom/mgtv/thirdsdk/playcore/e/c;)Lcom/hunantv/imgo/net/ImgoHttpParams;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mgtv/task/http/HttpParams;->getParams()Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v6, v4

    goto :goto_2

    :cond_3
    move-object v6, v2

    .line 18
    :goto_2
    const-string v10, ""

    if-eqz v3, :cond_5

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_5

    .line 19
    iget-object v3, p0, Lcom/mgtv/thirdsdk/playcore/e/c$1;->c:Lcom/mgtv/thirdsdk/playcore/e/c;

    iget-object p1, p1, Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;->user:Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity$User;

    invoke-static {v3, p1}, Lcom/mgtv/thirdsdk/playcore/e/c;->a(Lcom/mgtv/thirdsdk/playcore/e/c;Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity$User;)V

    .line 20
    iget-object p1, p0, Lcom/mgtv/thirdsdk/playcore/e/c$1;->c:Lcom/mgtv/thirdsdk/playcore/e/c;

    invoke-static {p1}, Lcom/mgtv/thirdsdk/playcore/e/c;->c(Lcom/mgtv/thirdsdk/playcore/e/c;)Lcom/mgtv/thirdsdk/playcore/c$b;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 21
    iget-object p1, p0, Lcom/mgtv/thirdsdk/playcore/e/c$1;->c:Lcom/mgtv/thirdsdk/playcore/e/c;

    invoke-static {p1}, Lcom/mgtv/thirdsdk/playcore/e/c;->a(Lcom/mgtv/thirdsdk/playcore/e/c;)Lcom/mgtv/thirdsdk/playcore/e;

    move-result-object p1

    iput-boolean v0, p1, Lcom/mgtv/thirdsdk/playcore/e;->aJ:Z

    .line 22
    iget-object p1, p0, Lcom/mgtv/thirdsdk/playcore/e/c$1;->c:Lcom/mgtv/thirdsdk/playcore/e/c;

    invoke-static {p1}, Lcom/mgtv/thirdsdk/playcore/e/c;->c(Lcom/mgtv/thirdsdk/playcore/e/c;)Lcom/mgtv/thirdsdk/playcore/c$b;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/mgtv/thirdsdk/playcore/c$b;->a(I)V

    goto :goto_3

    .line 23
    :cond_4
    iget-object p1, p0, Lcom/mgtv/thirdsdk/playcore/e/c$1;->c:Lcom/mgtv/thirdsdk/playcore/e/c;

    invoke-static {p1}, Lcom/mgtv/thirdsdk/playcore/e/c;->a(Lcom/mgtv/thirdsdk/playcore/e/c;)Lcom/mgtv/thirdsdk/playcore/e;

    move-result-object p1

    iput-boolean v1, p1, Lcom/mgtv/thirdsdk/playcore/e;->aJ:Z

    .line 24
    :goto_3
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object p1

    invoke-virtual {p1, v10, v6, v9}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a(Ljava/lang/String;Ljava/lang/String;Lcom/hunantv/imgo/net/entity/b;)V

    .line 25
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a(ZLcom/hunantv/imgo/data/ErrorData;)V

    goto :goto_5

    .line 26
    :cond_5
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object v4

    const/4 v7, 0x1

    const/16 v8, 0xc8

    const-string v5, "102000"

    invoke-virtual/range {v4 .. v9}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a(Ljava/lang/String;Ljava/lang/String;ZILcom/hunantv/imgo/net/entity/b;)V

    .line 27
    new-instance p1, Lcom/hunantv/imgo/data/ErrorData;

    invoke-direct {p1}, Lcom/hunantv/imgo/data/ErrorData;-><init>()V

    .line 28
    const-string v2, "no data"

    invoke-virtual {p1, v2}, Lcom/hunantv/imgo/data/ErrorData;->setMsg(Ljava/lang/String;)V

    .line 29
    iget-object v2, p0, Lcom/mgtv/thirdsdk/playcore/e/c$1;->b:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/hunantv/imgo/data/ErrorData;->setUrl(Ljava/lang/String;)V

    .line 30
    iget-object v2, p0, Lcom/mgtv/thirdsdk/playcore/e/c$1;->c:Lcom/mgtv/thirdsdk/playcore/e/c;

    invoke-static {v2}, Lcom/mgtv/thirdsdk/playcore/e/c;->b(Lcom/mgtv/thirdsdk/playcore/e/c;)Lcom/hunantv/imgo/net/ImgoHttpParams;

    move-result-object v2

    if-nez v2, :cond_6

    goto :goto_4

    :cond_6
    iget-object v2, p0, Lcom/mgtv/thirdsdk/playcore/e/c$1;->c:Lcom/mgtv/thirdsdk/playcore/e/c;

    invoke-static {v2}, Lcom/mgtv/thirdsdk/playcore/e/c;->b(Lcom/mgtv/thirdsdk/playcore/e/c;)Lcom/hunantv/imgo/net/ImgoHttpParams;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mgtv/task/http/HttpParams;->buildParameter()Ljava/lang/String;

    move-result-object v10

    :goto_4
    invoke-virtual {p1, v10}, Lcom/hunantv/imgo/data/ErrorData;->setParam(Ljava/lang/String;)V

    .line 31
    const-string v2, "110106"

    invoke-virtual {p1, v2}, Lcom/hunantv/imgo/data/ErrorData;->setCode(Ljava/lang/String;)V

    .line 32
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object v2

    invoke-virtual {v2, v0, p1}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a(ZLcom/hunantv/imgo/data/ErrorData;)V

    .line 33
    iget-object p1, p0, Lcom/mgtv/thirdsdk/playcore/e/c$1;->c:Lcom/mgtv/thirdsdk/playcore/e/c;

    invoke-static {p1}, Lcom/mgtv/thirdsdk/playcore/e/c;->a(Lcom/mgtv/thirdsdk/playcore/e/c;)Lcom/mgtv/thirdsdk/playcore/e;

    move-result-object p1

    iput-boolean v1, p1, Lcom/mgtv/thirdsdk/playcore/e;->aJ:Z

    .line 34
    :goto_5
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/e/c$1;->c:Lcom/mgtv/thirdsdk/playcore/e/c;

    invoke-static {p0, v1}, Lcom/mgtv/thirdsdk/playcore/e/c;->a(Lcom/mgtv/thirdsdk/playcore/e/c;Z)V

    return-void
.end method

.method public synthetic b(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;

    invoke-virtual {p0, p1}, Lcom/mgtv/thirdsdk/playcore/e/c$1;->a(Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;)V

    return-void
.end method
