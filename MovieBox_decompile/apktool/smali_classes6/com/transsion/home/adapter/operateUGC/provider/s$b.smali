.class public final Lcom/transsion/home/adapter/operateUGC/provider/s$b;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/home/adapter/operateUGC/provider/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u000e\u0008\u0007\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B!\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\u0008\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\t\u0010\nJ\'\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u000fH\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u001f\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0014\u001a\u00020\u00022\u0006\u0010\u0015\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u001f\u0010\u0019\u001a\u00020\u00162\u0006\u0010\u0014\u001a\u00020\u00022\u0006\u0010\u0015\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0019\u0010\u0018J\u001f\u0010\u001c\u001a\u00020\u00162\u0006\u0010\u001a\u001a\u00020\u00032\u0006\u0010\u001b\u001a\u00020\u0002H\u0014\u00a2\u0006\u0004\u0008\u001c\u0010\u001dR\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010\u001fR\u0014\u0010\u0008\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008 \u0010!R\u0014\u0010#\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\"\u0010!\u00a8\u0006$"
    }
    d2 = {
        "Lcom/transsion/home/adapter/operateUGC/provider/s$b;",
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "Lcom/transsion/home/adapter/operateUGC/provider/s$a;",
        "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
        "",
        "layoutResId",
        "Lcom/transsion/home/bean/OperateItem;",
        "operateItem",
        "tabId",
        "<init>",
        "(ILcom/transsion/home/bean/OperateItem;I)V",
        "Landroid/content/Context;",
        "context",
        "Lcom/transsion/ugcvideodetail/api/bean/UGCContent;",
        "ugcContent",
        "Landroid/view/ViewGroup;",
        "parent",
        "Landroid/view/View;",
        "E1",
        "(Landroid/content/Context;Lcom/transsion/ugcvideodetail/api/bean/UGCContent;Landroid/view/ViewGroup;)Landroid/view/View;",
        "rankListItem",
        "position",
        "",
        "F1",
        "(Lcom/transsion/home/adapter/operateUGC/provider/s$a;I)V",
        "G1",
        "holder",
        "item",
        "C1",
        "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/home/adapter/operateUGC/provider/s$a;)V",
        "F",
        "Lcom/transsion/home/bean/OperateItem;",
        "G",
        "I",
        "H",
        "perWidth",
        "Home_psRelease"
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


# static fields
.field public static final I:I = 0x8


# instance fields
.field private final F:Lcom/transsion/home/bean/OperateItem;

.field private final G:I

.field private final H:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(ILcom/transsion/home/bean/OperateItem;I)V
    .locals 2

    const-string v0, "operateItem"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 3
    invoke-direct {p0, p1, v0, v1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 4
    iput-object p2, p0, Lcom/transsion/home/adapter/operateUGC/provider/s$b;->F:Lcom/transsion/home/bean/OperateItem;

    .line 5
    iput p3, p0, Lcom/transsion/home/adapter/operateUGC/provider/s$b;->G:I

    .line 6
    invoke-static {}, Lcom/blankj/utilcode/util/y;->e()I

    move-result p1

    const/16 p2, 0x44

    invoke-static {p2}, Llj/a;->b(I)I

    move-result p2

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/transsion/home/adapter/operateUGC/provider/s$b;->H:I

    return-void
.end method

.method public synthetic constructor <init>(ILcom/transsion/home/bean/OperateItem;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x1

    if-eqz p4, :cond_0

    .line 1
    sget p1, Lcom/transsion/home/R$layout;->item_provider_ranklist:I

    .line 2
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/home/adapter/operateUGC/provider/s$b;-><init>(ILcom/transsion/home/bean/OperateItem;I)V

    return-void
.end method

.method public static synthetic B1(Lcom/transsion/ugcvideodetail/api/bean/UGCContent;Lcom/transsion/home/adapter/operateUGC/provider/s$b;Lcom/transsion/home/adapter/operateUGC/provider/s$a;ILandroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/transsion/home/adapter/operateUGC/provider/s$b;->D1(Lcom/transsion/ugcvideodetail/api/bean/UGCContent;Lcom/transsion/home/adapter/operateUGC/provider/s$b;Lcom/transsion/home/adapter/operateUGC/provider/s$a;ILandroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final D1(Lcom/transsion/ugcvideodetail/api/bean/UGCContent;Lcom/transsion/home/adapter/operateUGC/provider/s$b;Lcom/transsion/home/adapter/operateUGC/provider/s$a;ILandroid/view/View;)V
    .locals 1

    .line 1
    iget p4, p1, Lcom/transsion/home/adapter/operateUGC/provider/s$b;->G:I

    .line 2
    .line 3
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object p4

    .line 7
    iget-object v0, p1, Lcom/transsion/home/adapter/operateUGC/provider/s$b;->F:Lcom/transsion/home/bean/OperateItem;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/transsion/home/bean/OperateItem;->getOpId()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {p0, p4, v0}, Lgu/c;->e(Lcom/transsion/ugcvideodetail/api/bean/UGCContent;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p1, p2, p3}, Lcom/transsion/home/adapter/operateUGC/provider/s$b;->G1(Lcom/transsion/home/adapter/operateUGC/provider/s$a;I)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method private final E1(Landroid/content/Context;Lcom/transsion/ugcvideodetail/api/bean/UGCContent;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .line 1
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget v1, Lcom/transsion/home/R$layout;->item_ugc_music_rank:I

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object p3

    .line 12
    invoke-virtual {p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCContent;->getVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    if-nez p2, :cond_0

    .line 17
    .line 18
    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    return-object p3

    .line 22
    :cond_0
    sget v0, Lcom/transsion/home/R$id;->home_ugc_music_rank_image:I

    .line 23
    .line 24
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const-string v1, "findViewById(...)"

    .line 29
    .line 30
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    check-cast v0, Lcom/google/android/material/imageview/ShapeableImageView;

    .line 34
    .line 35
    sget-object v1, Lni/f;->a:Lni/f$a;

    .line 36
    .line 37
    invoke-virtual {v1, p1}, Lni/f$a;->m(Landroid/content/Context;)Lni/f$b;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    if-eqz v2, :cond_1

    .line 46
    .line 47
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Cover;->getUrl()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    if-nez v2, :cond_2

    .line 52
    .line 53
    :cond_1
    const-string v2, ""

    .line 54
    .line 55
    :cond_2
    invoke-virtual {v1, v2}, Lni/f$b;->g(Ljava/lang/String;)Lni/f$b;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    iget v2, p0, Lcom/transsion/home/adapter/operateUGC/provider/s$b;->H:I

    .line 60
    .line 61
    invoke-virtual {v1, v2}, Lni/f$b;->m(I)Lni/f$b;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-virtual {v1, v0}, Lni/f$b;->d(Landroid/widget/ImageView;)V

    .line 66
    .line 67
    .line 68
    sget v0, Lcom/transsion/home/R$id;->home_ugc_music_rank_corner:I

    .line 69
    .line 70
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    check-cast v0, Landroid/widget/TextView;

    .line 75
    .line 76
    invoke-virtual {p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getCorner()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    .line 82
    .line 83
    sget v0, Lcom/transsion/home/R$id;->home_ugc_music_rank_type_icon:I

    .line 84
    .line 85
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    check-cast v0, Landroid/widget/ImageView;

    .line 90
    .line 91
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    const/4 v1, 0x4

    .line 95
    const/4 v2, 0x0

    .line 96
    invoke-static {v0, p2, v2, v1, v2}, Lcom/transsion/ugcvideodetail/api/UGCVideoTypeKt;->i(Landroid/widget/ImageView;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Ljava/lang/Integer;ILjava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    sget v0, Lcom/transsion/home/R$id;->home_ugc_music_rank_time_text:I

    .line 100
    .line 101
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    check-cast v0, Landroid/widget/TextView;

    .line 106
    .line 107
    invoke-virtual {p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getDuration()Ljava/lang/Long;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    if-eqz v1, :cond_3

    .line 112
    .line 113
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 114
    .line 115
    .line 116
    move-result-wide v1

    .line 117
    long-to-int v1, v1

    .line 118
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    :cond_3
    invoke-static {v2}, Lcom/transsion/baseui/util/TimeUtilKt;->a(Ljava/lang/Integer;)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    .line 128
    .line 129
    sget v0, Lcom/transsion/home/R$id;->home_ugc_music_rank_title:I

    .line 130
    .line 131
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    check-cast v0, Landroid/widget/TextView;

    .line 136
    .line 137
    invoke-virtual {p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getTitle()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->isVerticalImmStyle()Z

    .line 145
    .line 146
    .line 147
    move-result v0

    .line 148
    if-eqz v0, :cond_4

    .line 149
    .line 150
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    sget v1, Lcom/transsion/baseui/R$string;->ugc_video_shorts:I

    .line 155
    .line 156
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    invoke-virtual {p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getWatchNum()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object p2

    .line 164
    invoke-static {p2, p1}, Lcom/transsion/baseui/util/j;->c(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object p2

    .line 168
    const-string v1, "special_#shorts_icon"

    .line 169
    .line 170
    filled-new-array {v1, v0, p2}, [Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object p2

    .line 174
    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->q([Ljava/lang/Object;)Ljava/util/List;

    .line 175
    .line 176
    .line 177
    move-result-object p2

    .line 178
    goto :goto_1

    .line 179
    :cond_4
    invoke-virtual {p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getWatchNum()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    invoke-static {v0, p1}, Lcom/transsion/baseui/util/j;->c(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    iget v1, p0, Lcom/transsion/home/adapter/operateUGC/provider/s$b;->G:I

    .line 188
    .line 189
    sget-object v2, Lcom/transsion/home/enum/HomeTabId;->UGC_Trending:Lcom/transsion/home/enum/HomeTabId;

    .line 190
    .line 191
    invoke-virtual {v2}, Lcom/transsion/home/enum/HomeTabId;->getValue()I

    .line 192
    .line 193
    .line 194
    move-result v2

    .line 195
    const-wide/16 v3, 0x0

    .line 196
    .line 197
    if-ne v1, v2, :cond_6

    .line 198
    .line 199
    invoke-virtual {p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getPublishTime()Ljava/lang/Long;

    .line 200
    .line 201
    .line 202
    move-result-object p2

    .line 203
    if-eqz p2, :cond_5

    .line 204
    .line 205
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 206
    .line 207
    .line 208
    move-result-wide v3

    .line 209
    :cond_5
    invoke-static {v3, v4}, Lcom/transsion/baseui/util/TimeUtilKt;->k(J)Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object p2

    .line 213
    goto :goto_0

    .line 214
    :cond_6
    invoke-virtual {p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getPublishTime()Ljava/lang/Long;

    .line 215
    .line 216
    .line 217
    move-result-object p2

    .line 218
    if-eqz p2, :cond_7

    .line 219
    .line 220
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 221
    .line 222
    .line 223
    move-result-wide v3

    .line 224
    :cond_7
    invoke-static {v3, v4}, Lcom/transsion/baseui/util/TimeUtilKt;->j(J)Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object p2

    .line 228
    :goto_0
    filled-new-array {v0, p2}, [Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object p2

    .line 232
    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->q([Ljava/lang/Object;)Ljava/util/List;

    .line 233
    .line 234
    .line 235
    move-result-object p2

    .line 236
    :goto_1
    sget v0, Lcom/transsion/home/R$id;->home_ugc_music_rank_subtitle:I

    .line 237
    .line 238
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 239
    .line 240
    .line 241
    move-result-object v0

    .line 242
    check-cast v0, Landroid/widget/TextView;

    .line 243
    .line 244
    invoke-static {p2, p1}, Lcom/transsion/baseui/util/q;->e(Ljava/util/List;Landroid/content/Context;)Landroid/text/SpannableStringBuilder;

    .line 245
    .line 246
    .line 247
    move-result-object p1

    .line 248
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 249
    .line 250
    .line 251
    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 252
    .line 253
    .line 254
    return-object p3
.end method

.method private final F1(Lcom/transsion/home/adapter/operateUGC/provider/s$a;I)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Lcom/transsion/home/adapter/operateUGC/provider/s$a;->a()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-static {p1, p2}, Lkotlin/collections/CollectionsKt;->l0(Ljava/util/List;I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lcom/transsion/ugcvideodetail/api/bean/UGCContent;

    .line 10
    .line 11
    if-eqz p1, :cond_1

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/transsion/ugcvideodetail/api/bean/UGCContent;->getVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    if-nez v4, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    sget-object v0, Lrk/d;->c:Lrk/d$a;

    .line 21
    .line 22
    iget v1, p0, Lcom/transsion/home/adapter/operateUGC/provider/s$b;->G:I

    .line 23
    .line 24
    iget-object v3, p0, Lcom/transsion/home/adapter/operateUGC/provider/s$b;->F:Lcom/transsion/home/bean/OperateItem;

    .line 25
    .line 26
    const/16 v6, 0x10

    .line 27
    .line 28
    const/4 v7, 0x0

    .line 29
    const/4 v5, 0x0

    .line 30
    move v2, p2

    .line 31
    invoke-static/range {v0 .. v7}, Lrk/d$a;->e(Lrk/d$a;IILcom/transsion/home/bean/OperateItem;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Ljava/util/Map;ILjava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    :cond_1
    :goto_0
    return-void
.end method

.method private final G1(Lcom/transsion/home/adapter/operateUGC/provider/s$a;I)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Lcom/transsion/home/adapter/operateUGC/provider/s$a;->a()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lcom/transsion/ugcvideodetail/api/bean/UGCContent;

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/transsion/ugcvideodetail/api/bean/UGCContent;->getVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    sget-object v0, Lrk/d;->c:Lrk/d$a;

    .line 16
    .line 17
    iget v1, p0, Lcom/transsion/home/adapter/operateUGC/provider/s$b;->G:I

    .line 18
    .line 19
    iget-object v3, p0, Lcom/transsion/home/adapter/operateUGC/provider/s$b;->F:Lcom/transsion/home/bean/OperateItem;

    .line 20
    .line 21
    const/16 v6, 0x10

    .line 22
    .line 23
    const/4 v7, 0x0

    .line 24
    const/4 v5, 0x0

    .line 25
    move v2, p2

    .line 26
    invoke-static/range {v0 .. v7}, Lrk/d$a;->g(Lrk/d$a;IILcom/transsion/home/bean/OperateItem;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Ljava/util/Map;ILjava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method


# virtual methods
.method protected C1(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/home/adapter/operateUGC/provider/s$a;)V
    .locals 6

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
    sget v0, Lcom/transsion/home/R$id;->sub_operation_rankinglist_root:I

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Landroid/widget/LinearLayout;

    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-string v1, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    .line 27
    .line 28
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 32
    .line 33
    iget v1, p0, Lcom/transsion/home/adapter/operateUGC/provider/s$b;->H:I

    .line 34
    .line 35
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 36
    .line 37
    const/16 v1, 0x8

    .line 38
    .line 39
    invoke-static {v1}, Llj/a;->b(I)I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 44
    .line 45
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 46
    .line 47
    .line 48
    const/4 v0, 0x0

    .line 49
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p2}, Lcom/transsion/home/adapter/operateUGC/provider/s$a;->a()Ljava/util/List;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    check-cast v0, Ljava/lang/Iterable;

    .line 57
    .line 58
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    const/4 v1, 0x0

    .line 63
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    if-eqz v2, :cond_1

    .line 68
    .line 69
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    add-int/lit8 v3, v1, 0x1

    .line 74
    .line 75
    if-gez v1, :cond_0

    .line 76
    .line 77
    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V

    .line 78
    .line 79
    .line 80
    :cond_0
    check-cast v2, Lcom/transsion/ugcvideodetail/api/bean/UGCContent;

    .line 81
    .line 82
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    .line 83
    .line 84
    .line 85
    move-result-object v4

    .line 86
    invoke-direct {p0, v4, v2, p1}, Lcom/transsion/home/adapter/operateUGC/provider/s$b;->E1(Landroid/content/Context;Lcom/transsion/ugcvideodetail/api/bean/UGCContent;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 87
    .line 88
    .line 89
    move-result-object v4

    .line 90
    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 91
    .line 92
    .line 93
    new-instance v5, Lcom/transsion/home/adapter/operateUGC/provider/t;

    .line 94
    .line 95
    invoke-direct {v5, v2, p0, p2, v1}, Lcom/transsion/home/adapter/operateUGC/provider/t;-><init>(Lcom/transsion/ugcvideodetail/api/bean/UGCContent;Lcom/transsion/home/adapter/operateUGC/provider/s$b;Lcom/transsion/home/adapter/operateUGC/provider/s$a;I)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    .line 100
    .line 101
    invoke-direct {p0, p2, v1}, Lcom/transsion/home/adapter/operateUGC/provider/s$b;->F1(Lcom/transsion/home/adapter/operateUGC/provider/s$a;I)V

    .line 102
    .line 103
    .line 104
    move v1, v3

    .line 105
    goto :goto_0

    .line 106
    :cond_1
    return-void
.end method

.method public bridge synthetic F(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/transsion/home/adapter/operateUGC/provider/s$a;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/transsion/home/adapter/operateUGC/provider/s$b;->C1(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/home/adapter/operateUGC/provider/s$a;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
