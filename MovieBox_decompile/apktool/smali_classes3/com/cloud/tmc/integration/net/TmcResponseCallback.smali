.class public abstract Lcom/cloud/tmc/integration/net/TmcResponseCallback;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/kernel/proxy/network/IResponseCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/cloud/tmc/kernel/proxy/network/IResponseCallback;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\u0008&\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u00020\u0002B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0016\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00052\u0006\u0010\u0007\u001a\u00020\u0008H\u0002J\u0008\u0010\t\u001a\u00020\nH&J.\u0010\u000b\u001a\u00020\u000c2\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00052\u0016\u0008\u0002\u0010\u000e\u001a\u0010\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u000fH&J$\u0010\u0011\u001a\u00020\u000c2\u0006\u0010\u0012\u001a\u00020\u00102\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u00102\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0010H\u0016J.\u0010\u0015\u001a\u00020\u000c2\u000c\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00052\u0016\u0008\u0002\u0010\u000e\u001a\u0010\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u000fH&JJ\u0010\u0015\u001a\u00020\u000c2\u0006\u0010\u0017\u001a\u00020\u00182\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u00102\u0014\u0010\u000e\u001a\u0010\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u000f2\u000e\u0010\u001a\u001a\n\u0012\u0004\u0012\u00020\u001c\u0018\u00010\u001b2\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0010H\u0016\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/cloud/tmc/integration/net/TmcResponseCallback;",
        "T",
        "Lcom/cloud/tmc/kernel/proxy/network/IResponseCallback;",
        "()V",
        "getFailBean",
        "Lcom/cloud/tmc/integration/net/BaseResponse;",
        "",
        "gatewayBean",
        "Lcom/cloud/tmc/integration/net/GatewayBean;",
        "getType",
        "Ljava/lang/reflect/Type;",
        "onFail",
        "",
        "fail",
        "headers",
        "",
        "",
        "onFailure",
        "errCode",
        "errMsg",
        "callbackId",
        "onSuccess",
        "bean",
        "responseCode",
        "",
        "responseStr",
        "cookies",
        "",
        "Lokhttp3/Cookie;",
        "com.cloud.tmc.integration"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final getFailBean(Lcom/cloud/tmc/integration/net/GatewayBean;)Lcom/cloud/tmc/integration/net/BaseResponse;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/integration/net/GatewayBean;",
            ")",
            "Lcom/cloud/tmc/integration/net/BaseResponse<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/cloud/tmc/integration/net/BaseResponse;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/net/GatewayBean;->getErrorMessage()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/net/GatewayBean;->getCallbackId()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const/4 v2, -0x4

    .line 12
    const/4 v3, 0x0

    .line 13
    invoke-direct {v0, v2, v3, v1, p1}, Lcom/cloud/tmc/integration/net/BaseResponse;-><init>(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method public static synthetic onFail$default(Lcom/cloud/tmc/integration/net/TmcResponseCallback;Lcom/cloud/tmc/integration/net/BaseResponse;Ljava/util/Map;ILjava/lang/Object;)V
    .locals 0

    .line 1
    if-nez p4, :cond_1

    .line 2
    .line 3
    and-int/lit8 p3, p3, 0x2

    .line 4
    .line 5
    if-eqz p3, :cond_0

    .line 6
    .line 7
    const/4 p2, 0x0

    .line 8
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/cloud/tmc/integration/net/TmcResponseCallback;->onFail(Lcom/cloud/tmc/integration/net/BaseResponse;Ljava/util/Map;)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 13
    .line 14
    const-string p1, "Super calls with default arguments not supported in this target, function: onFail"

    .line 15
    .line 16
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw p0
.end method

.method public static synthetic onSuccess$default(Lcom/cloud/tmc/integration/net/TmcResponseCallback;Lcom/cloud/tmc/integration/net/BaseResponse;Ljava/util/Map;ILjava/lang/Object;)V
    .locals 0

    .line 1
    if-nez p4, :cond_1

    .line 2
    .line 3
    and-int/lit8 p3, p3, 0x2

    .line 4
    .line 5
    if-eqz p3, :cond_0

    .line 6
    .line 7
    const/4 p2, 0x0

    .line 8
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/cloud/tmc/integration/net/TmcResponseCallback;->onSuccess(Lcom/cloud/tmc/integration/net/BaseResponse;Ljava/util/Map;)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 13
    .line 14
    const-string p1, "Super calls with default arguments not supported in this target, function: onSuccess"

    .line 15
    .line 16
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw p0
.end method


# virtual methods
.method public abstract getType()Ljava/lang/reflect/Type;
.end method

.method public abstract onFail(Lcom/cloud/tmc/integration/net/BaseResponse;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/integration/net/BaseResponse<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public onFailure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "errCode"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    sget-object p1, Lrf/b;->a:Lrf/b;

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Lrf/b;->c(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance p1, Lcom/cloud/tmc/integration/net/BaseResponse;

    .line 12
    .line 13
    const/4 v0, -0x1

    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-direct {p1, v0, v1, p2, p3}, Lcom/cloud/tmc/integration/net/BaseResponse;-><init>(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const/4 p2, 0x2

    .line 19
    invoke-static {p0, p1, v1, p2, v1}, Lcom/cloud/tmc/integration/net/TmcResponseCallback;->onFail$default(Lcom/cloud/tmc/integration/net/TmcResponseCallback;Lcom/cloud/tmc/integration/net/BaseResponse;Ljava/util/Map;ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catch_0
    move-exception p1

    .line 24
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-static {p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    :goto_0
    return-void
.end method

.method public onSuccess(ILjava/lang/String;Ljava/util/Map;Ljava/util/List;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lokhttp3/Cookie;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 p4, 0x0

    if-nez p2, :cond_0

    .line 1
    :try_start_0
    new-instance p1, Lcom/cloud/tmc/integration/net/BaseResponse;

    const-string p2, "response body is null"

    const/4 v0, -0x2

    invoke-direct {p1, v0, p4, p2, p5}, Lcom/cloud/tmc/integration/net/BaseResponse;-><init>(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0, p1, p3}, Lcom/cloud/tmc/integration/net/TmcResponseCallback;->onFail(Lcom/cloud/tmc/integration/net/BaseResponse;Ljava/util/Map;)V

    .line 3
    sget-object p1, Lrf/b;->a:Lrf/b;

    const-string p2, "onResponse body is null"

    invoke-virtual {p1, p2}, Lrf/b;->g(Ljava/lang/String;)V

    goto/16 :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    .line 4
    :cond_0
    const-string v0, "error_code"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p2, v0, v1, v2, p4}, Lkotlin/text/StringsKt;->c0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-static {}, Lcom/cloud/tmc/integration/net/TmcResponseCallbackKt;->getGatewayType()Ljava/lang/reflect/Type;

    move-result-object p1

    .line 6
    invoke-static {p2, p1}, Lcom/cloud/tmc/kernel/utils/TmcGsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    .line 7
    move-object p2, p1

    check-cast p2, Lcom/cloud/tmc/integration/net/GatewayBean;

    .line 8
    invoke-virtual {p2, p5}, Lcom/cloud/tmc/integration/net/GatewayBean;->setCallbackId(Ljava/lang/String;)V

    .line 9
    check-cast p1, Lcom/cloud/tmc/integration/net/GatewayBean;

    .line 10
    invoke-direct {p0, p1}, Lcom/cloud/tmc/integration/net/TmcResponseCallback;->getFailBean(Lcom/cloud/tmc/integration/net/GatewayBean;)Lcom/cloud/tmc/integration/net/BaseResponse;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Lcom/cloud/tmc/integration/net/TmcResponseCallback;->onFail(Lcom/cloud/tmc/integration/net/BaseResponse;Ljava/util/Map;)V

    goto/16 :goto_1

    :cond_1
    const/16 v0, 0xc8

    if-ne p1, v0, :cond_3

    .line 11
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 12
    const-string v0, "code"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    .line 13
    invoke-virtual {p0}, Lcom/cloud/tmc/integration/net/TmcResponseCallback;->getType()Ljava/lang/reflect/Type;

    move-result-object p1

    .line 14
    invoke-static {p2, p1}, Lcom/cloud/tmc/kernel/utils/TmcGsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    .line 15
    move-object p2, p1

    check-cast p2, Lcom/cloud/tmc/integration/net/BaseResponse;

    .line 16
    invoke-virtual {p2, p5}, Lcom/cloud/tmc/integration/net/BaseResponse;->setCallbackId(Ljava/lang/String;)V

    .line 17
    check-cast p1, Lcom/cloud/tmc/integration/net/BaseResponse;

    .line 18
    invoke-virtual {p0, p1, p3}, Lcom/cloud/tmc/integration/net/TmcResponseCallback;->onSuccess(Lcom/cloud/tmc/integration/net/BaseResponse;Ljava/util/Map;)V

    goto :goto_1

    .line 19
    :cond_2
    const-string p2, "message"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 20
    new-instance p2, Lcom/cloud/tmc/integration/net/BaseResponse;

    invoke-direct {p2, v0, p4, p1, p5}, Lcom/cloud/tmc/integration/net/BaseResponse;-><init>(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p2, p3}, Lcom/cloud/tmc/integration/net/TmcResponseCallback;->onFail(Lcom/cloud/tmc/integration/net/BaseResponse;Ljava/util/Map;)V

    goto :goto_1

    .line 21
    :cond_3
    invoke-static {}, Lcom/cloud/tmc/integration/net/TmcResponseCallbackKt;->getFailType()Ljava/lang/reflect/Type;

    move-result-object p1

    .line 22
    invoke-static {p2, p1}, Lcom/cloud/tmc/kernel/utils/TmcGsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    .line 23
    move-object p2, p1

    check-cast p2, Lcom/cloud/tmc/integration/net/BaseResponse;

    .line 24
    invoke-virtual {p2, p5}, Lcom/cloud/tmc/integration/net/BaseResponse;->setCallbackId(Ljava/lang/String;)V

    .line 25
    check-cast p1, Lcom/cloud/tmc/integration/net/BaseResponse;

    invoke-virtual {p0, p1, p3}, Lcom/cloud/tmc/integration/net/TmcResponseCallback;->onFail(Lcom/cloud/tmc/integration/net/BaseResponse;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 26
    :goto_0
    sget-object p2, Lrf/b;->a:Lrf/b;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onResponse e = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lrf/b;->g(Ljava/lang/String;)V

    .line 27
    new-instance p2, Lcom/cloud/tmc/integration/net/BaseResponse;

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "response Exception : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, -0x3

    .line 29
    invoke-direct {p2, v0, p4, p1, p5}, Lcom/cloud/tmc/integration/net/BaseResponse;-><init>(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    invoke-virtual {p0, p2, p3}, Lcom/cloud/tmc/integration/net/TmcResponseCallback;->onFail(Lcom/cloud/tmc/integration/net/BaseResponse;Ljava/util/Map;)V

    :goto_1
    return-void
.end method

.method public abstract onSuccess(Lcom/cloud/tmc/integration/net/BaseResponse;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/integration/net/BaseResponse<",
            "+TT;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method
