.class public final synthetic Lcom/transsnet/downloader/fragment/m2;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic a:Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupMainFragment;

.field public final synthetic b:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupMainFragment;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsnet/downloader/fragment/m2;->a:Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupMainFragment;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/transsnet/downloader/fragment/m2;->b:Ljava/util/List;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/fragment/m2;->a:Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupMainFragment;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsnet/downloader/fragment/m2;->b:Ljava/util/List;

    .line 4
    .line 5
    check-cast p1, Ljava/lang/Integer;

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    check-cast p2, Lcom/transsnet/downloader/widget/e;

    .line 12
    .line 13
    invoke-static {v0, v1, p1, p2}, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupMainFragment;->b1(Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupMainFragment;Ljava/util/List;ILcom/transsnet/downloader/widget/e;)Lkotlin/Unit;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method
