.class public final Lr5b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lr5b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lr5b$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/transsion/cloud_drive/transfer/exception/TransferException;)Lr5b;
    .locals 6

    const-string p0, "error"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    instance-of p0, v3, Lcom/transsion/cloud_drive/transfer/exception/ServerException;

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Lcom/transsion/cloud_drive/transfer/exception/TransferException;->getCode()I

    move-result p0

    sget-object v0, Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;->AUTH_ERROR:Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;

    invoke-virtual {v0}, Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;->getCode()I

    move-result v0

    if-eq p0, v0, :cond_1

    new-instance p0, Lr5b;

    sget-object v0, Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;->SERVER:Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;

    invoke-virtual {v0}, Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;->getCode()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    move-object v2, p1

    move-object p1, v3

    check-cast p1, Lcom/transsion/cloud_drive/transfer/exception/ServerException;

    invoke-virtual {p1}, Lcom/transsion/cloud_drive/transfer/exception/ServerException;->getCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lr5b;-><init>(ILjava/lang/String;Ljava/lang/Throwable;Ljava/lang/Integer;Ljava/lang/String;)V

    return-object p0

    :cond_1
    new-instance p0, Lr5b;

    invoke-virtual {p1}, Lcom/transsion/cloud_drive/transfer/exception/TransferException;->getCode()I

    move-result v1

    invoke-virtual {p1}, Lcom/transsion/cloud_drive/transfer/exception/TransferException;->getErrorCode()Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lr5b;-><init>(ILjava/lang/String;Ljava/lang/Throwable;Ljava/lang/Integer;Ljava/lang/String;)V

    return-object p0
.end method
