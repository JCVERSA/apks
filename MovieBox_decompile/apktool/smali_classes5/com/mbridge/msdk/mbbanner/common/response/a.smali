.class public abstract Lcom/mbridge/msdk/mbbanner/common/response/a;
.super Lcom/mbridge/msdk/foundation/same/net/c;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mbridge/msdk/foundation/same/net/c<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/String; = "a"


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/mbridge/msdk/foundation/same/net/c;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/response/a;->a:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method static synthetic a(Lcom/mbridge/msdk/mbbanner/common/response/a;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mbridge/msdk/mbbanner/common/response/a;->a:Ljava/lang/String;

    return-object p0
.end method

.method private a(Ljava/util/List;Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mbridge/msdk/tracker/network/g;",
            ">;",
            "Lorg/json/JSONObject;",
            ")V"
        }
    .end annotation

    .line 3
    sget-object p1, Lcom/mbridge/msdk/mbbanner/common/response/a;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parseLoad content = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    const-string p1, "status"

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/mbridge/msdk/foundation/same/net/c;->calcRequestTime(J)V

    .line 6
    const-string v0, "version"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7
    new-instance v1, Lcom/mbridge/msdk/mbbanner/common/response/a$a;

    invoke-direct {v1, p0, v0, p2, p1}, Lcom/mbridge/msdk/mbbanner/common/response/a$a;-><init>(Lcom/mbridge/msdk/mbbanner/common/response/a;Ljava/lang/String;Lorg/json/JSONObject;I)V

    .line 8
    invoke-static {}, Lcom/mbridge/msdk/foundation/same/threadpool/a;->b()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 9
    :cond_0
    const-string v0, "msg"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/mbridge/msdk/mbbanner/common/response/a;->a(ILjava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public abstract a(ILjava/lang/String;)V
.end method

.method public abstract a(Lcom/mbridge/msdk/foundation/entity/CampaignUnit;)V
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/mbridge/msdk/mbbanner/common/response/a;->a:Ljava/lang/String;

    return-void
.end method

.method public onError(Lcom/mbridge/msdk/foundation/same/net/exception/a;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/mbridge/msdk/mbbanner/common/response/a;->b:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "onFailed errorCode = "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    iget v2, p1, Lcom/mbridge/msdk/foundation/same/net/exception/a;->a:I

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget v0, p1, Lcom/mbridge/msdk/foundation/same/net/exception/a;->a:I

    .line 26
    .line 27
    invoke-static {p1}, Lcom/mbridge/msdk/foundation/same/net/utils/a;->a(Lcom/mbridge/msdk/foundation/same/net/exception/a;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p0, v0, p1}, Lcom/mbridge/msdk/mbbanner/common/response/a;->a(ILjava/lang/String;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public onSuccess(Lcom/mbridge/msdk/foundation/same/net/e;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mbridge/msdk/foundation/same/net/e<",
            "Lorg/json/JSONObject;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/mbridge/msdk/foundation/same/net/c;->onSuccess(Lcom/mbridge/msdk/foundation/same/net/e;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, Lcom/mbridge/msdk/foundation/same/net/e;->b:Lcom/mbridge/msdk/foundation/same/net/toolbox/a;

    .line 5
    .line 6
    iget-object v0, v0, Lcom/mbridge/msdk/foundation/same/net/toolbox/a;->b:Ljava/util/List;

    .line 7
    .line 8
    iget-object p1, p1, Lcom/mbridge/msdk/foundation/same/net/e;->c:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p1, Lorg/json/JSONObject;

    .line 11
    .line 12
    invoke-direct {p0, v0, p1}, Lcom/mbridge/msdk/mbbanner/common/response/a;->a(Ljava/util/List;Lorg/json/JSONObject;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
