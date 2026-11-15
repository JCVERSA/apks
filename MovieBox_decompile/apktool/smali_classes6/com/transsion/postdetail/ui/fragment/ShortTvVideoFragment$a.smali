.class public final Lcom/transsion/postdetail/ui/fragment/ShortTvVideoFragment$a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/postdetail/ui/fragment/ShortTvVideoFragment;
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
    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/ShortTvVideoFragment$a;-><init>()V

    return-void
.end method

.method public static synthetic b(Lcom/transsion/postdetail/ui/fragment/ShortTvVideoFragment$a;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ZZLjava/lang/String;ZILjava/lang/Object;)Lcom/transsion/postdetail/ui/fragment/ShortTvVideoFragment;
    .locals 11

    .line 1
    move/from16 v0, p9

    .line 2
    .line 3
    and-int/lit8 v1, v0, 0x20

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    move v8, v1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move/from16 v8, p6

    .line 11
    .line 12
    :goto_0
    and-int/lit8 v1, v0, 0x40

    .line 13
    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    const-string v1, ""

    .line 17
    .line 18
    move-object v9, v1

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    move-object/from16 v9, p7

    .line 21
    .line 22
    :goto_1
    and-int/lit16 v0, v0, 0x80

    .line 23
    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    move v10, v0

    .line 28
    goto :goto_2

    .line 29
    :cond_2
    move/from16 v10, p8

    .line 30
    .line 31
    :goto_2
    move-object v2, p0

    .line 32
    move-object v3, p1

    .line 33
    move-object v4, p2

    .line 34
    move-object v5, p3

    .line 35
    move-object v6, p4

    .line 36
    move/from16 v7, p5

    .line 37
    .line 38
    invoke-virtual/range {v2 .. v10}, Lcom/transsion/postdetail/ui/fragment/ShortTvVideoFragment$a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ZZLjava/lang/String;Z)Lcom/transsion/postdetail/ui/fragment/ShortTvVideoFragment;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ZZLjava/lang/String;Z)Lcom/transsion/postdetail/ui/fragment/ShortTvVideoFragment;
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const-string v2, "context"

    .line 4
    .line 5
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v2, Lcom/transsion/postdetail/ui/fragment/ShortTvVideoFragment;

    .line 9
    .line 10
    invoke-direct {v2}, Lcom/transsion/postdetail/ui/fragment/ShortTvVideoFragment;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-static {v2, p1}, Lcom/transsion/postdetail/ui/fragment/ShortTvVideoFragment;->t0(Lcom/transsion/postdetail/ui/fragment/ShortTvVideoFragment;Landroid/content/Context;)V

    .line 14
    .line 15
    .line 16
    new-instance p1, Lcom/transsion/postdetail/viewmodel/ImmVideoRequestEntity;

    .line 17
    .line 18
    invoke-direct {p1}, Lcom/transsion/postdetail/viewmodel/ImmVideoRequestEntity;-><init>()V

    .line 19
    .line 20
    .line 21
    const-string v3, "1"

    .line 22
    .line 23
    invoke-virtual {p1, v3}, Lcom/transsion/postdetail/viewmodel/ImmVideoRequestEntity;->setPage(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const/4 v3, 0x5

    .line 27
    invoke-virtual {p1, v3}, Lcom/transsion/postdetail/viewmodel/ImmVideoRequestEntity;->setPerPage(I)V

    .line 28
    .line 29
    .line 30
    sget-object v4, Ljg/b;->a:Ljg/b$a;

    .line 31
    .line 32
    invoke-virtual {v4}, Ljg/b$a;->h()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    invoke-virtual {p1, v4}, Lcom/transsion/postdetail/viewmodel/ImmVideoRequestEntity;->setSessionId(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    sget-object v4, Lcom/transsion/baselib/report/h;->a:Lcom/transsion/baselib/report/h;

    .line 40
    .line 41
    invoke-virtual {v4}, Lcom/transsion/baselib/report/h;->b()Landroid/net/Uri;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    const-string v5, ""

    .line 46
    .line 47
    if-eqz v4, :cond_0

    .line 48
    .line 49
    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    if-nez v4, :cond_1

    .line 54
    .line 55
    :cond_0
    move-object v4, v5

    .line 56
    :cond_1
    invoke-virtual {p1, v4}, Lcom/transsion/postdetail/viewmodel/ImmVideoRequestEntity;->setDeepLink(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, v5}, Lcom/transsion/postdetail/viewmodel/ImmVideoRequestEntity;->setUserPrefer(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    new-instance v4, Lej/a;

    .line 63
    .line 64
    sget-object v5, Lej/b;->a:Lej/b$a;

    .line 65
    .line 66
    invoke-virtual {v5}, Lej/b$a;->e()Ljava/util/Queue;

    .line 67
    .line 68
    .line 69
    move-result-object v5

    .line 70
    invoke-direct {v4, v5}, Lej/a;-><init>(Ljava/util/Queue;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, v4}, Lcom/transsion/postdetail/viewmodel/ImmVideoRequestEntity;->setLatest_events(Ljava/util/Queue;)V

    .line 74
    .line 75
    .line 76
    const-string v4, "0"

    .line 77
    .line 78
    invoke-virtual {p1, v4}, Lcom/transsion/postdetail/viewmodel/ImmVideoRequestEntity;->setPostId(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    if-eqz p4, :cond_2

    .line 82
    .line 83
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    .line 84
    .line 85
    .line 86
    move-result v4

    .line 87
    goto :goto_0

    .line 88
    :cond_2
    move v4, v1

    .line 89
    :goto_0
    invoke-virtual {p1, v4}, Lcom/transsion/postdetail/viewmodel/ImmVideoRequestEntity;->setTabId(I)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1, v0}, Lcom/transsion/postdetail/viewmodel/ImmVideoRequestEntity;->setImmersiveRecType(I)V

    .line 93
    .line 94
    .line 95
    new-instance v4, Lcom/transsion/postdetail/ui/fragment/preload/VideoImmersiveDataLoader;

    .line 96
    .line 97
    invoke-direct {v4, p1}, Lcom/transsion/postdetail/ui/fragment/preload/VideoImmersiveDataLoader;-><init>(Lcom/transsion/postdetail/viewmodel/ImmVideoRequestEntity;)V

    .line 98
    .line 99
    .line 100
    sget-object p1, Lam/e;->a:Lam/e;

    .line 101
    .line 102
    new-array v5, v0, [Lam/b;

    .line 103
    .line 104
    aput-object v4, v5, v1

    .line 105
    .line 106
    invoke-virtual {p1, v5}, Lam/e;->c([Lam/b;)I

    .line 107
    .line 108
    .line 109
    move-result p1

    .line 110
    const-string v4, "id"

    .line 111
    .line 112
    invoke-static {v4, p2}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 113
    .line 114
    .line 115
    move-result-object p2

    .line 116
    const-string v4, "item_type"

    .line 117
    .line 118
    invoke-static {v4, p3}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 119
    .line 120
    .line 121
    move-result-object p3

    .line 122
    const-string v4, "tab_id"

    .line 123
    .line 124
    invoke-static {v4, p4}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 125
    .line 126
    .line 127
    move-result-object p4

    .line 128
    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 129
    .line 130
    .line 131
    move-result-object p5

    .line 132
    const-string v4, "video_load_more"

    .line 133
    .line 134
    invoke-static {v4, p5}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 135
    .line 136
    .line 137
    move-result-object p5

    .line 138
    invoke-static {p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 139
    .line 140
    .line 141
    move-result-object p6

    .line 142
    const-string v4, "from_comment"

    .line 143
    .line 144
    invoke-static {v4, p6}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 145
    .line 146
    .line 147
    move-result-object p6

    .line 148
    const-string v4, "rec_ops"

    .line 149
    .line 150
    invoke-static {v4, p7}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 151
    .line 152
    .line 153
    move-result-object p7

    .line 154
    invoke-static {p8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 155
    .line 156
    .line 157
    move-result-object p8

    .line 158
    const-string v4, "attach_to_main"

    .line 159
    .line 160
    invoke-static {v4, p8}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 161
    .line 162
    .line 163
    move-result-object p8

    .line 164
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    const-string v4, "yy_preload_id"

    .line 169
    .line 170
    invoke-static {v4, p1}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 171
    .line 172
    .line 173
    move-result-object p1

    .line 174
    const/16 v4, 0x8

    .line 175
    .line 176
    new-array v4, v4, [Lkotlin/Pair;

    .line 177
    .line 178
    aput-object p2, v4, v1

    .line 179
    .line 180
    aput-object p3, v4, v0

    .line 181
    .line 182
    const/4 p2, 0x2

    .line 183
    aput-object p4, v4, p2

    .line 184
    .line 185
    const/4 p2, 0x3

    .line 186
    aput-object p5, v4, p2

    .line 187
    .line 188
    const/4 p2, 0x4

    .line 189
    aput-object p6, v4, p2

    .line 190
    .line 191
    aput-object p7, v4, v3

    .line 192
    .line 193
    const/4 p2, 0x6

    .line 194
    aput-object p8, v4, p2

    .line 195
    .line 196
    const/4 p2, 0x7

    .line 197
    aput-object p1, v4, p2

    .line 198
    .line 199
    invoke-static {v4}, Landroidx/core/os/d;->b([Lkotlin/Pair;)Landroid/os/Bundle;

    .line 200
    .line 201
    .line 202
    move-result-object p1

    .line 203
    invoke-virtual {v2, p1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 204
    .line 205
    .line 206
    return-object v2
.end method
