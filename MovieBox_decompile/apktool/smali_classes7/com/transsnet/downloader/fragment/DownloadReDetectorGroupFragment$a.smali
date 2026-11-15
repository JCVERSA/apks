.class public final Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment$a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment;
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
    invoke-direct {p0}, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/Subject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;IZZII)Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment;
    .locals 16

    .line 1
    new-instance v0, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "extra_page_from"

    .line 7
    .line 8
    move-object/from16 v2, p1

    .line 9
    .line 10
    invoke-static {v1, v2}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const-string v2, "extra_last_page_from"

    .line 15
    .line 16
    move-object/from16 v3, p2

    .line 17
    .line 18
    invoke-static {v2, v3}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    const-string v3, "extra_subject"

    .line 23
    .line 24
    move-object/from16 v4, p3

    .line 25
    .line 26
    invoke-static {v3, v4}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    const-string v4, "extra_subject_id"

    .line 31
    .line 32
    move-object/from16 v5, p4

    .line 33
    .line 34
    invoke-static {v4, v5}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    const-string v5, "extra_group_id"

    .line 39
    .line 40
    move-object/from16 v6, p5

    .line 41
    .line 42
    invoke-static {v5, v6}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    const-string v6, "extra_ops"

    .line 47
    .line 48
    move-object/from16 v7, p6

    .line 49
    .line 50
    invoke-static {v6, v7}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 51
    .line 52
    .line 53
    move-result-object v6

    .line 54
    const-string v7, "extra_target_resource_id"

    .line 55
    .line 56
    move-object/from16 v8, p7

    .line 57
    .line 58
    invoke-static {v7, v8}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 59
    .line 60
    .line 61
    move-result-object v7

    .line 62
    const-string v8, "extra_resolution"

    .line 63
    .line 64
    move-object/from16 v9, p8

    .line 65
    .line 66
    invoke-static {v8, v9}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 67
    .line 68
    .line 69
    move-result-object v8

    .line 70
    invoke-static/range {p10 .. p10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 71
    .line 72
    .line 73
    move-result-object v9

    .line 74
    const-string v10, "extra_show_premium_if_need"

    .line 75
    .line 76
    invoke-static {v10, v9}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 77
    .line 78
    .line 79
    move-result-object v9

    .line 80
    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 81
    .line 82
    .line 83
    move-result-object v10

    .line 84
    const-string v11, "extra_resolution_position"

    .line 85
    .line 86
    invoke-static {v11, v10}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 87
    .line 88
    .line 89
    move-result-object v10

    .line 90
    invoke-static/range {p11 .. p11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 91
    .line 92
    .line 93
    move-result-object v11

    .line 94
    const-string v12, "extra_resolution_is_show_loading"

    .line 95
    .line 96
    invoke-static {v12, v11}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 97
    .line 98
    .line 99
    move-result-object v11

    .line 100
    invoke-static/range {p12 .. p12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 101
    .line 102
    .line 103
    move-result-object v12

    .line 104
    const-string v13, "extra_season"

    .line 105
    .line 106
    invoke-static {v13, v12}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 107
    .line 108
    .line 109
    move-result-object v12

    .line 110
    invoke-static/range {p13 .. p13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 111
    .line 112
    .line 113
    move-result-object v13

    .line 114
    const-string v14, "extra_ep_index"

    .line 115
    .line 116
    invoke-static {v14, v13}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 117
    .line 118
    .line 119
    move-result-object v13

    .line 120
    const/16 v14, 0xd

    .line 121
    .line 122
    new-array v14, v14, [Lkotlin/Pair;

    .line 123
    .line 124
    const/4 v15, 0x0

    .line 125
    aput-object v1, v14, v15

    .line 126
    .line 127
    const/4 v1, 0x1

    .line 128
    aput-object v2, v14, v1

    .line 129
    .line 130
    const/4 v1, 0x2

    .line 131
    aput-object v3, v14, v1

    .line 132
    .line 133
    const/4 v1, 0x3

    .line 134
    aput-object v4, v14, v1

    .line 135
    .line 136
    const/4 v1, 0x4

    .line 137
    aput-object v5, v14, v1

    .line 138
    .line 139
    const/4 v1, 0x5

    .line 140
    aput-object v6, v14, v1

    .line 141
    .line 142
    const/4 v1, 0x6

    .line 143
    aput-object v7, v14, v1

    .line 144
    .line 145
    const/4 v1, 0x7

    .line 146
    aput-object v8, v14, v1

    .line 147
    .line 148
    const/16 v1, 0x8

    .line 149
    .line 150
    aput-object v9, v14, v1

    .line 151
    .line 152
    const/16 v1, 0x9

    .line 153
    .line 154
    aput-object v10, v14, v1

    .line 155
    .line 156
    const/16 v1, 0xa

    .line 157
    .line 158
    aput-object v11, v14, v1

    .line 159
    .line 160
    const/16 v1, 0xb

    .line 161
    .line 162
    aput-object v12, v14, v1

    .line 163
    .line 164
    const/16 v1, 0xc

    .line 165
    .line 166
    aput-object v13, v14, v1

    .line 167
    .line 168
    invoke-static {v14}, Landroidx/core/os/d;->b([Lkotlin/Pair;)Landroid/os/Bundle;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 173
    .line 174
    .line 175
    return-object v0
.end method
