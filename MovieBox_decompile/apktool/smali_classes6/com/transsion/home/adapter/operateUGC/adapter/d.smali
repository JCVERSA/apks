.class public final Lcom/transsion/home/adapter/operateUGC/adapter/d;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\u000e\u0008\u0007\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B!\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\u0008\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\t\u0010\nJ1\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u000c\u001a\u00020\u000b2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\r2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u0017\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u001f\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u0018\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u001f\u0010\u001c\u001a\u00020\u00192\u0006\u0010\u0018\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u001c\u0010\u001bJ\u001f\u0010\u001f\u001a\u00020\u00192\u0006\u0010\u001d\u001a\u00020\u00032\u0006\u0010\u001e\u001a\u00020\u0002H\u0014\u00a2\u0006\u0004\u0008\u001f\u0010 R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008!\u0010\"R\u0014\u0010\u0008\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008#\u0010$R\u0014\u0010&\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008%\u0010$\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/transsion/home/adapter/operateUGC/adapter/d;",
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "Lcom/transsion/home/bean/RankingListItem;",
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
        "Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;",
        "ugcVideo",
        "Landroid/view/ViewGroup;",
        "parent",
        "position",
        "Landroid/view/View;",
        "F1",
        "(Landroid/content/Context;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Landroid/view/ViewGroup;I)Landroid/view/View;",
        "pos",
        "E1",
        "(I)I",
        "rankListItem",
        "",
        "G1",
        "(Lcom/transsion/home/bean/RankingListItem;I)V",
        "H1",
        "holder",
        "item",
        "C1",
        "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/home/bean/RankingListItem;)V",
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

    .line 2
    invoke-direct {p0, p1, v0, v1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 3
    iput-object p2, p0, Lcom/transsion/home/adapter/operateUGC/adapter/d;->F:Lcom/transsion/home/bean/OperateItem;

    .line 4
    iput p3, p0, Lcom/transsion/home/adapter/operateUGC/adapter/d;->G:I

    .line 5
    invoke-static {}, Lcom/blankj/utilcode/util/y;->e()I

    move-result p1

    invoke-static {}, Lcom/blankj/utilcode/util/y;->c()I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/high16 p2, 0x42580000    # 54.0f

    invoke-static {p2}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result p2

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/transsion/home/adapter/operateUGC/adapter/d;->H:I

    return-void
.end method

.method public synthetic constructor <init>(ILcom/transsion/home/bean/OperateItem;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x1

    if-eqz p4, :cond_0

    .line 1
    sget p1, Lcom/transsion/home/R$layout;->item_ugc_provider_ranklist:I

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/home/adapter/operateUGC/adapter/d;-><init>(ILcom/transsion/home/bean/OperateItem;I)V

    return-void
.end method

.method public static synthetic B1(Lcom/transsion/ugcvideodetail/api/bean/UGCContent;Lcom/transsion/home/adapter/operateUGC/adapter/d;Lcom/transsion/home/bean/RankingListItem;ILandroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/transsion/home/adapter/operateUGC/adapter/d;->D1(Lcom/transsion/ugcvideodetail/api/bean/UGCContent;Lcom/transsion/home/adapter/operateUGC/adapter/d;Lcom/transsion/home/bean/RankingListItem;ILandroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final D1(Lcom/transsion/ugcvideodetail/api/bean/UGCContent;Lcom/transsion/home/adapter/operateUGC/adapter/d;Lcom/transsion/home/bean/RankingListItem;ILandroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/transsion/ugcvideodetail/api/bean/UGCContent;->getVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    iget p4, p1, Lcom/transsion/home/adapter/operateUGC/adapter/d;->G:I

    .line 6
    .line 7
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object p4

    .line 11
    iget-object v0, p1, Lcom/transsion/home/adapter/operateUGC/adapter/d;->F:Lcom/transsion/home/bean/OperateItem;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/transsion/home/bean/OperateItem;->getOpId()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {p0, p4, v0}, Lgu/c;->h(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-direct {p1, p2, p3}, Lcom/transsion/home/adapter/operateUGC/adapter/d;->H1(Lcom/transsion/home/bean/RankingListItem;I)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method private final E1(I)I
    .locals 1

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p1, v0, :cond_1

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p1, v0, :cond_0

    .line 8
    .line 9
    sget p1, Lcom/transsion/home/R$drawable;->ic_ugc_rank_default:I

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    sget p1, Lcom/transsion/home/R$drawable;->ic_ugc_rank_03:I

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    sget p1, Lcom/transsion/home/R$drawable;->ic_ugc_rank_02:I

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_2
    sget p1, Lcom/transsion/home/R$drawable;->ic_ugc_rank_01:I

    .line 19
    .line 20
    :goto_0
    return p1
.end method

.method private final F1(Landroid/content/Context;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 6

    .line 1
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget v1, Lcom/transsion/home/R$layout;->item_ugc_provider_ranklist_items:I

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
    sget v0, Lcom/transsion/home/R$id;->home_ugc_rankinglist_cover:I

    .line 13
    .line 14
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "findViewById(...)"

    .line 19
    .line 20
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    check-cast v0, Lcom/google/android/material/imageview/ShapeableImageView;

    .line 24
    .line 25
    sget-object v1, Lni/f;->a:Lni/f$a;

    .line 26
    .line 27
    invoke-virtual {v1, p1}, Lni/f$a;->m(Landroid/content/Context;)Lni/f$b;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    const-string v3, ""

    .line 32
    .line 33
    if-eqz p2, :cond_0

    .line 34
    .line 35
    invoke-virtual {p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    if-eqz v4, :cond_0

    .line 40
    .line 41
    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/bean/Cover;->getUrl()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    if-nez v4, :cond_1

    .line 46
    .line 47
    :cond_0
    move-object v4, v3

    .line 48
    :cond_1
    invoke-virtual {v1, v4}, Lni/f$b;->g(Ljava/lang/String;)Lni/f$b;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {v1, v0}, Lni/f$b;->d(Landroid/widget/ImageView;)V

    .line 53
    .line 54
    .line 55
    sget v0, Lcom/transsion/home/R$id;->home_ugc_rankinglist_title:I

    .line 56
    .line 57
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    check-cast v0, Landroid/widget/TextView;

    .line 62
    .line 63
    const/4 v1, 0x0

    .line 64
    if-eqz p2, :cond_2

    .line 65
    .line 66
    invoke-virtual {p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getTitle()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    goto :goto_0

    .line 71
    :cond_2
    move-object v4, v1

    .line 72
    :goto_0
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    .line 74
    .line 75
    sget v0, Lcom/transsion/home/R$id;->home_ugc_rankinglist_corner_text:I

    .line 76
    .line 77
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    check-cast v0, Landroid/widget/TextView;

    .line 82
    .line 83
    if-eqz p2, :cond_3

    .line 84
    .line 85
    invoke-virtual {p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getCorner()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    if-eqz v4, :cond_3

    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_3
    move-object v4, v3

    .line 93
    :goto_1
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    .line 95
    .line 96
    sget v0, Lcom/transsion/home/R$id;->home_ugc_ranklist_time_text:I

    .line 97
    .line 98
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    check-cast v0, Landroid/widget/TextView;

    .line 103
    .line 104
    if-eqz p2, :cond_4

    .line 105
    .line 106
    invoke-virtual {p2, p1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getTimeOrCount(Landroid/content/Context;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v4

    .line 110
    if-eqz v4, :cond_4

    .line 111
    .line 112
    goto :goto_2

    .line 113
    :cond_4
    move-object v4, v3

    .line 114
    :goto_2
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    .line 116
    .line 117
    sget-object v0, Lcom/transsion/home/enum/HomeTabId;->Companion:Lcom/transsion/home/enum/HomeTabId$a;

    .line 118
    .line 119
    iget v4, p0, Lcom/transsion/home/adapter/operateUGC/adapter/d;->G:I

    .line 120
    .line 121
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 122
    .line 123
    .line 124
    move-result-object v4

    .line 125
    invoke-virtual {v0, v4, v2}, Lcom/transsion/home/enum/HomeTabId$a;->h(Ljava/lang/Integer;Z)Z

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    if-eqz v0, :cond_a

    .line 130
    .line 131
    if-eqz p2, :cond_5

    .line 132
    .line 133
    invoke-virtual {p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getCreator()Lcom/transsion/ugcvideodetail/api/bean/UGCVideoCreator;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    if-eqz v0, :cond_5

    .line 138
    .line 139
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoCreator;->getNickname()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    goto :goto_3

    .line 144
    :cond_5
    move-object v0, v1

    .line 145
    :goto_3
    if-eqz v0, :cond_a

    .line 146
    .line 147
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 148
    .line 149
    .line 150
    move-result v0

    .line 151
    if-nez v0, :cond_6

    .line 152
    .line 153
    goto :goto_4

    .line 154
    :cond_6
    if-eqz p2, :cond_7

    .line 155
    .line 156
    invoke-virtual {p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getWatchNum()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    :cond_7
    invoke-static {v1, p1}, Lcom/transsion/baseui/util/j;->c(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    if-eqz p2, :cond_8

    .line 165
    .line 166
    invoke-virtual {p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getCreator()Lcom/transsion/ugcvideodetail/api/bean/UGCVideoCreator;

    .line 167
    .line 168
    .line 169
    move-result-object p2

    .line 170
    if-eqz p2, :cond_8

    .line 171
    .line 172
    invoke-virtual {p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoCreator;->getNickname()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object p2

    .line 176
    if-nez p2, :cond_9

    .line 177
    .line 178
    :cond_8
    move-object p2, v3

    .line 179
    :cond_9
    const-string v1, "special_#user_icon"

    .line 180
    .line 181
    filled-new-array {v0, v1, p2}, [Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object p2

    .line 185
    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->q([Ljava/lang/Object;)Ljava/util/List;

    .line 186
    .line 187
    .line 188
    move-result-object p2

    .line 189
    goto :goto_6

    .line 190
    :cond_a
    :goto_4
    if-eqz p2, :cond_b

    .line 191
    .line 192
    invoke-virtual {p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getWatchNum()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v1

    .line 196
    :cond_b
    invoke-static {v1, p1}, Lcom/transsion/baseui/util/j;->c(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    iget v1, p0, Lcom/transsion/home/adapter/operateUGC/adapter/d;->G:I

    .line 201
    .line 202
    sget-object v2, Lcom/transsion/home/enum/HomeTabId;->UGC_Trending:Lcom/transsion/home/enum/HomeTabId;

    .line 203
    .line 204
    invoke-virtual {v2}, Lcom/transsion/home/enum/HomeTabId;->getValue()I

    .line 205
    .line 206
    .line 207
    move-result v2

    .line 208
    const-wide/16 v4, 0x0

    .line 209
    .line 210
    if-ne v1, v2, :cond_d

    .line 211
    .line 212
    if-eqz p2, :cond_c

    .line 213
    .line 214
    invoke-virtual {p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getPublishTime()Ljava/lang/Long;

    .line 215
    .line 216
    .line 217
    move-result-object p2

    .line 218
    if-eqz p2, :cond_c

    .line 219
    .line 220
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 221
    .line 222
    .line 223
    move-result-wide v4

    .line 224
    :cond_c
    invoke-static {v4, v5}, Lcom/transsion/baseui/util/TimeUtilKt;->k(J)Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object p2

    .line 228
    goto :goto_5

    .line 229
    :cond_d
    if-eqz p2, :cond_e

    .line 230
    .line 231
    invoke-virtual {p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getPublishTime()Ljava/lang/Long;

    .line 232
    .line 233
    .line 234
    move-result-object p2

    .line 235
    if-eqz p2, :cond_e

    .line 236
    .line 237
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 238
    .line 239
    .line 240
    move-result-wide v4

    .line 241
    :cond_e
    invoke-static {v4, v5}, Lcom/transsion/baseui/util/TimeUtilKt;->j(J)Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object p2

    .line 245
    :goto_5
    filled-new-array {v0, p2}, [Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object p2

    .line 249
    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->q([Ljava/lang/Object;)Ljava/util/List;

    .line 250
    .line 251
    .line 252
    move-result-object p2

    .line 253
    :goto_6
    sget v0, Lcom/transsion/home/R$id;->home_ugc_rankinglist_tag:I

    .line 254
    .line 255
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 256
    .line 257
    .line 258
    move-result-object v0

    .line 259
    check-cast v0, Landroid/widget/TextView;

    .line 260
    .line 261
    invoke-static {p2, p1}, Lcom/transsion/baseui/util/q;->e(Ljava/util/List;Landroid/content/Context;)Landroid/text/SpannableStringBuilder;

    .line 262
    .line 263
    .line 264
    move-result-object p1

    .line 265
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 266
    .line 267
    .line 268
    sget p1, Lcom/transsion/home/R$id;->home_ugc_rankinglist_rank:I

    .line 269
    .line 270
    invoke-virtual {p3, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 271
    .line 272
    .line 273
    move-result-object p1

    .line 274
    check-cast p1, Landroidx/appcompat/widget/AppCompatImageView;

    .line 275
    .line 276
    if-eqz p1, :cond_f

    .line 277
    .line 278
    invoke-direct {p0, p4}, Lcom/transsion/home/adapter/operateUGC/adapter/d;->E1(I)I

    .line 279
    .line 280
    .line 281
    move-result p2

    .line 282
    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 283
    .line 284
    .line 285
    :cond_f
    sget p1, Lcom/transsion/home/R$id;->home_ugc_rankinglist_text:I

    .line 286
    .line 287
    invoke-virtual {p3, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 288
    .line 289
    .line 290
    move-result-object p1

    .line 291
    check-cast p1, Landroid/widget/TextView;

    .line 292
    .line 293
    const/4 p2, 0x2

    .line 294
    if-le p4, p2, :cond_11

    .line 295
    .line 296
    const/16 p2, 0x9

    .line 297
    .line 298
    if-ge p4, p2, :cond_10

    .line 299
    .line 300
    add-int/lit8 p4, p4, 0x1

    .line 301
    .line 302
    new-instance p2, Ljava/lang/StringBuilder;

    .line 303
    .line 304
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 305
    .line 306
    .line 307
    const-string v0, "0"

    .line 308
    .line 309
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    .line 311
    .line 312
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 313
    .line 314
    .line 315
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object p2

    .line 319
    goto :goto_7

    .line 320
    :cond_10
    add-int/lit8 p4, p4, 0x1

    .line 321
    .line 322
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object p2

    .line 326
    :goto_7
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 327
    .line 328
    .line 329
    goto :goto_8

    .line 330
    :cond_11
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 331
    .line 332
    .line 333
    :goto_8
    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 334
    .line 335
    .line 336
    return-object p3
.end method

.method private final G1(Lcom/transsion/home/bean/RankingListItem;I)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Lcom/transsion/home/bean/RankingListItem;->getContentList()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/transsion/ugcvideodetail/api/bean/UGCContent;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCContent;->getVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    :goto_0
    move-object v5, v0

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    goto :goto_0

    .line 23
    :goto_1
    sget-object v1, Lrk/d;->c:Lrk/d$a;

    .line 24
    .line 25
    iget v2, p0, Lcom/transsion/home/adapter/operateUGC/adapter/d;->G:I

    .line 26
    .line 27
    iget-object v4, p0, Lcom/transsion/home/adapter/operateUGC/adapter/d;->F:Lcom/transsion/home/bean/OperateItem;

    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/transsion/home/bean/RankingListItem;->getTitle()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    if-nez p1, :cond_1

    .line 34
    .line 35
    const-string p1, ""

    .line 36
    .line 37
    :cond_1
    const-string v0, "page_tab_name"

    .line 38
    .line 39
    invoke-static {v0, p1}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-static {p1}, Lkotlin/collections/MapsKt;->f(Lkotlin/Pair;)Ljava/util/Map;

    .line 44
    .line 45
    .line 46
    move-result-object v6

    .line 47
    move v3, p2

    .line 48
    invoke-virtual/range {v1 .. v6}, Lrk/d$a;->d(IILcom/transsion/home/bean/OperateItem;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Ljava/util/Map;)V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method private final H1(Lcom/transsion/home/bean/RankingListItem;I)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Lcom/transsion/home/bean/RankingListItem;->getContentList()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/transsion/ugcvideodetail/api/bean/UGCContent;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCContent;->getVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    :goto_0
    move-object v5, v0

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    goto :goto_0

    .line 23
    :goto_1
    sget-object v1, Lrk/d;->c:Lrk/d$a;

    .line 24
    .line 25
    iget v2, p0, Lcom/transsion/home/adapter/operateUGC/adapter/d;->G:I

    .line 26
    .line 27
    iget-object v4, p0, Lcom/transsion/home/adapter/operateUGC/adapter/d;->F:Lcom/transsion/home/bean/OperateItem;

    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/transsion/home/bean/RankingListItem;->getTitle()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    if-nez p1, :cond_1

    .line 34
    .line 35
    const-string p1, ""

    .line 36
    .line 37
    :cond_1
    const-string v0, "page_tab_name"

    .line 38
    .line 39
    invoke-static {v0, p1}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-static {p1}, Lkotlin/collections/MapsKt;->f(Lkotlin/Pair;)Ljava/util/Map;

    .line 44
    .line 45
    .line 46
    move-result-object v6

    .line 47
    move v3, p2

    .line 48
    invoke-virtual/range {v1 .. v6}, Lrk/d$a;->f(IILcom/transsion/home/bean/OperateItem;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Ljava/util/Map;)V

    .line 49
    .line 50
    .line 51
    return-void
.end method


# virtual methods
.method protected C1(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/home/bean/RankingListItem;)V
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
    sget v0, Lcom/transsion/home/R$id;->home_ugc_rankinglist_liner:I

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
    iget v1, p0, Lcom/transsion/home/adapter/operateUGC/adapter/d;->H:I

    .line 27
    .line 28
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 29
    .line 30
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2}, Lcom/transsion/home/bean/RankingListItem;->getContentList()Ljava/util/List;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    check-cast v0, Ljava/lang/Iterable;

    .line 40
    .line 41
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    const/4 v1, 0x0

    .line 46
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    if-eqz v2, :cond_1

    .line 51
    .line 52
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    add-int/lit8 v3, v1, 0x1

    .line 57
    .line 58
    if-gez v1, :cond_0

    .line 59
    .line 60
    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V

    .line 61
    .line 62
    .line 63
    :cond_0
    check-cast v2, Lcom/transsion/ugcvideodetail/api/bean/UGCContent;

    .line 64
    .line 65
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    invoke-virtual {v2}, Lcom/transsion/ugcvideodetail/api/bean/UGCContent;->getVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    invoke-direct {p0, v4, v5, p1, v1}, Lcom/transsion/home/adapter/operateUGC/adapter/d;->F1(Landroid/content/Context;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Landroid/view/ViewGroup;I)Landroid/view/View;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 78
    .line 79
    .line 80
    new-instance v5, Lcom/transsion/home/adapter/operateUGC/adapter/c;

    .line 81
    .line 82
    invoke-direct {v5, v2, p0, p2, v1}, Lcom/transsion/home/adapter/operateUGC/adapter/c;-><init>(Lcom/transsion/ugcvideodetail/api/bean/UGCContent;Lcom/transsion/home/adapter/operateUGC/adapter/d;Lcom/transsion/home/bean/RankingListItem;I)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    .line 87
    .line 88
    invoke-direct {p0, p2, v1}, Lcom/transsion/home/adapter/operateUGC/adapter/d;->G1(Lcom/transsion/home/bean/RankingListItem;I)V

    .line 89
    .line 90
    .line 91
    move v1, v3

    .line 92
    goto :goto_0

    .line 93
    :cond_1
    return-void
.end method

.method public bridge synthetic F(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/transsion/home/bean/RankingListItem;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/transsion/home/adapter/operateUGC/adapter/d;->C1(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/home/bean/RankingListItem;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
