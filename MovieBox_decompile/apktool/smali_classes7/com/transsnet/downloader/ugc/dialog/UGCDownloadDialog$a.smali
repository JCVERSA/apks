.class public final Lcom/transsnet/downloader/ugc/dialog/UGCDownloadDialog$a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsnet/downloader/ugc/dialog/UGCDownloadDialog;
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
    invoke-direct {p0}, Lcom/transsnet/downloader/ugc/dialog/UGCDownloadDialog$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/transsnet/downloader/ugc/dialog/UGCDownloadDialog;
    .locals 3

    .line 1
    const-string v0, "collectionId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "lastPageFrom"

    .line 7
    .line 8
    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lcom/transsnet/downloader/ugc/dialog/UGCDownloadDialog;

    .line 12
    .line 13
    invoke-direct {v0}, Lcom/transsnet/downloader/ugc/dialog/UGCDownloadDialog;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v1, "collection_id"

    .line 17
    .line 18
    invoke-static {v1, p1}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    const-string v1, "COLLECTION_NAME"

    .line 23
    .line 24
    invoke-static {v1, p2}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    const-string v1, "CATEGORY"

    .line 29
    .line 30
    invoke-static {v1, p3}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 31
    .line 32
    .line 33
    move-result-object p3

    .line 34
    const-string v1, "PAGE_FROM"

    .line 35
    .line 36
    invoke-static {v1, p4}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 37
    .line 38
    .line 39
    move-result-object p4

    .line 40
    const-string v1, "LAST_PAGE_FROM"

    .line 41
    .line 42
    invoke-static {v1, p5}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 43
    .line 44
    .line 45
    move-result-object p5

    .line 46
    const-string v1, "OPS"

    .line 47
    .line 48
    invoke-static {v1, p6}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 49
    .line 50
    .line 51
    move-result-object p6

    .line 52
    const-string v1, "SUBJECT_ID"

    .line 53
    .line 54
    invoke-static {v1, p7}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 55
    .line 56
    .line 57
    move-result-object p7

    .line 58
    const-string v1, "ugc_video_id"

    .line 59
    .line 60
    invoke-static {v1, p8}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 61
    .line 62
    .line 63
    move-result-object p8

    .line 64
    const-string v1, "TRACK_ID"

    .line 65
    .line 66
    invoke-static {v1, p9}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 67
    .line 68
    .line 69
    move-result-object p9

    .line 70
    const-string v1, "PREVIOUS_TRACK_ID"

    .line 71
    .line 72
    invoke-static {v1, p10}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 73
    .line 74
    .line 75
    move-result-object p10

    .line 76
    const-string v1, "PREVIOUS_PAGE_VIDEO_ID"

    .line 77
    .line 78
    invoke-static {v1, p11}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 79
    .line 80
    .line 81
    move-result-object p11

    .line 82
    invoke-static {p12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 83
    .line 84
    .line 85
    move-result-object p12

    .line 86
    const-string v1, "IS_IMM_VERTICAL_VIDEO"

    .line 87
    .line 88
    invoke-static {v1, p12}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 89
    .line 90
    .line 91
    move-result-object p12

    .line 92
    const/16 v1, 0xc

    .line 93
    .line 94
    new-array v1, v1, [Lkotlin/Pair;

    .line 95
    .line 96
    const/4 v2, 0x0

    .line 97
    aput-object p1, v1, v2

    .line 98
    .line 99
    const/4 p1, 0x1

    .line 100
    aput-object p2, v1, p1

    .line 101
    .line 102
    const/4 p1, 0x2

    .line 103
    aput-object p3, v1, p1

    .line 104
    .line 105
    const/4 p1, 0x3

    .line 106
    aput-object p4, v1, p1

    .line 107
    .line 108
    const/4 p1, 0x4

    .line 109
    aput-object p5, v1, p1

    .line 110
    .line 111
    const/4 p1, 0x5

    .line 112
    aput-object p6, v1, p1

    .line 113
    .line 114
    const/4 p1, 0x6

    .line 115
    aput-object p7, v1, p1

    .line 116
    .line 117
    const/4 p1, 0x7

    .line 118
    aput-object p8, v1, p1

    .line 119
    .line 120
    const/16 p1, 0x8

    .line 121
    .line 122
    aput-object p9, v1, p1

    .line 123
    .line 124
    const/16 p1, 0x9

    .line 125
    .line 126
    aput-object p10, v1, p1

    .line 127
    .line 128
    const/16 p1, 0xa

    .line 129
    .line 130
    aput-object p11, v1, p1

    .line 131
    .line 132
    const/16 p1, 0xb

    .line 133
    .line 134
    aput-object p12, v1, p1

    .line 135
    .line 136
    invoke-static {v1}, Landroidx/core/os/d;->b([Lkotlin/Pair;)Landroid/os/Bundle;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 141
    .line 142
    .line 143
    return-object v0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/transsnet/downloader/ugc/dialog/UGCDownloadDialog;
    .locals 3

    .line 1
    const-string v0, "ugcVideoId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "lastPageFrom"

    .line 7
    .line 8
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lcom/transsnet/downloader/ugc/dialog/UGCDownloadDialog;

    .line 12
    .line 13
    invoke-direct {v0}, Lcom/transsnet/downloader/ugc/dialog/UGCDownloadDialog;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v1, "ugc_video_id"

    .line 17
    .line 18
    invoke-static {v1, p1}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    const-string v1, "CATEGORY"

    .line 23
    .line 24
    invoke-static {v1, p2}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    const-string v1, "PAGE_FROM"

    .line 29
    .line 30
    invoke-static {v1, p3}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 31
    .line 32
    .line 33
    move-result-object p3

    .line 34
    const-string v1, "LAST_PAGE_FROM"

    .line 35
    .line 36
    invoke-static {v1, p4}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 37
    .line 38
    .line 39
    move-result-object p4

    .line 40
    const-string v1, "OPS"

    .line 41
    .line 42
    invoke-static {v1, p5}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 43
    .line 44
    .line 45
    move-result-object p5

    .line 46
    const-string v1, "SUBJECT_ID"

    .line 47
    .line 48
    invoke-static {v1, p6}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 49
    .line 50
    .line 51
    move-result-object p6

    .line 52
    const-string v1, "TRACK_ID"

    .line 53
    .line 54
    invoke-static {v1, p7}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 55
    .line 56
    .line 57
    move-result-object p7

    .line 58
    const-string v1, "PREVIOUS_TRACK_ID"

    .line 59
    .line 60
    invoke-static {v1, p8}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 61
    .line 62
    .line 63
    move-result-object p8

    .line 64
    const-string v1, "PREVIOUS_PAGE_VIDEO_ID"

    .line 65
    .line 66
    invoke-static {v1, p9}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 67
    .line 68
    .line 69
    move-result-object p9

    .line 70
    invoke-static {p10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 71
    .line 72
    .line 73
    move-result-object p10

    .line 74
    const-string v1, "IS_IMM_VERTICAL_VIDEO"

    .line 75
    .line 76
    invoke-static {v1, p10}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 77
    .line 78
    .line 79
    move-result-object p10

    .line 80
    const/16 v1, 0xa

    .line 81
    .line 82
    new-array v1, v1, [Lkotlin/Pair;

    .line 83
    .line 84
    const/4 v2, 0x0

    .line 85
    aput-object p1, v1, v2

    .line 86
    .line 87
    const/4 p1, 0x1

    .line 88
    aput-object p2, v1, p1

    .line 89
    .line 90
    const/4 p1, 0x2

    .line 91
    aput-object p3, v1, p1

    .line 92
    .line 93
    const/4 p1, 0x3

    .line 94
    aput-object p4, v1, p1

    .line 95
    .line 96
    const/4 p1, 0x4

    .line 97
    aput-object p5, v1, p1

    .line 98
    .line 99
    const/4 p1, 0x5

    .line 100
    aput-object p6, v1, p1

    .line 101
    .line 102
    const/4 p1, 0x6

    .line 103
    aput-object p7, v1, p1

    .line 104
    .line 105
    const/4 p1, 0x7

    .line 106
    aput-object p8, v1, p1

    .line 107
    .line 108
    const/16 p1, 0x8

    .line 109
    .line 110
    aput-object p9, v1, p1

    .line 111
    .line 112
    const/16 p1, 0x9

    .line 113
    .line 114
    aput-object p10, v1, p1

    .line 115
    .line 116
    invoke-static {v1}, Landroidx/core/os/d;->b([Lkotlin/Pair;)Landroid/os/Bundle;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 121
    .line 122
    .line 123
    return-object v0
.end method
