.class public final Lcom/transsnet/downloader/fragment/DownloadReDetectorMainDialog$a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsnet/downloader/fragment/DownloadReDetectorMainDialog;
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
    invoke-direct {p0}, Lcom/transsnet/downloader/fragment/DownloadReDetectorMainDialog$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/Subject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Lcom/transsnet/downloader/fragment/DownloadReDetectorMainDialog;
    .locals 5

    .line 1
    const/4 v0, 0x2

    .line 2
    new-instance v1, Lcom/transsnet/downloader/fragment/DownloadReDetectorMainDialog;

    .line 3
    .line 4
    invoke-direct {v1}, Lcom/transsnet/downloader/fragment/DownloadReDetectorMainDialog;-><init>()V

    .line 5
    .line 6
    .line 7
    if-eqz p3, :cond_1

    .line 8
    .line 9
    invoke-virtual {p3}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectType()Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    sget-object v3, Lcom/transsion/moviedetailapi/SubjectType;->EDUCATION:Lcom/transsion/moviedetailapi/SubjectType;

    .line 14
    .line 15
    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/SubjectType;->getValue()I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-nez v2, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    :cond_1
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    const-string v3, "extra_download_page_type"

    .line 31
    .line 32
    invoke-static {v3, v2}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    const-string v3, "extra_page_from"

    .line 37
    .line 38
    invoke-static {v3, p1}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    const-string v3, "extra_last_page_from"

    .line 43
    .line 44
    invoke-static {v3, p2}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    const-string v3, "extra_group_id"

    .line 49
    .line 50
    invoke-static {v3, p4}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 51
    .line 52
    .line 53
    move-result-object p4

    .line 54
    const-string v3, "extra_subject"

    .line 55
    .line 56
    invoke-static {v3, p3}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 57
    .line 58
    .line 59
    move-result-object p3

    .line 60
    const-string v3, "extra_ops"

    .line 61
    .line 62
    invoke-static {v3, p5}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 63
    .line 64
    .line 65
    move-result-object p5

    .line 66
    const-string v3, "extra_resource"

    .line 67
    .line 68
    invoke-static {v3, p6}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 69
    .line 70
    .line 71
    move-result-object p6

    .line 72
    const-string v3, "extra_target_resource_id"

    .line 73
    .line 74
    invoke-static {v3, p7}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 75
    .line 76
    .line 77
    move-result-object p7

    .line 78
    const-string v3, "extra_module_name"

    .line 79
    .line 80
    invoke-static {v3, p8}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 81
    .line 82
    .line 83
    move-result-object p8

    .line 84
    invoke-static {p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 85
    .line 86
    .line 87
    move-result-object p9

    .line 88
    const-string v3, "extra_season"

    .line 89
    .line 90
    invoke-static {v3, p9}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 91
    .line 92
    .line 93
    move-result-object p9

    .line 94
    invoke-static {p10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 95
    .line 96
    .line 97
    move-result-object p10

    .line 98
    const-string v3, "extra_dialog_style"

    .line 99
    .line 100
    invoke-static {v3, p10}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 101
    .line 102
    .line 103
    move-result-object p10

    .line 104
    const/16 v3, 0xb

    .line 105
    .line 106
    new-array v3, v3, [Lkotlin/Pair;

    .line 107
    .line 108
    const/4 v4, 0x0

    .line 109
    aput-object v2, v3, v4

    .line 110
    .line 111
    const/4 v2, 0x1

    .line 112
    aput-object p1, v3, v2

    .line 113
    .line 114
    aput-object p2, v3, v0

    .line 115
    .line 116
    const/4 p1, 0x3

    .line 117
    aput-object p4, v3, p1

    .line 118
    .line 119
    const/4 p1, 0x4

    .line 120
    aput-object p3, v3, p1

    .line 121
    .line 122
    const/4 p1, 0x5

    .line 123
    aput-object p5, v3, p1

    .line 124
    .line 125
    const/4 p1, 0x6

    .line 126
    aput-object p6, v3, p1

    .line 127
    .line 128
    const/4 p1, 0x7

    .line 129
    aput-object p7, v3, p1

    .line 130
    .line 131
    const/16 p1, 0x8

    .line 132
    .line 133
    aput-object p8, v3, p1

    .line 134
    .line 135
    const/16 p1, 0x9

    .line 136
    .line 137
    aput-object p9, v3, p1

    .line 138
    .line 139
    const/16 p1, 0xa

    .line 140
    .line 141
    aput-object p10, v3, p1

    .line 142
    .line 143
    invoke-static {v3}, Landroidx/core/os/d;->b([Lkotlin/Pair;)Landroid/os/Bundle;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    invoke-virtual {v1, p1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 148
    .line 149
    .line 150
    return-object v1
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/Subject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsnet/downloader/fragment/DownloadReDetectorMainDialog;
    .locals 5

    .line 1
    const-string v0, "resourceFrom"

    .line 2
    .line 3
    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/transsnet/downloader/fragment/DownloadReDetectorMainDialog;

    .line 7
    .line 8
    invoke-direct {v0}, Lcom/transsnet/downloader/fragment/DownloadReDetectorMainDialog;-><init>()V

    .line 9
    .line 10
    .line 11
    const/4 v1, 0x3

    .line 12
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    const-string v3, "extra_download_page_type"

    .line 17
    .line 18
    invoke-static {v3, v2}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    const-string v3, "extra_page_from"

    .line 23
    .line 24
    invoke-static {v3, p2}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    const-string v3, "extra_last_page_from"

    .line 29
    .line 30
    invoke-static {v3, p3}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 31
    .line 32
    .line 33
    move-result-object p3

    .line 34
    const-string v3, "extra_subject"

    .line 35
    .line 36
    invoke-static {v3, p4}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 37
    .line 38
    .line 39
    move-result-object p4

    .line 40
    const-string v3, "extra_link_url"

    .line 41
    .line 42
    invoke-static {v3, p1}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    const-string v3, "extra_ops"

    .line 47
    .line 48
    invoke-static {v3, p5}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 49
    .line 50
    .line 51
    move-result-object p5

    .line 52
    const-string v3, "extra_resource"

    .line 53
    .line 54
    invoke-static {v3, p6}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 55
    .line 56
    .line 57
    move-result-object p6

    .line 58
    const-string v3, "extra_module_name"

    .line 59
    .line 60
    invoke-static {v3, p7}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 61
    .line 62
    .line 63
    move-result-object p7

    .line 64
    const/16 v3, 0x8

    .line 65
    .line 66
    new-array v3, v3, [Lkotlin/Pair;

    .line 67
    .line 68
    const/4 v4, 0x0

    .line 69
    aput-object v2, v3, v4

    .line 70
    .line 71
    const/4 v2, 0x1

    .line 72
    aput-object p2, v3, v2

    .line 73
    .line 74
    const/4 p2, 0x2

    .line 75
    aput-object p3, v3, p2

    .line 76
    .line 77
    aput-object p4, v3, v1

    .line 78
    .line 79
    const/4 p2, 0x4

    .line 80
    aput-object p1, v3, p2

    .line 81
    .line 82
    const/4 p1, 0x5

    .line 83
    aput-object p5, v3, p1

    .line 84
    .line 85
    const/4 p1, 0x6

    .line 86
    aput-object p6, v3, p1

    .line 87
    .line 88
    const/4 p1, 0x7

    .line 89
    aput-object p7, v3, p1

    .line 90
    .line 91
    invoke-static {v3}, Landroidx/core/os/d;->b([Lkotlin/Pair;)Landroid/os/Bundle;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 96
    .line 97
    .line 98
    return-object v0
.end method

.method public final c()Lcom/transsnet/downloader/fragment/DownloadReDetectorMainDialog;
    .locals 4

    .line 1
    new-instance v0, Lcom/transsnet/downloader/fragment/DownloadReDetectorMainDialog;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsnet/downloader/fragment/DownloadReDetectorMainDialog;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x4

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const-string v2, "extra_download_page_type"

    .line 12
    .line 13
    invoke-static {v2, v1}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const/4 v2, 0x1

    .line 18
    new-array v2, v2, [Lkotlin/Pair;

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    aput-object v1, v2, v3

    .line 22
    .line 23
    invoke-static {v2}, Landroidx/core/os/d;->b([Lkotlin/Pair;)Landroid/os/Bundle;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 28
    .line 29
    .line 30
    return-object v0
.end method

.method public final d(Ljava/lang/String;Ljava/lang/String;)Lcom/transsnet/downloader/fragment/DownloadReDetectorMainDialog;
    .locals 5

    .line 1
    const-string v0, "resourceFrom"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/transsnet/downloader/fragment/DownloadReDetectorMainDialog;

    .line 7
    .line 8
    invoke-direct {v0}, Lcom/transsnet/downloader/fragment/DownloadReDetectorMainDialog;-><init>()V

    .line 9
    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    const-string v3, "extra_download_page_type"

    .line 17
    .line 18
    invoke-static {v3, v2}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    const-string v3, "extra_resource"

    .line 23
    .line 24
    invoke-static {v3, p1}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    const-string v3, "extra_module_name"

    .line 29
    .line 30
    invoke-static {v3, p2}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    const/4 v3, 0x3

    .line 35
    new-array v3, v3, [Lkotlin/Pair;

    .line 36
    .line 37
    const/4 v4, 0x0

    .line 38
    aput-object v2, v3, v4

    .line 39
    .line 40
    aput-object p1, v3, v1

    .line 41
    .line 42
    const/4 p1, 0x2

    .line 43
    aput-object p2, v3, p1

    .line 44
    .line 45
    invoke-static {v3}, Landroidx/core/os/d;->b([Lkotlin/Pair;)Landroid/os/Bundle;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 50
    .line 51
    .line 52
    return-object v0
.end method
