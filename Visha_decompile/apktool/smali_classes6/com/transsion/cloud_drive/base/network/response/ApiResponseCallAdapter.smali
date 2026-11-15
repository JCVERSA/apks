.class public final Lcom/transsion/cloud_drive/base/network/response/ApiResponseCallAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llq0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Llq0;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0000\u0018\u00002\u001a\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u0002\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00040\u0001B\u000f\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u000f\u0010\u0008\u001a\u00020\u0003H\u0016\u00a2\u0006\u0004\u0008\u0008\u0010\tJ)\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00042\u0012\u0010\u000b\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\nH\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\rR\u0014\u0010\u0005\u001a\u00020\u00038\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/transsion/cloud_drive/base/network/response/ApiResponseCallAdapter;",
        "Llq0;",
        "Lcom/transsion/cloud_drive/base/network/response/BaseResult;",
        "Ljava/lang/reflect/Type;",
        "Lcom/transsion/cloud_drive/base/network/response/ApiResponse;",
        "resultType",
        "<init>",
        "(Ljava/lang/reflect/Type;)V",
        "responseType",
        "()Ljava/lang/reflect/Type;",
        "Ljq0;",
        "call",
        "adapt",
        "(Ljq0;)Lcom/transsion/cloud_drive/base/network/response/ApiResponse;",
        "Ljava/lang/reflect/Type;",
        "cloud-drive-base_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final resultType:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Type;)V
    .locals 1

    const-string v0, "resultType"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/cloud_drive/base/network/response/ApiResponseCallAdapter;->resultType:Ljava/lang/reflect/Type;

    return-void
.end method

.method public static final synthetic access$getResultType$p(Lcom/transsion/cloud_drive/base/network/response/ApiResponseCallAdapter;)Ljava/lang/reflect/Type;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud_drive/base/network/response/ApiResponseCallAdapter;->resultType:Ljava/lang/reflect/Type;

    return-object p0
.end method


# virtual methods
.method public adapt(Ljq0;)Lcom/transsion/cloud_drive/base/network/response/ApiResponse;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljq0<",
            "Lcom/transsion/cloud_drive/base/network/response/BaseResult<",
            "Ljava/lang/reflect/Type;",
            ">;>;)",
            "Lcom/transsion/cloud_drive/base/network/response/ApiResponse<",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation

    const-string p0, "call"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    :try_start_0
    invoke-interface {p1}, Ljq0;->execute()Lgu8;

    move-result-object p0

    const-string p1, "execute(...)"

    invoke-static {p0, p1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-object p1, Lcom/transsion/cloud_drive/base/network/response/ApiResponse;->Companion:Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Companion;

    .line 4
    invoke-static {}, Lcom/transsion/cloud_drive/base/network/response/ApiResponseExtensionKt;->getHTTP_SUCCESS_CODE_RANGE()Lu15;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 5
    :try_start_1
    invoke-virtual {p1}, Ls15;->b()I

    move-result v0

    invoke-virtual {p1}, Ls15;->c()I

    move-result p1

    invoke-virtual {p0}, Lgu8;->b()I

    move-result v1

    if-gt v0, v1, :cond_2

    if-gt v1, p1, :cond_2

    .line 6
    invoke-virtual {p0}, Lgu8;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/cloud_drive/base/network/response/BaseResult;

    if-eqz p1, :cond_1

    invoke-static {p1}, Ly45;->g(Ljava/lang/Object;)V

    .line 7
    invoke-virtual {p1}, Lcom/transsion/cloud_drive/base/network/response/BaseResult;->getCode()I

    move-result p0

    sget-object v0, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;->SUCCESS:Lcom/transsion/cloud_drive/base/network/RequestErrorCode;

    invoke-virtual {v0}, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;->getCode()I

    move-result v0

    if-ne p0, v0, :cond_0

    .line 8
    new-instance p0, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Success;

    invoke-virtual {p1}, Lcom/transsion/cloud_drive/base/network/response/BaseResult;->getData()Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Success;-><init>(Ljava/lang/Object;)V

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_0

    .line 9
    :cond_0
    new-instance p0, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Error;

    invoke-virtual {p1}, Lcom/transsion/cloud_drive/base/network/response/BaseResult;->getCode()I

    move-result v0

    invoke-virtual {p1}, Lcom/transsion/cloud_drive/base/network/response/BaseResult;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Error;-><init>(ILjava/lang/String;)V

    goto :goto_2

    .line 10
    :cond_1
    new-instance p1, Lcom/transsion/cloud_drive/base/exceptions/NoContentException;

    invoke-virtual {p0}, Lgu8;->b()I

    move-result p0

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p1, p0, v1, v0, v1}, Lcom/transsion/cloud_drive/base/exceptions/NoContentException;-><init>(ILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p1

    .line 11
    :cond_2
    new-instance p1, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Error;

    .line 12
    sget-object v0, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;->HTTP_ERROR:Lcom/transsion/cloud_drive/base/network/RequestErrorCode;

    invoke-virtual {v0}, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;->getCode()I

    move-result v0

    .line 13
    invoke-virtual {p0}, Lgu8;->b()I

    move-result v1

    invoke-virtual {p0}, Lgu8;->f()Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http_status:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  http_message:"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 14
    invoke-direct {p1, v0, p0}, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Error;-><init>(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 15
    :goto_0
    :try_start_2
    new-instance p1, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Exception;

    invoke-direct {p1, p0}, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Exception;-><init>(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    move-object p0, p1

    :goto_2
    return-object p0

    :catch_1
    move-exception p0

    .line 16
    sget-object p1, Loq5;->a:Loq5;

    const-string v0, "http request error:"

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "ApiResponseCallAdapter"

    invoke-virtual {p1, v1, v0}, Loq5;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    sget-object p1, Lcom/transsion/cloud_drive/base/network/response/ApiResponse;->Companion:Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Companion;

    invoke-virtual {p1, p0}, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Companion;->exception(Ljava/lang/Throwable;)Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Exception;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic adapt(Ljq0;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/transsion/cloud_drive/base/network/response/ApiResponseCallAdapter;->adapt(Ljq0;)Lcom/transsion/cloud_drive/base/network/response/ApiResponse;

    move-result-object p0

    return-object p0
.end method

.method public responseType()Ljava/lang/reflect/Type;
    .locals 1

    new-instance v0, Lcom/transsion/cloud_drive/base/network/response/ApiResponseCallAdapter$responseType$1;

    invoke-direct {v0, p0}, Lcom/transsion/cloud_drive/base/network/response/ApiResponseCallAdapter$responseType$1;-><init>(Lcom/transsion/cloud_drive/base/network/response/ApiResponseCallAdapter;)V

    return-object v0
.end method
