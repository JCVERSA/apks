.class public final Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Exception;
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
    name = "Exception"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0001\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0013\u0010\u000c\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0096\u0002J\u0008\u0010\u0010\u001a\u00020\u0011H\u0016J\u0008\u0010\u0012\u001a\u00020\u0007H\u0016R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Exception;",
        "Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure;",
        "",
        "throwable",
        "",
        "(Ljava/lang/Throwable;)V",
        "message",
        "",
        "getMessage",
        "()Ljava/lang/String;",
        "getThrowable",
        "()Ljava/lang/Throwable;",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
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
.field private final message:Ljava/lang/String;

.field private final throwable:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "throwable"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Exception;->throwable:Ljava/lang/Throwable;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Exception;->message:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Exception;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Exception;->throwable:Ljava/lang/Throwable;

    check-cast p1, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Exception;

    iget-object p1, p1, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Exception;->throwable:Ljava/lang/Throwable;

    invoke-static {p0, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final getMessage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Exception;->message:Ljava/lang/String;

    return-object p0
.end method

.method public final getThrowable()Ljava/lang/Throwable;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Exception;->throwable:Ljava/lang/Throwable;

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    iget-object p0, p0, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Exception;->throwable:Ljava/lang/Throwable;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    const/16 v0, 0x20f

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Exception;->message:Ljava/lang/String;

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method
