.class final Lcom/transsion/cloud_drive/transfer/internal/download/DownloadManagerImpl$resume$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Le74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/cloud_drive/transfer/internal/download/DownloadManagerImpl;->b(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Le74;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0005\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "Lcom/transsion/cloud_drive/transfer/internal/download/DownloadExecuteTask;",
        "it",
        "Lzfb;",
        "invoke",
        "(Lcom/transsion/cloud_drive/transfer/internal/download/DownloadExecuteTask;)V",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/transsion/cloud_drive/transfer/internal/download/DownloadManagerImpl$resume$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/cloud_drive/transfer/internal/download/DownloadManagerImpl$resume$1;

    invoke-direct {v0}, Lcom/transsion/cloud_drive/transfer/internal/download/DownloadManagerImpl$resume$1;-><init>()V

    sput-object v0, Lcom/transsion/cloud_drive/transfer/internal/download/DownloadManagerImpl$resume$1;->INSTANCE:Lcom/transsion/cloud_drive/transfer/internal/download/DownloadManagerImpl$resume$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/transsion/cloud_drive/transfer/internal/download/DownloadExecuteTask;

    invoke-virtual {p0, p1}, Lcom/transsion/cloud_drive/transfer/internal/download/DownloadManagerImpl$resume$1;->invoke(Lcom/transsion/cloud_drive/transfer/internal/download/DownloadExecuteTask;)V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method public final invoke(Lcom/transsion/cloud_drive/transfer/internal/download/DownloadExecuteTask;)V
    .locals 0

    const-string p0, "it"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object p0, Lcom/transsion/cloud_drive/transfer/api/model/TransferStatus;->IDLE:Lcom/transsion/cloud_drive/transfer/api/model/TransferStatus;

    invoke-virtual {p1, p0}, Lwc0;->C(Lcom/transsion/cloud_drive/transfer/api/model/TransferStatus;)V

    return-void
.end method
