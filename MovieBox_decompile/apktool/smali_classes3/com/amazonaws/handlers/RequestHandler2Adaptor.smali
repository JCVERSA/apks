.class final Lcom/amazonaws/handlers/RequestHandler2Adaptor;
.super Lcom/amazonaws/handlers/RequestHandler2;
.source "source.java"


# direct methods
.method constructor <init>(Lcom/amazonaws/handlers/RequestHandler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/amazonaws/handlers/RequestHandler2;-><init>()V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 8
    .line 9
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 10
    .line 11
    .line 12
    throw p1
.end method


# virtual methods
.method public b(Lcom/amazonaws/Request;Lcom/amazonaws/Response;Ljava/lang/Exception;)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    throw p1
.end method

.method public c(Lcom/amazonaws/Request;Lcom/amazonaws/Response;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    move-object p1, v0

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-interface {p1}, Lcom/amazonaws/Request;->b()Lcom/amazonaws/util/AWSRequestMetrics;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    :goto_0
    if-nez p2, :cond_1

    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_1
    invoke-virtual {p2}, Lcom/amazonaws/Response;->a()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    :goto_1
    if-nez p1, :cond_2

    .line 17
    .line 18
    goto :goto_2

    .line 19
    :cond_2
    invoke-virtual {p1}, Lcom/amazonaws/util/AWSRequestMetrics;->c()Lcom/amazonaws/util/TimingInfo;

    .line 20
    .line 21
    .line 22
    :goto_2
    throw v0
.end method

.method public d(Lcom/amazonaws/Request;)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/amazonaws/handlers/RequestHandler2Adaptor;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    return p1

    .line 7
    :cond_0
    check-cast p1, Lcom/amazonaws/handlers/RequestHandler2Adaptor;

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    throw p1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    throw v0
.end method
