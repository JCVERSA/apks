.class public final Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;
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
    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;
    .locals 17

    .line 1
    new-instance v0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "extra_local_path"

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
    const-string v2, "extra_url"

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
    const-string v3, "extra_proxy_url"

    .line 23
    .line 24
    move-object/from16 v4, p7

    .line 25
    .line 26
    invoke-static {v3, v4}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    const-string v4, "extra_name"

    .line 31
    .line 32
    move-object/from16 v5, p3

    .line 33
    .line 34
    invoke-static {v4, v5}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    const-string v5, "extra_resource_id"

    .line 39
    .line 40
    move-object/from16 v6, p4

    .line 41
    .line 42
    invoke-static {v5, v6}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    const-string v6, "extra_subject_id"

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
    const-string v7, "extra_post_id"

    .line 55
    .line 56
    move-object/from16 v8, p5

    .line 57
    .line 58
    invoke-static {v7, v8}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 59
    .line 60
    .line 61
    move-result-object v7

    .line 62
    const-string v8, "extra_completed"

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
    const-string v9, "extra_is_series"

    .line 71
    .line 72
    move-object/from16 v10, p9

    .line 73
    .line 74
    invoke-static {v9, v10}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 75
    .line 76
    .line 77
    move-result-object v9

    .line 78
    const-string v10, "extra_page_from"

    .line 79
    .line 80
    move-object/from16 v11, p10

    .line 81
    .line 82
    invoke-static {v10, v11}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 83
    .line 84
    .line 85
    move-result-object v10

    .line 86
    const-string v11, "extra_height"

    .line 87
    .line 88
    move-object/from16 v12, p11

    .line 89
    .line 90
    invoke-static {v11, v12}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 91
    .line 92
    .line 93
    move-result-object v11

    .line 94
    const-string v12, "extra_width"

    .line 95
    .line 96
    move-object/from16 v13, p12

    .line 97
    .line 98
    invoke-static {v12, v13}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 99
    .line 100
    .line 101
    move-result-object v12

    .line 102
    const-string v13, "extra_parent_position"

    .line 103
    .line 104
    move-object/from16 v14, p13

    .line 105
    .line 106
    invoke-static {v13, v14}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 107
    .line 108
    .line 109
    move-result-object v13

    .line 110
    const-string v14, "extra_position"

    .line 111
    .line 112
    move-object/from16 v15, p14

    .line 113
    .line 114
    invoke-static {v14, v15}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 115
    .line 116
    .line 117
    move-result-object v14

    .line 118
    const/16 v15, 0xe

    .line 119
    .line 120
    new-array v15, v15, [Lkotlin/Pair;

    .line 121
    .line 122
    const/16 v16, 0x0

    .line 123
    .line 124
    aput-object v1, v15, v16

    .line 125
    .line 126
    const/4 v1, 0x1

    .line 127
    aput-object v2, v15, v1

    .line 128
    .line 129
    const/4 v1, 0x2

    .line 130
    aput-object v3, v15, v1

    .line 131
    .line 132
    const/4 v1, 0x3

    .line 133
    aput-object v4, v15, v1

    .line 134
    .line 135
    const/4 v1, 0x4

    .line 136
    aput-object v5, v15, v1

    .line 137
    .line 138
    const/4 v1, 0x5

    .line 139
    aput-object v6, v15, v1

    .line 140
    .line 141
    const/4 v1, 0x6

    .line 142
    aput-object v7, v15, v1

    .line 143
    .line 144
    const/4 v1, 0x7

    .line 145
    aput-object v8, v15, v1

    .line 146
    .line 147
    const/16 v1, 0x8

    .line 148
    .line 149
    aput-object v9, v15, v1

    .line 150
    .line 151
    const/16 v1, 0x9

    .line 152
    .line 153
    aput-object v10, v15, v1

    .line 154
    .line 155
    const/16 v1, 0xa

    .line 156
    .line 157
    aput-object v11, v15, v1

    .line 158
    .line 159
    const/16 v1, 0xb

    .line 160
    .line 161
    aput-object v12, v15, v1

    .line 162
    .line 163
    const/16 v1, 0xc

    .line 164
    .line 165
    aput-object v13, v15, v1

    .line 166
    .line 167
    const/16 v1, 0xd

    .line 168
    .line 169
    aput-object v14, v15, v1

    .line 170
    .line 171
    invoke-static {v15}, Landroidx/core/os/d;->b([Lkotlin/Pair;)Landroid/os/Bundle;

    .line 172
    .line 173
    .line 174
    move-result-object v1

    .line 175
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 176
    .line 177
    .line 178
    return-object v0
.end method
