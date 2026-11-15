.class Lcom/mgtv/thirdsdk/playcore/e/g$2;
.super Lcom/hunantv/imgo/net/ImgoHttpCallBack;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgtv/thirdsdk/playcore/e/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
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

.field final synthetic c:Lcom/mgtv/thirdsdk/playcore/e/g;


# direct methods
.method public constructor <init>(Lcom/mgtv/thirdsdk/playcore/e/g;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/thirdsdk/playcore/e/g$2;->c:Lcom/mgtv/thirdsdk/playcore/e/g;

    iput-object p2, p0, Lcom/mgtv/thirdsdk/playcore/e/g$2;->b:Ljava/lang/String;

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
    .locals 8

    .line 4
    invoke-super/range {p0 .. p5}, Lcom/mgtv/task/http/c;->a(Ljava/lang/Object;IILjava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 5
    invoke-static {}, Lcom/mgtv/thirdsdk/playcore/e/g;->b()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed---------->result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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
    iget-object v2, p0, Lcom/mgtv/thirdsdk/playcore/e/g$2;->c:Lcom/mgtv/thirdsdk/playcore/e/g;

    invoke-static {v2}, Lcom/mgtv/thirdsdk/playcore/e/g;->b(Lcom/mgtv/thirdsdk/playcore/e/g;)Lcom/hunantv/imgo/net/ImgoHttpParams;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mgtv/task/http/HttpParams;->getParams()Ljava/util/Map;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/mgtv/thirdsdk/playcore/e/g$2;->b:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "?"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/mgtv/thirdsdk/playcore/e/g$2;->c:Lcom/mgtv/thirdsdk/playcore/e/g;

    invoke-static {v4}, Lcom/mgtv/thirdsdk/playcore/e/g;->b(Lcom/mgtv/thirdsdk/playcore/e/g;)Lcom/hunantv/imgo/net/ImgoHttpParams;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mgtv/task/http/HttpParams;->getParams()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, v3

    .line 11
    :goto_0
    invoke-virtual {p0}, Lcom/hunantv/imgo/net/ImgoHttpCallBack;->a_()Lcom/hunantv/imgo/net/ImgoHttpCallBack$ErrorType;

    move-result-object v4

    sget-object v5, Lcom/hunantv/imgo/net/ImgoHttpCallBack$ErrorType;->BUSINESS_ERROR:Lcom/hunantv/imgo/net/ImgoHttpCallBack$ErrorType;

    const/4 v6, 0x0

    const-string v7, ""

    if-ne v4, v5, :cond_1e

    if-eqz p1, :cond_2

    .line 12
    iget-object v3, p1, Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;->playableErrCode:Ljava/lang/String;

    .line 13
    :cond_2
    const-string p5, "100016"

    if-eqz v3, :cond_7

    invoke-virtual {p5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 14
    iget-object p2, p0, Lcom/mgtv/thirdsdk/playcore/e/g$2;->c:Lcom/mgtv/thirdsdk/playcore/e/g;

    invoke-static {p2}, Lcom/mgtv/thirdsdk/playcore/e/g;->d(Lcom/mgtv/thirdsdk/playcore/e/g;)Lcom/mgtv/thirdsdk/playcore/c$b;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 15
    iget-object p2, p0, Lcom/mgtv/thirdsdk/playcore/e/g$2;->c:Lcom/mgtv/thirdsdk/playcore/e/g;

    invoke-static {p2}, Lcom/mgtv/thirdsdk/playcore/e/g;->d(Lcom/mgtv/thirdsdk/playcore/e/g;)Lcom/mgtv/thirdsdk/playcore/c$b;

    move-result-object p2

    invoke-interface {p2, p5, p4}, Lcom/mgtv/thirdsdk/playcore/c$b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    :cond_3
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object p2

    invoke-virtual {p2, v0, v1}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a(ZLcom/hunantv/imgo/net/entity/b;)V

    .line 17
    new-instance p2, Lcom/hunantv/imgo/data/ErrorData;

    invoke-direct {p2}, Lcom/hunantv/imgo/data/ErrorData;-><init>()V

    .line 18
    invoke-virtual {p2, p4}, Lcom/hunantv/imgo/data/ErrorData;->setMsg(Ljava/lang/String;)V

    .line 19
    iget-object p4, p0, Lcom/mgtv/thirdsdk/playcore/e/g$2;->b:Ljava/lang/String;

    invoke-virtual {p2, p4}, Lcom/hunantv/imgo/data/ErrorData;->setUrl(Ljava/lang/String;)V

    .line 20
    iget-object p4, p0, Lcom/mgtv/thirdsdk/playcore/e/g$2;->c:Lcom/mgtv/thirdsdk/playcore/e/g;

    invoke-static {p4}, Lcom/mgtv/thirdsdk/playcore/e/g;->b(Lcom/mgtv/thirdsdk/playcore/e/g;)Lcom/hunantv/imgo/net/ImgoHttpParams;

    move-result-object p4

    if-nez p4, :cond_4

    move-object p4, v7

    goto :goto_1

    :cond_4
    iget-object p4, p0, Lcom/mgtv/thirdsdk/playcore/e/g$2;->c:Lcom/mgtv/thirdsdk/playcore/e/g;

    invoke-static {p4}, Lcom/mgtv/thirdsdk/playcore/e/g;->b(Lcom/mgtv/thirdsdk/playcore/e/g;)Lcom/hunantv/imgo/net/ImgoHttpParams;

    move-result-object p4

    invoke-virtual {p4}, Lcom/mgtv/task/http/HttpParams;->buildParameter()Ljava/lang/String;

    move-result-object p4

    :goto_1
    invoke-virtual {p2, p4}, Lcom/hunantv/imgo/data/ErrorData;->setParam(Ljava/lang/String;)V

    .line 21
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/hunantv/imgo/data/ErrorData;->setCode(Ljava/lang/String;)V

    .line 22
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object p3

    invoke-virtual {p3, v6, p2}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a(ZLcom/hunantv/imgo/data/ErrorData;)V

    .line 23
    iget-object p2, p0, Lcom/mgtv/thirdsdk/playcore/e/g$2;->c:Lcom/mgtv/thirdsdk/playcore/e/g;

    invoke-static {p2}, Lcom/mgtv/thirdsdk/playcore/e/g;->e(Lcom/mgtv/thirdsdk/playcore/e/g;)Lcom/mgtv/ssp/c;

    move-result-object p2

    if-eqz p2, :cond_6

    if-eqz p1, :cond_5

    .line 24
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/e/g$2;->c:Lcom/mgtv/thirdsdk/playcore/e/g;

    invoke-static {p0}, Lcom/mgtv/thirdsdk/playcore/e/g;->e(Lcom/mgtv/thirdsdk/playcore/e/g;)Lcom/mgtv/ssp/c;

    move-result-object p0

    iget-object p2, p1, Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;->videoId:Ljava/lang/String;

    iget-object p1, p1, Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;->videoName:Ljava/lang/String;

    invoke-interface {p0, v6, p2, p1}, Lcom/mgtv/ssp/c;->a(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 25
    :cond_5
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/e/g$2;->c:Lcom/mgtv/thirdsdk/playcore/e/g;

    invoke-static {p0}, Lcom/mgtv/thirdsdk/playcore/e/g;->e(Lcom/mgtv/thirdsdk/playcore/e/g;)Lcom/mgtv/ssp/c;

    move-result-object p0

    invoke-interface {p0, v6, v7, v7}, Lcom/mgtv/ssp/c;->a(ZLjava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_2
    return-void

    .line 26
    :cond_7
    iget-object v2, p0, Lcom/mgtv/thirdsdk/playcore/e/g$2;->c:Lcom/mgtv/thirdsdk/playcore/e/g;

    invoke-static {v2, p1}, Lcom/mgtv/thirdsdk/playcore/e/g;->a(Lcom/mgtv/thirdsdk/playcore/e/g;Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;)V

    .line 27
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a(Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;)V

    if-eqz p1, :cond_8

    .line 28
    iget-object v2, p0, Lcom/mgtv/thirdsdk/playcore/e/g$2;->c:Lcom/mgtv/thirdsdk/playcore/e/g;

    iget-object v3, p1, Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;->user:Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity$User;

    invoke-static {v2, v3}, Lcom/mgtv/thirdsdk/playcore/e/g;->b(Lcom/mgtv/thirdsdk/playcore/e/g;Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity$User;)V

    .line 29
    :cond_8
    iget-object v2, p0, Lcom/mgtv/thirdsdk/playcore/e/g$2;->c:Lcom/mgtv/thirdsdk/playcore/e/g;

    invoke-static {v2}, Lcom/mgtv/thirdsdk/playcore/e/g;->a(Lcom/mgtv/thirdsdk/playcore/e/g;)Lcom/mgtv/thirdsdk/playcore/e;

    move-result-object v2

    iget-object v2, v2, Lcom/mgtv/thirdsdk/playcore/e;->K:Lcom/hunantv/imgo/net/entity/a;

    .line 30
    invoke-virtual {v2, p2}, Lcom/hunantv/imgo/net/entity/a;->a(I)Lcom/hunantv/imgo/net/entity/a;

    move-result-object p2

    .line 31
    invoke-virtual {p2, p4}, Lcom/hunantv/imgo/net/entity/a;->a(Ljava/lang/String;)Lcom/hunantv/imgo/net/entity/a;

    move-result-object p2

    .line 32
    invoke-virtual {p2, p1}, Lcom/hunantv/imgo/net/entity/a;->a(Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;)Lcom/hunantv/imgo/net/entity/a;

    move-result-object p2

    iget-object v2, p0, Lcom/mgtv/thirdsdk/playcore/e/g$2;->c:Lcom/mgtv/thirdsdk/playcore/e/g;

    .line 33
    invoke-static {v2}, Lcom/mgtv/thirdsdk/playcore/e/g;->a(Lcom/mgtv/thirdsdk/playcore/e/g;)Lcom/mgtv/thirdsdk/playcore/e;

    move-result-object v2

    iget-object v2, v2, Lcom/mgtv/thirdsdk/playcore/e;->h:Ljava/lang/String;

    invoke-virtual {p2, v2}, Lcom/hunantv/imgo/net/entity/a;->b(Ljava/lang/String;)Lcom/hunantv/imgo/net/entity/a;

    .line 34
    invoke-static {}, Lcom/mgtv/thirdsdk/playcore/e/g;->b()Ljava/lang/String;

    move-result-object p2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "code:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "; info:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2, v0}, Lcom/hunantv/imgo/log/e;->b(Ljava/lang/String;Ljava/lang/Object;Z)V

    const/16 p2, 0x2727

    if-ne p3, p2, :cond_d

    .line 35
    iget-object p2, p0, Lcom/mgtv/thirdsdk/playcore/e/g$2;->c:Lcom/mgtv/thirdsdk/playcore/e/g;

    invoke-static {p2}, Lcom/mgtv/thirdsdk/playcore/e/g;->d(Lcom/mgtv/thirdsdk/playcore/e/g;)Lcom/mgtv/thirdsdk/playcore/c$b;

    move-result-object p2

    if-eqz p2, :cond_9

    .line 36
    iget-object p2, p0, Lcom/mgtv/thirdsdk/playcore/e/g$2;->c:Lcom/mgtv/thirdsdk/playcore/e/g;

    invoke-static {p2}, Lcom/mgtv/thirdsdk/playcore/e/g;->d(Lcom/mgtv/thirdsdk/playcore/e/g;)Lcom/mgtv/thirdsdk/playcore/c$b;

    move-result-object p2

    const-string p5, "110103"

    invoke-interface {p2, p5, p4}, Lcom/mgtv/thirdsdk/playcore/c$b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    :cond_9
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object p2

    invoke-virtual {p2, v0, v1}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a(ZLcom/hunantv/imgo/net/entity/b;)V

    .line 38
    new-instance p2, Lcom/hunantv/imgo/data/ErrorData;

    invoke-direct {p2}, Lcom/hunantv/imgo/data/ErrorData;-><init>()V

    .line 39
    invoke-virtual {p2, p4}, Lcom/hunantv/imgo/data/ErrorData;->setMsg(Ljava/lang/String;)V

    .line 40
    iget-object p4, p0, Lcom/mgtv/thirdsdk/playcore/e/g$2;->b:Ljava/lang/String;

    invoke-virtual {p2, p4}, Lcom/hunantv/imgo/data/ErrorData;->setUrl(Ljava/lang/String;)V

    .line 41
    iget-object p4, p0, Lcom/mgtv/thirdsdk/playcore/e/g$2;->c:Lcom/mgtv/thirdsdk/playcore/e/g;

    invoke-static {p4}, Lcom/mgtv/thirdsdk/playcore/e/g;->b(Lcom/mgtv/thirdsdk/playcore/e/g;)Lcom/hunantv/imgo/net/ImgoHttpParams;

    move-result-object p4

    if-nez p4, :cond_a

    move-object p4, v7

    goto :goto_3

    :cond_a
    iget-object p4, p0, Lcom/mgtv/thirdsdk/playcore/e/g$2;->c:Lcom/mgtv/thirdsdk/playcore/e/g;

    invoke-static {p4}, Lcom/mgtv/thirdsdk/playcore/e/g;->b(Lcom/mgtv/thirdsdk/playcore/e/g;)Lcom/hunantv/imgo/net/ImgoHttpParams;

    move-result-object p4

    invoke-virtual {p4}, Lcom/mgtv/task/http/HttpParams;->buildParameter()Ljava/lang/String;

    move-result-object p4

    :goto_3
    invoke-virtual {p2, p4}, Lcom/hunantv/imgo/data/ErrorData;->setParam(Ljava/lang/String;)V

    .line 42
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/hunantv/imgo/data/ErrorData;->setCode(Ljava/lang/String;)V

    .line 43
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object p3

    invoke-virtual {p3, v6, p2}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a(ZLcom/hunantv/imgo/data/ErrorData;)V

    .line 44
    iget-object p2, p0, Lcom/mgtv/thirdsdk/playcore/e/g$2;->c:Lcom/mgtv/thirdsdk/playcore/e/g;

    invoke-static {p2}, Lcom/mgtv/thirdsdk/playcore/e/g;->e(Lcom/mgtv/thirdsdk/playcore/e/g;)Lcom/mgtv/ssp/c;

    move-result-object p2

    if-eqz p2, :cond_c

    if-eqz p1, :cond_b

    .line 45
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/e/g$2;->c:Lcom/mgtv/thirdsdk/playcore/e/g;

    invoke-static {p0}, Lcom/mgtv/thirdsdk/playcore/e/g;->e(Lcom/mgtv/thirdsdk/playcore/e/g;)Lcom/mgtv/ssp/c;

    move-result-object p0

    iget-object p2, p1, Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;->videoId:Ljava/lang/String;

    iget-object p1, p1, Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;->videoName:Ljava/lang/String;

    invoke-interface {p0, v6, p2, p1}, Lcom/mgtv/ssp/c;->a(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 46
    :cond_b
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/e/g$2;->c:Lcom/mgtv/thirdsdk/playcore/e/g;

    invoke-static {p0}, Lcom/mgtv/thirdsdk/playcore/e/g;->e(Lcom/mgtv/thirdsdk/playcore/e/g;)Lcom/mgtv/ssp/c;

    move-result-object p0

    invoke-interface {p0, v6, v7, v7}, Lcom/mgtv/ssp/c;->a(ZLjava/lang/String;Ljava/lang/String;)V

    :cond_c
    :goto_4
    return-void

    :cond_d
    const/16 p2, 0x2728

    const/16 v2, 0x2725

    if-eq p3, p2, :cond_18

    const/16 p2, 0x2718

    if-eq p3, p2, :cond_18

    if-ne p3, v2, :cond_e

    goto/16 :goto_a

    .line 47
    :cond_e
    new-instance p2, Lcom/hunantv/imgo/data/ErrorData;

    invoke-direct {p2}, Lcom/hunantv/imgo/data/ErrorData;-><init>()V

    .line 48
    invoke-virtual {p2, p4}, Lcom/hunantv/imgo/data/ErrorData;->setMsg(Ljava/lang/String;)V

    .line 49
    iget-object p5, p0, Lcom/mgtv/thirdsdk/playcore/e/g$2;->b:Ljava/lang/String;

    invoke-virtual {p2, p5}, Lcom/hunantv/imgo/data/ErrorData;->setUrl(Ljava/lang/String;)V

    .line 50
    iget-object p5, p0, Lcom/mgtv/thirdsdk/playcore/e/g$2;->c:Lcom/mgtv/thirdsdk/playcore/e/g;

    invoke-static {p5}, Lcom/mgtv/thirdsdk/playcore/e/g;->b(Lcom/mgtv/thirdsdk/playcore/e/g;)Lcom/hunantv/imgo/net/ImgoHttpParams;

    move-result-object p5

    if-nez p5, :cond_f

    move-object p5, v7

    goto :goto_5

    :cond_f
    iget-object p5, p0, Lcom/mgtv/thirdsdk/playcore/e/g$2;->c:Lcom/mgtv/thirdsdk/playcore/e/g;

    invoke-static {p5}, Lcom/mgtv/thirdsdk/playcore/e/g;->b(Lcom/mgtv/thirdsdk/playcore/e/g;)Lcom/hunantv/imgo/net/ImgoHttpParams;

    move-result-object p5

    invoke-virtual {p5}, Lcom/mgtv/task/http/HttpParams;->buildParameter()Ljava/lang/String;

    move-result-object p5

    :goto_5
    invoke-virtual {p2, p5}, Lcom/hunantv/imgo/data/ErrorData;->setParam(Ljava/lang/String;)V

    .line 51
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p2, p5}, Lcom/hunantv/imgo/data/ErrorData;->setCode(Ljava/lang/String;)V

    const/16 p5, 0x2726

    if-ne p3, p5, :cond_13

    .line 52
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object p3

    invoke-virtual {p3, v0, v1}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a(ZLcom/hunantv/imgo/net/entity/b;)V

    .line 53
    iget-object p3, p0, Lcom/mgtv/thirdsdk/playcore/e/g$2;->c:Lcom/mgtv/thirdsdk/playcore/e/g;

    invoke-static {p3}, Lcom/mgtv/thirdsdk/playcore/e/g;->a(Lcom/mgtv/thirdsdk/playcore/e/g;)Lcom/mgtv/thirdsdk/playcore/e;

    move-result-object p3

    iget-object p3, p3, Lcom/mgtv/thirdsdk/playcore/e;->K:Lcom/hunantv/imgo/net/entity/a;

    iget-object p3, p3, Lcom/hunantv/imgo/net/entity/a;->d:Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;

    iget-object p3, p3, Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;->videoSources:Ljava/util/List;

    invoke-static {p3}, Lcom/hunantv/imgo/util/l;->a(Ljava/util/List;)Z

    move-result p3

    if-nez p3, :cond_10

    iget-object p3, p0, Lcom/mgtv/thirdsdk/playcore/e/g$2;->c:Lcom/mgtv/thirdsdk/playcore/e/g;

    .line 54
    invoke-static {p3}, Lcom/mgtv/thirdsdk/playcore/e/g;->a(Lcom/mgtv/thirdsdk/playcore/e/g;)Lcom/mgtv/thirdsdk/playcore/e;

    move-result-object p3

    iget-object p3, p3, Lcom/mgtv/thirdsdk/playcore/e;->l:Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;

    if-eqz p3, :cond_10

    iget-object p3, p0, Lcom/mgtv/thirdsdk/playcore/e/g$2;->c:Lcom/mgtv/thirdsdk/playcore/e/g;

    .line 55
    invoke-static {p3}, Lcom/mgtv/thirdsdk/playcore/e/g;->a(Lcom/mgtv/thirdsdk/playcore/e/g;)Lcom/mgtv/thirdsdk/playcore/e;

    move-result-object p3

    iget-object p3, p3, Lcom/mgtv/thirdsdk/playcore/e;->l:Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;

    iget-object p3, p3, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;->url:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_10

    .line 56
    iget-object p3, p0, Lcom/mgtv/thirdsdk/playcore/e/g$2;->c:Lcom/mgtv/thirdsdk/playcore/e/g;

    invoke-static {p3}, Lcom/mgtv/thirdsdk/playcore/e/g;->a(Lcom/mgtv/thirdsdk/playcore/e/g;)Lcom/mgtv/thirdsdk/playcore/e;

    move-result-object p4

    iget-object p4, p4, Lcom/mgtv/thirdsdk/playcore/e;->K:Lcom/hunantv/imgo/net/entity/a;

    iget-object p4, p4, Lcom/hunantv/imgo/net/entity/a;->d:Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;

    invoke-static {p3, p4, v1}, Lcom/mgtv/thirdsdk/playcore/e/g;->a(Lcom/mgtv/thirdsdk/playcore/e/g;Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;Lcom/hunantv/imgo/net/entity/b;)V

    .line 57
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object p3

    invoke-virtual {p3, v0, p2}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a(ZLcom/hunantv/imgo/data/ErrorData;)V

    goto :goto_6

    .line 58
    :cond_10
    iget-object p3, p0, Lcom/mgtv/thirdsdk/playcore/e/g$2;->c:Lcom/mgtv/thirdsdk/playcore/e/g;

    invoke-static {p3, p4}, Lcom/mgtv/thirdsdk/playcore/e/g;->a(Lcom/mgtv/thirdsdk/playcore/e/g;Ljava/lang/String;)V

    .line 59
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object p3

    invoke-virtual {p3, v6, p2}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a(ZLcom/hunantv/imgo/data/ErrorData;)V

    .line 60
    :goto_6
    iget-object p2, p0, Lcom/mgtv/thirdsdk/playcore/e/g$2;->c:Lcom/mgtv/thirdsdk/playcore/e/g;

    invoke-static {p2}, Lcom/mgtv/thirdsdk/playcore/e/g;->e(Lcom/mgtv/thirdsdk/playcore/e/g;)Lcom/mgtv/ssp/c;

    move-result-object p2

    if-eqz p2, :cond_12

    if-eqz p1, :cond_11

    .line 61
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/e/g$2;->c:Lcom/mgtv/thirdsdk/playcore/e/g;

    invoke-static {p0}, Lcom/mgtv/thirdsdk/playcore/e/g;->e(Lcom/mgtv/thirdsdk/playcore/e/g;)Lcom/mgtv/ssp/c;

    move-result-object p0

    iget-object p2, p1, Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;->videoId:Ljava/lang/String;

    iget-object p1, p1, Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;->videoName:Ljava/lang/String;

    invoke-interface {p0, v6, p2, p1}, Lcom/mgtv/ssp/c;->a(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 62
    :cond_11
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/e/g$2;->c:Lcom/mgtv/thirdsdk/playcore/e/g;

    invoke-static {p0}, Lcom/mgtv/thirdsdk/playcore/e/g;->e(Lcom/mgtv/thirdsdk/playcore/e/g;)Lcom/mgtv/ssp/c;

    move-result-object p0

    invoke-interface {p0, v6, v7, v7}, Lcom/mgtv/ssp/c;->a(ZLjava/lang/String;Ljava/lang/String;)V

    :cond_12
    :goto_7
    return-void

    .line 63
    :cond_13
    iget-object p5, p0, Lcom/mgtv/thirdsdk/playcore/e/g$2;->c:Lcom/mgtv/thirdsdk/playcore/e/g;

    invoke-static {p5}, Lcom/mgtv/thirdsdk/playcore/e/g;->d(Lcom/mgtv/thirdsdk/playcore/e/g;)Lcom/mgtv/thirdsdk/playcore/c$b;

    move-result-object p5

    if-eqz p5, :cond_15

    const/16 p5, 0x2711

    if-ne p3, p5, :cond_14

    .line 64
    iget-object p5, p0, Lcom/mgtv/thirdsdk/playcore/e/g$2;->c:Lcom/mgtv/thirdsdk/playcore/e/g;

    invoke-static {p5}, Lcom/mgtv/thirdsdk/playcore/e/g;->d(Lcom/mgtv/thirdsdk/playcore/e/g;)Lcom/mgtv/thirdsdk/playcore/c$b;

    move-result-object p5

    const-string v0, "110110"

    invoke-interface {p5, v0, p4}, Lcom/mgtv/thirdsdk/playcore/c$b;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 65
    :cond_14
    iget-object p5, p0, Lcom/mgtv/thirdsdk/playcore/e/g$2;->c:Lcom/mgtv/thirdsdk/playcore/e/g;

    invoke-static {p5}, Lcom/mgtv/thirdsdk/playcore/e/g;->d(Lcom/mgtv/thirdsdk/playcore/e/g;)Lcom/mgtv/thirdsdk/playcore/c$b;

    move-result-object p5

    const-string v0, "110101"

    invoke-interface {p5, v0, p4}, Lcom/mgtv/thirdsdk/playcore/c$b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    :cond_15
    :goto_8
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object p5

    invoke-virtual {p5, v6, v1}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a(ZLcom/hunantv/imgo/net/entity/b;)V

    .line 67
    invoke-virtual {p2, p4}, Lcom/hunantv/imgo/data/ErrorData;->setMsg(Ljava/lang/String;)V

    .line 68
    iget-object p4, p0, Lcom/mgtv/thirdsdk/playcore/e/g$2;->b:Ljava/lang/String;

    invoke-virtual {p2, p4}, Lcom/hunantv/imgo/data/ErrorData;->setUrl(Ljava/lang/String;)V

    .line 69
    iget-object p4, p0, Lcom/mgtv/thirdsdk/playcore/e/g$2;->c:Lcom/mgtv/thirdsdk/playcore/e/g;

    invoke-static {p4}, Lcom/mgtv/thirdsdk/playcore/e/g;->b(Lcom/mgtv/thirdsdk/playcore/e/g;)Lcom/hunantv/imgo/net/ImgoHttpParams;

    move-result-object p4

    if-nez p4, :cond_16

    move-object p4, v7

    goto :goto_9

    :cond_16
    iget-object p4, p0, Lcom/mgtv/thirdsdk/playcore/e/g$2;->c:Lcom/mgtv/thirdsdk/playcore/e/g;

    invoke-static {p4}, Lcom/mgtv/thirdsdk/playcore/e/g;->b(Lcom/mgtv/thirdsdk/playcore/e/g;)Lcom/hunantv/imgo/net/ImgoHttpParams;

    move-result-object p4

    invoke-virtual {p4}, Lcom/mgtv/task/http/HttpParams;->buildParameter()Ljava/lang/String;

    move-result-object p4

    :goto_9
    invoke-virtual {p2, p4}, Lcom/hunantv/imgo/data/ErrorData;->setParam(Ljava/lang/String;)V

    .line 70
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/hunantv/imgo/data/ErrorData;->setCode(Ljava/lang/String;)V

    .line 71
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object p3

    invoke-virtual {p3, v6, p2}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a(ZLcom/hunantv/imgo/data/ErrorData;)V

    .line 72
    iget-object p2, p0, Lcom/mgtv/thirdsdk/playcore/e/g$2;->c:Lcom/mgtv/thirdsdk/playcore/e/g;

    invoke-static {p2}, Lcom/mgtv/thirdsdk/playcore/e/g;->e(Lcom/mgtv/thirdsdk/playcore/e/g;)Lcom/mgtv/ssp/c;

    move-result-object p2

    if-eqz p2, :cond_23

    if-eqz p1, :cond_17

    .line 73
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/e/g$2;->c:Lcom/mgtv/thirdsdk/playcore/e/g;

    invoke-static {p0}, Lcom/mgtv/thirdsdk/playcore/e/g;->e(Lcom/mgtv/thirdsdk/playcore/e/g;)Lcom/mgtv/ssp/c;

    move-result-object p0

    iget-object p2, p1, Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;->videoId:Ljava/lang/String;

    iget-object p1, p1, Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;->videoName:Ljava/lang/String;

    invoke-interface {p0, v6, p2, p1}, Lcom/mgtv/ssp/c;->a(ZLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_10

    .line 74
    :cond_17
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/e/g$2;->c:Lcom/mgtv/thirdsdk/playcore/e/g;

    invoke-static {p0}, Lcom/mgtv/thirdsdk/playcore/e/g;->e(Lcom/mgtv/thirdsdk/playcore/e/g;)Lcom/mgtv/ssp/c;

    move-result-object p0

    invoke-interface {p0, v6, v7, v7}, Lcom/mgtv/ssp/c;->a(ZLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_10

    .line 75
    :cond_18
    :goto_a
    iget-object p2, p0, Lcom/mgtv/thirdsdk/playcore/e/g$2;->c:Lcom/mgtv/thirdsdk/playcore/e/g;

    invoke-static {p2}, Lcom/mgtv/thirdsdk/playcore/e/g;->d(Lcom/mgtv/thirdsdk/playcore/e/g;)Lcom/mgtv/thirdsdk/playcore/c$b;

    move-result-object p2

    if-eqz p2, :cond_1a

    if-ne p3, v2, :cond_19

    .line 76
    iget-object p2, p0, Lcom/mgtv/thirdsdk/playcore/e/g$2;->c:Lcom/mgtv/thirdsdk/playcore/e/g;

    invoke-static {p2}, Lcom/mgtv/thirdsdk/playcore/e/g;->d(Lcom/mgtv/thirdsdk/playcore/e/g;)Lcom/mgtv/thirdsdk/playcore/c$b;

    move-result-object p2

    invoke-interface {p2, p5, p4}, Lcom/mgtv/thirdsdk/playcore/c$b;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    .line 77
    :cond_19
    iget-object p2, p0, Lcom/mgtv/thirdsdk/playcore/e/g$2;->c:Lcom/mgtv/thirdsdk/playcore/e/g;

    invoke-static {p2}, Lcom/mgtv/thirdsdk/playcore/e/g;->d(Lcom/mgtv/thirdsdk/playcore/e/g;)Lcom/mgtv/thirdsdk/playcore/c$b;

    move-result-object p2

    const-string p5, "110104"

    invoke-interface {p2, p5, p4}, Lcom/mgtv/thirdsdk/playcore/c$b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    :cond_1a
    :goto_b
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object p2

    invoke-virtual {p2, v0, v1}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a(ZLcom/hunantv/imgo/net/entity/b;)V

    .line 79
    new-instance p2, Lcom/hunantv/imgo/data/ErrorData;

    invoke-direct {p2}, Lcom/hunantv/imgo/data/ErrorData;-><init>()V

    .line 80
    invoke-virtual {p2, p4}, Lcom/hunantv/imgo/data/ErrorData;->setMsg(Ljava/lang/String;)V

    .line 81
    iget-object p4, p0, Lcom/mgtv/thirdsdk/playcore/e/g$2;->b:Ljava/lang/String;

    invoke-virtual {p2, p4}, Lcom/hunantv/imgo/data/ErrorData;->setUrl(Ljava/lang/String;)V

    .line 82
    iget-object p4, p0, Lcom/mgtv/thirdsdk/playcore/e/g$2;->c:Lcom/mgtv/thirdsdk/playcore/e/g;

    invoke-static {p4}, Lcom/mgtv/thirdsdk/playcore/e/g;->b(Lcom/mgtv/thirdsdk/playcore/e/g;)Lcom/hunantv/imgo/net/ImgoHttpParams;

    move-result-object p4

    if-nez p4, :cond_1b

    move-object p4, v7

    goto :goto_c

    :cond_1b
    iget-object p4, p0, Lcom/mgtv/thirdsdk/playcore/e/g$2;->c:Lcom/mgtv/thirdsdk/playcore/e/g;

    invoke-static {p4}, Lcom/mgtv/thirdsdk/playcore/e/g;->b(Lcom/mgtv/thirdsdk/playcore/e/g;)Lcom/hunantv/imgo/net/ImgoHttpParams;

    move-result-object p4

    invoke-virtual {p4}, Lcom/mgtv/task/http/HttpParams;->buildParameter()Ljava/lang/String;

    move-result-object p4

    :goto_c
    invoke-virtual {p2, p4}, Lcom/hunantv/imgo/data/ErrorData;->setParam(Ljava/lang/String;)V

    .line 83
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/hunantv/imgo/data/ErrorData;->setCode(Ljava/lang/String;)V

    .line 84
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object p3

    invoke-virtual {p3, v6, p2}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a(ZLcom/hunantv/imgo/data/ErrorData;)V

    .line 85
    iget-object p2, p0, Lcom/mgtv/thirdsdk/playcore/e/g$2;->c:Lcom/mgtv/thirdsdk/playcore/e/g;

    invoke-static {p2}, Lcom/mgtv/thirdsdk/playcore/e/g;->e(Lcom/mgtv/thirdsdk/playcore/e/g;)Lcom/mgtv/ssp/c;

    move-result-object p2

    if-eqz p2, :cond_1d

    if-eqz p1, :cond_1c

    .line 86
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/e/g$2;->c:Lcom/mgtv/thirdsdk/playcore/e/g;

    invoke-static {p0}, Lcom/mgtv/thirdsdk/playcore/e/g;->e(Lcom/mgtv/thirdsdk/playcore/e/g;)Lcom/mgtv/ssp/c;

    move-result-object p0

    iget-object p2, p1, Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;->videoId:Ljava/lang/String;

    iget-object p1, p1, Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;->videoName:Ljava/lang/String;

    invoke-interface {p0, v6, p2, p1}, Lcom/mgtv/ssp/c;->a(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    .line 87
    :cond_1c
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/e/g$2;->c:Lcom/mgtv/thirdsdk/playcore/e/g;

    invoke-static {p0}, Lcom/mgtv/thirdsdk/playcore/e/g;->e(Lcom/mgtv/thirdsdk/playcore/e/g;)Lcom/mgtv/ssp/c;

    move-result-object p0

    invoke-interface {p0, v6, v7, v7}, Lcom/mgtv/ssp/c;->a(ZLjava/lang/String;Ljava/lang/String;)V

    :cond_1d
    :goto_d
    return-void

    .line 88
    :cond_1e
    iget-object v3, p0, Lcom/mgtv/thirdsdk/playcore/e/g$2;->c:Lcom/mgtv/thirdsdk/playcore/e/g;

    invoke-static {v3}, Lcom/mgtv/thirdsdk/playcore/e/g;->d(Lcom/mgtv/thirdsdk/playcore/e/g;)Lcom/mgtv/thirdsdk/playcore/c$b;

    move-result-object v3

    if-eqz v3, :cond_1f

    .line 89
    iget-object v3, p0, Lcom/mgtv/thirdsdk/playcore/e/g$2;->c:Lcom/mgtv/thirdsdk/playcore/e/g;

    invoke-static {v3}, Lcom/mgtv/thirdsdk/playcore/e/g;->d(Lcom/mgtv/thirdsdk/playcore/e/g;)Lcom/mgtv/thirdsdk/playcore/c$b;

    move-result-object v3

    const-string v4, "110105"

    invoke-interface {v3, v4, p4}, Lcom/mgtv/thirdsdk/playcore/c$b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-static {}, Lcom/mgtv/thirdsdk/playcore/e/g;->b()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "httpStatus:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/hunantv/imgo/log/e;->b(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 91
    :cond_1f
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/g$2;->c:Lcom/mgtv/thirdsdk/playcore/e/g;

    invoke-static {v0}, Lcom/mgtv/thirdsdk/playcore/e/g;->e(Lcom/mgtv/thirdsdk/playcore/e/g;)Lcom/mgtv/ssp/c;

    move-result-object v0

    if-eqz v0, :cond_21

    if-eqz p1, :cond_20

    .line 92
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/g$2;->c:Lcom/mgtv/thirdsdk/playcore/e/g;

    invoke-static {v0}, Lcom/mgtv/thirdsdk/playcore/e/g;->e(Lcom/mgtv/thirdsdk/playcore/e/g;)Lcom/mgtv/ssp/c;

    move-result-object v0

    iget-object v3, p1, Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;->videoId:Ljava/lang/String;

    iget-object p1, p1, Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;->videoName:Ljava/lang/String;

    invoke-interface {v0, v6, v3, p1}, Lcom/mgtv/ssp/c;->a(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    .line 93
    :cond_20
    iget-object p1, p0, Lcom/mgtv/thirdsdk/playcore/e/g$2;->c:Lcom/mgtv/thirdsdk/playcore/e/g;

    invoke-static {p1}, Lcom/mgtv/thirdsdk/playcore/e/g;->e(Lcom/mgtv/thirdsdk/playcore/e/g;)Lcom/mgtv/ssp/c;

    move-result-object p1

    invoke-interface {p1, v6, v7, v7}, Lcom/mgtv/ssp/c;->a(ZLjava/lang/String;Ljava/lang/String;)V

    .line 94
    :cond_21
    :goto_e
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object p1

    invoke-virtual {p1, p2, v2, p5, v1}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a(ILjava/lang/String;Ljava/lang/Throwable;Lcom/hunantv/imgo/net/entity/b;)V

    .line 95
    new-instance p1, Lcom/hunantv/imgo/data/ErrorData;

    invoke-direct {p1}, Lcom/hunantv/imgo/data/ErrorData;-><init>()V

    .line 96
    invoke-virtual {p1, p4}, Lcom/hunantv/imgo/data/ErrorData;->setMsg(Ljava/lang/String;)V

    .line 97
    iget-object p2, p0, Lcom/mgtv/thirdsdk/playcore/e/g$2;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/hunantv/imgo/data/ErrorData;->setUrl(Ljava/lang/String;)V

    .line 98
    iget-object p2, p0, Lcom/mgtv/thirdsdk/playcore/e/g$2;->c:Lcom/mgtv/thirdsdk/playcore/e/g;

    invoke-static {p2}, Lcom/mgtv/thirdsdk/playcore/e/g;->b(Lcom/mgtv/thirdsdk/playcore/e/g;)Lcom/hunantv/imgo/net/ImgoHttpParams;

    move-result-object p2

    if-nez p2, :cond_22

    move-object p0, v7

    goto :goto_f

    :cond_22
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/e/g$2;->c:Lcom/mgtv/thirdsdk/playcore/e/g;

    invoke-static {p0}, Lcom/mgtv/thirdsdk/playcore/e/g;->b(Lcom/mgtv/thirdsdk/playcore/e/g;)Lcom/hunantv/imgo/net/ImgoHttpParams;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mgtv/task/http/HttpParams;->buildParameter()Ljava/lang/String;

    move-result-object p0

    :goto_f
    invoke-virtual {p1, p0}, Lcom/hunantv/imgo/data/ErrorData;->setParam(Ljava/lang/String;)V

    .line 99
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/hunantv/imgo/data/ErrorData;->setCode(Ljava/lang/String;)V

    .line 100
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object p0

    invoke-virtual {p0, v6, p1}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a(ZLcom/hunantv/imgo/data/ErrorData;)V

    :cond_23
    :goto_10
    return-void
.end method

.method public synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p1, Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;

    invoke-virtual {p0, p1}, Lcom/mgtv/thirdsdk/playcore/e/g$2;->b(Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;IILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 3
    check-cast p1, Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;

    invoke-virtual/range {p0 .. p5}, Lcom/mgtv/thirdsdk/playcore/e/g$2;->a(Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;IILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public b(Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;)V
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 2
    invoke-static {}, Lcom/mgtv/thirdsdk/playcore/e/g;->b()Ljava/lang/String;

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
    iget-object v2, p0, Lcom/mgtv/thirdsdk/playcore/e/g$2;->c:Lcom/mgtv/thirdsdk/playcore/e/g;

    invoke-static {v2, p1}, Lcom/mgtv/thirdsdk/playcore/e/g;->a(Lcom/mgtv/thirdsdk/playcore/e/g;Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;)V

    .line 4
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object v2

    iget-object v3, p1, Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;->videoId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->m(Ljava/lang/String;)V

    .line 5
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object v2

    iget-object v3, p1, Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;->clipId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->o(Ljava/lang/String;)V

    .line 6
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a(Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;)V

    .line 7
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

    iget-object v3, p0, Lcom/mgtv/thirdsdk/playcore/e/g$2;->c:Lcom/mgtv/thirdsdk/playcore/e/g;

    invoke-static {v3}, Lcom/mgtv/thirdsdk/playcore/e/g;->a(Lcom/mgtv/thirdsdk/playcore/e/g;)Lcom/mgtv/thirdsdk/playcore/e;

    move-result-object v3

    iget-boolean v3, v3, Lcom/mgtv/thirdsdk/playcore/e;->aF:Z

    if-nez v3, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v0

    :goto_0
    invoke-virtual {v2, v3}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a(Z)V

    .line 8
    :cond_1
    invoke-virtual {p0}, Lcom/mgtv/task/http/c;->e()Lcom/mgtv/task/http/HttpTraceObject;

    move-result-object v2

    .line 9
    invoke-static {}, Lcom/mgtv/thirdsdk/playcore/e/g;->b()Ljava/lang/String;

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

    .line 10
    invoke-static {}, Lcom/mgtv/thirdsdk/playcore/e/g;->b()Ljava/lang/String;

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

    .line 11
    invoke-static {}, Lcom/mgtv/thirdsdk/playcore/e/g;->b()Ljava/lang/String;

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

    .line 12
    invoke-static {}, Lcom/mgtv/thirdsdk/playcore/e/g;->b()Ljava/lang/String;

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

    .line 13
    invoke-static {}, Lcom/mgtv/thirdsdk/playcore/e/g;->b()Ljava/lang/String;

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

    .line 14
    :cond_2
    iget-object v3, p1, Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;->videoSources:Ljava/util/List;

    .line 15
    :goto_1
    new-instance v9, Lcom/hunantv/imgo/net/entity/b;

    invoke-direct {v9}, Lcom/hunantv/imgo/net/entity/b;-><init>()V

    .line 16
    invoke-virtual {p0}, Lcom/mgtv/task/http/c;->e()Lcom/mgtv/task/http/HttpTraceObject;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/mgtv/task/http/HttpTraceObject;->getStepDuration(I)J

    move-result-wide v4

    iput-wide v4, v9, Lcom/hunantv/imgo/net/entity/b;->a:J

    .line 17
    invoke-virtual {p0}, Lcom/mgtv/task/http/c;->e()Lcom/mgtv/task/http/HttpTraceObject;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mgtv/task/http/HttpTraceObject;->getFinalUrl()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v9, Lcom/hunantv/imgo/net/entity/b;->b:Ljava/lang/String;

    .line 18
    iget-object v4, p0, Lcom/mgtv/thirdsdk/playcore/e/g$2;->c:Lcom/mgtv/thirdsdk/playcore/e/g;

    invoke-static {v4}, Lcom/mgtv/thirdsdk/playcore/e/g;->b(Lcom/mgtv/thirdsdk/playcore/e/g;)Lcom/hunantv/imgo/net/ImgoHttpParams;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mgtv/task/http/HttpParams;->getParams()Ljava/util/Map;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 19
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/mgtv/thirdsdk/playcore/e/g$2;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/mgtv/thirdsdk/playcore/e/g$2;->c:Lcom/mgtv/thirdsdk/playcore/e/g;

    invoke-static {v5}, Lcom/mgtv/thirdsdk/playcore/e/g;->b(Lcom/mgtv/thirdsdk/playcore/e/g;)Lcom/hunantv/imgo/net/ImgoHttpParams;

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

    .line 20
    :goto_2
    const-string v10, ""

    if-eqz v3, :cond_8

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_8

    .line 21
    iget v3, p1, Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;->qualityEnhanceFilter:I

    if-ne v3, v1, :cond_4

    .line 22
    iget-object v3, p0, Lcom/mgtv/thirdsdk/playcore/e/g$2;->c:Lcom/mgtv/thirdsdk/playcore/e/g;

    invoke-static {v3}, Lcom/mgtv/thirdsdk/playcore/e/g;->c(Lcom/mgtv/thirdsdk/playcore/e/g;)Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    move-result-object v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/mgtv/thirdsdk/playcore/e/g$2;->c:Lcom/mgtv/thirdsdk/playcore/e/g;

    invoke-static {v3}, Lcom/mgtv/thirdsdk/playcore/e/g;->c(Lcom/mgtv/thirdsdk/playcore/e/g;)Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->getVideoPlayer()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 23
    iget-object v3, p0, Lcom/mgtv/thirdsdk/playcore/e/g$2;->c:Lcom/mgtv/thirdsdk/playcore/e/g;

    invoke-static {v3}, Lcom/mgtv/thirdsdk/playcore/e/g;->c(Lcom/mgtv/thirdsdk/playcore/e/g;)Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->getVideoPlayer()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->setForceDecodeMode(Z)V

    .line 24
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/g$2;->c:Lcom/mgtv/thirdsdk/playcore/e/g;

    invoke-static {v0}, Lcom/mgtv/thirdsdk/playcore/e/g;->c(Lcom/mgtv/thirdsdk/playcore/e/g;)Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->getVideoPlayer()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    move-result-object v0

    sget-object v3, Lcom/hunantv/media/widget/IVideoView$RenderFilter;->UNSHARP_EDGE:Lcom/hunantv/media/widget/IVideoView$RenderFilter;

    invoke-virtual {v0, v3}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->setRenderFilter(Lcom/hunantv/media/widget/IVideoView$RenderFilter;)V

    goto :goto_3

    .line 25
    :cond_4
    iget-object v3, p0, Lcom/mgtv/thirdsdk/playcore/e/g$2;->c:Lcom/mgtv/thirdsdk/playcore/e/g;

    invoke-static {v3}, Lcom/mgtv/thirdsdk/playcore/e/g;->c(Lcom/mgtv/thirdsdk/playcore/e/g;)Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    move-result-object v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/mgtv/thirdsdk/playcore/e/g$2;->c:Lcom/mgtv/thirdsdk/playcore/e/g;

    invoke-static {v3}, Lcom/mgtv/thirdsdk/playcore/e/g;->c(Lcom/mgtv/thirdsdk/playcore/e/g;)Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->getVideoPlayer()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 26
    iget-object v3, p0, Lcom/mgtv/thirdsdk/playcore/e/g$2;->c:Lcom/mgtv/thirdsdk/playcore/e/g;

    invoke-static {v3}, Lcom/mgtv/thirdsdk/playcore/e/g;->c(Lcom/mgtv/thirdsdk/playcore/e/g;)Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->getVideoPlayer()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->setForceDecodeMode(Z)V

    .line 27
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/g$2;->c:Lcom/mgtv/thirdsdk/playcore/e/g;

    invoke-static {v0}, Lcom/mgtv/thirdsdk/playcore/e/g;->c(Lcom/mgtv/thirdsdk/playcore/e/g;)Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->getVideoPlayer()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    move-result-object v0

    sget-object v3, Lcom/hunantv/media/widget/IVideoView$RenderFilter;->NORMAL:Lcom/hunantv/media/widget/IVideoView$RenderFilter;

    invoke-virtual {v0, v3}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->setRenderFilter(Lcom/hunantv/media/widget/IVideoView$RenderFilter;)V

    .line 28
    :cond_5
    :goto_3
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/g$2;->c:Lcom/mgtv/thirdsdk/playcore/e/g;

    iget-object v3, p1, Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;->user:Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity$User;

    invoke-static {v0, v3}, Lcom/mgtv/thirdsdk/playcore/e/g;->a(Lcom/mgtv/thirdsdk/playcore/e/g;Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity$User;)V

    .line 29
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/g$2;->c:Lcom/mgtv/thirdsdk/playcore/e/g;

    iget-object v3, p1, Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;->user:Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity$User;

    invoke-static {v0, v3}, Lcom/mgtv/thirdsdk/playcore/e/g;->b(Lcom/mgtv/thirdsdk/playcore/e/g;Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity$User;)V

    .line 30
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/g$2;->c:Lcom/mgtv/thirdsdk/playcore/e/g;

    invoke-static {v0}, Lcom/mgtv/thirdsdk/playcore/e/g;->d(Lcom/mgtv/thirdsdk/playcore/e/g;)Lcom/mgtv/thirdsdk/playcore/c$b;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 31
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/g$2;->c:Lcom/mgtv/thirdsdk/playcore/e/g;

    invoke-static {v0}, Lcom/mgtv/thirdsdk/playcore/e/g;->d(Lcom/mgtv/thirdsdk/playcore/e/g;)Lcom/mgtv/thirdsdk/playcore/c$b;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/mgtv/thirdsdk/playcore/c$b;->a(I)V

    .line 32
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/g$2;->c:Lcom/mgtv/thirdsdk/playcore/e/g;

    invoke-virtual {v0, v1, v9}, Lcom/mgtv/thirdsdk/playcore/e/g;->a(ZLcom/hunantv/imgo/net/entity/b;)V

    .line 33
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/g$2;->c:Lcom/mgtv/thirdsdk/playcore/e/g;

    invoke-static {v0}, Lcom/mgtv/thirdsdk/playcore/e/g;->d(Lcom/mgtv/thirdsdk/playcore/e/g;)Lcom/mgtv/thirdsdk/playcore/c$b;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 34
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/g$2;->c:Lcom/mgtv/thirdsdk/playcore/e/g;

    invoke-static {v0}, Lcom/mgtv/thirdsdk/playcore/e/g;->d(Lcom/mgtv/thirdsdk/playcore/e/g;)Lcom/mgtv/thirdsdk/playcore/c$b;

    move-result-object v0

    const/high16 v3, 0x10000

    invoke-interface {v0, v3}, Lcom/mgtv/thirdsdk/playcore/c$b;->b(I)V

    .line 35
    :cond_6
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/g$2;->c:Lcom/mgtv/thirdsdk/playcore/e/g;

    invoke-static {v0}, Lcom/mgtv/thirdsdk/playcore/e/g;->e(Lcom/mgtv/thirdsdk/playcore/e/g;)Lcom/mgtv/ssp/c;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 36
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/e/g$2;->c:Lcom/mgtv/thirdsdk/playcore/e/g;

    invoke-static {p0}, Lcom/mgtv/thirdsdk/playcore/e/g;->e(Lcom/mgtv/thirdsdk/playcore/e/g;)Lcom/mgtv/ssp/c;

    move-result-object p0

    iget-object v0, p1, Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;->videoId:Ljava/lang/String;

    iget-object p1, p1, Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;->videoName:Ljava/lang/String;

    invoke-interface {p0, v1, v0, p1}, Lcom/mgtv/ssp/c;->a(ZLjava/lang/String;Ljava/lang/String;)V

    .line 37
    :cond_7
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object p0

    invoke-virtual {p0, v10, v6, v9}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a(Ljava/lang/String;Ljava/lang/String;Lcom/hunantv/imgo/net/entity/b;)V

    .line 38
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object p0

    invoke-virtual {p0, v1, v2}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a(ZLcom/hunantv/imgo/data/ErrorData;)V

    goto/16 :goto_5

    .line 39
    :cond_8
    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/e/g$2;->c:Lcom/mgtv/thirdsdk/playcore/e/g;

    invoke-static {v1}, Lcom/mgtv/thirdsdk/playcore/e/g;->d(Lcom/mgtv/thirdsdk/playcore/e/g;)Lcom/mgtv/thirdsdk/playcore/c$b;

    move-result-object v1

    const-string v2, "110106"

    if-eqz v1, :cond_9

    .line 40
    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/e/g$2;->c:Lcom/mgtv/thirdsdk/playcore/e/g;

    invoke-static {v1}, Lcom/mgtv/thirdsdk/playcore/e/g;->d(Lcom/mgtv/thirdsdk/playcore/e/g;)Lcom/mgtv/thirdsdk/playcore/c$b;

    move-result-object v1

    invoke-static {}, Lcom/hunantv/imgo/BaseApplication;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/mgtv/ssp/R$string;->no_kandan:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/mgtv/thirdsdk/playcore/c$b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    :cond_9
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object v4

    const/4 v7, 0x1

    const/16 v8, 0xc8

    const-string v5, "102000"

    invoke-virtual/range {v4 .. v9}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a(Ljava/lang/String;Ljava/lang/String;ZILcom/hunantv/imgo/net/entity/b;)V

    .line 42
    new-instance v1, Lcom/hunantv/imgo/data/ErrorData;

    invoke-direct {v1}, Lcom/hunantv/imgo/data/ErrorData;-><init>()V

    .line 43
    const-string v3, "no data"

    invoke-virtual {v1, v3}, Lcom/hunantv/imgo/data/ErrorData;->setMsg(Ljava/lang/String;)V

    .line 44
    iget-object v3, p0, Lcom/mgtv/thirdsdk/playcore/e/g$2;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/hunantv/imgo/data/ErrorData;->setUrl(Ljava/lang/String;)V

    .line 45
    iget-object v3, p0, Lcom/mgtv/thirdsdk/playcore/e/g$2;->c:Lcom/mgtv/thirdsdk/playcore/e/g;

    invoke-static {v3}, Lcom/mgtv/thirdsdk/playcore/e/g;->b(Lcom/mgtv/thirdsdk/playcore/e/g;)Lcom/hunantv/imgo/net/ImgoHttpParams;

    move-result-object v3

    if-nez v3, :cond_a

    move-object v3, v10

    goto :goto_4

    :cond_a
    iget-object v3, p0, Lcom/mgtv/thirdsdk/playcore/e/g$2;->c:Lcom/mgtv/thirdsdk/playcore/e/g;

    invoke-static {v3}, Lcom/mgtv/thirdsdk/playcore/e/g;->b(Lcom/mgtv/thirdsdk/playcore/e/g;)Lcom/hunantv/imgo/net/ImgoHttpParams;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mgtv/task/http/HttpParams;->buildParameter()Ljava/lang/String;

    move-result-object v3

    :goto_4
    invoke-virtual {v1, v3}, Lcom/hunantv/imgo/data/ErrorData;->setParam(Ljava/lang/String;)V

    .line 46
    invoke-virtual {v1, v2}, Lcom/hunantv/imgo/data/ErrorData;->setCode(Ljava/lang/String;)V

    .line 47
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a(ZLcom/hunantv/imgo/data/ErrorData;)V

    .line 48
    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/e/g$2;->c:Lcom/mgtv/thirdsdk/playcore/e/g;

    invoke-static {v1}, Lcom/mgtv/thirdsdk/playcore/e/g;->e(Lcom/mgtv/thirdsdk/playcore/e/g;)Lcom/mgtv/ssp/c;

    move-result-object v1

    if-eqz v1, :cond_c

    if-eqz p1, :cond_b

    .line 49
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/e/g$2;->c:Lcom/mgtv/thirdsdk/playcore/e/g;

    invoke-static {p0}, Lcom/mgtv/thirdsdk/playcore/e/g;->e(Lcom/mgtv/thirdsdk/playcore/e/g;)Lcom/mgtv/ssp/c;

    move-result-object p0

    iget-object v1, p1, Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;->videoId:Ljava/lang/String;

    iget-object p1, p1, Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;->videoName:Ljava/lang/String;

    invoke-interface {p0, v0, v1, p1}, Lcom/mgtv/ssp/c;->a(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 50
    :cond_b
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/e/g$2;->c:Lcom/mgtv/thirdsdk/playcore/e/g;

    invoke-static {p0}, Lcom/mgtv/thirdsdk/playcore/e/g;->e(Lcom/mgtv/thirdsdk/playcore/e/g;)Lcom/mgtv/ssp/c;

    move-result-object p0

    invoke-interface {p0, v0, v10, v10}, Lcom/mgtv/ssp/c;->a(ZLjava/lang/String;Ljava/lang/String;)V

    :cond_c
    :goto_5
    return-void
.end method

.method public synthetic b(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;

    invoke-virtual {p0, p1}, Lcom/mgtv/thirdsdk/playcore/e/g$2;->a(Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;)V

    return-void
.end method
