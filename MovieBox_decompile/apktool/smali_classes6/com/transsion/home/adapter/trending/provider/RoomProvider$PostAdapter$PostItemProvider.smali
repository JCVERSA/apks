.class public final Lcom/transsion/home/adapter/trending/provider/RoomProvider$PostAdapter$PostItemProvider;
.super Lcom/chad/library/adapter/base/provider/BaseItemProvider;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/home/adapter/trending/provider/RoomProvider$PostAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PostItemProvider"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/home/adapter/trending/provider/RoomProvider$PostAdapter$PostItemProvider$PostItemVH;
    }
.end annotation


# instance fields
.field private final e:Ljava/lang/String;

.field private final f:Lep/l;

.field private final g:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lep/l;)V
    .locals 1

    .line 1
    const-string v0, "trendingRoomsViewModel"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/transsion/home/adapter/trending/provider/RoomProvider$PostAdapter$PostItemProvider;->e:Ljava/lang/String;

    .line 10
    .line 11
    iput-object p2, p0, Lcom/transsion/home/adapter/trending/provider/RoomProvider$PostAdapter$PostItemProvider;->f:Lep/l;

    .line 12
    .line 13
    const/16 p1, 0x70

    .line 14
    .line 15
    invoke-static {p1}, Llj/a;->b(I)I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    iput p1, p0, Lcom/transsion/home/adapter/trending/provider/RoomProvider$PostAdapter$PostItemProvider;->g:I

    .line 20
    .line 21
    return-void
.end method

