.class public abstract Lcom/cloud/sdk/commonutil/gsonutil/GsonUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/sdk/commonutil/gsonutil/GsonUtil$GsonParseException;
    }
.end annotation


# direct methods
.method public static a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/cloud/sdk/commonutil/gsonutil/GsonUtil;->c()Lcom/google/gson/Gson;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/cloud/sdk/commonutil/gsonutil/GsonUtil$GsonParseException;

    invoke-direct {p1, p0}, Lcom/cloud/sdk/commonutil/gsonutil/GsonUtil$GsonParseException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static b(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/cloud/sdk/commonutil/gsonutil/GsonUtil;->c()Lcom/google/gson/Gson;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/cloud/sdk/commonutil/gsonutil/GsonUtil$GsonParseException;

    invoke-direct {p1, p0}, Lcom/cloud/sdk/commonutil/gsonutil/GsonUtil$GsonParseException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static c()Lcom/google/gson/Gson;
    .locals 1

    invoke-static {}, Lbk4;->a()Lcom/google/gson/Gson;

    move-result-object v0

    return-object v0
.end method

.method public static d(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/cloud/sdk/commonutil/gsonutil/GsonUtil;->c()Lcom/google/gson/Gson;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-static {}, Lja1;->Log()Lja1;

    move-result-object v0

    const-string v1, "GsonUtil"

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lja1;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, ""

    return-object p0
.end method
