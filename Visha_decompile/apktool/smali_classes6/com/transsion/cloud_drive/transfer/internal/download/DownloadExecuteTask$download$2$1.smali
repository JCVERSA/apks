.class final Lcom/transsion/cloud_drive/transfer/internal/download/DownloadExecuteTask$download$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Le74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/cloud_drive/transfer/internal/download/DownloadExecuteTask;->M(Ljava/util/List;)V
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
        "Lby2;",
        "it",
        "Lzfb;",
        "invoke",
        "(Lby2;)V",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/cloud_drive/transfer/internal/download/DownloadExecuteTask;


# direct methods
.method public constructor <init>(Lcom/transsion/cloud_drive/transfer/internal/download/DownloadExecuteTask;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/cloud_drive/transfer/internal/download/DownloadExecuteTask$download$2$1;->this$0:Lcom/transsion/cloud_drive/transfer/internal/download/DownloadExecuteTask;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lby2;

    invoke-virtual {p0, p1}, Lcom/transsion/cloud_drive/transfer/internal/download/DownloadExecuteTask$download$2$1;->invoke(Lby2;)V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method public final invoke(Lby2;)V
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p0, p0, Lcom/transsion/cloud_drive/transfer/internal/download/DownloadExecuteTask$download$2$1;->this$0:Lcom/transsion/cloud_drive/transfer/internal/download/DownloadExecuteTask;

    invoke-static {p0, p1}, Lcom/transsion/cloud_drive/transfer/internal/download/DownloadExecuteTask;->H(Lcom/transsion/cloud_drive/transfer/internal/download/DownloadExecuteTask;Lby2;)V

    return-void
.end method
