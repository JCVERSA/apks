.class public final Lcom/transsion/cloud_drive/base/network/response/ApiResponseExtensionKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u001aE\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0007\"\u0004\u0008\u0000\u0010\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00012\u001a\u0008\u0004\u0010\u0006\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u00050\u00040\u0003H\u0080\u0008\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0008\u0010\t\u001aR\u0010\r\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0007\"\u0004\u0008\u0000\u0010\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00012*\u0008\u0004\u0010\u0006\u001a$\u0008\u0001\u0012\u0016\u0012\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u00050\u00040\u000b\u0012\u0006\u0012\u0004\u0018\u00010\u000c0\nH\u0080H\u00a2\u0006\u0004\u0008\r\u0010\u000e\u001aI\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0007\"\u0004\u0008\u0000\u0010\u0000*\u00020\u000f2\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00012\u001a\u0008\u0004\u0010\u0006\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u00050\u00040\u0003H\u0080\u0008\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0010\u0010\u0011\u001aV\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0007\"\u0004\u0008\u0000\u0010\u0000*\u00020\u000f2\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00012*\u0008\u0004\u0010\u0006\u001a$\u0008\u0001\u0012\u0016\u0012\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u00050\u00040\u000b\u0012\u0006\u0012\u0004\u0018\u00010\u000c0\nH\u0080H\u00a2\u0006\u0004\u0008\u0012\u0010\u0013\u001aE\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0007\"\u0004\u0008\u0000\u0010\u0000*\u0008\u0012\u0004\u0012\u00028\u00000\u00072\u001a\u0008\u0004\u0010\u0016\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u0014\u0012\u0004\u0012\u00020\u00150\nH\u0086\u0008\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0017\u0010\u0018\u001a?\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0007\"\u0004\u0008\u0000\u0010\u0000*\u0008\u0012\u0004\u0012\u00028\u00000\u00072\u0014\u0008\u0004\u0010\u0016\u001a\u000e\u0012\u0004\u0012\u00020\u0019\u0012\u0004\u0012\u00020\u00150\nH\u0086\u0008\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u001a\u0010\u0018\u001a?\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0007\"\u0004\u0008\u0000\u0010\u0000*\u0008\u0012\u0004\u0012\u00028\u00000\u00072\u0014\u0008\u0004\u0010\u0016\u001a\u000e\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020\u00150\nH\u0086\u0008\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u001c\u0010\u0018\"\u0017\u0010\u001d\u001a\u00020\u00018\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001d\u0010\u001e\u001a\u0004\u0008\u001f\u0010 \u0082\u0002\u0007\n\u0005\u0008\u009920\u0001\u00a8\u0006!"
    }
    d2 = {
        "T",
        "Lu15;",
        "successCodeRange",
        "Lkotlin/Function0;",
        "Lgu8;",
        "Lcom/transsion/cloud_drive/base/network/response/BaseResult;",
        "f",
        "Lcom/transsion/cloud_drive/base/network/response/ApiResponse;",
        "apiResponseOf",
        "(Lu15;Lc74;)Lcom/transsion/cloud_drive/base/network/response/ApiResponse;",
        "Lkotlin/Function1;",
        "Lwh1;",
        "",
        "suspendApiResponseOf",
        "(Lu15;Le74;Lwh1;)Ljava/lang/Object;",
        "Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Companion;",
        "responseOf",
        "(Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Companion;Lu15;Lc74;)Lcom/transsion/cloud_drive/base/network/response/ApiResponse;",
        "suspendResponseOf",
        "(Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Companion;Lu15;Le74;Lwh1;)Ljava/lang/Object;",
        "Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Success;",
        "Lzfb;",
        "onResult",
        "onSuccess",
        "(Lcom/transsion/cloud_drive/base/network/response/ApiResponse;Le74;)Lcom/transsion/cloud_drive/base/network/response/ApiResponse;",
        "Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Error;",
        "onError",
        "Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Exception;",
        "onException",
        "HTTP_SUCCESS_CODE_RANGE",
        "Lu15;",
        "getHTTP_SUCCESS_CODE_RANGE",
        "()Lu15;",
        "cloud-drive-base_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final HTTP_SUCCESS_CODE_RANGE:Lu15;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lu15;

    const/16 v1, 0xc8

    const/16 v2, 0x12b

    invoke-direct {v0, v1, v2}, Lu15;-><init>(II)V

    sput-object v0, Lcom/transsion/cloud_drive/base/network/response/ApiResponseExtensionKt;->HTTP_SUCCESS_CODE_RANGE:Lu15;

    return-void
.end method

.method public static final synthetic apiResponseOf(Lu15;Lc74;)Lcom/transsion/cloud_drive/base/network/response/ApiResponse;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lu15;",
            "Lc74;",
            ")",
            "Lcom/transsion/cloud_drive/base/network/response/ApiResponse<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "successCodeRange"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "f"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-interface {p1}, Lc74;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lgu8;

    invoke-virtual {p0}, Ls15;->b()I

    move-result v0

    invoke-virtual {p0}, Ls15;->c()I

    move-result p0

    invoke-virtual {p1}, Lgu8;->b()I

    move-result v1

    if-gt v0, v1, :cond_2

    if-gt v1, p0, :cond_2

    invoke-virtual {p1}, Lgu8;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/cloud_drive/base/network/response/BaseResult;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/cloud_drive/base/network/response/BaseResult;->getCode()I

    move-result p1

    sget-object v0, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;->SUCCESS:Lcom/transsion/cloud_drive/base/network/RequestErrorCode;

    invoke-virtual {v0}, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;->getCode()I

    move-result v0

    if-ne p1, v0, :cond_0

    new-instance p1, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Success;

    invoke-virtual {p0}, Lcom/transsion/cloud_drive/base/network/response/BaseResult;->getData()Ljava/lang/Object;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Success;-><init>(Ljava/lang/Object;)V

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Error;

    invoke-virtual {p0}, Lcom/transsion/cloud_drive/base/network/response/BaseResult;->getCode()I

    move-result v0

    invoke-virtual {p0}, Lcom/transsion/cloud_drive/base/network/response/BaseResult;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v0, p0}, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Error;-><init>(ILjava/lang/String;)V

    goto :goto_1

    :cond_1
    new-instance p0, Lcom/transsion/cloud_drive/base/exceptions/NoContentException;

    invoke-virtual {p1}, Lgu8;->b()I

    move-result p1

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0, v1}, Lcom/transsion/cloud_drive/base/exceptions/NoContentException;-><init>(ILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p0

    :cond_2
    new-instance p0, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Error;

    sget-object v0, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;->HTTP_ERROR:Lcom/transsion/cloud_drive/base/network/RequestErrorCode;

    invoke-virtual {v0}, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;->getCode()I

    move-result v0

    invoke-virtual {p1}, Lgu8;->b()I

    move-result v1

    invoke-virtual {p1}, Lgu8;->f()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http_status:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  http_message:"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Error;-><init>(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, p0

    goto :goto_1

    :goto_0
    new-instance p1, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Exception;

    invoke-direct {p1, p0}, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Exception;-><init>(Ljava/lang/Throwable;)V

    :goto_1
    return-object p1
.end method

.method public static synthetic apiResponseOf$default(Lu15;Lc74;ILjava/lang/Object;)Lcom/transsion/cloud_drive/base/network/response/ApiResponse;
    .locals 2

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/transsion/cloud_drive/base/network/response/ApiResponseExtensionKt;->getHTTP_SUCCESS_CODE_RANGE()Lu15;

    move-result-object p0

    :cond_0
    const-string p2, "successCodeRange"

    invoke-static {p0, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "f"

    invoke-static {p1, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-interface {p1}, Lc74;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lgu8;

    invoke-virtual {p0}, Ls15;->b()I

    move-result p2

    invoke-virtual {p0}, Ls15;->c()I

    move-result p0

    invoke-virtual {p1}, Lgu8;->b()I

    move-result p3

    if-gt p2, p3, :cond_3

    if-gt p3, p0, :cond_3

    invoke-virtual {p1}, Lgu8;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/cloud_drive/base/network/response/BaseResult;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/transsion/cloud_drive/base/network/response/BaseResult;->getCode()I

    move-result p1

    sget-object p2, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;->SUCCESS:Lcom/transsion/cloud_drive/base/network/RequestErrorCode;

    invoke-virtual {p2}, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;->getCode()I

    move-result p2

    if-ne p1, p2, :cond_1

    new-instance p1, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Success;

    invoke-virtual {p0}, Lcom/transsion/cloud_drive/base/network/response/BaseResult;->getData()Ljava/lang/Object;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Success;-><init>(Ljava/lang/Object;)V

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Error;

    invoke-virtual {p0}, Lcom/transsion/cloud_drive/base/network/response/BaseResult;->getCode()I

    move-result p2

    invoke-virtual {p0}, Lcom/transsion/cloud_drive/base/network/response/BaseResult;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p2, p0}, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Error;-><init>(ILjava/lang/String;)V

    goto :goto_1

    :cond_2
    new-instance p0, Lcom/transsion/cloud_drive/base/exceptions/NoContentException;

    invoke-virtual {p1}, Lgu8;->b()I

    move-result p1

    const/4 p2, 0x2

    const/4 p3, 0x0

    invoke-direct {p0, p1, p3, p2, p3}, Lcom/transsion/cloud_drive/base/exceptions/NoContentException;-><init>(ILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p0

    :cond_3
    new-instance p0, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Error;

    sget-object p2, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;->HTTP_ERROR:Lcom/transsion/cloud_drive/base/network/RequestErrorCode;

    invoke-virtual {p2}, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;->getCode()I

    move-result p2

    invoke-virtual {p1}, Lgu8;->b()I

    move-result p3

    invoke-virtual {p1}, Lgu8;->f()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http_status:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "  http_message:"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Error;-><init>(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, p0

    goto :goto_1

    :goto_0
    new-instance p1, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Exception;

    invoke-direct {p1, p0}, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Exception;-><init>(Ljava/lang/Throwable;)V

    :goto_1
    return-object p1
.end method

.method public static final getHTTP_SUCCESS_CODE_RANGE()Lu15;
    .locals 1

    sget-object v0, Lcom/transsion/cloud_drive/base/network/response/ApiResponseExtensionKt;->HTTP_SUCCESS_CODE_RANGE:Lu15;

    return-object v0
.end method

.method public static final onError(Lcom/transsion/cloud_drive/base/network/response/ApiResponse;Le74;)Lcom/transsion/cloud_drive/base/network/response/ApiResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/transsion/cloud_drive/base/network/response/ApiResponse<",
            "+TT;>;",
            "Le74;",
            ")",
            "Lcom/transsion/cloud_drive/base/network/response/ApiResponse<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onResult"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Error;

    if-eqz v0, :cond_0

    invoke-interface {p1, p0}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p0
.end method

.method public static final onException(Lcom/transsion/cloud_drive/base/network/response/ApiResponse;Le74;)Lcom/transsion/cloud_drive/base/network/response/ApiResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/transsion/cloud_drive/base/network/response/ApiResponse<",
            "+TT;>;",
            "Le74;",
            ")",
            "Lcom/transsion/cloud_drive/base/network/response/ApiResponse<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onResult"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Exception;

    if-eqz v0, :cond_0

    invoke-interface {p1, p0}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p0
.end method

.method public static final onSuccess(Lcom/transsion/cloud_drive/base/network/response/ApiResponse;Le74;)Lcom/transsion/cloud_drive/base/network/response/ApiResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/transsion/cloud_drive/base/network/response/ApiResponse<",
            "+TT;>;",
            "Le74;",
            ")",
            "Lcom/transsion/cloud_drive/base/network/response/ApiResponse<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onResult"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Success;

    if-eqz v0, :cond_0

    invoke-interface {p1, p0}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p0
.end method

.method public static final responseOf(Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Companion;Lu15;Lc74;)Lcom/transsion/cloud_drive/base/network/response/ApiResponse;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Companion;",
            "Lu15;",
            "Lc74;",
            ")",
            "Lcom/transsion/cloud_drive/base/network/response/ApiResponse<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "successCodeRange"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "f"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-interface {p2}, Lc74;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lgu8;

    invoke-virtual {p1}, Ls15;->b()I

    move-result p2

    invoke-virtual {p1}, Ls15;->c()I

    move-result p1

    invoke-virtual {p0}, Lgu8;->b()I

    move-result v0

    if-gt p2, v0, :cond_2

    if-gt v0, p1, :cond_2

    invoke-virtual {p0}, Lgu8;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/cloud_drive/base/network/response/BaseResult;

    if-eqz p1, :cond_1

    invoke-static {p1}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/transsion/cloud_drive/base/network/response/BaseResult;->getCode()I

    move-result p0

    sget-object p2, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;->SUCCESS:Lcom/transsion/cloud_drive/base/network/RequestErrorCode;

    invoke-virtual {p2}, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;->getCode()I

    move-result p2

    if-ne p0, p2, :cond_0

    new-instance p0, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Success;

    invoke-virtual {p1}, Lcom/transsion/cloud_drive/base/network/response/BaseResult;->getData()Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Success;-><init>(Ljava/lang/Object;)V

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Error;

    invoke-virtual {p1}, Lcom/transsion/cloud_drive/base/network/response/BaseResult;->getCode()I

    move-result p2

    invoke-virtual {p1}, Lcom/transsion/cloud_drive/base/network/response/BaseResult;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Error;-><init>(ILjava/lang/String;)V

    goto :goto_2

    :cond_1
    new-instance p1, Lcom/transsion/cloud_drive/base/exceptions/NoContentException;

    invoke-virtual {p0}, Lgu8;->b()I

    move-result p0

    const/4 p2, 0x2

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0, p2, v0}, Lcom/transsion/cloud_drive/base/exceptions/NoContentException;-><init>(ILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p1

    :cond_2
    new-instance p1, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Error;

    sget-object p2, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;->HTTP_ERROR:Lcom/transsion/cloud_drive/base/network/RequestErrorCode;

    invoke-virtual {p2}, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;->getCode()I

    move-result p2

    invoke-virtual {p0}, Lgu8;->b()I

    move-result v0

    invoke-virtual {p0}, Lgu8;->f()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http_status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "  http_message:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p2, p0}, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Error;-><init>(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    new-instance p1, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Exception;

    invoke-direct {p1, p0}, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Exception;-><init>(Ljava/lang/Throwable;)V

    :goto_1
    move-object p0, p1

    :goto_2
    return-object p0
.end method

.method public static synthetic responseOf$default(Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Companion;Lu15;Lc74;ILjava/lang/Object;)Lcom/transsion/cloud_drive/base/network/response/ApiResponse;
    .locals 1

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    invoke-static {}, Lcom/transsion/cloud_drive/base/network/response/ApiResponseExtensionKt;->getHTTP_SUCCESS_CODE_RANGE()Lu15;

    move-result-object p1

    :cond_0
    const-string p3, "<this>"

    invoke-static {p0, p3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "successCodeRange"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "f"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-interface {p2}, Lc74;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lgu8;

    invoke-virtual {p1}, Ls15;->b()I

    move-result p2

    invoke-virtual {p1}, Ls15;->c()I

    move-result p1

    invoke-virtual {p0}, Lgu8;->b()I

    move-result p3

    if-gt p2, p3, :cond_3

    if-gt p3, p1, :cond_3

    invoke-virtual {p0}, Lgu8;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/cloud_drive/base/network/response/BaseResult;

    if-eqz p1, :cond_2

    invoke-static {p1}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/transsion/cloud_drive/base/network/response/BaseResult;->getCode()I

    move-result p0

    sget-object p2, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;->SUCCESS:Lcom/transsion/cloud_drive/base/network/RequestErrorCode;

    invoke-virtual {p2}, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;->getCode()I

    move-result p2

    if-ne p0, p2, :cond_1

    new-instance p0, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Success;

    invoke-virtual {p1}, Lcom/transsion/cloud_drive/base/network/response/BaseResult;->getData()Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Success;-><init>(Ljava/lang/Object;)V

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_1
    new-instance p0, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Error;

    invoke-virtual {p1}, Lcom/transsion/cloud_drive/base/network/response/BaseResult;->getCode()I

    move-result p2

    invoke-virtual {p1}, Lcom/transsion/cloud_drive/base/network/response/BaseResult;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Error;-><init>(ILjava/lang/String;)V

    goto :goto_2

    :cond_2
    new-instance p1, Lcom/transsion/cloud_drive/base/exceptions/NoContentException;

    invoke-virtual {p0}, Lgu8;->b()I

    move-result p0

    const/4 p2, 0x2

    const/4 p3, 0x0

    invoke-direct {p1, p0, p3, p2, p3}, Lcom/transsion/cloud_drive/base/exceptions/NoContentException;-><init>(ILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p1

    :cond_3
    new-instance p1, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Error;

    sget-object p2, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;->HTTP_ERROR:Lcom/transsion/cloud_drive/base/network/RequestErrorCode;

    invoke-virtual {p2}, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;->getCode()I

    move-result p2

    invoke-virtual {p0}, Lgu8;->b()I

    move-result p3

    invoke-virtual {p0}, Lgu8;->f()Ljava/lang/String;

    move-result-object p0

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "http_status:"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "  http_message:"

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p2, p0}, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Error;-><init>(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    new-instance p1, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Exception;

    invoke-direct {p1, p0}, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Exception;-><init>(Ljava/lang/Throwable;)V

    :goto_1
    move-object p0, p1

    :goto_2
    return-object p0
.end method

.method public static final synthetic suspendApiResponseOf(Lu15;Le74;Lwh1;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lu15;",
            "Le74;",
            "Lwh1<",
            "-",
            "Lcom/transsion/cloud_drive/base/network/response/ApiResponse<",
            "+TT;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/transsion/cloud_drive/base/network/response/ApiResponseExtensionKt$suspendApiResponseOf$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/transsion/cloud_drive/base/network/response/ApiResponseExtensionKt$suspendApiResponseOf$1;

    iget v1, v0, Lcom/transsion/cloud_drive/base/network/response/ApiResponseExtensionKt$suspendApiResponseOf$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/transsion/cloud_drive/base/network/response/ApiResponseExtensionKt$suspendApiResponseOf$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/transsion/cloud_drive/base/network/response/ApiResponseExtensionKt$suspendApiResponseOf$1;

    invoke-direct {v0, p2}, Lcom/transsion/cloud_drive/base/network/response/ApiResponseExtensionKt$suspendApiResponseOf$1;-><init>(Lwh1;)V

    :goto_0
    iget-object p2, v0, Lcom/transsion/cloud_drive/base/network/response/ApiResponseExtensionKt$suspendApiResponseOf$1;->result:Ljava/lang/Object;

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/transsion/cloud_drive/base/network/response/ApiResponseExtensionKt$suspendApiResponseOf$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lcom/transsion/cloud_drive/base/network/response/ApiResponseExtensionKt$suspendApiResponseOf$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lu15;

    invoke-static {p2}, Lkotlin/c;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, Lkotlin/c;->b(Ljava/lang/Object;)V

    iput-object p0, v0, Lcom/transsion/cloud_drive/base/network/response/ApiResponseExtensionKt$suspendApiResponseOf$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcom/transsion/cloud_drive/base/network/response/ApiResponseExtensionKt$suspendApiResponseOf$1;->label:I

    invoke-interface {p1, v0}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p2, Lgu8;

    :try_start_0
    invoke-virtual {p0}, Ls15;->b()I

    move-result p1

    invoke-virtual {p0}, Ls15;->c()I

    move-result p0

    invoke-virtual {p2}, Lgu8;->b()I

    move-result v0

    if-gt p1, v0, :cond_6

    if-gt v0, p0, :cond_6

    invoke-virtual {p2}, Lgu8;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/cloud_drive/base/network/response/BaseResult;

    if-eqz p0, :cond_5

    invoke-static {p0}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/transsion/cloud_drive/base/network/response/BaseResult;->getCode()I

    move-result p1

    sget-object p2, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;->SUCCESS:Lcom/transsion/cloud_drive/base/network/RequestErrorCode;

    invoke-virtual {p2}, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;->getCode()I

    move-result p2

    if-ne p1, p2, :cond_4

    new-instance p1, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Success;

    invoke-virtual {p0}, Lcom/transsion/cloud_drive/base/network/response/BaseResult;->getData()Ljava/lang/Object;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Success;-><init>(Ljava/lang/Object;)V

    goto :goto_3

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_4
    new-instance p1, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Error;

    invoke-virtual {p0}, Lcom/transsion/cloud_drive/base/network/response/BaseResult;->getCode()I

    move-result p2

    invoke-virtual {p0}, Lcom/transsion/cloud_drive/base/network/response/BaseResult;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p2, p0}, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Error;-><init>(ILjava/lang/String;)V

    goto :goto_3

    :cond_5
    new-instance p0, Lcom/transsion/cloud_drive/base/exceptions/NoContentException;

    invoke-virtual {p2}, Lgu8;->b()I

    move-result p1

    const/4 p2, 0x2

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, v0}, Lcom/transsion/cloud_drive/base/exceptions/NoContentException;-><init>(ILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p0

    :cond_6
    new-instance p1, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Error;

    sget-object p0, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;->HTTP_ERROR:Lcom/transsion/cloud_drive/base/network/RequestErrorCode;

    invoke-virtual {p0}, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;->getCode()I

    move-result p0

    invoke-virtual {p2}, Lgu8;->b()I

    move-result v0

    invoke-virtual {p2}, Lgu8;->f()Ljava/lang/String;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http_status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "  http_message:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Error;-><init>(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_2
    new-instance p1, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Exception;

    invoke-direct {p1, p0}, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Exception;-><init>(Ljava/lang/Throwable;)V

    :goto_3
    return-object p1
.end method

.method private static final synthetic suspendApiResponseOf$$forInline(Lu15;Le74;Lwh1;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lu15;",
            "Le74;",
            "Lwh1<",
            "-",
            "Lcom/transsion/cloud_drive/base/network/response/ApiResponse<",
            "+TT;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-interface {p1, p2}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lgu8;

    :try_start_0
    invoke-virtual {p0}, Ls15;->b()I

    move-result p2

    invoke-virtual {p0}, Ls15;->c()I

    move-result p0

    invoke-virtual {p1}, Lgu8;->b()I

    move-result v0

    if-gt p2, v0, :cond_2

    if-gt v0, p0, :cond_2

    invoke-virtual {p1}, Lgu8;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/cloud_drive/base/network/response/BaseResult;

    if-eqz p0, :cond_1

    invoke-static {p0}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/transsion/cloud_drive/base/network/response/BaseResult;->getCode()I

    move-result p1

    sget-object p2, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;->SUCCESS:Lcom/transsion/cloud_drive/base/network/RequestErrorCode;

    invoke-virtual {p2}, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;->getCode()I

    move-result p2

    if-ne p1, p2, :cond_0

    new-instance p1, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Success;

    invoke-virtual {p0}, Lcom/transsion/cloud_drive/base/network/response/BaseResult;->getData()Ljava/lang/Object;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Success;-><init>(Ljava/lang/Object;)V

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Error;

    invoke-virtual {p0}, Lcom/transsion/cloud_drive/base/network/response/BaseResult;->getCode()I

    move-result p2

    invoke-virtual {p0}, Lcom/transsion/cloud_drive/base/network/response/BaseResult;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p2, p0}, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Error;-><init>(ILjava/lang/String;)V

    goto :goto_1

    :cond_1
    new-instance p0, Lcom/transsion/cloud_drive/base/exceptions/NoContentException;

    invoke-virtual {p1}, Lgu8;->b()I

    move-result p1

    const/4 p2, 0x2

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, v0}, Lcom/transsion/cloud_drive/base/exceptions/NoContentException;-><init>(ILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p0

    :cond_2
    new-instance p0, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Error;

    sget-object p2, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;->HTTP_ERROR:Lcom/transsion/cloud_drive/base/network/RequestErrorCode;

    invoke-virtual {p2}, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;->getCode()I

    move-result p2

    invoke-virtual {p1}, Lgu8;->b()I

    move-result v0

    invoke-virtual {p1}, Lgu8;->f()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http_status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "  http_message:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Error;-><init>(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, p0

    goto :goto_1

    :goto_0
    new-instance p1, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Exception;

    invoke-direct {p1, p0}, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Exception;-><init>(Ljava/lang/Throwable;)V

    :goto_1
    return-object p1
.end method

.method public static synthetic suspendApiResponseOf$default(Lu15;Le74;Lwh1;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 p4, 0x1

    and-int/2addr p3, p4

    if-eqz p3, :cond_0

    invoke-static {}, Lcom/transsion/cloud_drive/base/network/response/ApiResponseExtensionKt;->getHTTP_SUCCESS_CODE_RANGE()Lu15;

    move-result-object p0

    :cond_0
    const/4 p3, 0x0

    invoke-static {p3}, Lj05;->c(I)V

    invoke-interface {p1, p2}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p4}, Lj05;->c(I)V

    check-cast p1, Lgu8;

    :try_start_0
    invoke-virtual {p0}, Ls15;->b()I

    move-result p2

    invoke-virtual {p0}, Ls15;->c()I

    move-result p0

    invoke-virtual {p1}, Lgu8;->b()I

    move-result p3

    if-gt p2, p3, :cond_3

    if-gt p3, p0, :cond_3

    invoke-virtual {p1}, Lgu8;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/cloud_drive/base/network/response/BaseResult;

    if-eqz p0, :cond_2

    invoke-static {p0}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/transsion/cloud_drive/base/network/response/BaseResult;->getCode()I

    move-result p1

    sget-object p2, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;->SUCCESS:Lcom/transsion/cloud_drive/base/network/RequestErrorCode;

    invoke-virtual {p2}, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;->getCode()I

    move-result p2

    if-ne p1, p2, :cond_1

    new-instance p1, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Success;

    invoke-virtual {p0}, Lcom/transsion/cloud_drive/base/network/response/BaseResult;->getData()Ljava/lang/Object;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Success;-><init>(Ljava/lang/Object;)V

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Error;

    invoke-virtual {p0}, Lcom/transsion/cloud_drive/base/network/response/BaseResult;->getCode()I

    move-result p2

    invoke-virtual {p0}, Lcom/transsion/cloud_drive/base/network/response/BaseResult;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p2, p0}, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Error;-><init>(ILjava/lang/String;)V

    goto :goto_1

    :cond_2
    new-instance p0, Lcom/transsion/cloud_drive/base/exceptions/NoContentException;

    invoke-virtual {p1}, Lgu8;->b()I

    move-result p1

    const/4 p2, 0x2

    const/4 p3, 0x0

    invoke-direct {p0, p1, p3, p2, p3}, Lcom/transsion/cloud_drive/base/exceptions/NoContentException;-><init>(ILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p0

    :cond_3
    new-instance p0, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Error;

    sget-object p2, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;->HTTP_ERROR:Lcom/transsion/cloud_drive/base/network/RequestErrorCode;

    invoke-virtual {p2}, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;->getCode()I

    move-result p2

    invoke-virtual {p1}, Lgu8;->b()I

    move-result p3

    invoke-virtual {p1}, Lgu8;->f()Ljava/lang/String;

    move-result-object p1

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "http_status:"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "  http_message:"

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Error;-><init>(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, p0

    goto :goto_1

    :goto_0
    new-instance p1, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Exception;

    invoke-direct {p1, p0}, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Exception;-><init>(Ljava/lang/Throwable;)V

    :goto_1
    return-object p1
.end method

.method public static final suspendResponseOf(Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Companion;Lu15;Le74;Lwh1;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Companion;",
            "Lu15;",
            "Le74;",
            "Lwh1<",
            "-",
            "Lcom/transsion/cloud_drive/base/network/response/ApiResponse<",
            "+TT;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of p0, p3, Lcom/transsion/cloud_drive/base/network/response/ApiResponseExtensionKt$suspendResponseOf$1;

    if-eqz p0, :cond_0

    move-object p0, p3

    check-cast p0, Lcom/transsion/cloud_drive/base/network/response/ApiResponseExtensionKt$suspendResponseOf$1;

    iget v0, p0, Lcom/transsion/cloud_drive/base/network/response/ApiResponseExtensionKt$suspendResponseOf$1;->label:I

    const/high16 v1, -0x80000000

    and-int v2, v0, v1

    if-eqz v2, :cond_0

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/transsion/cloud_drive/base/network/response/ApiResponseExtensionKt$suspendResponseOf$1;->label:I

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/transsion/cloud_drive/base/network/response/ApiResponseExtensionKt$suspendResponseOf$1;

    invoke-direct {p0, p3}, Lcom/transsion/cloud_drive/base/network/response/ApiResponseExtensionKt$suspendResponseOf$1;-><init>(Lwh1;)V

    :goto_0
    iget-object p3, p0, Lcom/transsion/cloud_drive/base/network/response/ApiResponseExtensionKt$suspendResponseOf$1;->result:Ljava/lang/Object;

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/transsion/cloud_drive/base/network/response/ApiResponseExtensionKt$suspendResponseOf$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v2, :cond_1

    iget-object p0, p0, Lcom/transsion/cloud_drive/base/network/response/ApiResponseExtensionKt$suspendResponseOf$1;->L$0:Ljava/lang/Object;

    move-object p1, p0

    check-cast p1, Lu15;

    invoke-static {p3}, Lkotlin/c;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p3}, Lkotlin/c;->b(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/transsion/cloud_drive/base/network/response/ApiResponseExtensionKt$suspendResponseOf$1;->L$0:Ljava/lang/Object;

    iput v2, p0, Lcom/transsion/cloud_drive/base/network/response/ApiResponseExtensionKt$suspendResponseOf$1;->label:I

    invoke-interface {p2, p0}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v0, :cond_3

    return-object v0

    :cond_3
    :goto_1
    check-cast p3, Lgu8;

    :try_start_0
    invoke-virtual {p1}, Ls15;->b()I

    move-result p0

    invoke-virtual {p1}, Ls15;->c()I

    move-result p1

    invoke-virtual {p3}, Lgu8;->b()I

    move-result p2

    if-gt p0, p2, :cond_6

    if-gt p2, p1, :cond_6

    invoke-virtual {p3}, Lgu8;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/cloud_drive/base/network/response/BaseResult;

    if-eqz p0, :cond_5

    invoke-static {p0}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/transsion/cloud_drive/base/network/response/BaseResult;->getCode()I

    move-result p1

    sget-object p2, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;->SUCCESS:Lcom/transsion/cloud_drive/base/network/RequestErrorCode;

    invoke-virtual {p2}, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;->getCode()I

    move-result p2

    if-ne p1, p2, :cond_4

    new-instance p1, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Success;

    invoke-virtual {p0}, Lcom/transsion/cloud_drive/base/network/response/BaseResult;->getData()Ljava/lang/Object;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Success;-><init>(Ljava/lang/Object;)V

    goto :goto_3

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_4
    new-instance p1, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Error;

    invoke-virtual {p0}, Lcom/transsion/cloud_drive/base/network/response/BaseResult;->getCode()I

    move-result p2

    invoke-virtual {p0}, Lcom/transsion/cloud_drive/base/network/response/BaseResult;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p2, p0}, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Error;-><init>(ILjava/lang/String;)V

    goto :goto_3

    :cond_5
    new-instance p0, Lcom/transsion/cloud_drive/base/exceptions/NoContentException;

    invoke-virtual {p3}, Lgu8;->b()I

    move-result p1

    const/4 p2, 0x2

    const/4 p3, 0x0

    invoke-direct {p0, p1, p3, p2, p3}, Lcom/transsion/cloud_drive/base/exceptions/NoContentException;-><init>(ILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p0

    :cond_6
    new-instance p1, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Error;

    sget-object p0, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;->HTTP_ERROR:Lcom/transsion/cloud_drive/base/network/RequestErrorCode;

    invoke-virtual {p0}, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;->getCode()I

    move-result p0

    invoke-virtual {p3}, Lgu8;->b()I

    move-result p2

    invoke-virtual {p3}, Lgu8;->f()Ljava/lang/String;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http_status:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "  http_message:"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Error;-><init>(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_2
    new-instance p1, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Exception;

    invoke-direct {p1, p0}, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Exception;-><init>(Ljava/lang/Throwable;)V

    :goto_3
    return-object p1
.end method

.method private static final suspendResponseOf$$forInline(Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Companion;Lu15;Le74;Lwh1;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Companion;",
            "Lu15;",
            "Le74;",
            "Lwh1<",
            "-",
            "Lcom/transsion/cloud_drive/base/network/response/ApiResponse<",
            "+TT;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-interface {p2, p3}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lgu8;

    :try_start_0
    invoke-virtual {p1}, Ls15;->b()I

    move-result p2

    invoke-virtual {p1}, Ls15;->c()I

    move-result p1

    invoke-virtual {p0}, Lgu8;->b()I

    move-result p3

    if-gt p2, p3, :cond_2

    if-gt p3, p1, :cond_2

    invoke-virtual {p0}, Lgu8;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/cloud_drive/base/network/response/BaseResult;

    if-eqz p1, :cond_1

    invoke-static {p1}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/transsion/cloud_drive/base/network/response/BaseResult;->getCode()I

    move-result p0

    sget-object p2, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;->SUCCESS:Lcom/transsion/cloud_drive/base/network/RequestErrorCode;

    invoke-virtual {p2}, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;->getCode()I

    move-result p2

    if-ne p0, p2, :cond_0

    new-instance p0, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Success;

    invoke-virtual {p1}, Lcom/transsion/cloud_drive/base/network/response/BaseResult;->getData()Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Success;-><init>(Ljava/lang/Object;)V

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Error;

    invoke-virtual {p1}, Lcom/transsion/cloud_drive/base/network/response/BaseResult;->getCode()I

    move-result p2

    invoke-virtual {p1}, Lcom/transsion/cloud_drive/base/network/response/BaseResult;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Error;-><init>(ILjava/lang/String;)V

    goto :goto_2

    :cond_1
    new-instance p1, Lcom/transsion/cloud_drive/base/exceptions/NoContentException;

    invoke-virtual {p0}, Lgu8;->b()I

    move-result p0

    const/4 p2, 0x2

    const/4 p3, 0x0

    invoke-direct {p1, p0, p3, p2, p3}, Lcom/transsion/cloud_drive/base/exceptions/NoContentException;-><init>(ILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p1

    :cond_2
    new-instance p1, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Error;

    sget-object p2, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;->HTTP_ERROR:Lcom/transsion/cloud_drive/base/network/RequestErrorCode;

    invoke-virtual {p2}, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;->getCode()I

    move-result p2

    invoke-virtual {p0}, Lgu8;->b()I

    move-result p3

    invoke-virtual {p0}, Lgu8;->f()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http_status:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "  http_message:"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p2, p0}, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Error;-><init>(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    new-instance p1, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Exception;

    invoke-direct {p1, p0}, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Exception;-><init>(Ljava/lang/Throwable;)V

    :goto_1
    move-object p0, p1

    :goto_2
    return-object p0
.end method

.method public static synthetic suspendResponseOf$default(Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Companion;Lu15;Le74;Lwh1;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x1

    and-int/2addr p4, p0

    if-eqz p4, :cond_0

    invoke-static {}, Lcom/transsion/cloud_drive/base/network/response/ApiResponseExtensionKt;->getHTTP_SUCCESS_CODE_RANGE()Lu15;

    move-result-object p1

    :cond_0
    const/4 p4, 0x0

    invoke-static {p4}, Lj05;->c(I)V

    invoke-interface {p2, p3}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p0}, Lj05;->c(I)V

    check-cast p2, Lgu8;

    :try_start_0
    invoke-virtual {p1}, Ls15;->b()I

    move-result p0

    invoke-virtual {p1}, Ls15;->c()I

    move-result p1

    invoke-virtual {p2}, Lgu8;->b()I

    move-result p3

    if-gt p0, p3, :cond_3

    if-gt p3, p1, :cond_3

    invoke-virtual {p2}, Lgu8;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/cloud_drive/base/network/response/BaseResult;

    if-eqz p0, :cond_2

    invoke-static {p0}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/transsion/cloud_drive/base/network/response/BaseResult;->getCode()I

    move-result p1

    sget-object p2, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;->SUCCESS:Lcom/transsion/cloud_drive/base/network/RequestErrorCode;

    invoke-virtual {p2}, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;->getCode()I

    move-result p2

    if-ne p1, p2, :cond_1

    new-instance p1, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Success;

    invoke-virtual {p0}, Lcom/transsion/cloud_drive/base/network/response/BaseResult;->getData()Ljava/lang/Object;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Success;-><init>(Ljava/lang/Object;)V

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Error;

    invoke-virtual {p0}, Lcom/transsion/cloud_drive/base/network/response/BaseResult;->getCode()I

    move-result p2

    invoke-virtual {p0}, Lcom/transsion/cloud_drive/base/network/response/BaseResult;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p2, p0}, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Error;-><init>(ILjava/lang/String;)V

    goto :goto_1

    :cond_2
    new-instance p0, Lcom/transsion/cloud_drive/base/exceptions/NoContentException;

    invoke-virtual {p2}, Lgu8;->b()I

    move-result p1

    const/4 p2, 0x2

    const/4 p3, 0x0

    invoke-direct {p0, p1, p3, p2, p3}, Lcom/transsion/cloud_drive/base/exceptions/NoContentException;-><init>(ILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p0

    :cond_3
    new-instance p1, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Error;

    sget-object p0, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;->HTTP_ERROR:Lcom/transsion/cloud_drive/base/network/RequestErrorCode;

    invoke-virtual {p0}, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;->getCode()I

    move-result p0

    invoke-virtual {p2}, Lgu8;->b()I

    move-result p3

    invoke-virtual {p2}, Lgu8;->f()Ljava/lang/String;

    move-result-object p2

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "http_status:"

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "  http_message:"

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Error;-><init>(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    new-instance p1, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Exception;

    invoke-direct {p1, p0}, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Exception;-><init>(Ljava/lang/Throwable;)V

    :goto_1
    return-object p1
.end method
