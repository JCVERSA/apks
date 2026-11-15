.class public final Lcom/transsion/subtitle/dialog/SubtitleMainDialog2$a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/subtitle/dialog/SubtitleMainDialog2;
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
    invoke-direct {p0}, Lcom/transsion/subtitle/dialog/SubtitleMainDialog2$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ZZLjava/util/List;Lcom/transsion/baselib/db/download/DownloadBean;Ljava/lang/String;)Lcom/transsion/subtitle/dialog/SubtitleMainDialog2;
    .locals 2

    .line 1
    const-string v0, "dubs"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/transsion/subtitle/dialog/SubtitleMainDialog2;

    .line 7
    .line 8
    invoke-direct {v0}, Lcom/transsion/subtitle/dialog/SubtitleMainDialog2;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-static {v0, p3}, Lcom/transsion/subtitle/dialog/SubtitleMainDialog2;->r0(Lcom/transsion/subtitle/dialog/SubtitleMainDialog2;Ljava/util/List;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p4}, Lcom/transsion/subtitle/dialog/SubtitleMainDialog2;->G0(Lcom/transsion/baselib/db/download/DownloadBean;)V

    .line 15
    .line 16
    .line 17
    const-string p3, "EXTRA_FRAGMENT_TYPE"

    .line 18
    .line 19
    const-string p4, "NO_SUBTITLE"

    .line 20
    .line 21
    invoke-static {p3, p4}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 22
    .line 23
    .line 24
    move-result-object p3

    .line 25
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    const-string p4, "KEY_VIDEO_START_CHECK"

    .line 30
    .line 31
    invoke-static {p4, p2}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    const-string p4, "EXTRA_IS_LAND"

    .line 40
    .line 41
    invoke-static {p4, p1}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    const-string p4, "KEY_PAGE_NAME"

    .line 46
    .line 47
    invoke-static {p4, p5}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 48
    .line 49
    .line 50
    move-result-object p4

    .line 51
    const/4 p5, 0x4

    .line 52
    new-array p5, p5, [Lkotlin/Pair;

    .line 53
    .line 54
    const/4 v1, 0x0

    .line 55
    aput-object p3, p5, v1

    .line 56
    .line 57
    const/4 p3, 0x1

    .line 58
    aput-object p2, p5, p3

    .line 59
    .line 60
    const/4 p2, 0x2

    .line 61
    aput-object p1, p5, p2

    .line 62
    .line 63
    const/4 p1, 0x3

    .line 64
    aput-object p4, p5, p1

    .line 65
    .line 66
    invoke-static {p5}, Landroidx/core/os/d;->b([Lkotlin/Pair;)Landroid/os/Bundle;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 71
    .line 72
    .line 73
    return-object v0
.end method

.method public final b(ZZLjava/util/List;Ljava/util/List;Lcom/transsion/baselib/db/download/DownloadBean;Lcom/transsion/subtitle/helper/LocalVideoUiType;Ljava/lang/Integer;Ljava/lang/String;)Lcom/transsion/subtitle/dialog/SubtitleMainDialog2;
    .locals 1

    .line 1
    const-string v0, "list"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "dubs"

    .line 7
    .line 8
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "layerType"

    .line 12
    .line 13
    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    new-instance v0, Lcom/transsion/subtitle/dialog/SubtitleMainDialog2;

    .line 17
    .line 18
    invoke-direct {v0}, Lcom/transsion/subtitle/dialog/SubtitleMainDialog2;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-static {v0, p4}, Lcom/transsion/subtitle/dialog/SubtitleMainDialog2;->r0(Lcom/transsion/subtitle/dialog/SubtitleMainDialog2;Ljava/util/List;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p5}, Lcom/transsion/subtitle/dialog/SubtitleMainDialog2;->G0(Lcom/transsion/baselib/db/download/DownloadBean;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p2, p3}, Lcom/transsion/subtitle/dialog/SubtitleMainDialog2;->I0(ZLjava/util/List;)V

    .line 28
    .line 29
    .line 30
    invoke-static {v0, p6, p7}, Lcom/transsion/subtitle/dialog/SubtitleMainDialog2;->s0(Lcom/transsion/subtitle/dialog/SubtitleMainDialog2;Lcom/transsion/subtitle/helper/LocalVideoUiType;Ljava/lang/Integer;)V

    .line 31
    .line 32
    .line 33
    const-string p2, "EXTRA_FRAGMENT_TYPE"

    .line 34
    .line 35
    const-string p3, "SELECT_SUBTITLE"

    .line 36
    .line 37
    invoke-static {p2, p3}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    const-string p3, "EXTRA_IS_LAND"

    .line 46
    .line 47
    invoke-static {p3, p1}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    const-string p3, "KEY_PAGE_NAME"

    .line 52
    .line 53
    invoke-static {p3, p8}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 54
    .line 55
    .line 56
    move-result-object p3

    .line 57
    const/4 p4, 0x3

    .line 58
    new-array p4, p4, [Lkotlin/Pair;

    .line 59
    .line 60
    const/4 p6, 0x0

    .line 61
    aput-object p2, p4, p6

    .line 62
    .line 63
    const/4 p2, 0x1

    .line 64
    aput-object p1, p4, p2

    .line 65
    .line 66
    const/4 p1, 0x2

    .line 67
    aput-object p3, p4, p1

    .line 68
    .line 69
    invoke-static {p4}, Landroidx/core/os/d;->b([Lkotlin/Pair;)Landroid/os/Bundle;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 74
    .line 75
    .line 76
    if-eqz p5, :cond_0

    .line 77
    .line 78
    sget-object p1, Lcom/transsion/subtitle/h;->a:Lcom/transsion/subtitle/h$a;

    .line 79
    .line 80
    invoke-virtual {p1}, Lcom/transsion/subtitle/h$a;->b()Lcom/transsion/subtitle/h;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-interface {p1, p5}, Lcom/transsion/subtitle/h;->i(Lcom/transsion/baselib/db/download/DownloadBean;)V

    .line 85
    .line 86
    .line 87
    :cond_0
    return-object v0
.end method
