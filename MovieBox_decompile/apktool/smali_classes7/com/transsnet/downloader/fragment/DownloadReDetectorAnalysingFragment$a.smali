.class public final Lcom/transsnet/downloader/fragment/DownloadReDetectorAnalysingFragment$a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsnet/downloader/fragment/DownloadReDetectorAnalysingFragment;
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
    invoke-direct {p0}, Lcom/transsnet/downloader/fragment/DownloadReDetectorAnalysingFragment$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/Subject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)Lcom/transsnet/downloader/fragment/DownloadReDetectorAnalysingFragment;
    .locals 3

    .line 1
    new-instance v0, Lcom/transsnet/downloader/fragment/DownloadReDetectorAnalysingFragment;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsnet/downloader/fragment/DownloadReDetectorAnalysingFragment;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "extra_page_from"

    .line 7
    .line 8
    invoke-static {v1, p3}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 9
    .line 10
    .line 11
    move-result-object p3

    .line 12
    const-string v1, "extra_last_page_from"

    .line 13
    .line 14
    invoke-static {v1, p4}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 15
    .line 16
    .line 17
    move-result-object p4

    .line 18
    const-string v1, "extra_subject"

    .line 19
    .line 20
    invoke-static {v1, p2}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    const-string v1, "extra_link_url"

    .line 25
    .line 26
    invoke-static {v1, p1}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    const-string v1, "extra_ops"

    .line 31
    .line 32
    invoke-static {v1, p5}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 33
    .line 34
    .line 35
    move-result-object p5

    .line 36
    const-string v1, "extra_resource"

    .line 37
    .line 38
    invoke-static {v1, p6}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 39
    .line 40
    .line 41
    move-result-object p6

    .line 42
    const-string v1, "extra_download_execute_download"

    .line 43
    .line 44
    invoke-static {v1, p7}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 45
    .line 46
    .line 47
    move-result-object p7

    .line 48
    const-string v1, "extra_module_name"

    .line 49
    .line 50
    invoke-static {v1, p8}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 51
    .line 52
    .line 53
    move-result-object p8

    .line 54
    const/16 v1, 0x8

    .line 55
    .line 56
    new-array v1, v1, [Lkotlin/Pair;

    .line 57
    .line 58
    const/4 v2, 0x0

    .line 59
    aput-object p3, v1, v2

    .line 60
    .line 61
    const/4 p3, 0x1

    .line 62
    aput-object p4, v1, p3

    .line 63
    .line 64
    const/4 p3, 0x2

    .line 65
    aput-object p2, v1, p3

    .line 66
    .line 67
    const/4 p2, 0x3

    .line 68
    aput-object p1, v1, p2

    .line 69
    .line 70
    const/4 p1, 0x4

    .line 71
    aput-object p5, v1, p1

    .line 72
    .line 73
    const/4 p1, 0x5

    .line 74
    aput-object p6, v1, p1

    .line 75
    .line 76
    const/4 p1, 0x6

    .line 77
    aput-object p7, v1, p1

    .line 78
    .line 79
    const/4 p1, 0x7

    .line 80
    aput-object p8, v1, p1

    .line 81
    .line 82
    invoke-static {v1}, Landroidx/core/os/d;->b([Lkotlin/Pair;)Landroid/os/Bundle;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 87
    .line 88
    .line 89
    return-object v0
.end method
