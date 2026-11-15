.class public Lcom/transsion/apiinvoke/invoke/ApiResponse;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1e96e49706bc8dcaL


# instance fields
.field public errorMsg:Ljava/lang/String;

.field public resultCode:I

.field private resultData:Lcom/transsion/apiinvoke/invoke/TypeValuePair;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    const-string v0, "success"

    invoke-direct {p0, p1, v0}, Lcom/transsion/apiinvoke/invoke/ApiResponse;-><init>(ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/transsion/apiinvoke/invoke/ApiResponse;->resultCode:I

    .line 4
    iput-object p2, p0, Lcom/transsion/apiinvoke/invoke/ApiResponse;->errorMsg:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Lcom/transsion/apiinvoke/invoke/TypeValuePair;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput p1, p0, Lcom/transsion/apiinvoke/invoke/ApiResponse;->resultCode:I

    .line 7
    iput-object p2, p0, Lcom/transsion/apiinvoke/invoke/ApiResponse;->errorMsg:Ljava/lang/String;

    .line 8
    iput-object p3, p0, Lcom/transsion/apiinvoke/invoke/ApiResponse;->resultData:Lcom/transsion/apiinvoke/invoke/TypeValuePair;

    return-void
.end method

.method public static channelConnectFault(Ljava/lang/String;)Lcom/transsion/apiinvoke/invoke/ApiResponse;
    .locals 3

    new-instance v0, Lcom/transsion/apiinvoke/invoke/ApiResponse;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Api channel connect fault : channel "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x19d

    invoke-direct {v0, v1, p0}, Lcom/transsion/apiinvoke/invoke/ApiResponse;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public static channelNameIsNull(Ljava/lang/String;)Lcom/transsion/apiinvoke/invoke/ApiResponse;
    .locals 3

    new-instance v0, Lcom/transsion/apiinvoke/invoke/ApiResponse;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Api channel name is null  apiName"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x199

    invoke-direct {v0, v1, p0}, Lcom/transsion/apiinvoke/invoke/ApiResponse;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public static channelNotConnect(Ljava/lang/String;)Lcom/transsion/apiinvoke/invoke/ApiResponse;
    .locals 3

    new-instance v0, Lcom/transsion/apiinvoke/invoke/ApiResponse;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Api channel not connect : channel "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x12d

    invoke-direct {v0, v1, p0}, Lcom/transsion/apiinvoke/invoke/ApiResponse;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public static channelNotFound(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/apiinvoke/invoke/ApiResponse;
    .locals 3

    new-instance v0, Lcom/transsion/apiinvoke/invoke/ApiResponse;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Api channel not found : channel "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " apiName "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x199

    invoke-direct {v0, p1, p0}, Lcom/transsion/apiinvoke/invoke/ApiResponse;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public static connectSuccess(Ljava/lang/String;)Lcom/transsion/apiinvoke/invoke/ApiResponse;
    .locals 2

    new-instance v0, Lcom/transsion/apiinvoke/invoke/ApiResponse;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Lcom/transsion/apiinvoke/invoke/ApiResponse;-><init>(I)V

    invoke-static {p0}, Lcom/transsion/apiinvoke/invoke/TypeValuePair;->createNoNull(Ljava/lang/Object;)Lcom/transsion/apiinvoke/invoke/TypeValuePair;

    move-result-object p0

    iput-object p0, v0, Lcom/transsion/apiinvoke/invoke/ApiResponse;->resultData:Lcom/transsion/apiinvoke/invoke/TypeValuePair;

    return-object v0
.end method

.method public static empty(I)Lcom/transsion/apiinvoke/invoke/ApiResponse;
    .locals 1

    new-instance p0, Lcom/transsion/apiinvoke/invoke/ApiResponse;

    const/16 v0, 0x193

    invoke-direct {p0, v0}, Lcom/transsion/apiinvoke/invoke/ApiResponse;-><init>(I)V

    return-object p0
.end method

.method public static invalidPublishToRemote(Ljava/lang/String;)Lcom/transsion/apiinvoke/invoke/ApiResponse;
    .locals 3

    new-instance v0, Lcom/transsion/apiinvoke/invoke/ApiResponse;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Api channel name is null  apiName"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x19c

    invoke-direct {v0, v1, p0}, Lcom/transsion/apiinvoke/invoke/ApiResponse;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public static invokeError(Ljava/lang/String;[Ljava/lang/Object;)Lcom/transsion/apiinvoke/invoke/ApiResponse;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_0

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/transsion/apiinvoke/invoke/ApiResponse;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Api invoke target error apiName : apiMethod : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n args "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x191

    invoke-direct {p1, v0, p0}, Lcom/transsion/apiinvoke/invoke/ApiResponse;-><init>(ILjava/lang/String;)V

    return-object p1
.end method

.method public static invokeRemoteError(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/apiinvoke/invoke/ApiResponse;
    .locals 3

    new-instance v0, Lcom/transsion/apiinvoke/invoke/ApiResponse;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "client invoke remote error : apiName "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " apiMethod "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x197

    invoke-direct {v0, p1, p0}, Lcom/transsion/apiinvoke/invoke/ApiResponse;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public static knowError(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/apiinvoke/invoke/ApiResponse;
    .locals 3

    .line 1
    new-instance v0, Lcom/transsion/apiinvoke/invoke/ApiResponse;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "know error for : apiName "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " apiMethod "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x190

    invoke-direct {v0, p1, p0}, Lcom/transsion/apiinvoke/invoke/ApiResponse;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public static knowError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Lcom/transsion/apiinvoke/invoke/ApiResponse;
    .locals 3

    .line 2
    new-instance v0, Lcom/transsion/apiinvoke/invoke/ApiResponse;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "know error for : apiName "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " apiMethod "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x190

    invoke-direct {v0, p1, p0}, Lcom/transsion/apiinvoke/invoke/ApiResponse;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public static onClassNotFound(Ljava/lang/String;)Lcom/transsion/apiinvoke/invoke/ApiResponse;
    .locals 3

    new-instance v0, Lcom/transsion/apiinvoke/invoke/ApiResponse;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Api service class not found : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x196

    invoke-direct {v0, v1, p0}, Lcom/transsion/apiinvoke/invoke/ApiResponse;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public static onError(ILjava/lang/String;)Lcom/transsion/apiinvoke/invoke/ApiResponse;
    .locals 1

    new-instance p0, Lcom/transsion/apiinvoke/invoke/ApiResponse;

    const/16 v0, 0x193

    invoke-direct {p0, v0, p1}, Lcom/transsion/apiinvoke/invoke/ApiResponse;-><init>(ILjava/lang/String;)V

    return-object p0
.end method

.method public static onException(Lcom/transsion/apiinvoke/invoke/ApiInvokeException;)Lcom/transsion/apiinvoke/invoke/ApiResponse;
    .locals 2

    new-instance v0, Lcom/transsion/apiinvoke/invoke/ApiResponse;

    invoke-virtual {p0}, Lcom/transsion/apiinvoke/invoke/ApiInvokeException;->getCode()I

    move-result v1

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/transsion/apiinvoke/invoke/ApiResponse;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public static onInterceptorDined(Ljava/lang/String;)Lcom/transsion/apiinvoke/invoke/ApiResponse;
    .locals 3

    new-instance v0, Lcom/transsion/apiinvoke/invoke/ApiResponse;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "interceptor dined for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x1f7

    invoke-direct {v0, v1, p0}, Lcom/transsion/apiinvoke/invoke/ApiResponse;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public static onPublishPermissionDenied(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/apiinvoke/invoke/ApiResponse;
    .locals 3

    new-instance v0, Lcom/transsion/apiinvoke/invoke/ApiResponse;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "publish target permission denied : apiName "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " apiMethod "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x1f5

    invoke-direct {v0, p1, p0}, Lcom/transsion/apiinvoke/invoke/ApiResponse;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public static onRequestPermissionDenied(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/apiinvoke/invoke/ApiResponse;
    .locals 3

    new-instance v0, Lcom/transsion/apiinvoke/invoke/ApiResponse;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "request target permission denied : apiName "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " apiMethod "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x1f4

    invoke-direct {v0, p1, p0}, Lcom/transsion/apiinvoke/invoke/ApiResponse;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public static onRequestRemotePrevent(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/apiinvoke/invoke/ApiResponse;
    .locals 3

    new-instance v0, Lcom/transsion/apiinvoke/invoke/ApiResponse;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "request target permission denied : apiName "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " apiMethod "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x1f6

    invoke-direct {v0, p1, p0}, Lcom/transsion/apiinvoke/invoke/ApiResponse;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public static onServiceMethodNotFound(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/apiinvoke/invoke/ApiResponse;
    .locals 2

    new-instance v0, Lcom/transsion/apiinvoke/invoke/ApiResponse;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " no such method for "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x192

    invoke-direct {v0, p1, p0}, Lcom/transsion/apiinvoke/invoke/ApiResponse;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public static onServiceNotValid(Ljava/lang/String;)Lcom/transsion/apiinvoke/invoke/ApiResponse;
    .locals 2

    new-instance v0, Lcom/transsion/apiinvoke/invoke/ApiResponse;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is not a service handle"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x195

    invoke-direct {v0, v1, p0}, Lcom/transsion/apiinvoke/invoke/ApiResponse;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public static publishRemoteChannelNotFount(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/apiinvoke/invoke/ApiResponse;
    .locals 3

    new-instance v0, Lcom/transsion/apiinvoke/invoke/ApiResponse;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "publish remote error : channel "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " apiName "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x19b

    invoke-direct {v0, p1, p0}, Lcom/transsion/apiinvoke/invoke/ApiResponse;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public static publishRemoteError(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/apiinvoke/invoke/ApiResponse;
    .locals 3

    new-instance v0, Lcom/transsion/apiinvoke/invoke/ApiResponse;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "publish remote error : channel "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " apiName "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x19a

    invoke-direct {v0, p1, p0}, Lcom/transsion/apiinvoke/invoke/ApiResponse;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public static serviceConnectFault(Ljava/lang/String;)Lcom/transsion/apiinvoke/invoke/ApiResponse;
    .locals 3

    new-instance v0, Lcom/transsion/apiinvoke/invoke/ApiResponse;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Api service connect fault : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x193

    invoke-direct {v0, v1, p0}, Lcom/transsion/apiinvoke/invoke/ApiResponse;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public static serviceNotFound(Ljava/lang/String;)Lcom/transsion/apiinvoke/invoke/ApiResponse;
    .locals 3

    new-instance v0, Lcom/transsion/apiinvoke/invoke/ApiResponse;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Api service not Registered : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x194

    invoke-direct {v0, v1, p0}, Lcom/transsion/apiinvoke/invoke/ApiResponse;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public static success(Ljava/lang/Object;)Lcom/transsion/apiinvoke/invoke/ApiResponse;
    .locals 2

    new-instance v0, Lcom/transsion/apiinvoke/invoke/ApiResponse;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/apiinvoke/invoke/ApiResponse;-><init>(I)V

    if-nez p0, :cond_0

    invoke-static {}, Lcom/transsion/apiinvoke/invoke/TypeValuePair;->empty()Lcom/transsion/apiinvoke/invoke/TypeValuePair;

    move-result-object p0

    iput-object p0, v0, Lcom/transsion/apiinvoke/invoke/ApiResponse;->resultData:Lcom/transsion/apiinvoke/invoke/TypeValuePair;

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/transsion/apiinvoke/invoke/TypeValuePair;->createNoNull(Ljava/lang/Object;)Lcom/transsion/apiinvoke/invoke/TypeValuePair;

    move-result-object p0

    iput-object p0, v0, Lcom/transsion/apiinvoke/invoke/ApiResponse;->resultData:Lcom/transsion/apiinvoke/invoke/TypeValuePair;

    :goto_0
    return-object v0
.end method


# virtual methods
.method public applyMsg(Ljava/lang/String;)Lcom/transsion/apiinvoke/invoke/ApiResponse;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/apiinvoke/invoke/ApiResponse;->errorMsg:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/apiinvoke/invoke/ApiResponse;->errorMsg:Ljava/lang/String;

    return-object p0
.end method

.method public content()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()TT;"
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/apiinvoke/invoke/ApiResponse;->resultData:Lcom/transsion/apiinvoke/invoke/TypeValuePair;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/apiinvoke/invoke/TypeValuePair;->getValue()Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getResultData()Lcom/transsion/apiinvoke/invoke/TypeValuePair;
    .locals 0

    iget-object p0, p0, Lcom/transsion/apiinvoke/invoke/ApiResponse;->resultData:Lcom/transsion/apiinvoke/invoke/TypeValuePair;

    return-object p0
.end method

.method public isSuccess()Z
    .locals 0

    iget p0, p0, Lcom/transsion/apiinvoke/invoke/ApiResponse;->resultCode:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
