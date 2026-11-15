.class public final synthetic Lcom/transsnet/downloader/ugc/dialog/j;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lcom/transsnet/downloader/ugc/dialog/UGCDownloadDialog;

.field public final synthetic b:Lcom/transsnet/downloader/ugc/util/UGCDownloadResolutionBean;

.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/Integer;


# direct methods
.method public synthetic constructor <init>(Lcom/transsnet/downloader/ugc/dialog/UGCDownloadDialog;Lcom/transsnet/downloader/ugc/util/UGCDownloadResolutionBean;ILjava/lang/Integer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsnet/downloader/ugc/dialog/j;->a:Lcom/transsnet/downloader/ugc/dialog/UGCDownloadDialog;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/transsnet/downloader/ugc/dialog/j;->b:Lcom/transsnet/downloader/ugc/util/UGCDownloadResolutionBean;

    .line 7
    .line 8
    iput p3, p0, Lcom/transsnet/downloader/ugc/dialog/j;->c:I

    .line 9
    .line 10
    iput-object p4, p0, Lcom/transsnet/downloader/ugc/dialog/j;->d:Ljava/lang/Integer;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/ugc/dialog/j;->a:Lcom/transsnet/downloader/ugc/dialog/UGCDownloadDialog;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsnet/downloader/ugc/dialog/j;->b:Lcom/transsnet/downloader/ugc/util/UGCDownloadResolutionBean;

    .line 4
    .line 5
    iget v2, p0, Lcom/transsnet/downloader/ugc/dialog/j;->c:I

    .line 6
    .line 7
    iget-object v3, p0, Lcom/transsnet/downloader/ugc/dialog/j;->d:Ljava/lang/Integer;

    .line 8
    .line 9
    invoke-static {v0, v1, v2, v3}, Lcom/transsnet/downloader/ugc/dialog/UGCDownloadDialog;->B0(Lcom/transsnet/downloader/ugc/dialog/UGCDownloadDialog;Lcom/transsnet/downloader/ugc/util/UGCDownloadResolutionBean;ILjava/lang/Integer;)Lkotlin/Unit;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method
