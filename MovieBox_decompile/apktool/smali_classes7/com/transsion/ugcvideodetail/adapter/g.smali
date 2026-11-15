.class public final Lcom/transsion/ugcvideodetail/adapter/g;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "source.java"

# interfaces
.implements Lt6/i;
.implements Lt6/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "Lt6/i;",
        "Lt6/l;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0007\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00012\u00020\u00042\u00020\u0005B\u0011\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\'\u0010\u000e\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u00022\u0006\u0010\u000c\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u001f\u0010\u0010\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u0002H\u0014\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J-\u0010\u0015\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u00022\u000c\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u0012H\u0014\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J#\u0010\u001a\u001a\u00020\r2\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u00172\n\u0008\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u0017\u00a2\u0006\u0004\u0008\u001a\u0010\u001bR\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010\u001d\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/transsion/ugcvideodetail/adapter/g;",
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "Lui/i1;",
        "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
        "Lt6/i;",
        "Lt6/l;",
        "",
        "isDialog",
        "<init>",
        "(Z)V",
        "holder",
        "item",
        "isPlaying",
        "",
        "D1",
        "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lui/i1;Z)V",
        "B1",
        "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lui/i1;)V",
        "",
        "",
        "payloads",
        "C1",
        "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lui/i1;Ljava/util/List;)V",
        "",
        "videoId",
        "previousVideoId",
        "E1",
        "(Ljava/lang/String;Ljava/lang/String;)V",
        "F",
        "Z",
        "UGCVideoDetail_psRelease"
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
.field private final F:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lcom/transsion/ugcvideodetail/adapter/g;-><init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 3

    if-eqz p1, :cond_0

    .line 3
    sget v0, Lcom/transsion/ugcvideodetail/R$layout;->item_ugc_video_detail_play_list_dialog_item:I

    goto :goto_0

    .line 4
    :cond_0
    sget v0, Lcom/transsion/ugcvideodetail/R$layout;->item_ugc_video_detail_play_list:I

    :goto_0
    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 5
    invoke-direct {p0, v0, v2, v1, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 6
    iput-boolean p1, p0, Lcom/transsion/ugcvideodetail/adapter/g;->F:Z

    return-void
.end method

.method public synthetic constructor <init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 2
    :cond_0
    invoke-direct {p0, p1}, Lcom/transsion/ugcvideodetail/adapter/g;-><init>(Z)V

    return-void
.end method

.method private final D1(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lui/i1;Z)V
    .locals 2

    .line 1
    invoke-interface {p2}, Lui/i1;->videoEpTitle()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-static {v0}, Lkotlin/text/StringsKt;->q0(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    if-nez v0, :cond_2

    .line 16
    .line 17
    :cond_1
    invoke-interface {p2}, Lui/i1;->videoTitle()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    :cond_2
    if-eqz p3, :cond_4

    .line 22
    .line 23
    sget p2, Lcom/transsion/ugcvideodetail/R$id;->tvTitle:I

    .line 24
    .line 25
    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    invoke-static {p2}, Luf/c;->g(Landroid/view/View;)V

    .line 30
    .line 31
    .line 32
    sget p2, Lcom/transsion/ugcvideodetail/R$id;->tvTitleGradient:I

    .line 33
    .line 34
    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    check-cast p2, Landroid/widget/TextView;

    .line 39
    .line 40
    invoke-static {p2}, Luf/c;->k(Landroid/view/View;)V

    .line 41
    .line 42
    .line 43
    iget-boolean p3, p0, Lcom/transsion/ugcvideodetail/adapter/g;->F:Z

    .line 44
    .line 45
    if-eqz p3, :cond_3

    .line 46
    .line 47
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_3
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    .line 52
    .line 53
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-static {p1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    sget p3, Lcom/transsion/baseui/R$mipmap;->base_ic_brand_color_playing:I

    .line 62
    .line 63
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 64
    .line 65
    .line 66
    move-result-object p3

    .line 67
    invoke-virtual {p1, p3}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/RequestBuilder;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    new-instance p3, Lcom/transsion/ugcvideodetail/adapter/g$a;

    .line 72
    .line 73
    invoke-direct {p3, p2, v0}, Lcom/transsion/ugcvideodetail/adapter/g$a;-><init>(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1, p3}, Lcom/bumptech/glide/RequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_4
    sget p2, Lcom/transsion/ugcvideodetail/R$id;->tvTitle:I

    .line 85
    .line 86
    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 87
    .line 88
    .line 89
    move-result-object p2

    .line 90
    check-cast p2, Landroid/widget/TextView;

    .line 91
    .line 92
    invoke-static {p2}, Luf/c;->k(Landroid/view/View;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    .line 97
    .line 98
    sget p2, Lcom/transsion/ugcvideodetail/R$id;->tvTitleGradient:I

    .line 99
    .line 100
    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    invoke-static {p1}, Luf/c;->g(Landroid/view/View;)V

    .line 105
    .line 106
    .line 107
    :goto_1
    return-void
.end method

.method public static synthetic F1(Lcom/transsion/ugcvideodetail/adapter/g;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/transsion/ugcvideodetail/adapter/g;->E1(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method protected B1(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lui/i1;)V
    .locals 7

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
    sget-object v0, Lni/f;->a:Lni/f$a;

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Lni/f$a;->m(Landroid/content/Context;)Lni/f$b;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-interface {p2}, Lui/i1;->videoCoverUrl()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const-string v2, ""

    .line 26
    .line 27
    if-nez v1, :cond_0

    .line 28
    .line 29
    move-object v1, v2

    .line 30
    :cond_0
    invoke-virtual {v0, v1}, Lni/f$b;->g(Ljava/lang/String;)Lni/f$b;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const/16 v1, 0x78

    .line 35
    .line 36
    invoke-static {v1}, Llj/a;->b(I)I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    invoke-virtual {v0, v1}, Lni/f$b;->m(I)Lni/f$b;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    const/16 v1, 0x44

    .line 45
    .line 46
    invoke-static {v1}, Llj/a;->b(I)I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    invoke-virtual {v0, v1}, Lni/f$b;->c(I)Lni/f$b;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-interface {p2}, Lui/i1;->videoThumbnail()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    if-nez v1, :cond_1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_1
    move-object v2, v1

    .line 62
    :goto_0
    invoke-virtual {v0, v2}, Lni/f$b;->l(Ljava/lang/String;)Lni/f$b;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    sget v1, Lcom/transsion/ugcvideodetail/R$id;->ivCover:I

    .line 67
    .line 68
    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    check-cast v1, Landroid/widget/ImageView;

    .line 73
    .line 74
    invoke-virtual {v0, v1}, Lni/f$b;->d(Landroid/widget/ImageView;)V

    .line 75
    .line 76
    .line 77
    invoke-interface {p2}, Lui/i1;->videoCorner()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    const/4 v1, 0x0

    .line 82
    const/4 v2, 0x1

    .line 83
    if-eqz v0, :cond_3

    .line 84
    .line 85
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    if-nez v0, :cond_2

    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_2
    sget v0, Lcom/transsion/ugcvideodetail/R$id;->tvTag:I

    .line 93
    .line 94
    invoke-virtual {p1, v0, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setVisible(IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 95
    .line 96
    .line 97
    sget v0, Lcom/transsion/ugcvideodetail/R$id;->tvTag:I

    .line 98
    .line 99
    invoke-interface {p2}, Lui/i1;->videoCorner()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    invoke-virtual {p1, v0, v3}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 104
    .line 105
    .line 106
    goto :goto_2

    .line 107
    :cond_3
    :goto_1
    sget v0, Lcom/transsion/ugcvideodetail/R$id;->tvTag:I

    .line 108
    .line 109
    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setVisible(IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 110
    .line 111
    .line 112
    :goto_2
    invoke-interface {p2}, Lui/i1;->videoDuration()Ljava/lang/Long;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    const-wide/16 v3, 0x0

    .line 117
    .line 118
    if-eqz v0, :cond_4

    .line 119
    .line 120
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 121
    .line 122
    .line 123
    move-result-wide v5

    .line 124
    goto :goto_3

    .line 125
    :cond_4
    move-wide v5, v3

    .line 126
    :goto_3
    cmp-long v0, v5, v3

    .line 127
    .line 128
    if-lez v0, :cond_7

    .line 129
    .line 130
    sget v0, Lcom/transsion/ugcvideodetail/R$id;->vDurationBg:I

    .line 131
    .line 132
    invoke-virtual {p1, v0, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setVisible(IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 133
    .line 134
    .line 135
    sget v0, Lcom/transsion/ugcvideodetail/R$id;->tvDuration:I

    .line 136
    .line 137
    invoke-static {v5, v6}, Lcom/transsion/baseui/util/TimeUtilKt;->r(J)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 142
    .line 143
    .line 144
    sget v0, Lcom/transsion/ugcvideodetail/R$id;->ivTypeIcon:I

    .line 145
    .line 146
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    move-object v1, v0

    .line 151
    check-cast v1, Landroid/widget/ImageView;

    .line 152
    .line 153
    instance-of v0, p2, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 154
    .line 155
    if-eqz v0, :cond_5

    .line 156
    .line 157
    move-object v0, p2

    .line 158
    check-cast v0, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 159
    .line 160
    const/4 v2, 0x4

    .line 161
    const/4 v3, 0x0

    .line 162
    invoke-static {v1, v0, v3, v2, v3}, Lcom/transsion/ugcvideodetail/api/UGCVideoTypeKt;->i(Landroid/widget/ImageView;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Ljava/lang/Integer;ILjava/lang/Object;)V

    .line 163
    .line 164
    .line 165
    goto :goto_4

    .line 166
    :cond_5
    instance-of v0, p2, Lcom/transsion/baselib/db/download/DownloadBean;

    .line 167
    .line 168
    if-eqz v0, :cond_6

    .line 169
    .line 170
    move-object v0, p2

    .line 171
    check-cast v0, Lcom/transsion/baselib/db/download/DownloadBean;

    .line 172
    .line 173
    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcCateLev1Id()Ljava/lang/Integer;

    .line 174
    .line 175
    .line 176
    move-result-object v2

    .line 177
    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcCateLev2Id()Ljava/lang/Integer;

    .line 178
    .line 179
    .line 180
    move-result-object v3

    .line 181
    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcCateLev3Id()Ljava/lang/Integer;

    .line 182
    .line 183
    .line 184
    move-result-object v4

    .line 185
    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcCateLev4Id()Ljava/lang/Integer;

    .line 186
    .line 187
    .line 188
    move-result-object v5

    .line 189
    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcVideoType()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v6

    .line 193
    invoke-static/range {v1 .. v6}, Lcom/transsion/ugcvideodetail/api/UGCVideoTypeKt;->j(Landroid/widget/ImageView;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    goto :goto_4

    .line 197
    :cond_6
    invoke-interface {p2}, Lui/i1;->videoUGCType()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    invoke-static {v0}, Lcom/transsion/ugcvideodetail/api/UGCVideoTypeKt;->e(Ljava/lang/String;)I

    .line 202
    .line 203
    .line 204
    move-result v0

    .line 205
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 206
    .line 207
    .line 208
    goto :goto_4

    .line 209
    :cond_7
    sget v0, Lcom/transsion/ugcvideodetail/R$id;->vDurationBg:I

    .line 210
    .line 211
    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setVisible(IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 212
    .line 213
    .line 214
    :goto_4
    iget-boolean v0, p0, Lcom/transsion/ugcvideodetail/adapter/g;->F:Z

    .line 215
    .line 216
    if-eqz v0, :cond_9

    .line 217
    .line 218
    invoke-interface {p2}, Lui/i1;->videoUGCWatchNum()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v0

    .line 222
    if-eqz v0, :cond_9

    .line 223
    .line 224
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 225
    .line 226
    .line 227
    move-result v0

    .line 228
    if-nez v0, :cond_8

    .line 229
    .line 230
    goto :goto_5

    .line 231
    :cond_8
    sget v0, Lcom/transsion/ugcvideodetail/R$id;->tvVideoViews:I

    .line 232
    .line 233
    invoke-interface {p2}, Lui/i1;->videoUGCWatchNum()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v1

    .line 237
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    .line 238
    .line 239
    .line 240
    move-result-object v2

    .line 241
    invoke-static {v1, v2}, Lcom/transsion/baseui/util/j;->c(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v1

    .line 245
    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 246
    .line 247
    .line 248
    :cond_9
    :goto_5
    invoke-interface {p2}, Lui/i1;->isVideoPlaying()Z

    .line 249
    .line 250
    .line 251
    move-result v0

    .line 252
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/ugcvideodetail/adapter/g;->D1(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lui/i1;Z)V

    .line 253
    .line 254
    .line 255
    return-void
.end method

.method protected C1(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lui/i1;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
            "Lui/i1;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

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
    const-string v0, "payloads"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-super {p0, p1, p2, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->G(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;Ljava/util/List;)V

    .line 17
    .line 18
    .line 19
    move-object v0, p3

    .line 20
    check-cast v0, Ljava/util/Collection;

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_0

    .line 27
    .line 28
    invoke-static {p3}, Lkotlin/collections/CollectionsKt;->v0(Ljava/util/List;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p3

    .line 32
    instance-of v0, p3, Ljava/lang/Boolean;

    .line 33
    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    check-cast p3, Ljava/lang/Boolean;

    .line 37
    .line 38
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 39
    .line 40
    .line 41
    move-result p3

    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/ugcvideodetail/adapter/g;->D1(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lui/i1;Z)V

    .line 43
    .line 44
    .line 45
    :cond_0
    return-void
.end method

.method public final E1(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 1
    if-eqz p1, :cond_c

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto/16 :goto_8

    .line 10
    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    const/4 v1, -0x1

    .line 13
    const/4 v2, 0x0

    .line 14
    if-eqz p2, :cond_5

    .line 15
    .line 16
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    if-nez v3, :cond_1

    .line 21
    .line 22
    goto :goto_3

    .line 23
    :cond_1
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-nez v3, :cond_5

    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    move v4, v2

    .line 38
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    .line 40
    .line 41
    move-result v5

    .line 42
    if-eqz v5, :cond_3

    .line 43
    .line 44
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v5

    .line 48
    check-cast v5, Lui/i1;

    .line 49
    .line 50
    invoke-interface {v5}, Lui/i1;->videoUGCId()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    invoke-static {v5, p2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v5

    .line 58
    if-eqz v5, :cond_2

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_3
    move v4, v1

    .line 65
    :goto_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 70
    .line 71
    .line 72
    move-result v3

    .line 73
    if-ltz v3, :cond_4

    .line 74
    .line 75
    goto :goto_2

    .line 76
    :cond_4
    move-object p2, v0

    .line 77
    :goto_2
    if-eqz p2, :cond_8

    .line 78
    .line 79
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 80
    .line 81
    .line 82
    move-result p2

    .line 83
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    check-cast v3, Lui/i1;

    .line 92
    .line 93
    invoke-interface {v3, v2}, Lui/i1;->setVideoIsPlaying(Z)V

    .line 94
    .line 95
    .line 96
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 97
    .line 98
    invoke-virtual {p0, p2, v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    goto :goto_5

    .line 102
    :cond_5
    :goto_3
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 103
    .line 104
    .line 105
    move-result-object p2

    .line 106
    check-cast p2, Ljava/lang/Iterable;

    .line 107
    .line 108
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 109
    .line 110
    .line 111
    move-result-object p2

    .line 112
    move v3, v2

    .line 113
    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 114
    .line 115
    .line 116
    move-result v4

    .line 117
    if-eqz v4, :cond_8

    .line 118
    .line 119
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v4

    .line 123
    add-int/lit8 v5, v3, 0x1

    .line 124
    .line 125
    if-gez v3, :cond_6

    .line 126
    .line 127
    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V

    .line 128
    .line 129
    .line 130
    :cond_6
    check-cast v4, Lui/i1;

    .line 131
    .line 132
    invoke-interface {v4}, Lui/i1;->isVideoPlaying()Z

    .line 133
    .line 134
    .line 135
    move-result v6

    .line 136
    if-eqz v6, :cond_7

    .line 137
    .line 138
    invoke-interface {v4, v2}, Lui/i1;->setVideoIsPlaying(Z)V

    .line 139
    .line 140
    .line 141
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 142
    .line 143
    invoke-virtual {p0, v3, v4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    .line 144
    .line 145
    .line 146
    :cond_7
    move v3, v5

    .line 147
    goto :goto_4

    .line 148
    :cond_8
    :goto_5
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 149
    .line 150
    .line 151
    move-result-object p2

    .line 152
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 153
    .line 154
    .line 155
    move-result-object p2

    .line 156
    :goto_6
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 157
    .line 158
    .line 159
    move-result v3

    .line 160
    if-eqz v3, :cond_a

    .line 161
    .line 162
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v3

    .line 166
    check-cast v3, Lui/i1;

    .line 167
    .line 168
    invoke-interface {v3}, Lui/i1;->videoUGCId()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v3

    .line 172
    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    move-result v3

    .line 176
    if-eqz v3, :cond_9

    .line 177
    .line 178
    move v1, v2

    .line 179
    goto :goto_7

    .line 180
    :cond_9
    add-int/lit8 v2, v2, 0x1

    .line 181
    .line 182
    goto :goto_6

    .line 183
    :cond_a
    :goto_7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 188
    .line 189
    .line 190
    move-result p2

    .line 191
    if-ltz p2, :cond_b

    .line 192
    .line 193
    move-object v0, p1

    .line 194
    :cond_b
    if-eqz v0, :cond_c

    .line 195
    .line 196
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 197
    .line 198
    .line 199
    move-result p1

    .line 200
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 201
    .line 202
    .line 203
    move-result-object p2

    .line 204
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    move-result-object p2

    .line 208
    check-cast p2, Lui/i1;

    .line 209
    .line 210
    const/4 v0, 0x1

    .line 211
    invoke-interface {p2, v0}, Lui/i1;->setVideoIsPlaying(Z)V

    .line 212
    .line 213
    .line 214
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 215
    .line 216
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    .line 217
    .line 218
    .line 219
    :cond_c
    :goto_8
    return-void
.end method

.method public bridge synthetic F(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lui/i1;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/transsion/ugcvideodetail/adapter/g;->B1(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lui/i1;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic G(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;Ljava/util/List;)V
    .locals 0

    .line 1
    check-cast p2, Lui/i1;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/ugcvideodetail/adapter/g;->C1(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lui/i1;Ljava/util/List;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic b(Lcom/chad/library/adapter/base/BaseQuickAdapter;)Lt6/f;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lt6/h;->a(Lt6/i;Lcom/chad/library/adapter/base/BaseQuickAdapter;)Lt6/f;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic f(Lcom/chad/library/adapter/base/BaseQuickAdapter;)Lt6/g;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lt6/k;->a(Lt6/l;Lcom/chad/library/adapter/base/BaseQuickAdapter;)Lt6/g;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
