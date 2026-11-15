.class public final Lcom/transsion/shorttv_pugc/ui/dialog/ShortTvDownloadResDialog$a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/shorttv_pugc/ui/dialog/ShortTvDownloadResDialog;
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
    invoke-direct {p0}, Lcom/transsion/shorttv_pugc/ui/dialog/ShortTvDownloadResDialog$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/shorttv_pugc/bean/Subject;Ljava/lang/String;Ljava/lang/String;Z)Lcom/transsion/shorttv_pugc/ui/dialog/ShortTvDownloadResDialog;
    .locals 4

    .line 1
    new-instance v0, Lcom/transsion/shorttv_pugc/ui/dialog/ShortTvDownloadResDialog;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/shorttv_pugc/ui/dialog/ShortTvDownloadResDialog;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "download_page_type"

    .line 7
    .line 8
    const-string v2, "download_short_tv"

    .line 9
    .line 10
    invoke-static {v1, v2}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const-string v2, "page_from"

    .line 15
    .line 16
    invoke-static {v2, p1}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    const-string v2, "last_page_from"

    .line 21
    .line 22
    invoke-static {v2, p2}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    const-string v2, "subject"

    .line 27
    .line 28
    invoke-static {v2, p3}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 29
    .line 30
    .line 31
    move-result-object p3

    .line 32
    const-string v2, "ops"

    .line 33
    .line 34
    invoke-static {v2, p4}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 35
    .line 36
    .line 37
    move-result-object p4

    .line 38
    const-string v2, "module_name"

    .line 39
    .line 40
    invoke-static {v2, p5}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 41
    .line 42
    .line 43
    move-result-object p5

    .line 44
    invoke-static {p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 45
    .line 46
    .line 47
    move-result-object p6

    .line 48
    const-string v2, "download_scroll_to_download"

    .line 49
    .line 50
    invoke-static {v2, p6}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 51
    .line 52
    .line 53
    move-result-object p6

    .line 54
    const/4 v2, 0x7

    .line 55
    new-array v2, v2, [Lkotlin/Pair;

    .line 56
    .line 57
    const/4 v3, 0x0

    .line 58
    aput-object v1, v2, v3

    .line 59
    .line 60
    const/4 v1, 0x1

    .line 61
    aput-object p1, v2, v1

    .line 62
    .line 63
    const/4 p1, 0x2

    .line 64
    aput-object p2, v2, p1

    .line 65
    .line 66
    const/4 p1, 0x3

    .line 67
    aput-object p3, v2, p1

    .line 68
    .line 69
    const/4 p1, 0x4

    .line 70
    aput-object p4, v2, p1

    .line 71
    .line 72
    const/4 p1, 0x5

    .line 73
    aput-object p5, v2, p1

    .line 74
    .line 75
    const/4 p1, 0x6

    .line 76
    aput-object p6, v2, p1

    .line 77
    .line 78
    invoke-static {v2}, Landroidx/core/os/d;->b([Lkotlin/Pair;)Landroid/os/Bundle;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 83
    .line 84
    .line 85
    return-object v0
.end method
