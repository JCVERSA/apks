.class public final Lcom/transsnet/downloader/fragment/DownloadMultiListFragment$a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;
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
    invoke-direct {p0}, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/Subject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;IZZIII)Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;
    .locals 16

    .line 1
    new-instance v0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;-><init>()V

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
    const-string v4, "extra_group_id"

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
    const-string v5, "extra_ops"

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
    const-string v6, "extra_target_resource_id"

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
    const-string v7, "extra_resolution"

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
    invoke-static/range {p9 .. p9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 63
    .line 64
    .line 65
    move-result-object v8

    .line 66
    const-string v9, "extra_show_premium_if_need"

    .line 67
    .line 68
    invoke-static {v9, v8}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 69
    .line 70
    .line 71
    move-result-object v8

    .line 72
    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 73
    .line 74
    .line 75
    move-result-object v9

    .line 76
    const-string v10, "extra_resolution_position"

    .line 77
    .line 78
    invoke-static {v10, v9}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 79
    .line 80
    .line 81
    move-result-object v9

    .line 82
    invoke-static/range {p13 .. p13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 83
    .line 84
    .line 85
    move-result-object v10

    .line 86
    const-string v11, "extra_ep_index"

    .line 87
    .line 88
    invoke-static {v11, v10}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 89
    .line 90
    .line 91
    move-result-object v10

    .line 92
    invoke-static/range {p10 .. p10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 93
    .line 94
    .line 95
    move-result-object v11

    .line 96
    const-string v12, "extra_resolution_is_show_loading"

    .line 97
    .line 98
    invoke-static {v12, v11}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 99
    .line 100
    .line 101
    move-result-object v11

    .line 102
    invoke-static/range {p11 .. p11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 103
    .line 104
    .line 105
    move-result-object v12

    .line 106
    const-string v13, "extra_season"

    .line 107
    .line 108
    invoke-static {v13, v12}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 109
    .line 110
    .line 111
    move-result-object v12

    .line 112
    invoke-static/range {p12 .. p12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 113
    .line 114
    .line 115
    move-result-object v13

    .line 116
    const-string v14, "extra_series_position"

    .line 117
    .line 118
    invoke-static {v14, v13}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 119
    .line 120
    .line 121
    move-result-object v13

    .line 122
    const/16 v14, 0xd

    .line 123
    .line 124
    new-array v14, v14, [Lkotlin/Pair;

    .line 125
    .line 126
    const/4 v15, 0x0

    .line 127
    aput-object v1, v14, v15

    .line 128
    .line 129
    const/4 v1, 0x1

    .line 130
    aput-object v2, v14, v1

    .line 131
    .line 132
    const/4 v1, 0x2

    .line 133
    aput-object v3, v14, v1

    .line 134
    .line 135
    const/4 v1, 0x3

    .line 136
    aput-object v4, v14, v1

    .line 137
    .line 138
    const/4 v1, 0x4

    .line 139
    aput-object v5, v14, v1

    .line 140
    .line 141
    const/4 v1, 0x5

    .line 142
    aput-object v6, v14, v1

    .line 143
    .line 144
    const/4 v1, 0x6

    .line 145
    aput-object v7, v14, v1

    .line 146
    .line 147
    const/4 v1, 0x7

    .line 148
    aput-object v8, v14, v1

    .line 149
    .line 150
    const/16 v1, 0x8

    .line 151
    .line 152
    aput-object v9, v14, v1

    .line 153
    .line 154
    const/16 v1, 0x9

    .line 155
    .line 156
    aput-object v10, v14, v1

    .line 157
    .line 158
    const/16 v1, 0xa

    .line 159
    .line 160
    aput-object v11, v14, v1

    .line 161
    .line 162
    const/16 v1, 0xb

    .line 163
    .line 164
    aput-object v12, v14, v1

    .line 165
    .line 166
    const/16 v1, 0xc

    .line 167
    .line 168
    aput-object v13, v14, v1

    .line 169
    .line 170
    invoke-static {v14}, Landroidx/core/os/d;->b([Lkotlin/Pair;)Landroid/os/Bundle;

    .line 171
    .line 172
    .line 173
    move-result-object v1

    .line 174
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 175
    .line 176
    .line 177
    return-object v0
.end method
