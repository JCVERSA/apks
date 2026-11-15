.class public final synthetic Lcom/transsnet/downloader/fragment/c3;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsnet/downloader/fragment/c3;->a:Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;

    .line 5
    .line 6
    iput p2, p0, Lcom/transsnet/downloader/fragment/c3;->b:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/fragment/c3;->a:Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;

    .line 2
    .line 3
    iget v1, p0, Lcom/transsnet/downloader/fragment/c3;->b:I

    .line 4
    .line 5
    check-cast p1, Lcom/transsion/moviedetailapi/bean/ResourcesSeasonList;

    .line 6
    .line 7
    invoke-static {v0, v1, p1}, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->I0(Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;ILcom/transsion/moviedetailapi/bean/ResourcesSeasonList;)Lkotlin/Unit;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method
