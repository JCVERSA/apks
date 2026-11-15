.class Lcom/mgtv/downloader/p2p/DownloadFacade$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgtv/downloader/p2p/DownloadFacade;->pushMessage(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mgtv/downloader/p2p/DownloadFacade;

.field final synthetic val$arg1:Ljava/lang/Object;

.field final synthetic val$arg2:Ljava/lang/Object;

.field final synthetic val$arg3:Ljava/lang/Object;

.field final synthetic val$arg4:Ljava/lang/Object;

.field final synthetic val$arg5:Ljava/lang/Object;

.field final synthetic val$message:I


# direct methods
.method public constructor <init>(Lcom/mgtv/downloader/p2p/DownloadFacade;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/downloader/p2p/DownloadFacade$1;->this$0:Lcom/mgtv/downloader/p2p/DownloadFacade;

    iput p2, p0, Lcom/mgtv/downloader/p2p/DownloadFacade$1;->val$message:I

    iput-object p3, p0, Lcom/mgtv/downloader/p2p/DownloadFacade$1;->val$arg1:Ljava/lang/Object;

    iput-object p4, p0, Lcom/mgtv/downloader/p2p/DownloadFacade$1;->val$arg2:Ljava/lang/Object;

    iput-object p5, p0, Lcom/mgtv/downloader/p2p/DownloadFacade$1;->val$arg3:Ljava/lang/Object;

    iput-object p6, p0, Lcom/mgtv/downloader/p2p/DownloadFacade$1;->val$arg4:Ljava/lang/Object;

    iput-object p7, p0, Lcom/mgtv/downloader/p2p/DownloadFacade$1;->val$arg5:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/mgtv/downloader/p2p/DownloadFacade$1;->this$0:Lcom/mgtv/downloader/p2p/DownloadFacade;

    iget v1, p0, Lcom/mgtv/downloader/p2p/DownloadFacade$1;->val$message:I

    iget-object v2, p0, Lcom/mgtv/downloader/p2p/DownloadFacade$1;->val$arg1:Ljava/lang/Object;

    iget-object v3, p0, Lcom/mgtv/downloader/p2p/DownloadFacade$1;->val$arg2:Ljava/lang/Object;

    iget-object v4, p0, Lcom/mgtv/downloader/p2p/DownloadFacade$1;->val$arg3:Ljava/lang/Object;

    iget-object v5, p0, Lcom/mgtv/downloader/p2p/DownloadFacade$1;->val$arg4:Ljava/lang/Object;

    iget-object v6, p0, Lcom/mgtv/downloader/p2p/DownloadFacade$1;->val$arg5:Ljava/lang/Object;

    invoke-static/range {v0 .. v6}, Lcom/mgtv/downloader/p2p/DownloadFacade;->access$000(Lcom/mgtv/downloader/p2p/DownloadFacade;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