.method private static final B(Lcom/transsion/home/adapter/trending/provider/RoomProvider$PostAdapter$PostItemProvider;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Lcom/transsion/home/adapter/trending/provider/RoomProvider$PostAdapter$PostItemProvider$PostItemVH;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$a0;->getAdapterPosition()I

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/transsion/home/adapter/trending/provider/RoomProvider$PostAdapter$PostItemProvider;->E(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private static final C(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getGroup()Lcom/transsion/moviedetailapi/bean/Group;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Group;->getGroupId()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-object v0, v1

    .line 14
    :goto_0
    const-string v2, "/room/detail"

    .line 15
    .line 16
    invoke-static {v2}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    const-string v3, "id"

    .line 21
    .line 22
    invoke-virtual {v2, v3, v0}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-string v2, "need_start_room_home"

    .line 27
    .line 28
    const/4 v3, 0x0

    .line 29
    invoke-virtual {v0, v2, v3}, Lcom/therouter/router/Navigator;->z(Ljava/lang/String;Z)Lcom/therouter/router/Navigator;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    const/4 v2, 0x2

    .line 38
    invoke-static {v0, p1, v1, v2, v1}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lmf/c;ILjava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    sget-object p1, Lcom/transsion/room/helper/l;->a:Lcom/transsion/room/helper/l;

    .line 42
    .line 43
    invoke-static {}, Lcom/transsion/home/adapter/trending/provider/RoomProvider;->F()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-static {}, Lcom/transsion/home/adapter/trending/provider/RoomProvider;->E()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {p1, v0, v1, p0}, Lcom/transsion/room/helper/l;->c(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method private final E(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;I)V
    .locals 18

    .line 1
    sget-object v0, Lcom/transsion/postdetail/helper/a;->a:Lcom/transsion/postdetail/helper/a;

    .line 2
    .line 3
    move-object/from16 v10, p0

    .line 4
    .line 5
    iget-object v1, v10, Lcom/transsion/home/adapter/trending/provider/RoomProvider$PostAdapter$PostItemProvider;->e:Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {}, Lcom/transsion/home/adapter/trending/provider/RoomProvider;->F()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    const/16 v8, 0x40

    .line 12
    .line 13
    const/4 v9, 0x0

    .line 14
    const-string v3, ""

    .line 15
    .line 16
    const-string v5, "item"

    .line 17
    .line 18
    const/4 v7, 0x0

    .line 19
    move/from16 v4, p2

    .line 20
    .line 21
    move-object/from16 v6, p1

    .line 22
    .line 23
    invoke-static/range {v0 .. v9}, Lcom/transsion/postdetail/helper/a;->y(Lcom/transsion/postdetail/helper/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Ljava/lang/String;ILjava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    sget-object v11, Lep/k;->a:Lep/k;

    .line 27
    .line 28
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getOps()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v13

    .line 32
    invoke-static {}, Lcom/transsion/home/adapter/trending/provider/RoomProvider;->F()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v14

    .line 36
    const/16 v16, 0x8

    .line 37
    .line 38
    const/16 v17, 0x0

    .line 39
    .line 40
    const/4 v15, 0x0

    .line 41
    move-object/from16 v12, p1

    .line 42
    .line 43
    invoke-static/range {v11 .. v17}, Lep/k;->k(Lep/k;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public static synthetic y(Lcom/transsion/home/adapter/trending/provider/RoomProvider$PostAdapter$PostItemProvider;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Lcom/transsion/home/adapter/trending/provider/RoomProvider$PostAdapter$PostItemProvider$PostItemVH;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/transsion/home/adapter/trending/provider/RoomProvider$PostAdapter$PostItemProvider;->B(Lcom/transsion/home/adapter/trending/provider/RoomProvider$PostAdapter$PostItemProvider;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Lcom/transsion/home/adapter/trending/provider/RoomProvider$PostAdapter$PostItemProvider$PostItemVH;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic z(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/home/adapter/trending/provider/RoomProvider$PostAdapter$PostItemProvider;->C(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public A(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V
    .locals 8

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
    check-cast p1, Lcom/transsion/home/adapter/trending/provider/RoomProvider$PostAdapter$PostItemProvider$PostItemVH;

    .line 12
    .line 13
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    .line 14
    .line 15
    new-instance v1, Lcom/transsion/home/adapter/trending/provider/u;

    .line 16
    .line 17
    invoke-direct {v1, p0, p2, p1}, Lcom/transsion/home/adapter/trending/provider/u;-><init>(Lcom/transsion/home/adapter/trending/provider/RoomProvider$PostAdapter$PostItemProvider;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Lcom/transsion/home/adapter/trending/provider/RoomProvider$PostAdapter$PostItemProvider$PostItemVH;)V

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
    invoke-virtual {p1}, Lcom/transsion/home/adapter/trending/provider/RoomProvider$PostAdapter$PostItemProvider$PostItemVH;->f()Lqk/d0;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    iget-object v2, v2, Lqk/d0;->g:Lcom/tn/lib/widget/TnTextView;

    .line 55
    .line 56
    const-string v3, "tvTitle"

    .line 57
    .line 58
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    const/4 v3, 0x0

    .line 62
    if-eqz v0, :cond_3

    .line 63
    .line 64
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    if-lez v4, :cond_3

    .line 69
    .line 70
    const/4 v4, 0x1

    .line 71
    goto :goto_2

    .line 72
    :cond_3
    move v4, v3

    .line 73
    :goto_2
    const/16 v5, 0x8

    .line 74
    .line 75
    if-eqz v4, :cond_4

    .line 76
    .line 77
    move v4, v3

    .line 78
    goto :goto_3

    .line 79
    :cond_4
    move v4, v5

    .line 80
    :goto_3
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1}, Lcom/transsion/home/adapter/trending/provider/RoomProvider$PostAdapter$PostItemProvider$PostItemVH;->f()Lqk/d0;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    iget-object v2, v2, Lqk/d0;->g:Lcom/tn/lib/widget/TnTextView;

    .line 88
    .line 89
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1}, Lcom/transsion/home/adapter/trending/provider/RoomProvider$PostAdapter$PostItemProvider$PostItemVH;->f()Lqk/d0;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    iget-object v0, v0, Lqk/d0;->e:Landroidx/appcompat/widget/AppCompatImageView;

    .line 97
    .line 98
    const-string v2, "ivVideoPlay"

    .line 99
    .line 100
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getMedia()Lcom/transsion/moviedetailapi/bean/Media;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    const/4 v4, 0x0

    .line 108
    if-eqz v2, :cond_5

    .line 109
    .line 110
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Media;->getMediaType()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    goto :goto_4

    .line 115
    :cond_5
    move-object v2, v4

    .line 116
    :goto_4
    sget-object v6, Lcom/transsion/moviedetailapi/bean/MediaType;->VIDEO:Lcom/transsion/moviedetailapi/bean/MediaType;

    .line 117
    .line 118
    invoke-virtual {v6}, Lcom/transsion/moviedetailapi/bean/MediaType;->getValue()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v7

    .line 122
    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    move-result v2

    .line 126
    if-eqz v2, :cond_6

    .line 127
    .line 128
    move v2, v3

    .line 129
    goto :goto_5

    .line 130
    :cond_6
    move v2, v5

    .line 131
    :goto_5
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getMedia()Lcom/transsion/moviedetailapi/bean/Media;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    if-eqz v0, :cond_7

    .line 139
    .line 140
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Media;->getMediaType()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    goto :goto_6

    .line 145
    :cond_7
    move-object v0, v4

    .line 146
    :goto_6
    sget-object v2, Lcom/transsion/moviedetailapi/bean/MediaType;->IMAGE:Lcom/transsion/moviedetailapi/bean/MediaType;

    .line 147
    .line 148
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/MediaType;->getValue()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v2

    .line 152
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    move-result v2

    .line 156
    if-eqz v2, :cond_a

    .line 157
    .line 158
    new-instance v0, Lkotlin/Pair;

    .line 159
    .line 160
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getMedia()Lcom/transsion/moviedetailapi/bean/Media;

    .line 161
    .line 162
    .line 163
    move-result-object v2

    .line 164
    if-eqz v2, :cond_8

    .line 165
    .line 166
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Media;->getImage()Ljava/util/List;

    .line 167
    .line 168
    .line 169
    move-result-object v2

    .line 170
    if-eqz v2, :cond_8

    .line 171
    .line 172
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object v2

    .line 176
    check-cast v2, Lcom/transsion/moviedetailapi/bean/Image;

    .line 177
    .line 178
    if-eqz v2, :cond_8

    .line 179
    .line 180
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Image;->getUrl()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v2

    .line 184
    goto :goto_7

    .line 185
    :cond_8
    move-object v2, v4

    .line 186
    :goto_7
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getMedia()Lcom/transsion/moviedetailapi/bean/Media;

    .line 187
    .line 188
    .line 189
    move-result-object v6

    .line 190
    if-eqz v6, :cond_9

    .line 191
    .line 192
    invoke-virtual {v6}, Lcom/transsion/moviedetailapi/bean/Media;->getImage()Ljava/util/List;

    .line 193
    .line 194
    .line 195
    move-result-object v6

    .line 196
    if-eqz v6, :cond_9

    .line 197
    .line 198
    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;)Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object v6

    .line 202
    check-cast v6, Lcom/transsion/moviedetailapi/bean/Image;

    .line 203
    .line 204
    if-eqz v6, :cond_9

    .line 205
    .line 206
    invoke-virtual {v6}, Lcom/transsion/moviedetailapi/bean/Image;->getThumbnail()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v6

    .line 210
    goto :goto_8

    .line 211
    :cond_9
    move-object v6, v4

    .line 212
    :goto_8
    invoke-direct {v0, v2, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 213
    .line 214
    .line 215
    goto :goto_a

    .line 216
    :cond_a
    invoke-virtual {v6}, Lcom/transsion/moviedetailapi/bean/MediaType;->getValue()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v2

    .line 220
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 221
    .line 222
    .line 223
    move-result v0

    .line 224
    if-eqz v0, :cond_10

    .line 225
    .line 226
    new-instance v0, Lkotlin/Pair;

    .line 227
    .line 228
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getMedia()Lcom/transsion/moviedetailapi/bean/Media;

    .line 229
    .line 230
    .line 231
    move-result-object v2

    .line 232
    if-eqz v2, :cond_b

    .line 233
    .line 234
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Media;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    .line 235
    .line 236
    .line 237
    move-result-object v2

    .line 238
    if-eqz v2, :cond_b

    .line 239
    .line 240
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Cover;->getUrl()Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v2

    .line 244
    if-nez v2, :cond_d

    .line 245
    .line 246
    :cond_b
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getMedia()Lcom/transsion/moviedetailapi/bean/Media;

    .line 247
    .line 248
    .line 249
    move-result-object v2

    .line 250
    if-eqz v2, :cond_c

    .line 251
    .line 252
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Media;->getFirstFrame()Lcom/transsion/moviedetailapi/bean/FirstFrame;

    .line 253
    .line 254
    .line 255
    move-result-object v2

    .line 256
    if-eqz v2, :cond_c

    .line 257
    .line 258
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/FirstFrame;->getUrl()Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v2

    .line 262
    goto :goto_9

    .line 263
    :cond_c
    move-object v2, v4

    .line 264
    :cond_d
    :goto_9
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getMedia()Lcom/transsion/moviedetailapi/bean/Media;

    .line 265
    .line 266
    .line 267
    move-result-object v6

    .line 268
    if-eqz v6, :cond_e

    .line 269
    .line 270
    invoke-virtual {v6}, Lcom/transsion/moviedetailapi/bean/Media;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    .line 271
    .line 272
    .line 273
    move-result-object v6

    .line 274
    if-eqz v6, :cond_e

    .line 275
    .line 276
    invoke-virtual {v6}, Lcom/transsion/moviedetailapi/bean/Cover;->getThumbnail()Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v6

    .line 280
    if-nez v6, :cond_f

    .line 281
    .line 282
    :cond_e
    move-object v6, v1

    .line 283
    :cond_f
    invoke-direct {v0, v2, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 284
    .line 285
    .line 286
    goto :goto_a

    .line 287
    :cond_10
    move-object v0, v4

    .line 288
    :goto_a
    const-string v2, "ivCover"

    .line 289
    .line 290
    if-eqz v0, :cond_13

    .line 291
    .line 292
    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 293
    .line 294
    .line 295
    move-result-object v6

    .line 296
    check-cast v6, Ljava/lang/CharSequence;

    .line 297
    .line 298
    if-eqz v6, :cond_13

    .line 299
    .line 300
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    .line 301
    .line 302
    .line 303
    move-result v6

    .line 304
    if-nez v6, :cond_11

    .line 305
    .line 306
    goto :goto_b

    .line 307
    :cond_11
    invoke-virtual {p1}, Lcom/transsion/home/adapter/trending/provider/RoomProvider$PostAdapter$PostItemProvider$PostItemVH;->f()Lqk/d0;

    .line 308
    .line 309
    .line 310
    move-result-object v6

    .line 311
    iget-object v6, v6, Lqk/d0;->c:Lcom/google/android/material/imageview/ShapeableImageView;

    .line 312
    .line 313
    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 314
    .line 315
    .line 316
    invoke-static {v6}, Luf/c;->k(Landroid/view/View;)V

    .line 317
    .line 318
    .line 319
    sget-object v6, Lni/f;->a:Lni/f$a;

    .line 320
    .line 321
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    .line 322
    .line 323
    .line 324
    move-result-object v7

    .line 325
    invoke-virtual {v6, v7}, Lni/f$a;->m(Landroid/content/Context;)Lni/f$b;

    .line 326
    .line 327
    .line 328
    move-result-object v6

    .line 329
    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 330
    .line 331
    .line 332
    move-result-object v7

    .line 333
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 334
    .line 335
    .line 336
    check-cast v7, Ljava/lang/String;

    .line 337
    .line 338
    invoke-virtual {v6, v7}, Lni/f$b;->g(Ljava/lang/String;)Lni/f$b;

    .line 339
    .line 340
    .line 341
    move-result-object v6

    .line 342
    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 343
    .line 344
    .line 345
    move-result-object v0

    .line 346
    check-cast v0, Ljava/lang/String;

    .line 347
    .line 348
    if-nez v0, :cond_12

    .line 349
    .line 350
    move-object v0, v1

    .line 351
    :cond_12
    invoke-virtual {v6, v0}, Lni/f$b;->l(Ljava/lang/String;)Lni/f$b;

    .line 352
    .line 353
    .line 354
    move-result-object v0

    .line 355
    invoke-virtual {p1}, Lcom/transsion/home/adapter/trending/provider/RoomProvider$PostAdapter$PostItemProvider$PostItemVH;->f()Lqk/d0;

    .line 356
    .line 357
    .line 358
    move-result-object v6

    .line 359
    iget-object v6, v6, Lqk/d0;->c:Lcom/google/android/material/imageview/ShapeableImageView;

    .line 360
    .line 361
    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 362
    .line 363
    .line 364
    invoke-virtual {v0, v6}, Lni/f$b;->d(Landroid/widget/ImageView;)V

    .line 365
    .line 366
    .line 367
    goto :goto_c

    .line 368
    :cond_13
    :goto_b
    invoke-virtual {p1}, Lcom/transsion/home/adapter/trending/provider/RoomProvider$PostAdapter$PostItemProvider$PostItemVH;->f()Lqk/d0;

    .line 369
    .line 370
    .line 371
    move-result-object v0

    .line 372
    iget-object v0, v0, Lqk/d0;->c:Lcom/google/android/material/imageview/ShapeableImageView;

    .line 373
    .line 374
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 375
    .line 376
    .line 377
    invoke-static {v0}, Luf/c;->g(Landroid/view/View;)V

    .line 378
    .line 379
    .line 380
    :goto_c
    sget-object v0, Lcom/transsion/home/adapter/trending/provider/RoomProvider;->p:Lcom/transsion/home/adapter/trending/provider/RoomProvider$a;

    .line 381
    .line 382
    invoke-virtual {v0}, Lcom/transsion/home/adapter/trending/provider/RoomProvider$a;->a()Z

    .line 383
    .line 384
    .line 385
    move-result v2

    .line 386
    if-nez v2, :cond_17

    .line 387
    .line 388
    invoke-virtual {p1}, Lcom/transsion/home/adapter/trending/provider/RoomProvider$PostAdapter$PostItemProvider$PostItemVH;->f()Lqk/d0;

    .line 389
    .line 390
    .line 391
    move-result-object v2

    .line 392
    iget-object v2, v2, Lqk/d0;->f:Lcom/tn/lib/widget/TnTextView;

    .line 393
    .line 394
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getGroup()Lcom/transsion/moviedetailapi/bean/Group;

    .line 395
    .line 396
    .line 397
    move-result-object v6

    .line 398
    if-eqz v6, :cond_14

    .line 399
    .line 400
    invoke-virtual {v6}, Lcom/transsion/moviedetailapi/bean/Group;->getName()Ljava/lang/String;

    .line 401
    .line 402
    .line 403
    move-result-object v4

    .line 404
    :cond_14
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 405
    .line 406
    .line 407
    sget-object v2, Lni/f;->a:Lni/f$a;

    .line 408
    .line 409
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    .line 410
    .line 411
    .line 412
    move-result-object v4

    .line 413
    invoke-virtual {v2, v4}, Lni/f$a;->m(Landroid/content/Context;)Lni/f$b;

    .line 414
    .line 415
    .line 416
    move-result-object v2

    .line 417
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getGroup()Lcom/transsion/moviedetailapi/bean/Group;

    .line 418
    .line 419
    .line 420
    move-result-object v4

    .line 421
    if-eqz v4, :cond_16

    .line 422
    .line 423
    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/bean/Group;->getAvatar()Ljava/lang/String;

    .line 424
    .line 425
    .line 426
    move-result-object v4

    .line 427
    if-nez v4, :cond_15

    .line 428
    .line 429
    goto :goto_d

    .line 430
    :cond_15
    move-object v1, v4

    .line 431
    :cond_16
    :goto_d
    invoke-virtual {v2, v1}, Lni/f$b;->g(Ljava/lang/String;)Lni/f$b;

    .line 432
    .line 433
    .line 434
    move-result-object v1

    .line 435
    const/16 v2, 0x18

    .line 436
    .line 437
    invoke-static {v2}, Llj/a;->b(I)I

    .line 438
    .line 439
    .line 440
    move-result v4

    .line 441
    invoke-virtual {v1, v4}, Lni/f$b;->m(I)Lni/f$b;

    .line 442
    .line 443
    .line 444
    move-result-object v1

    .line 445
    invoke-static {v2}, Llj/a;->b(I)I

    .line 446
    .line 447
    .line 448
    move-result v2

    .line 449
    invoke-virtual {v1, v2}, Lni/f$b;->c(I)Lni/f$b;

    .line 450
    .line 451
    .line 452
    move-result-object v1

    .line 453
    invoke-virtual {p1}, Lcom/transsion/home/adapter/trending/provider/RoomProvider$PostAdapter$PostItemProvider$PostItemVH;->f()Lqk/d0;

    .line 454
    .line 455
    .line 456
    move-result-object v2

    .line 457
    iget-object v2, v2, Lqk/d0;->d:Lcom/google/android/material/imageview/ShapeableImageView;

    .line 458
    .line 459
    const-string v4, "ivRoomCover"

    .line 460
    .line 461
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 462
    .line 463
    .line 464
    invoke-virtual {v1, v2}, Lni/f$b;->d(Landroid/widget/ImageView;)V

    .line 465
    .line 466
    .line 467
    invoke-virtual {p1}, Lcom/transsion/home/adapter/trending/provider/RoomProvider$PostAdapter$PostItemProvider$PostItemVH;->f()Lqk/d0;

    .line 468
    .line 469
    .line 470
    move-result-object v1

    .line 471
    iget-object v1, v1, Lqk/d0;->h:Landroid/view/View;

    .line 472
    .line 473
    new-instance v2, Lcom/transsion/home/adapter/trending/provider/v;

    .line 474
    .line 475
    invoke-direct {v2, p2}, Lcom/transsion/home/adapter/trending/provider/v;-><init>(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V

    .line 476
    .line 477
    .line 478
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 479
    .line 480
    .line 481
    :cond_17
    invoke-virtual {p1}, Lcom/transsion/home/adapter/trending/provider/RoomProvider$PostAdapter$PostItemProvider$PostItemVH;->f()Lqk/d0;

    .line 482
    .line 483
    .line 484
    move-result-object p2

    .line 485
    iget-object p2, p2, Lqk/d0;->b:Landroidx/constraintlayout/widget/Group;

    .line 486
    .line 487
    invoke-virtual {v0}, Lcom/transsion/home/adapter/trending/provider/RoomProvider$a;->a()Z

    .line 488
    .line 489
    .line 490
    move-result v1

    .line 491
    if-eqz v1, :cond_18

    .line 492
    .line 493
    move v3, v5

    .line 494
    :cond_18
    invoke-virtual {p2, v3}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    .line 495
    .line 496
    .line 497
    invoke-virtual {p1}, Lcom/transsion/home/adapter/trending/provider/RoomProvider$PostAdapter$PostItemProvider$PostItemVH;->f()Lqk/d0;

    .line 498
    .line 499
    .line 500
    move-result-object p1

    .line 501
    invoke-virtual {p1}, Lqk/d0;->b()Lcom/noober/background/view/BLConstraintLayout;

    .line 502
    .line 503
    .line 504
    move-result-object p1

    .line 505
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 506
    .line 507
    .line 508
    move-result-object p1

    .line 509
    invoke-virtual {v0}, Lcom/transsion/home/adapter/trending/provider/RoomProvider$a;->a()Z

    .line 510
    .line 511
    .line 512
    move-result p2

    .line 513
    if-eqz p2, :cond_19

    .line 514
    .line 515
    const/16 p2, 0xb6

    .line 516
    .line 517
    :goto_e
    invoke-static {p2}, Llj/a;->b(I)I

    .line 518
    .line 519
    .line 520
    move-result p2

    .line 521
    goto :goto_f

    .line 522
    :cond_19
    const/16 p2, 0xdc

    .line 523
    .line 524
    goto :goto_e

    .line 525
    :goto_f
    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 526
    .line 527
    return-void
.end method

.method public D(Landroid/view/ViewGroup;I)Lcom/transsion/home/adapter/trending/provider/RoomProvider$PostAdapter$PostItemProvider$PostItemVH;
    .locals 1

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
    invoke-static {p2, p1, v0}, Lqk/d0;->c(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lqk/d0;

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
    new-instance p2, Lcom/transsion/home/adapter/trending/provider/RoomProvider$PostAdapter$PostItemProvider$PostItemVH;

    .line 25
    .line 26
    invoke-direct {p2, p1}, Lcom/transsion/home/adapter/trending/provider/RoomProvider$PostAdapter$PostItemProvider$PostItemVH;-><init>(Lqk/d0;)V

    .line 27
    .line 28
    .line 29
    return-object p2
.end method

.method public bridge synthetic b(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/transsion/home/adapter/trending/provider/RoomProvider$PostAdapter$PostItemProvider;->A(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V

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
    sget v0, Lcom/transsion/home/R$layout;->item_adapter_room_entrance_post:I

    .line 2
    .line 3
    return v0
.end method

.method public bridge synthetic r(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/transsion/home/adapter/trending/provider/RoomProvider$PostAdapter$PostItemProvider;->D(Landroid/view/ViewGroup;I)Lcom/transsion/home/adapter/trending/provider/RoomProvider$PostAdapter$PostItemProvider$PostItemVH;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
