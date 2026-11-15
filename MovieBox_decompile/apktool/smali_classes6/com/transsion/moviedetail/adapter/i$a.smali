.class public final Lcom/transsion/moviedetail/adapter/i$a;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/moviedetail/adapter/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u000b\u0008\u0000\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u000f\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u001f\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u0008\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u001f\u0010\u000f\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u00032\u0006\u0010\u0008\u001a\u00020\u0002H\u0014\u00a2\u0006\u0004\u0008\u000f\u0010\u0010R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u0012R\u0014\u0010\u0015\u001a\u00020\t8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/transsion/moviedetail/adapter/i$a;",
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "Lcom/transsion/moviedetailapi/bean/PostSubjectItem;",
        "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
        "",
        "pageName",
        "<init>",
        "(Ljava/lang/String;)V",
        "item",
        "",
        "position",
        "",
        "G1",
        "(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;I)V",
        "holder",
        "D1",
        "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V",
        "F",
        "Ljava/lang/String;",
        "G",
        "I",
        "coverSize",
        "MovieDetail_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field private final F:Ljava/lang/String;

.field private final G:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "pageName"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget v0, Lcom/transsion/moviedetail/R$layout;->movie_detail_item_for_you_post_item:I

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    const/4 v2, 0x2

    .line 10
    invoke-direct {p0, v0, v1, v2, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lcom/transsion/moviedetail/adapter/i$a;->F:Ljava/lang/String;

    .line 14
    .line 15
    const/16 p1, 0x70

    .line 16
    .line 17
    invoke-static {p1}, Llj/a;->b(I)I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    iput p1, p0, Lcom/transsion/moviedetail/adapter/i$a;->G:I

    .line 22
    .line 23
    return-void
.end method

.method public static synthetic B1(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/moviedetail/adapter/i$a;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/transsion/moviedetail/adapter/i$a;->E1(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/moviedetail/adapter/i$a;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic C1(Lcom/transsion/moviedetail/adapter/i$a;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/transsion/moviedetail/adapter/i$a;->F1(Lcom/transsion/moviedetail/adapter/i$a;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final E1(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/moviedetail/adapter/i$a;Landroid/view/View;)V
    .locals 10

    .line 1
    const/4 p3, 0x2

    .line 2
    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getGroup()Lcom/transsion/moviedetailapi/bean/Group;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Group;->getGroupId()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move-object v1, v2

    .line 16
    :goto_0
    const-string v3, "/room/detail"

    .line 17
    .line 18
    invoke-static {v3}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    const-string v4, "id"

    .line 23
    .line 24
    invoke-virtual {v3, v4, v1}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    const-string v3, "need_start_room_home"

    .line 29
    .line 30
    invoke-virtual {v1, v3, v0}, Lcom/therouter/router/Navigator;->z(Ljava/lang/String;Z)Lcom/therouter/router/Navigator;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    .line 35
    .line 36
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-static {v1, p1, v2, p3, v2}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lmf/c;ILjava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    const-string p1, "source"

    .line 44
    .line 45
    const-string v1, "for_you"

    .line 46
    .line 47
    invoke-static {p1, v1}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    const-string v1, "module_name"

    .line 52
    .line 53
    const-string v2, "group"

    .line 54
    .line 55
    invoke-static {v1, v2}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {p0}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getUser()Lcom/transsion/moviedetailapi/bean/User;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    const-string v3, ""

    .line 64
    .line 65
    if-eqz v2, :cond_1

    .line 66
    .line 67
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/User;->getUserId()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    if-nez v2, :cond_2

    .line 72
    .line 73
    :cond_1
    move-object v2, v3

    .line 74
    :cond_2
    const-string v4, "user_id"

    .line 75
    .line 76
    invoke-static {v4, v2}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    invoke-virtual {p0}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getPostId()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v4

    .line 84
    if-nez v4, :cond_3

    .line 85
    .line 86
    move-object v4, v3

    .line 87
    :cond_3
    const-string v5, "post_id"

    .line 88
    .line 89
    invoke-static {v5, v4}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 90
    .line 91
    .line 92
    move-result-object v4

    .line 93
    invoke-virtual {p0}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getMedia()Lcom/transsion/moviedetailapi/bean/Media;

    .line 94
    .line 95
    .line 96
    move-result-object v5

    .line 97
    if-eqz v5, :cond_4

    .line 98
    .line 99
    invoke-virtual {v5}, Lcom/transsion/moviedetailapi/bean/Media;->getMediaType()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v5

    .line 103
    if-nez v5, :cond_5

    .line 104
    .line 105
    :cond_4
    move-object v5, v3

    .line 106
    :cond_5
    const-string v6, "post_media_type"

    .line 107
    .line 108
    invoke-static {v6, v5}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 109
    .line 110
    .line 111
    move-result-object v5

    .line 112
    invoke-virtual {p0}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    .line 113
    .line 114
    .line 115
    move-result-object v6

    .line 116
    if-eqz v6, :cond_6

    .line 117
    .line 118
    invoke-virtual {v6}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectId()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v6

    .line 122
    if-nez v6, :cond_7

    .line 123
    .line 124
    :cond_6
    move-object v6, v3

    .line 125
    :cond_7
    const-string v7, "subject_id"

    .line 126
    .line 127
    invoke-static {v7, v6}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 128
    .line 129
    .line 130
    move-result-object v6

    .line 131
    invoke-virtual {p0}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    .line 132
    .line 133
    .line 134
    move-result-object v7

    .line 135
    if-eqz v7, :cond_8

    .line 136
    .line 137
    invoke-virtual {v7}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectType()Ljava/lang/Integer;

    .line 138
    .line 139
    .line 140
    move-result-object v7

    .line 141
    if-eqz v7, :cond_8

    .line 142
    .line 143
    invoke-virtual {v7}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v7

    .line 147
    if-nez v7, :cond_9

    .line 148
    .line 149
    :cond_8
    move-object v7, v3

    .line 150
    :cond_9
    const-string v8, "subject_type"

    .line 151
    .line 152
    invoke-static {v8, v7}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 153
    .line 154
    .line 155
    move-result-object v7

    .line 156
    invoke-virtual {p0}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->isRoomCache()Z

    .line 157
    .line 158
    .line 159
    move-result v8

    .line 160
    invoke-static {v8}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v8

    .line 164
    const-string v9, "is_cache_post"

    .line 165
    .line 166
    invoke-static {v9, v8}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 167
    .line 168
    .line 169
    move-result-object v8

    .line 170
    invoke-virtual {p0}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getGroup()Lcom/transsion/moviedetailapi/bean/Group;

    .line 171
    .line 172
    .line 173
    move-result-object v9

    .line 174
    if-eqz v9, :cond_b

    .line 175
    .line 176
    invoke-virtual {v9}, Lcom/transsion/moviedetailapi/bean/Group;->getGroupId()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v9

    .line 180
    if-nez v9, :cond_a

    .line 181
    .line 182
    goto :goto_1

    .line 183
    :cond_a
    move-object v3, v9

    .line 184
    :cond_b
    :goto_1
    const-string v9, "group_id"

    .line 185
    .line 186
    invoke-static {v9, v3}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 187
    .line 188
    .line 189
    move-result-object v3

    .line 190
    const-string v9, "ops"

    .line 191
    .line 192
    invoke-virtual {p0}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getOps()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object p0

    .line 196
    invoke-static {v9, p0}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 197
    .line 198
    .line 199
    move-result-object p0

    .line 200
    const/16 v9, 0xa

    .line 201
    .line 202
    new-array v9, v9, [Lkotlin/Pair;

    .line 203
    .line 204
    aput-object p1, v9, v0

    .line 205
    .line 206
    const/4 p1, 0x1

    .line 207
    aput-object v1, v9, p1

    .line 208
    .line 209
    aput-object v2, v9, p3

    .line 210
    .line 211
    const/4 p1, 0x3

    .line 212
    aput-object v4, v9, p1

    .line 213
    .line 214
    const/4 p1, 0x4

    .line 215
    aput-object v5, v9, p1

    .line 216
    .line 217
    const/4 p1, 0x5

    .line 218
    aput-object v6, v9, p1

    .line 219
    .line 220
    const/4 p1, 0x6

    .line 221
    aput-object v7, v9, p1

    .line 222
    .line 223
    const/4 p1, 0x7

    .line 224
    aput-object v8, v9, p1

    .line 225
    .line 226
    const/16 p1, 0x8

    .line 227
    .line 228
    aput-object v3, v9, p1

    .line 229
    .line 230
    const/16 p1, 0x9

    .line 231
    .line 232
    aput-object p0, v9, p1

    .line 233
    .line 234
    invoke-static {v9}, Lkotlin/collections/MapsKt;->m([Lkotlin/Pair;)Ljava/util/Map;

    .line 235
    .line 236
    .line 237
    move-result-object p0

    .line 238
    sget-object p1, Lqi/h;->a:Lqi/h;

    .line 239
    .line 240
    iget-object p2, p2, Lcom/transsion/moviedetail/adapter/i$a;->F:Ljava/lang/String;

    .line 241
    .line 242
    invoke-virtual {p1, p2, p0}, Lqi/h;->o(Ljava/lang/String;Ljava/util/Map;)V

    .line 243
    .line 244
    .line 245
    return-void
.end method

.method private static final F1(Lcom/transsion/moviedetail/adapter/i$a;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$a0;->getBindingAdapterPosition()I

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/transsion/moviedetail/adapter/i$a;->G1(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private final G1(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;I)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getPostId()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v2

    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getPostId()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    const-string v4, ""

    .line 16
    .line 17
    if-nez v3, :cond_1

    .line 18
    .line 19
    move-object v3, v4

    .line 20
    :cond_1
    const-string v5, "post_id"

    .line 21
    .line 22
    invoke-static {v5, v3}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    const-string v5, "position"

    .line 27
    .line 28
    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v6

    .line 32
    invoke-static {v5, v6}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 33
    .line 34
    .line 35
    move-result-object v5

    .line 36
    const-string v6, "source"

    .line 37
    .line 38
    const-string v7, "for_you"

    .line 39
    .line 40
    invoke-static {v6, v7}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 41
    .line 42
    .line 43
    move-result-object v6

    .line 44
    const-string v7, "module_name"

    .line 45
    .line 46
    const-string v8, "item"

    .line 47
    .line 48
    invoke-static {v7, v8}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 49
    .line 50
    .line 51
    move-result-object v7

    .line 52
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->isRoomCache()Z

    .line 53
    .line 54
    .line 55
    move-result v8

    .line 56
    invoke-static {v8}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v8

    .line 60
    const-string v9, "is_cache_post"

    .line 61
    .line 62
    invoke-static {v9, v8}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 63
    .line 64
    .line 65
    move-result-object v8

    .line 66
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getUser()Lcom/transsion/moviedetailapi/bean/User;

    .line 67
    .line 68
    .line 69
    move-result-object v9

    .line 70
    if-eqz v9, :cond_2

    .line 71
    .line 72
    invoke-virtual {v9}, Lcom/transsion/moviedetailapi/bean/User;->getUserId()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v9

    .line 76
    if-nez v9, :cond_3

    .line 77
    .line 78
    :cond_2
    move-object v9, v4

    .line 79
    :cond_3
    const-string v10, "user_id"

    .line 80
    .line 81
    invoke-static {v10, v9}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 82
    .line 83
    .line 84
    move-result-object v9

    .line 85
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getGroup()Lcom/transsion/moviedetailapi/bean/Group;

    .line 86
    .line 87
    .line 88
    move-result-object v10

    .line 89
    if-eqz v10, :cond_4

    .line 90
    .line 91
    invoke-virtual {v10}, Lcom/transsion/moviedetailapi/bean/Group;->getGroupId()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v10

    .line 95
    if-nez v10, :cond_5

    .line 96
    .line 97
    :cond_4
    move-object v10, v4

    .line 98
    :cond_5
    const-string v11, "group_id"

    .line 99
    .line 100
    invoke-static {v11, v10}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 101
    .line 102
    .line 103
    move-result-object v10

    .line 104
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    .line 105
    .line 106
    .line 107
    move-result-object v11

    .line 108
    if-eqz v11, :cond_6

    .line 109
    .line 110
    invoke-virtual {v11}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectId()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v11

    .line 114
    if-nez v11, :cond_7

    .line 115
    .line 116
    :cond_6
    move-object v11, v4

    .line 117
    :cond_7
    const-string v12, "subject_id"

    .line 118
    .line 119
    invoke-static {v12, v11}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 120
    .line 121
    .line 122
    move-result-object v11

    .line 123
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    .line 124
    .line 125
    .line 126
    move-result-object v12

    .line 127
    if-eqz v12, :cond_9

    .line 128
    .line 129
    invoke-virtual {v12}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectType()Ljava/lang/Integer;

    .line 130
    .line 131
    .line 132
    move-result-object v12

    .line 133
    if-eqz v12, :cond_9

    .line 134
    .line 135
    invoke-virtual {v12}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v12

    .line 139
    if-nez v12, :cond_8

    .line 140
    .line 141
    goto :goto_0

    .line 142
    :cond_8
    move-object v4, v12

    .line 143
    :cond_9
    :goto_0
    const-string v12, "subject_type"

    .line 144
    .line 145
    invoke-static {v12, v4}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 146
    .line 147
    .line 148
    move-result-object v4

    .line 149
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getMedia()Lcom/transsion/moviedetailapi/bean/Media;

    .line 150
    .line 151
    .line 152
    move-result-object v12

    .line 153
    if-eqz v12, :cond_a

    .line 154
    .line 155
    invoke-virtual {v12}, Lcom/transsion/moviedetailapi/bean/Media;->getMediaType()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v12

    .line 159
    if-nez v12, :cond_b

    .line 160
    .line 161
    :cond_a
    sget-object v12, Lcom/transsion/moviedetailapi/bean/MediaType;->TEXT:Lcom/transsion/moviedetailapi/bean/MediaType;

    .line 162
    .line 163
    invoke-virtual {v12}, Lcom/transsion/moviedetailapi/bean/MediaType;->getValue()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v12

    .line 167
    :cond_b
    const-string v13, "post_media_type"

    .line 168
    .line 169
    invoke-static {v13, v12}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 170
    .line 171
    .line 172
    move-result-object v12

    .line 173
    const-string v13, "ops"

    .line 174
    .line 175
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getOps()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v14

    .line 179
    invoke-static {v13, v14}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 180
    .line 181
    .line 182
    move-result-object v13

    .line 183
    const/16 v14, 0xb

    .line 184
    .line 185
    new-array v14, v14, [Lkotlin/Pair;

    .line 186
    .line 187
    const/4 v15, 0x0

    .line 188
    aput-object v3, v14, v15

    .line 189
    .line 190
    aput-object v5, v14, v1

    .line 191
    .line 192
    const/4 v3, 0x2

    .line 193
    aput-object v6, v14, v3

    .line 194
    .line 195
    const/4 v3, 0x3

    .line 196
    aput-object v7, v14, v3

    .line 197
    .line 198
    const/4 v3, 0x4

    .line 199
    aput-object v8, v14, v3

    .line 200
    .line 201
    const/4 v3, 0x5

    .line 202
    aput-object v9, v14, v3

    .line 203
    .line 204
    const/4 v3, 0x6

    .line 205
    aput-object v10, v14, v3

    .line 206
    .line 207
    const/4 v3, 0x7

    .line 208
    aput-object v11, v14, v3

    .line 209
    .line 210
    const/16 v3, 0x8

    .line 211
    .line 212
    aput-object v4, v14, v3

    .line 213
    .line 214
    const/16 v3, 0x9

    .line 215
    .line 216
    aput-object v12, v14, v3

    .line 217
    .line 218
    const/16 v3, 0xa

    .line 219
    .line 220
    aput-object v13, v14, v3

    .line 221
    .line 222
    invoke-static {v14}, Lkotlin/collections/MapsKt;->m([Lkotlin/Pair;)Ljava/util/Map;

    .line 223
    .line 224
    .line 225
    move-result-object v3

    .line 226
    sget-object v4, Lqi/h;->a:Lqi/h;

    .line 227
    .line 228
    iget-object v5, v0, Lcom/transsion/moviedetail/adapter/i$a;->F:Ljava/lang/String;

    .line 229
    .line 230
    invoke-virtual {v4, v5, v3}, Lqi/h;->o(Ljava/lang/String;Ljava/util/Map;)V

    .line 231
    .line 232
    .line 233
    sget-object v3, Lep/k;->a:Lep/k;

    .line 234
    .line 235
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getOps()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v4

    .line 239
    iget-object v5, v0, Lcom/transsion/moviedetail/adapter/i$a;->F:Ljava/lang/String;

    .line 240
    .line 241
    invoke-virtual {v3, v2, v4, v5, v1}, Lep/k;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 242
    .line 243
    .line 244
    return-void
.end method


# virtual methods
.method protected D1(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V
    .locals 5

    .line 1
    const-string v0, "holder"

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
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getMedia()Lcom/transsion/moviedetailapi/bean/Media;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const/4 v1, 0x0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Media;->getMediaType()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move-object v0, v1

    .line 24
    :goto_0
    sget-object v2, Lcom/transsion/moviedetailapi/bean/MediaType;->IMAGE:Lcom/transsion/moviedetailapi/bean/MediaType;

    .line 25
    .line 26
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/MediaType;->getValue()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    const-string v3, ""

    .line 35
    .line 36
    if-eqz v2, :cond_3

    .line 37
    .line 38
    new-instance v0, Lkotlin/Pair;

    .line 39
    .line 40
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getMedia()Lcom/transsion/moviedetailapi/bean/Media;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    if-eqz v2, :cond_1

    .line 45
    .line 46
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Media;->getImage()Ljava/util/List;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    if-eqz v2, :cond_1

    .line 51
    .line 52
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    check-cast v2, Lcom/transsion/moviedetailapi/bean/Image;

    .line 57
    .line 58
    if-eqz v2, :cond_1

    .line 59
    .line 60
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Image;->getUrl()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    goto :goto_1

    .line 65
    :cond_1
    move-object v2, v1

    .line 66
    :goto_1
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getMedia()Lcom/transsion/moviedetailapi/bean/Media;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    if-eqz v4, :cond_2

    .line 71
    .line 72
    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/bean/Media;->getImage()Ljava/util/List;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    if-eqz v4, :cond_2

    .line 77
    .line 78
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    check-cast v4, Lcom/transsion/moviedetailapi/bean/Image;

    .line 83
    .line 84
    if-eqz v4, :cond_2

    .line 85
    .line 86
    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/bean/Image;->getThumbnail()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v4

    .line 90
    goto :goto_2

    .line 91
    :cond_2
    move-object v4, v1

    .line 92
    :goto_2
    invoke-direct {v0, v2, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    goto :goto_4

    .line 96
    :cond_3
    sget-object v2, Lcom/transsion/moviedetailapi/bean/MediaType;->VIDEO:Lcom/transsion/moviedetailapi/bean/MediaType;

    .line 97
    .line 98
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/MediaType;->getValue()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    if-eqz v0, :cond_9

    .line 107
    .line 108
    new-instance v0, Lkotlin/Pair;

    .line 109
    .line 110
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getMedia()Lcom/transsion/moviedetailapi/bean/Media;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    if-eqz v2, :cond_4

    .line 115
    .line 116
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Media;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    if-eqz v2, :cond_4

    .line 121
    .line 122
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Cover;->getUrl()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    if-nez v2, :cond_6

    .line 127
    .line 128
    :cond_4
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getMedia()Lcom/transsion/moviedetailapi/bean/Media;

    .line 129
    .line 130
    .line 131
    move-result-object v2

    .line 132
    if-eqz v2, :cond_5

    .line 133
    .line 134
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Media;->getFirstFrame()Lcom/transsion/moviedetailapi/bean/FirstFrame;

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    if-eqz v2, :cond_5

    .line 139
    .line 140
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/FirstFrame;->getUrl()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v2

    .line 144
    goto :goto_3

    .line 145
    :cond_5
    move-object v2, v1

    .line 146
    :cond_6
    :goto_3
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getMedia()Lcom/transsion/moviedetailapi/bean/Media;

    .line 147
    .line 148
    .line 149
    move-result-object v4

    .line 150
    if-eqz v4, :cond_7

    .line 151
    .line 152
    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/bean/Media;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    .line 153
    .line 154
    .line 155
    move-result-object v4

    .line 156
    if-eqz v4, :cond_7

    .line 157
    .line 158
    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/bean/Cover;->getThumbnail()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v4

    .line 162
    if-nez v4, :cond_8

    .line 163
    .line 164
    :cond_7
    move-object v4, v3

    .line 165
    :cond_8
    invoke-direct {v0, v2, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 166
    .line 167
    .line 168
    goto :goto_4

    .line 169
    :cond_9
    move-object v0, v1

    .line 170
    :goto_4
    if-eqz v0, :cond_c

    .line 171
    .line 172
    sget-object v2, Lni/f;->a:Lni/f$a;

    .line 173
    .line 174
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    .line 175
    .line 176
    .line 177
    move-result-object v4

    .line 178
    invoke-virtual {v2, v4}, Lni/f$a;->m(Landroid/content/Context;)Lni/f$b;

    .line 179
    .line 180
    .line 181
    move-result-object v2

    .line 182
    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object v4

    .line 186
    check-cast v4, Ljava/lang/String;

    .line 187
    .line 188
    if-nez v4, :cond_a

    .line 189
    .line 190
    move-object v4, v3

    .line 191
    :cond_a
    invoke-virtual {v2, v4}, Lni/f$b;->g(Ljava/lang/String;)Lni/f$b;

    .line 192
    .line 193
    .line 194
    move-result-object v2

    .line 195
    iget v4, p0, Lcom/transsion/moviedetail/adapter/i$a;->G:I

    .line 196
    .line 197
    invoke-virtual {v2, v4}, Lni/f$b;->m(I)Lni/f$b;

    .line 198
    .line 199
    .line 200
    move-result-object v2

    .line 201
    iget v4, p0, Lcom/transsion/moviedetail/adapter/i$a;->G:I

    .line 202
    .line 203
    invoke-virtual {v2, v4}, Lni/f$b;->c(I)Lni/f$b;

    .line 204
    .line 205
    .line 206
    move-result-object v2

    .line 207
    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    check-cast v0, Ljava/lang/String;

    .line 212
    .line 213
    if-nez v0, :cond_b

    .line 214
    .line 215
    move-object v0, v3

    .line 216
    :cond_b
    invoke-virtual {v2, v0}, Lni/f$b;->l(Ljava/lang/String;)Lni/f$b;

    .line 217
    .line 218
    .line 219
    move-result-object v0

    .line 220
    sget v2, Lcom/transsion/moviedetail/R$id;->ivCover:I

    .line 221
    .line 222
    invoke-virtual {p1, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 223
    .line 224
    .line 225
    move-result-object v2

    .line 226
    check-cast v2, Landroid/widget/ImageView;

    .line 227
    .line 228
    invoke-virtual {v0, v2}, Lni/f$b;->d(Landroid/widget/ImageView;)V

    .line 229
    .line 230
    .line 231
    :cond_c
    sget v0, Lcom/transsion/moviedetail/R$id;->ivVideoPlay:I

    .line 232
    .line 233
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getMedia()Lcom/transsion/moviedetailapi/bean/Media;

    .line 238
    .line 239
    .line 240
    move-result-object v2

    .line 241
    if-eqz v2, :cond_d

    .line 242
    .line 243
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Media;->getMediaType()Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v2

    .line 247
    goto :goto_5

    .line 248
    :cond_d
    move-object v2, v1

    .line 249
    :goto_5
    sget-object v4, Lcom/transsion/moviedetailapi/bean/MediaType;->VIDEO:Lcom/transsion/moviedetailapi/bean/MediaType;

    .line 250
    .line 251
    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/bean/MediaType;->getValue()Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v4

    .line 255
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 256
    .line 257
    .line 258
    move-result v2

    .line 259
    if-eqz v2, :cond_e

    .line 260
    .line 261
    const/4 v2, 0x0

    .line 262
    goto :goto_6

    .line 263
    :cond_e
    const/16 v2, 0x8

    .line 264
    .line 265
    :goto_6
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 266
    .line 267
    .line 268
    sget v0, Lcom/transsion/moviedetail/R$id;->tvRoomTitle:I

    .line 269
    .line 270
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 271
    .line 272
    .line 273
    move-result-object v0

    .line 274
    check-cast v0, Landroid/widget/TextView;

    .line 275
    .line 276
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getGroup()Lcom/transsion/moviedetailapi/bean/Group;

    .line 277
    .line 278
    .line 279
    move-result-object v2

    .line 280
    if-eqz v2, :cond_f

    .line 281
    .line 282
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Group;->getName()Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object v1

    .line 286
    :cond_f
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 287
    .line 288
    .line 289
    sget-object v0, Lni/f;->a:Lni/f$a;

    .line 290
    .line 291
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    .line 292
    .line 293
    .line 294
    move-result-object v1

    .line 295
    invoke-virtual {v0, v1}, Lni/f$a;->m(Landroid/content/Context;)Lni/f$b;

    .line 296
    .line 297
    .line 298
    move-result-object v0

    .line 299
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getGroup()Lcom/transsion/moviedetailapi/bean/Group;

    .line 300
    .line 301
    .line 302
    move-result-object v1

    .line 303
    if-eqz v1, :cond_11

    .line 304
    .line 305
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Group;->getAvatar()Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object v1

    .line 309
    if-nez v1, :cond_10

    .line 310
    .line 311
    goto :goto_7

    .line 312
    :cond_10
    move-object v3, v1

    .line 313
    :cond_11
    :goto_7
    invoke-virtual {v0, v3}, Lni/f$b;->g(Ljava/lang/String;)Lni/f$b;

    .line 314
    .line 315
    .line 316
    move-result-object v0

    .line 317
    const/16 v1, 0x18

    .line 318
    .line 319
    invoke-static {v1}, Llj/a;->b(I)I

    .line 320
    .line 321
    .line 322
    move-result v2

    .line 323
    invoke-virtual {v0, v2}, Lni/f$b;->m(I)Lni/f$b;

    .line 324
    .line 325
    .line 326
    move-result-object v0

    .line 327
    invoke-static {v1}, Llj/a;->b(I)I

    .line 328
    .line 329
    .line 330
    move-result v1

    .line 331
    invoke-virtual {v0, v1}, Lni/f$b;->c(I)Lni/f$b;

    .line 332
    .line 333
    .line 334
    move-result-object v0

    .line 335
    sget v1, Lcom/transsion/moviedetail/R$id;->ivRoomCover:I

    .line 336
    .line 337
    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 338
    .line 339
    .line 340
    move-result-object v1

    .line 341
    check-cast v1, Landroid/widget/ImageView;

    .line 342
    .line 343
    invoke-virtual {v0, v1}, Lni/f$b;->d(Landroid/widget/ImageView;)V

    .line 344
    .line 345
    .line 346
    sget v0, Lcom/transsion/moviedetail/R$id;->vRoomInfo:I

    .line 347
    .line 348
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 349
    .line 350
    .line 351
    move-result-object v0

    .line 352
    new-instance v1, Lcom/transsion/moviedetail/adapter/g;

    .line 353
    .line 354
    invoke-direct {v1, p2, p1, p0}, Lcom/transsion/moviedetail/adapter/g;-><init>(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/moviedetail/adapter/i$a;)V

    .line 355
    .line 356
    .line 357
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 358
    .line 359
    .line 360
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    .line 361
    .line 362
    new-instance v1, Lcom/transsion/moviedetail/adapter/h;

    .line 363
    .line 364
    invoke-direct {v1, p0, p2, p1}, Lcom/transsion/moviedetail/adapter/h;-><init>(Lcom/transsion/moviedetail/adapter/i$a;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V

    .line 365
    .line 366
    .line 367
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 368
    .line 369
    .line 370
    return-void
.end method

.method public bridge synthetic F(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/transsion/moviedetail/adapter/i$a;->D1(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
