.class public final Lcom/transsnet/downloader/ugc/util/e;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final a:Lcom/transsnet/downloader/ugc/util/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/transsnet/downloader/ugc/util/e;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsnet/downloader/ugc/util/e;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/transsnet/downloader/ugc/util/e;->a:Lcom/transsnet/downloader/ugc/util/e;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;IJ)V
    .locals 7

    .line 1
    const-string v0, "pageName"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "item"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v1, "browse_duration"

    .line 12
    .line 13
    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p4

    .line 17
    invoke-static {v1, p4}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 18
    .line 19
    .line 20
    move-result-object p4

    .line 21
    const-string p5, "module_name"

    .line 22
    .line 23
    invoke-static {p5, v0}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 24
    .line 25
    .line 26
    move-result-object p5

    .line 27
    const-string v0, "page_tab_name"

    .line 28
    .line 29
    const-string v1, "foryou"

    .line 30
    .line 31
    invoke-static {v0, v1}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getBelongToCollection()Lcom/transsion/ugcvideodetail/api/bean/UGCVideoBelongToCollection;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    const-string v2, ""

    .line 40
    .line 41
    if-eqz v1, :cond_0

    .line 42
    .line 43
    invoke-virtual {v1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoBelongToCollection;->getCollectionId()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    if-nez v1, :cond_1

    .line 48
    .line 49
    :cond_0
    move-object v1, v2

    .line 50
    :cond_1
    const-string v3, "belong_to_collection_id"

    .line 51
    .line 52
    invoke-static {v3, v1}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getUgcVideoId()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    if-nez v3, :cond_2

    .line 61
    .line 62
    move-object v3, v2

    .line 63
    :cond_2
    const-string v4, "content_id"

    .line 64
    .line 65
    invoke-static {v4, v3}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    invoke-virtual {p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getSubjectId()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    if-nez v4, :cond_3

    .line 74
    .line 75
    move-object v4, v2

    .line 76
    :cond_3
    const-string v5, "refer_subject_id"

    .line 77
    .line 78
    invoke-static {v5, v4}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    const-string v5, "content_type"

    .line 83
    .line 84
    const-string v6, "ugc_video"

    .line 85
    .line 86
    invoke-static {v5, v6}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 87
    .line 88
    .line 89
    move-result-object v5

    .line 90
    invoke-virtual {p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getOps()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p2

    .line 94
    if-nez p2, :cond_4

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_4
    move-object v2, p2

    .line 98
    :goto_0
    const-string p2, "ops"

    .line 99
    .line 100
    invoke-static {p2, v2}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 101
    .line 102
    .line 103
    move-result-object p2

    .line 104
    const-string v2, "position"

    .line 105
    .line 106
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p3

    .line 110
    invoke-static {v2, p3}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 111
    .line 112
    .line 113
    move-result-object p3

    .line 114
    const/16 v2, 0x9

    .line 115
    .line 116
    new-array v2, v2, [Lkotlin/Pair;

    .line 117
    .line 118
    const/4 v6, 0x0

    .line 119
    aput-object p4, v2, v6

    .line 120
    .line 121
    const/4 p4, 0x1

    .line 122
    aput-object p5, v2, p4

    .line 123
    .line 124
    const/4 p4, 0x2

    .line 125
    aput-object v0, v2, p4

    .line 126
    .line 127
    const/4 p4, 0x3

    .line 128
    aput-object v1, v2, p4

    .line 129
    .line 130
    const/4 p4, 0x4

    .line 131
    aput-object v3, v2, p4

    .line 132
    .line 133
    const/4 p4, 0x5

    .line 134
    aput-object v4, v2, p4

    .line 135
    .line 136
    const/4 p4, 0x6

    .line 137
    aput-object v5, v2, p4

    .line 138
    .line 139
    const/4 p4, 0x7

    .line 140
    aput-object p2, v2, p4

    .line 141
    .line 142
    const/16 p2, 0x8

    .line 143
    .line 144
    aput-object p3, v2, p2

    .line 145
    .line 146
    invoke-static {v2}, Lkotlin/collections/MapsKt;->l([Lkotlin/Pair;)Ljava/util/Map;

    .line 147
    .line 148
    .line 149
    move-result-object p2

    .line 150
    sget-object p3, Lqi/h;->a:Lqi/h;

    .line 151
    .line 152
    invoke-virtual {p3, p1, p2}, Lqi/h;->z(Ljava/lang/String;Ljava/util/Map;)V

    .line 153
    .line 154
    .line 155
    return-void
.end method

.method public final b(Ljava/lang/String;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;I)V
    .locals 8

    .line 1
    const-string v0, "pageName"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "item"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v1, "module_name"

    .line 12
    .line 13
    invoke-static {v1, v0}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, "page_tab_name"

    .line 18
    .line 19
    const-string v2, "foryou"

    .line 20
    .line 21
    invoke-static {v1, v2}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getUgcVideoId()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    const-string v3, ""

    .line 30
    .line 31
    if-nez v2, :cond_0

    .line 32
    .line 33
    move-object v2, v3

    .line 34
    :cond_0
    const-string v4, "content_id"

    .line 35
    .line 36
    invoke-static {v4, v2}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getBelongToCollection()Lcom/transsion/ugcvideodetail/api/bean/UGCVideoBelongToCollection;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    if-eqz v4, :cond_1

    .line 45
    .line 46
    invoke-virtual {v4}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoBelongToCollection;->getCollectionId()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    if-nez v4, :cond_2

    .line 51
    .line 52
    :cond_1
    move-object v4, v3

    .line 53
    :cond_2
    const-string v5, "belong_to_collection_id"

    .line 54
    .line 55
    invoke-static {v5, v4}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    const-string v5, "content_type"

    .line 60
    .line 61
    const-string v6, "ugc_video"

    .line 62
    .line 63
    invoke-static {v5, v6}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    invoke-virtual {p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getSubjectId()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v6

    .line 71
    if-nez v6, :cond_3

    .line 72
    .line 73
    move-object v6, v3

    .line 74
    :cond_3
    const-string v7, "refer_subject_id"

    .line 75
    .line 76
    invoke-static {v7, v6}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 77
    .line 78
    .line 79
    move-result-object v6

    .line 80
    invoke-virtual {p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getOps()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p2

    .line 84
    if-nez p2, :cond_4

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_4
    move-object v3, p2

    .line 88
    :goto_0
    const-string p2, "ops"

    .line 89
    .line 90
    invoke-static {p2, v3}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 91
    .line 92
    .line 93
    move-result-object p2

    .line 94
    const-string v3, "position"

    .line 95
    .line 96
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p3

    .line 100
    invoke-static {v3, p3}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 101
    .line 102
    .line 103
    move-result-object p3

    .line 104
    const/16 v3, 0x8

    .line 105
    .line 106
    new-array v3, v3, [Lkotlin/Pair;

    .line 107
    .line 108
    const/4 v7, 0x0

    .line 109
    aput-object v0, v3, v7

    .line 110
    .line 111
    const/4 v0, 0x1

    .line 112
    aput-object v1, v3, v0

    .line 113
    .line 114
    const/4 v0, 0x2

    .line 115
    aput-object v2, v3, v0

    .line 116
    .line 117
    const/4 v0, 0x3

    .line 118
    aput-object v4, v3, v0

    .line 119
    .line 120
    const/4 v0, 0x4

    .line 121
    aput-object v5, v3, v0

    .line 122
    .line 123
    const/4 v0, 0x5

    .line 124
    aput-object v6, v3, v0

    .line 125
    .line 126
    const/4 v0, 0x6

    .line 127
    aput-object p2, v3, v0

    .line 128
    .line 129
    const/4 p2, 0x7

    .line 130
    aput-object p3, v3, p2

    .line 131
    .line 132
    invoke-static {v3}, Lkotlin/collections/MapsKt;->l([Lkotlin/Pair;)Ljava/util/Map;

    .line 133
    .line 134
    .line 135
    move-result-object p2

    .line 136
    sget-object p3, Lqi/h;->a:Lqi/h;

    .line 137
    .line 138
    invoke-virtual {p3, p1, p2}, Lqi/h;->o(Ljava/lang/String;Ljava/util/Map;)V

    .line 139
    .line 140
    .line 141
    return-void
.end method
