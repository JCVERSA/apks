.class public final Lcom/transsion/cloud_drive/transfer/exception/TransferException;
.super Ljava/lang/Exception;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0018\u00002\u00060\u0001j\u0002`\u0002B%\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0002\u0010\tJ\u0006\u0010\u0010\u001a\u00020\u0011J\u0008\u0010\u0012\u001a\u00020\u0006H\u0016R\u0011\u0010\n\u001a\u00020\u000b8F\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/transsion/cloud_drive/transfer/exception/TransferException;",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
        "errorCode",
        "Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;",
        "errorMessage",
        "",
        "cause",
        "",
        "(Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;Ljava/lang/String;Ljava/lang/Throwable;)V",
        "code",
        "",
        "getCode",
        "()I",
        "getErrorCode",
        "()Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;",
        "isNoNetwork",
        "",
        "toString",
        "cloud-drive-transfer_release"
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
.field private final errorCode:Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;


# direct methods
.method public constructor <init>(Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "errorCode"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p2, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    iput-object p1, p0, Lcom/transsion/cloud_drive/transfer/exception/TransferException;->errorCode:Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    .line 1
    invoke-virtual {p1}, Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;->getMessage()Ljava/lang/String;

    move-result-object p2

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 2
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/cloud_drive/transfer/exception/TransferException;-><init>(Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public final getCode()I
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud_drive/transfer/exception/TransferException;->errorCode:Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;

    invoke-virtual {p0}, Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;->getCode()I

    move-result p0

    return p0
.end method

.method public final getErrorCode()Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud_drive/transfer/exception/TransferException;->errorCode:Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;

    return-object p0
.end method

.method public final isNoNetwork()Z
    .locals 1

    iget-object p0, p0, Lcom/transsion/cloud_drive/transfer/exception/TransferException;->errorCode:Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;

    sget-object v0, Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;->NO_NETWORK:Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/transsion/cloud_drive/transfer/exception/TransferException;->errorCode:Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;

    invoke-virtual {v0}, Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;->getCode()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/cloud_drive/transfer/exception/TransferException;->errorCode:Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;

    invoke-virtual {v1}, Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TransferException(code="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", message="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", cause="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
