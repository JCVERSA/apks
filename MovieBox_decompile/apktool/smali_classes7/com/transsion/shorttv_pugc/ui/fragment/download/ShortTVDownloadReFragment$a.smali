.class public final Lcom/transsion/shorttv_pugc/ui/fragment/download/ShortTVDownloadReFragment$a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/shorttv_pugc/ui/fragment/download/ShortTVDownloadReFragment;
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
    invoke-direct {p0}, Lcom/transsion/shorttv_pugc/ui/fragment/download/ShortTVDownloadReFragment$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/shorttv_pugc/bean/Subject;Ljava/lang/String;Ljava/lang/String;Z)Lcom/transsion/shorttv_pugc/ui/fragment/download/ShortTVDownloadReFragment;
    .locals 3

    .line 1
    new-instance v0, Lcom/transsion/shorttv_pugc/ui/fragment/download/ShortTVDownloadReFragment;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/shorttv_pugc/ui/fragment/download/ShortTVDownloadReFragment;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "page_from"

    .line 7
    .line 8
    invoke-static {v1, p1}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    const-string v1, "last_page_from"

    .line 13
    .line 14
    invoke-static {v1, p2}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    const-string v1, "subject"

    .line 19
    .line 20
    invoke-static {v1, p3}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 21
    .line 22
    .line 23
    move-result-object p3

    .line 24
    const-string v1, "ops"

    .line 25
    .line 26
    invoke-static {v1, p4}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 27
    .line 28
    .line 29
    move-result-object p4

    .line 30
    const-string v1, "module_name"

    .line 31
    .line 32
    invoke-static {v1, p5}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 33
    .line 34
    .line 35
    move-result-object p5

    .line 36
    invoke-static {p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 37
    .line 38
    .line 39
    move-result-object p6

    .line 40
    const-string v1, "download_scroll_to_download"

    .line 41
    .line 42
    invoke-static {v1, p6}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 43
    .line 44
    .line 45
    move-result-object p6

    .line 46
    const/4 v1, 0x6

    .line 47
    new-array v1, v1, [Lkotlin/Pair;

    .line 48
    .line 49
    const/4 v2, 0x0

    .line 50
    aput-object p1, v1, v2

    .line 51
    .line 52
    const/4 p1, 0x1

    .line 53
    aput-object p2, v1, p1

    .line 54
    .line 55
    const/4 p1, 0x2

    .line 56
    aput-object p3, v1, p1

    .line 57
    .line 58
    const/4 p1, 0x3

    .line 59
    aput-object p4, v1, p1

    .line 60
    .line 61
    const/4 p1, 0x4

    .line 62
    aput-object p5, v1, p1

    .line 63
    .line 64
    const/4 p1, 0x5

    .line 65
    aput-object p6, v1, p1

    .line 66
    .line 67
    invoke-static {v1}, Landroidx/core/os/d;->b([Lkotlin/Pair;)Landroid/os/Bundle;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 72
    .line 73
    .line 74
    return-object v0
.end method
