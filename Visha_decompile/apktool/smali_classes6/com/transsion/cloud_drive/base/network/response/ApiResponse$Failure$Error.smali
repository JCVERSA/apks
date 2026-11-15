.class public final Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Error;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Error"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0001\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\u0013\u0010\u000c\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0096\u0002J\u0008\u0010\u0010\u001a\u00020\u0004H\u0016J\u0008\u0010\u0011\u001a\u00020\u0006H\u0016R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Error;",
        "Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure;",
        "",
        "errorCode",
        "",
        "message",
        "",
        "(ILjava/lang/String;)V",
        "getErrorCode",
        "()I",
        "getMessage",
        "()Ljava/lang/String;",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "toString",
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
.field private final errorCode:I

.field private final message:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    const-string v0, "message"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Error;->errorCode:I

    iput-object p2, p0, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Error;->message:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 2
    const-string p2, ""

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Error;-><init>(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Error;

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Error;->errorCode:I

    check-cast p1, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Error;

    iget p1, p1, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Error;->errorCode:I

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final getErrorCode()I
    .locals 0

    iget p0, p0, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Error;->errorCode:I

    return p0
.end method

.method public final getMessage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Error;->message:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Error;->errorCode:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Error;->message:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Error;->errorCode:I

    iget-object p0, p0, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Error;->message:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "errCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "  errorMessage:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
