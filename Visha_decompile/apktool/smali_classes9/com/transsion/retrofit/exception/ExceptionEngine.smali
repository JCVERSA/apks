.class public Lcom/transsion/retrofit/exception/ExceptionEngine;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final BAD_GATEWAY:I = 0x1f6

.field private static final FORBIDDEN:I = 0x193

.field private static final GATEWAY_TIMEOUT:I = 0x1f8

.field private static final INTERNAL_SERVER_ERROR:I = 0x1f4

.field private static final NOT_FOUND:I = 0x194

.field private static final REQUEST_TIMEOUT:I = 0x198

.field private static final SERVICE_UNAVAILABLE:I = 0x1f7

.field private static final UNAUTHORIZED:I = 0x191


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static handleException(Ljava/lang/Throwable;)Lcom/transsion/retrofit/exception/ApiException;
    .locals 3

    instance-of v0, p0, Lretrofit2/HttpException;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lretrofit2/HttpException;

    new-instance v1, Lcom/transsion/retrofit/exception/ApiException;

    const/16 v2, 0x3eb

    invoke-direct {v1, p0, v2}, Lcom/transsion/retrofit/exception/ApiException;-><init>(Ljava/lang/Throwable;I)V

    invoke-virtual {v0}, Lretrofit2/HttpException;->code()I

    const-string p0, "\u7f51\u7edc\u9519\u8bef"

    invoke-virtual {v1, p0}, Lcom/transsion/retrofit/exception/ApiException;->setDisplayMessage(Ljava/lang/String;)V

    return-object v1

    :cond_0
    instance-of v0, p0, Lcom/transsion/retrofit/exception/ServerException;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/transsion/retrofit/exception/ServerException;

    new-instance v0, Lcom/transsion/retrofit/exception/ApiException;

    invoke-virtual {p0}, Lcom/transsion/retrofit/exception/ServerException;->getCode()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/transsion/retrofit/exception/ApiException;-><init>(Ljava/lang/Throwable;I)V

    invoke-virtual {p0}, Lcom/transsion/retrofit/exception/ServerException;->getMsg()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/retrofit/exception/ApiException;->setDisplayMessage(Ljava/lang/String;)V

    return-object v0

    :cond_1
    instance-of v0, p0, Lcom/google/gson/JsonParseException;

    if-nez v0, :cond_4

    instance-of v0, p0, Lorg/json/JSONException;

    if-nez v0, :cond_4

    instance-of v0, p0, Ljava/text/ParseException;

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    instance-of v0, p0, Ljava/net/ConnectException;

    if-eqz v0, :cond_3

    new-instance v0, Lcom/transsion/retrofit/exception/ApiException;

    const/16 v1, 0x3ea

    invoke-direct {v0, p0, v1}, Lcom/transsion/retrofit/exception/ApiException;-><init>(Ljava/lang/Throwable;I)V

    const-string p0, "\u8fde\u63a5\u5931\u8d25"

    invoke-virtual {v0, p0}, Lcom/transsion/retrofit/exception/ApiException;->setDisplayMessage(Ljava/lang/String;)V

    return-object v0

    :cond_3
    new-instance v0, Lcom/transsion/retrofit/exception/ApiException;

    const/16 v1, 0x3e8

    invoke-direct {v0, p0, v1}, Lcom/transsion/retrofit/exception/ApiException;-><init>(Ljava/lang/Throwable;I)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/retrofit/exception/ApiException;->setDisplayMessage(Ljava/lang/String;)V

    return-object v0

    :cond_4
    :goto_0
    new-instance v0, Lcom/transsion/retrofit/exception/ApiException;

    const/16 v1, 0x3e9

    invoke-direct {v0, p0, v1}, Lcom/transsion/retrofit/exception/ApiException;-><init>(Ljava/lang/Throwable;I)V

    const-string p0, "\u89e3\u6790\u9519\u8bef"

    invoke-virtual {v0, p0}, Lcom/transsion/retrofit/exception/ApiException;->setDisplayMessage(Ljava/lang/String;)V

    return-object v0
.end method
