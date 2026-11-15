.class public final Lcom/transsion/log/upload/net/RequestManager$unionUploadAndFeedback$$inlined$postJsonAsync$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/log/upload/net/RequestManager;->f(Lcs4;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcs4;


# direct methods
.method public constructor <init>(Lcs4;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/log/upload/net/RequestManager$unionUploadAndFeedback$$inlined$postJsonAsync$1;->b:Lcs4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 2

    const-string v0, "call"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "e"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/log/upload/net/RequestManager$unionUploadAndFeedback$$inlined$postJsonAsync$1;->b:Lcs4;

    if-eqz p0, :cond_0

    new-instance p1, Lcom/transsion/log/upload/data/base/HttpUbtError;

    new-instance v0, Lcom/transsion/log/upload/data/base/HttpUbtException;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    const/16 v1, 0x3e8

    invoke-direct {v0, v1, p2}, Lcom/transsion/log/upload/data/base/HttpUbtException;-><init>(ILjava/lang/String;)V

    invoke-direct {p1, v1, v0}, Lcom/transsion/log/upload/data/base/HttpUbtError;-><init>(ILcom/transsion/log/upload/data/base/HttpUbtException;)V

    invoke-interface {p0, p1}, Lcs4;->a(Lcom/transsion/log/upload/data/base/HttpUbtError;)V

    :cond_0
    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 4

    const-string v0, "call"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "response"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p1, 0x3e9

    :try_start_0
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :catch_0
    move-exception p2

    goto :goto_1

    :cond_0
    const/4 p2, 0x0

    :goto_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "data"

    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "code"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "message"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/transsion/log/upload/net/RequestManager$unionUploadAndFeedback$$inlined$postJsonAsync$1$1;

    invoke-direct {v2}, Lcom/transsion/log/upload/net/RequestManager$unionUploadAndFeedback$$inlined$postJsonAsync$1$1;-><init>()V

    invoke-virtual {v2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v3, p2, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p2

    if-nez v1, :cond_1

    iget-object v2, p0, Lcom/transsion/log/upload/net/RequestManager$unionUploadAndFeedback$$inlined$postJsonAsync$1;->b:Lcs4;

    if-eqz v2, :cond_2

    new-instance v3, Lcom/transsion/log/upload/data/base/HttpUbtResponse;

    invoke-static {v0}, Ly45;->g(Ljava/lang/Object;)V

    invoke-direct {v3, v1, v0, p2}, Lcom/transsion/log/upload/data/base/HttpUbtResponse;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Lcs4;->b(Lcom/transsion/log/upload/data/base/HttpUbtResponse;)V

    goto :goto_2

    :cond_1
    iget-object p2, p0, Lcom/transsion/log/upload/net/RequestManager$unionUploadAndFeedback$$inlined$postJsonAsync$1;->b:Lcs4;

    if-eqz p2, :cond_2

    new-instance v0, Lcom/transsion/log/upload/data/base/HttpUbtError;

    new-instance v1, Lcom/transsion/log/upload/data/base/HttpUbtException;

    const-string v2, ""

    invoke-direct {v1, p1, v2}, Lcom/transsion/log/upload/data/base/HttpUbtException;-><init>(ILjava/lang/String;)V

    invoke-direct {v0, p1, v1}, Lcom/transsion/log/upload/data/base/HttpUbtError;-><init>(ILcom/transsion/log/upload/data/base/HttpUbtException;)V

    invoke-interface {p2, v0}, Lcs4;->a(Lcom/transsion/log/upload/data/base/HttpUbtError;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    iget-object p0, p0, Lcom/transsion/log/upload/net/RequestManager$unionUploadAndFeedback$$inlined$postJsonAsync$1;->b:Lcs4;

    if-eqz p0, :cond_2

    new-instance v0, Lcom/transsion/log/upload/data/base/HttpUbtError;

    new-instance v1, Lcom/transsion/log/upload/data/base/HttpUbtException;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p1, p2}, Lcom/transsion/log/upload/data/base/HttpUbtException;-><init>(ILjava/lang/String;)V

    invoke-direct {v0, p1, v1}, Lcom/transsion/log/upload/data/base/HttpUbtError;-><init>(ILcom/transsion/log/upload/data/base/HttpUbtException;)V

    invoke-interface {p0, v0}, Lcs4;->a(Lcom/transsion/log/upload/data/base/HttpUbtError;)V

    :cond_2
    :goto_2
    return-void
.end method
