.class public final Lcom/transsion/home/adapter/operateUGC/provider/RoomUGCProvider$PostAdapter$PostItemProvider;
.super Lcom/chad/library/adapter/base/provider/BaseItemProvider;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/home/adapter/operateUGC/provider/RoomUGCProvider$PostAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PostItemProvider"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/home/adapter/operateUGC/provider/RoomUGCProvider$PostAdapter$PostItemProvider$PostItemVH;
    }
.end annotation


# instance fields
.field private final e:I

.field private final f:Lcom/transsion/home/bean/OperateItem;

.field private final g:I

.field private final h:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(ILcom/transsion/home/bean/OperateItem;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/transsion/home/adapter/operateUGC/provider/RoomUGCProvider$PostAdapter$PostItemProvider;->e:I

    .line 5
    .line 6
    iput-object p2, p0, Lcom/transsion/home/adapter/operateUGC/provider/RoomUGCProvider$PostAdapter$PostItemProvider;->f:Lcom/transsion/home/bean/OperateItem;

    .line 7
    .line 8
    invoke-static {}, Lcom/blankj/utilcode/util/y;->e()I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    const/16 p2, 0x28

    .line 13
    .line 14
    invoke-static {p2}, Llj/a;->b(I)I

    .line 15
    .line 16
    .line 17
    move-result p2

    .line 18
    sub-int/2addr p1, p2

    .line 19
    div-int/lit8 p1, p1, 0x3

    .line 20
    .line 21
    iput p1, p0, Lcom/transsion/home/adapter/operateUGC/provider/RoomUGCProvider$PostAdapter$PostItemProvider;->g:I

    .line 22
    .line 23
    mul-int/lit16 p1, p1, 0x96

    .line 24
    .line 25
    div-int/lit8 p1, p1, 0x6b

    .line 26
    .line 27
    iput p1, p0, Lcom/transsion/home/adapter/operateUGC/provider/RoomUGCProvider$PostAdapter$PostItemProvider;->h:I

    .line 28
    .line 29
    return-void
.end method

.method private static final A(Lcom/transsion/home/adapter/operateUGC/provider/RoomUGCProvider$PostAdapter$PostItemProvider;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Lcom/transsion/home/adapter/operateUGC/provider/RoomUGCProvider$PostAdapter$PostItemProvider$PostItemVH;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$a0;->getAdapterPosition()I

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/transsion/home/adapter/operateUGC/provider/RoomUGCProvider$PostAdapter$PostItemProvider;->C(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private final C(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;I)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/transsion/home/adapter/operateUGC/provider/RoomUGCProvider$PostAdapter$PostItemProvider;->f:Lcom/transsion/home/bean/OperateItem;

    .line 2
    .line 3
    invoke-direct {p0, p2, v0, p1}, Lcom/transsion/home/adapter/operateUGC/provider/RoomUGCProvider$PostAdapter$PostItemProvider;->D(ILcom/transsion/home/bean/OperateItem;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lep/k;->a:Lep/k;

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getOps()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v3

    .line 12
    const/16 v6, 0x8

    .line 13
    .line 14
    const/4 v7, 0x0

    .line 15
    const-string v4, "UgcTrending"

    .line 16
    .line 17
    const/4 v5, 0x0

    .line 18
    move-object v2, p1

    .line 19
    invoke-static/range {v1 .. v7}, Lep/k;->k(Lep/k;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method private final D(ILcom/transsion/home/bean/OperateItem;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V
    .locals 12

    .line 1
    invoke-virtual {p3}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getPostId()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, ""

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    move-object v0, v1

    .line 10
    :cond_0
    const-string v2, "post_id"

    .line 11
    .line 12
    invoke-static {v2, v0}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v2, "position"

    .line 17
    .line 18
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-static {v2, p1}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const-string v2, "module_name"

    .line 27
    .line 28
    const-string v3, "item"

    .line 29
    .line 30
    invoke-static {v2, v3}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {p3}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->isRoomCache()Z

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    const-string v4, "is_cache_post"

    .line 43
    .line 44
    invoke-static {v4, v3}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    invoke-virtual {p3}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getUser()Lcom/transsion/moviedetailapi/bean/User;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    if-eqz v4, :cond_1

    .line 53
    .line 54
    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/bean/User;->getUserId()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    if-nez v4, :cond_2

    .line 59
    .line 60
    :cond_1
    move-object v4, v1

    .line 61
    :cond_2
    const-string v5, "user_id"

    .line 62
    .line 63
    invoke-static {v5, v4}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    invoke-virtual {p3}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getGroup()Lcom/transsion/moviedetailapi/bean/Group;

    .line 68
    .line 69
    .line 70
    move-result-object v5

    .line 71
    if-eqz v5, :cond_3

    .line 72
    .line 73
    invoke-virtual {v5}, Lcom/transsion/moviedetailapi/bean/Group;->getGroupId()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v5

    .line 77
    if-nez v5, :cond_4

    .line 78
    .line 79
    :cond_3
    move-object v5, v1

    .line 80
    :cond_4
    const-string v6, "group_id"

    .line 81
    .line 82
    invoke-static {v6, v5}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 83
    .line 84
    .line 85
    move-result-object v5

    .line 86
    invoke-virtual {p3}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    .line 87
    .line 88
    .line 89
    move-result-object v6

    .line 90
    if-eqz v6, :cond_5

    .line 91
    .line 92
    invoke-virtual {v6}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectId()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v6

    .line 96
    if-nez v6, :cond_6

    .line 97
    .line 98
    :cond_5
    move-object v6, v1

    .line 99
    :cond_6
    const-string v7, "subject_id"

    .line 100
    .line 101
    invoke-static {v7, v6}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 102
    .line 103
    .line 104
    move-result-object v6

    .line 105
    invoke-virtual {p3}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    .line 106
    .line 107
    .line 108
    move-result-object v7

    .line 109
    if-eqz v7, :cond_7

    .line 110
    .line 111
    invoke-virtual {v7}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectType()Ljava/lang/Integer;

    .line 112
    .line 113
    .line 114
    move-result-object v7

    .line 115
    if-eqz v7, :cond_7

    .line 116
    .line 117
    invoke-virtual {v7}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v7

    .line 121
    if-nez v7, :cond_8

    .line 122
    .line 123
    :cond_7
    move-object v7, v1

    .line 124
    :cond_8
    const-string v8, "subject_type"

    .line 125
    .line 126
    invoke-static {v8, v7}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 127
    .line 128
    .line 129
    move-result-object v7

    .line 130
    invoke-virtual {p3}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getBuiltIn()Z

    .line 131
    .line 132
    .line 133
    move-result v8

    .line 134
    if-eqz v8, :cond_9

    .line 135
    .line 136
    const-string v8, "1"

    .line 137
    .line 138
    goto :goto_0

    .line 139
    :cond_9
    const-string v8, "0"

    .line 140
    .line 141
    :goto_0
    const-string v9, "builtin"

    .line 142
    .line 143
    invoke-static {v9, v8}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 144
    .line 145
    .line 146
    move-result-object v8

    .line 147
    invoke-virtual {p3}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getMedia()Lcom/transsion/moviedetailapi/bean/Media;

    .line 148
    .line 149
    .line 150
    move-result-object v9

    .line 151
    if-eqz v9, :cond_a

    .line 152
    .line 153
    invoke-virtual {v9}, Lcom/transsion/moviedetailapi/bean/Media;->getMediaType()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v9

    .line 157
    if-nez v9, :cond_b

    .line 158
    .line 159
    :cond_a
    sget-object v9, Lcom/transsion/moviedetailapi/bean/MediaType;->TEXT:Lcom/transsion/moviedetailapi/bean/MediaType;

    .line 160
    .line 161
    invoke-virtual {v9}, Lcom/transsion/moviedetailapi/bean/MediaType;->getValue()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v9

    .line 165
    :cond_b
    const-string v10, "post_media_type"

    .line 166
    .line 167
    invoke-static {v10, v9}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 168
    .line 169
    .line 170
    move-result-object v9

    .line 171
    iget v10, p0, Lcom/transsion/home/adapter/operateUGC/provider/RoomUGCProvider$PostAdapter$PostItemProvider;->e:I

    .line 172
    .line 173
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v10

    .line 177
    const-string v11, "tabId"

    .line 178
    .line 179
    invoke-static {v11, v10}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 180
    .line 181
    .line 182
    move-result-object v10

    .line 183
    if-eqz p2, :cond_d

    .line 184
    .line 185
    invoke-virtual {p2}, Lcom/transsion/home/bean/OperateItem;->getOps()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v11

    .line 189
    if-nez v11, :cond_c

    .line 190
    .line 191
    goto :goto_1

    .line 192
    :cond_c
    move-object v1, v11

    .line 193
    goto :goto_2

    .line 194
    :cond_d
    :goto_1
    invoke-virtual {p3}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getOps()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object p3

    .line 198
    if-nez p3, :cond_e

    .line 199
    .line 200
    goto :goto_2

    .line 201
    :cond_e
    move-object v1, p3

    .line 202
    :goto_2
    const-string p3, "ops"

    .line 203
    .line 204
    invoke-static {p3, v1}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 205
    .line 206
    .line 207
    move-result-object p3

    .line 208
    const/16 v1, 0xc

    .line 209
    .line 210
    new-array v1, v1, [Lkotlin/Pair;

    .line 211
    .line 212
    const/4 v11, 0x0

    .line 213
    aput-object v0, v1, v11

    .line 214
    .line 215
    const/4 v0, 0x1

    .line 216
    aput-object p1, v1, v0

    .line 217
    .line 218
    const/4 p1, 0x2

    .line 219
    aput-object v2, v1, p1

    .line 220
    .line 221
    const/4 p1, 0x3

    .line 222
    aput-object v3, v1, p1

    .line 223
    .line 224
    const/4 p1, 0x4

    .line 225
    aput-object v4, v1, p1

    .line 226
    .line 227
    const/4 p1, 0x5

    .line 228
    aput-object v5, v1, p1

    .line 229
    .line 230
    const/4 p1, 0x6

    .line 231
    aput-object v6, v1, p1

    .line 232
    .line 233
    const/4 p1, 0x7

    .line 234
    aput-object v7, v1, p1

    .line 235
    .line 236
    const/16 p1, 0x8

    .line 237
    .line 238
    aput-object v8, v1, p1

    .line 239
    .line 240
    const/16 p1, 0x9

    .line 241
    .line 242
    aput-object v9, v1, p1

    .line 243
    .line 244
    const/16 p1, 0xa

    .line 245
    .line 246
    aput-object v10, v1, p1

    .line 247
    .line 248
    const/16 p1, 0xb

    .line 249
    .line 250
    aput-object p3, v1, p1

    .line 251
    .line 252
    invoke-static {v1}, Lkotlin/collections/MapsKt;->m([Lkotlin/Pair;)Ljava/util/Map;

    .line 253
    .line 254
    .line 255
    move-result-object p1

    .line 256
    if-eqz p2, :cond_f

    .line 257
    .line 258
    invoke-static {p2, p1}, Lsk/b;->a(Lcom/transsion/home/bean/OperateItem;Ljava/util/Map;)V

    .line 259
    .line 260
    .line 261
    :cond_f
    sget-object p2, Lqi/h;->a:Lqi/h;

    .line 262
    .line 263
    const-string p3, "UgcTrending"

    .line 264
    .line 265
    invoke-virtual {p2, p3, p1}, Lqi/h;->o(Ljava/lang/String;Ljava/util/Map;)V

    .line 266
    .line 267
    .line 268
    return-void
.end method

.method public static synthetic y(Lcom/transsion/home/adapter/operateUGC/provider/RoomUGCProvider$PostAdapter$PostItemProvider;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Lcom/transsion/home/adapter/operateUGC/provider/RoomUGCProvider$PostAdapter$PostItemProvider$PostItemVH;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/transsion/home/adapter/operateUGC/provider/RoomUGCProvider$PostAdapter$PostItemProvider;->A(Lcom/transsion/home/adapter/operateUGC/provider/RoomUGCProvider$PostAdapter$PostItemProvider;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Lcom/transsion/home/adapter/operateUGC/provider/RoomUGCProvider$PostAdapter$PostItemProvider$PostItemVH;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public B(Landroid/view/ViewGroup;I)Lcom/transsion/home/adapter/operateUGC/provider/RoomUGCProvider$PostAdapter$PostItemProvider$PostItemVH;
    .locals 2

    .line 1
    const-string p2, "parent"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    const/4 v0, 0x0

    .line 15
    invoke-static {p2, p1, v0}, Lqk/f0;->c(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lqk/f0;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const-string p2, "inflate(...)"

    .line 20
    .line 21
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object p2, p1, Lqk/f0;->b:Lcom/google/android/material/imageview/ShapeableImageView;

    .line 25
    .line 26
    const-string v0, "ivCover"

    .line 27
    .line 28
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    if-eqz v0, :cond_0

    .line 36
    .line 37
    iget v1, p0, Lcom/transsion/home/adapter/operateUGC/provider/RoomUGCProvider$PostAdapter$PostItemProvider;->h:I

    .line 38
    .line 39
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 40
    .line 41
    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 42
    .line 43
    .line 44
    new-instance p2, Lcom/transsion/home/adapter/operateUGC/provider/RoomUGCProvider$PostAdapter$PostItemProvider$PostItemVH;

    .line 45
    .line 46
    invoke-direct {p2, p1}, Lcom/transsion/home/adapter/operateUGC/provider/RoomUGCProvider$PostAdapter$PostItemProvider$PostItemVH;-><init>(Lqk/f0;)V

    .line 47
    .line 48
    .line 49
    return-object p2

    .line 50
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    .line 51
    .line 52
    const-string p2, "null cannot be cast to non-null type android.view.ViewGroup.LayoutParams"

    .line 53
    .line 54
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw p1
.end method

.method public bridge synthetic b(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/transsion/home/adapter/operateUGC/provider/RoomUGCProvider$PostAdapter$PostItemProvider;->z(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public l()I
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public m()I
    .locals 1

    .line 1
    sget v0, Lcom/transsion/home/R$layout;->item_ugc_vertical_content:I

    .line 2
    .line 3
    return v0
.end method

.method public bridge synthetic r(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/transsion/home/adapter/operateUGC/provider/RoomUGCProvider$PostAdapter$PostItemProvider;->B(Landroid/view/ViewGroup;I)Lcom/transsion/home/adapter/operateUGC/provider/RoomUGCProvider$PostAdapter$PostItemProvider$PostItemVH;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public z(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V
    .locals 5

    .line 1
    const-string v0, "helper"

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
    check-cast p1, Lcom/transsion/home/adapter/operateUGC/provider/RoomUGCProvider$PostAdapter$PostItemProvider$PostItemVH;

    .line 12
    .line 13
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    .line 14
    .line 15
    new-instance v1, Lcom/transsion/home/adapter/operateUGC/provider/b0;

    .line 16
    .line 17
    invoke-direct {v1, p0, p2, p1}, Lcom/transsion/home/adapter/operateUGC/provider/b0;-><init>(Lcom/transsion/home/adapter/operateUGC/provider/RoomUGCProvider$PostAdapter$PostItemProvider;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Lcom/transsion/home/adapter/operateUGC/provider/RoomUGCProvider$PostAdapter$PostItemProvider$PostItemVH;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getContent()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const-string v1, ""

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-nez v0, :cond_0

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getContent()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    goto :goto_1

    .line 43
    :cond_1
    :goto_0
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getTitle()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    if-nez v0, :cond_2

    .line 48
    .line 49
    move-object v0, v1

    .line 50
    :cond_2
    :goto_1
    invoke-virtual {p1}, Lcom/transsion/home/adapter/operateUGC/provider/RoomUGCProvider$PostAdapter$PostItemProvider$PostItemVH;->f()Lqk/f0;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    iget-object v2, v2, Lqk/f0;->e:Lcom/tn/lib/widget/TnTextView;

    .line 55
    .line 56
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getMedia()Lcom/transsion/moviedetailapi/bean/Media;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    const/4 v2, 0x0

    .line 64
    if-eqz v0, :cond_3

    .line 65
    .line 66
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Media;->getMediaType()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    goto :goto_2

    .line 71
    :cond_3
    move-object v0, v2

    .line 72
    :goto_2
    sget-object v3, Lcom/transsion/moviedetailapi/bean/MediaType;->IMAGE:Lcom/transsion/moviedetailapi/bean/MediaType;

    .line 73
    .line 74
    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/MediaType;->getValue()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v3

    .line 82
    if-eqz v3, :cond_6

    .line 83
    .line 84
    new-instance v0, Lkotlin/Pair;

    .line 85
    .line 86
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getMedia()Lcom/transsion/moviedetailapi/bean/Media;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    if-eqz v3, :cond_4

    .line 91
    .line 92
    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/Media;->getImage()Ljava/util/List;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    if-eqz v3, :cond_4

    .line 97
    .line 98
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    check-cast v3, Lcom/transsion/moviedetailapi/bean/Image;

    .line 103
    .line 104
    if-eqz v3, :cond_4

    .line 105
    .line 106
    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/Image;->getUrl()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    goto :goto_3

    .line 111
    :cond_4
    move-object v3, v2

    .line 112
    :goto_3
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getMedia()Lcom/transsion/moviedetailapi/bean/Media;

    .line 113
    .line 114
    .line 115
    move-result-object v4

    .line 116
    if-eqz v4, :cond_5

    .line 117
    .line 118
    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/bean/Media;->getImage()Ljava/util/List;

    .line 119
    .line 120
    .line 121
    move-result-object v4

    .line 122
    if-eqz v4, :cond_5

    .line 123
    .line 124
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v4

    .line 128
    check-cast v4, Lcom/transsion/moviedetailapi/bean/Image;

    .line 129
    .line 130
    if-eqz v4, :cond_5

    .line 131
    .line 132
    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/bean/Image;->getThumbnail()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    :cond_5
    invoke-direct {v0, v3, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 137
    .line 138
    .line 139
    :goto_4
    move-object v2, v0

    .line 140
    goto :goto_7

    .line 141
    :cond_6
    sget-object v3, Lcom/transsion/moviedetailapi/bean/MediaType;->VIDEO:Lcom/transsion/moviedetailapi/bean/MediaType;

    .line 142
    .line 143
    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/MediaType;->getValue()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v3

    .line 147
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    move-result v0

    .line 151
    if-eqz v0, :cond_c

    .line 152
    .line 153
    new-instance v0, Lkotlin/Pair;

    .line 154
    .line 155
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getMedia()Lcom/transsion/moviedetailapi/bean/Media;

    .line 156
    .line 157
    .line 158
    move-result-object v3

    .line 159
    if-eqz v3, :cond_8

    .line 160
    .line 161
    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/Media;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    .line 162
    .line 163
    .line 164
    move-result-object v3

    .line 165
    if-eqz v3, :cond_8

    .line 166
    .line 167
    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/Cover;->getUrl()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v3

    .line 171
    if-nez v3, :cond_7

    .line 172
    .line 173
    goto :goto_5

    .line 174
    :cond_7
    move-object v2, v3

    .line 175
    goto :goto_6

    .line 176
    :cond_8
    :goto_5
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getMedia()Lcom/transsion/moviedetailapi/bean/Media;

    .line 177
    .line 178
    .line 179
    move-result-object v3

    .line 180
    if-eqz v3, :cond_9

    .line 181
    .line 182
    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/Media;->getFirstFrame()Lcom/transsion/moviedetailapi/bean/FirstFrame;

    .line 183
    .line 184
    .line 185
    move-result-object v3

    .line 186
    if-eqz v3, :cond_9

    .line 187
    .line 188
    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/FirstFrame;->getUrl()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v2

    .line 192
    :cond_9
    :goto_6
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getMedia()Lcom/transsion/moviedetailapi/bean/Media;

    .line 193
    .line 194
    .line 195
    move-result-object v3

    .line 196
    if-eqz v3, :cond_a

    .line 197
    .line 198
    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/Media;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    .line 199
    .line 200
    .line 201
    move-result-object v3

    .line 202
    if-eqz v3, :cond_a

    .line 203
    .line 204
    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/Cover;->getThumbnail()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v3

    .line 208
    if-nez v3, :cond_b

    .line 209
    .line 210
    :cond_a
    move-object v3, v1

    .line 211
    :cond_b
    invoke-direct {v0, v2, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 212
    .line 213
    .line 214
    goto :goto_4

    .line 215
    :cond_c
    :goto_7
    sget-object v0, Lni/f;->a:Lni/f$a;

    .line 216
    .line 217
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    .line 218
    .line 219
    .line 220
    move-result-object v3

    .line 221
    invoke-virtual {v0, v3}, Lni/f$a;->m(Landroid/content/Context;)Lni/f$b;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    if-eqz v2, :cond_d

    .line 226
    .line 227
    invoke-virtual {v2}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    move-result-object v3

    .line 231
    check-cast v3, Ljava/lang/String;

    .line 232
    .line 233
    if-nez v3, :cond_e

    .line 234
    .line 235
    :cond_d
    move-object v3, v1

    .line 236
    :cond_e
    invoke-virtual {v0, v3}, Lni/f$b;->g(Ljava/lang/String;)Lni/f$b;

    .line 237
    .line 238
    .line 239
    move-result-object v0

    .line 240
    iget v3, p0, Lcom/transsion/home/adapter/operateUGC/provider/RoomUGCProvider$PostAdapter$PostItemProvider;->g:I

    .line 241
    .line 242
    invoke-virtual {v0, v3}, Lni/f$b;->m(I)Lni/f$b;

    .line 243
    .line 244
    .line 245
    move-result-object v0

    .line 246
    if-eqz v2, :cond_10

    .line 247
    .line 248
    invoke-virtual {v2}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 249
    .line 250
    .line 251
    move-result-object v2

    .line 252
    check-cast v2, Ljava/lang/String;

    .line 253
    .line 254
    if-nez v2, :cond_f

    .line 255
    .line 256
    goto :goto_8

    .line 257
    :cond_f
    move-object v1, v2

    .line 258
    :cond_10
    :goto_8
    invoke-virtual {v0, v1}, Lni/f$b;->l(Ljava/lang/String;)Lni/f$b;

    .line 259
    .line 260
    .line 261
    move-result-object v0

    .line 262
    invoke-virtual {p1}, Lcom/transsion/home/adapter/operateUGC/provider/RoomUGCProvider$PostAdapter$PostItemProvider$PostItemVH;->f()Lqk/f0;

    .line 263
    .line 264
    .line 265
    move-result-object v1

    .line 266
    iget-object v1, v1, Lqk/f0;->b:Lcom/google/android/material/imageview/ShapeableImageView;

    .line 267
    .line 268
    const-string v2, "ivCover"

    .line 269
    .line 270
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 271
    .line 272
    .line 273
    invoke-virtual {v0, v1}, Lni/f$b;->d(Landroid/widget/ImageView;)V

    .line 274
    .line 275
    .line 276
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->isVideo()Z

    .line 277
    .line 278
    .line 279
    move-result v0

    .line 280
    if-eqz v0, :cond_12

    .line 281
    .line 282
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getMedia()Lcom/transsion/moviedetailapi/bean/Media;

    .line 283
    .line 284
    .line 285
    move-result-object p2

    .line 286
    if-eqz p2, :cond_11

    .line 287
    .line 288
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Media;->getVideo()Ljava/util/List;

    .line 289
    .line 290
    .line 291
    move-result-object p2

    .line 292
    if-eqz p2, :cond_11

    .line 293
    .line 294
    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;)Ljava/lang/Object;

    .line 295
    .line 296
    .line 297
    move-result-object p2

    .line 298
    check-cast p2, Lcom/transsion/moviedetailapi/bean/Video;

    .line 299
    .line 300
    if-eqz p2, :cond_11

    .line 301
    .line 302
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Video;->getDuration()Ljava/lang/Integer;

    .line 303
    .line 304
    .line 305
    move-result-object p2

    .line 306
    if-eqz p2, :cond_11

    .line 307
    .line 308
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 309
    .line 310
    .line 311
    move-result p2

    .line 312
    goto :goto_9

    .line 313
    :cond_11
    const/4 p2, 0x0

    .line 314
    :goto_9
    invoke-virtual {p1}, Lcom/transsion/home/adapter/operateUGC/provider/RoomUGCProvider$PostAdapter$PostItemProvider$PostItemVH;->f()Lqk/f0;

    .line 315
    .line 316
    .line 317
    move-result-object p1

    .line 318
    iget-object p1, p1, Lqk/f0;->d:Lcom/noober/background/view/BLTextView;

    .line 319
    .line 320
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 321
    .line 322
    .line 323
    move-result-object p2

    .line 324
    invoke-static {p2}, Lcom/transsion/baseui/util/TimeUtilKt;->a(Ljava/lang/Integer;)Ljava/lang/String;

    .line 325
    .line 326
    .line 327
    move-result-object p2

    .line 328
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 329
    .line 330
    .line 331
    goto :goto_a

    .line 332
    :cond_12
    invoke-virtual {p1}, Lcom/transsion/home/adapter/operateUGC/provider/RoomUGCProvider$PostAdapter$PostItemProvider$PostItemVH;->f()Lqk/f0;

    .line 333
    .line 334
    .line 335
    move-result-object p1

    .line 336
    iget-object p1, p1, Lqk/f0;->d:Lcom/noober/background/view/BLTextView;

    .line 337
    .line 338
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 339
    .line 340
    .line 341
    move-result-object p2

    .line 342
    sget v0, Lcom/transsion/home/R$string;->pic:I

    .line 343
    .line 344
    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 345
    .line 346
    .line 347
    move-result-object p2

    .line 348
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 349
    .line 350
    .line 351
    :goto_a
    return-void
.end method
