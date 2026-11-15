.class public final Lcom/transsion/cloud_drive/base/network/TokenRefreshCallAdapterFactory$TokenRefreshCallAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llq0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/cloud_drive/base/network/TokenRefreshCallAdapterFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TokenRefreshCallAdapter"
.end annotation


# instance fields
.field public final a:Llq0;

.field public final b:Lnpa;

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Llq0;Lnpa;)V
    .locals 1

    const-string v0, "delegate"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tokenRefresher"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/cloud_drive/base/network/TokenRefreshCallAdapterFactory$TokenRefreshCallAdapter;->a:Llq0;

    iput-object p2, p0, Lcom/transsion/cloud_drive/base/network/TokenRefreshCallAdapterFactory$TokenRefreshCallAdapter;->b:Lnpa;

    const-string p1, "TokenRefreshCallAdapter"

    iput-object p1, p0, Lcom/transsion/cloud_drive/base/network/TokenRefreshCallAdapterFactory$TokenRefreshCallAdapter;->c:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic a(Lcom/transsion/cloud_drive/base/network/TokenRefreshCallAdapterFactory$TokenRefreshCallAdapter;)Llq0;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud_drive/base/network/TokenRefreshCallAdapterFactory$TokenRefreshCallAdapter;->a:Llq0;

    return-object p0
.end method

.method public static final synthetic b(Lcom/transsion/cloud_drive/base/network/TokenRefreshCallAdapterFactory$TokenRefreshCallAdapter;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud_drive/base/network/TokenRefreshCallAdapterFactory$TokenRefreshCallAdapter;->c:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic c(Lcom/transsion/cloud_drive/base/network/TokenRefreshCallAdapterFactory$TokenRefreshCallAdapter;)Lnpa;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud_drive/base/network/TokenRefreshCallAdapterFactory$TokenRefreshCallAdapter;->b:Lnpa;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic adapt(Ljq0;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/cloud_drive/base/network/TokenRefreshCallAdapterFactory$TokenRefreshCallAdapter;->d(Ljq0;)Lcom/transsion/cloud_drive/base/network/response/ApiResponse;

    move-result-object p0

    return-object p0
.end method

.method public d(Ljq0;)Lcom/transsion/cloud_drive/base/network/response/ApiResponse;
    .locals 6

    const-string v0, "call"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/cloud_drive/base/network/TokenRefreshCallAdapterFactory$TokenRefreshCallAdapter;->a:Llq0;

    invoke-interface {v0, p1}, Llq0;->adapt(Ljq0;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "element"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v0

    check-cast v2, Lcom/transsion/cloud_drive/base/network/response/ApiResponse;

    instance-of v3, v2, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Error;

    if-eqz v3, :cond_1

    check-cast v2, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Error;

    invoke-virtual {v2}, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Error;->getErrorCode()I

    move-result v2

    const/16 v3, 0x193

    if-ne v2, v3, :cond_1

    sget-object v2, Loq5;->a:Loq5;

    invoke-static {p0}, Lcom/transsion/cloud_drive/base/network/TokenRefreshCallAdapterFactory$TokenRefreshCallAdapter;->b(Lcom/transsion/cloud_drive/base/network/TokenRefreshCallAdapterFactory$TokenRefreshCallAdapter;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Received code 403 in ApiResponse, attempting to refresh token..."

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Loq5;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v3, Lcom/transsion/cloud_drive/base/network/TokenRefreshCallAdapterFactory$TokenRefreshCallAdapter$adapt$1$refreshSuccess$1;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/transsion/cloud_drive/base/network/TokenRefreshCallAdapterFactory$TokenRefreshCallAdapter$adapt$1$refreshSuccess$1;-><init>(Lcom/transsion/cloud_drive/base/network/TokenRefreshCallAdapterFactory$TokenRefreshCallAdapter;Lwh1;)V

    const/4 v5, 0x1

    invoke-static {v4, v3, v5, v4}, Lcl0;->f(Lkotlin/coroutines/d;Ls74;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p0}, Lcom/transsion/cloud_drive/base/network/TokenRefreshCallAdapterFactory$TokenRefreshCallAdapter;->b(Lcom/transsion/cloud_drive/base/network/TokenRefreshCallAdapterFactory$TokenRefreshCallAdapter;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "Token refreshed successfully, retrying API call..."

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Loq5;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p0}, Lcom/transsion/cloud_drive/base/network/TokenRefreshCallAdapterFactory$TokenRefreshCallAdapter;->a(Lcom/transsion/cloud_drive/base/network/TokenRefreshCallAdapterFactory$TokenRefreshCallAdapter;)Llq0;

    move-result-object p0

    invoke-interface {p1}, Ljq0;->clone()Ljq0;

    move-result-object p1

    invoke-interface {p0, p1}, Llq0;->adapt(Ljq0;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/transsion/cloud_drive/base/network/TokenRefreshCallAdapterFactory$TokenRefreshCallAdapter;->b(Lcom/transsion/cloud_drive/base/network/TokenRefreshCallAdapterFactory$TokenRefreshCallAdapter;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Token refresh failed, returning 403 response"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v2, p0, p1}, Loq5;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/transsion/cloud_drive/base/network/response/ApiResponse;

    return-object v0
.end method

.method public responseType()Ljava/lang/reflect/Type;
    .locals 1

    iget-object p0, p0, Lcom/transsion/cloud_drive/base/network/TokenRefreshCallAdapterFactory$TokenRefreshCallAdapter;->a:Llq0;

    invoke-interface {p0}, Llq0;->responseType()Ljava/lang/reflect/Type;

    move-result-object p0

    const-string v0, "responseType(...)"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
