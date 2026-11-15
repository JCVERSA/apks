.class public final Lcom/transsnet/downloader/dialog/DownloadSeasonsSelectFragment$a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsnet/downloader/dialog/DownloadSeasonsSelectFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsnet/downloader/dialog/DownloadSeasonsSelectFragment$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/transsion/moviedetailapi/bean/ResourcesSeasonList;Ljava/lang/Integer;Z)Lcom/transsnet/downloader/dialog/DownloadSeasonsSelectFragment;
    .locals 3

    .line 1
    new-instance v0, Lcom/transsnet/downloader/dialog/DownloadSeasonsSelectFragment;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsnet/downloader/dialog/DownloadSeasonsSelectFragment;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 7
    .line 8
    .line 9
    move-result-object p3

    .line 10
    const-string v1, "extra_dialog_style"

    .line 11
    .line 12
    invoke-static {v1, p3}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 13
    .line 14
    .line 15
    move-result-object p3

    .line 16
    const-string v1, "extra_subject_id_type"

    .line 17
    .line 18
    invoke-static {v1, p2}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    const/4 v1, 0x2

    .line 23
    new-array v1, v1, [Lkotlin/Pair;

    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    aput-object p3, v1, v2

    .line 27
    .line 28
    const/4 p3, 0x1

    .line 29
    aput-object p2, v1, p3

    .line 30
    .line 31
    invoke-static {v1}, Landroidx/core/os/d;->b([Lkotlin/Pair;)Landroid/os/Bundle;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    invoke-virtual {v0, p2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, p1}, Lcom/transsnet/downloader/dialog/DownloadSeasonsSelectFragment;->O0(Lcom/transsion/moviedetailapi/bean/ResourcesSeasonList;)V

    .line 39
    .line 40
    .line 41
    return-object v0
.end method
