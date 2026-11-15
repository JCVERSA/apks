.class public final Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter$SubViewPagerViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$a0;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SubViewPagerViewHolder"
.end annotation


# instance fields
.field private final a:I

.field private final b:Lcom/transsion/home/bean/OperateItem;

.field private final c:Landroid/widget/ImageView;

.field private final d:Landroid/widget/ImageView;

.field private final e:Landroid/widget/TextView;

.field private final f:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Landroid/view/View;ILcom/transsion/home/bean/OperateItem;)V
    .locals 1

    .line 1
    const-string v0, "itemView"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "operateItem"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$a0;-><init>(Landroid/view/View;)V

    .line 12
    .line 13
    .line 14
    iput p2, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter$SubViewPagerViewHolder;->a:I

    .line 15
    .line 16
    iput-object p3, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter$SubViewPagerViewHolder;->b:Lcom/transsion/home/bean/OperateItem;

    .line 17
    .line 18
    sget p2, Lcom/transsion/home/R$id;->contentIV:I

    .line 19
    .line 20
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    const-string p3, "findViewById(...)"

    .line 25
    .line 26
    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    check-cast p2, Landroid/widget/ImageView;

    .line 30
    .line 31
    iput-object p2, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter$SubViewPagerViewHolder;->c:Landroid/widget/ImageView;

    .line 32
    .line 33
    sget p2, Lcom/transsion/home/R$id;->playIV:I

    .line 34
    .line 35
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    check-cast p2, Landroid/widget/ImageView;

    .line 43
    .line 44
    iput-object p2, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter$SubViewPagerViewHolder;->d:Landroid/widget/ImageView;

    .line 45
    .line 46
    sget p2, Lcom/transsion/home/R$id;->titleTV:I

    .line 47
    .line 48
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    check-cast p2, Landroid/widget/TextView;

    .line 56
    .line 57
    iput-object p2, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter$SubViewPagerViewHolder;->e:Landroid/widget/TextView;

    .line 58
    .line 59
    sget p2, Lcom/transsion/home/R$id;->desTV:I

    .line 60
    .line 61
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    check-cast p1, Landroid/widget/TextView;

    .line 69
    .line 70
    iput-object p1, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter$SubViewPagerViewHolder;->f:Landroid/widget/TextView;

    .line 71
    .line 72
    return-void
.end method

.method public static synthetic f(Lcom/transsion/home/bean/BannerData;Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter$SubViewPagerViewHolder;ILandroid/view/View;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter$SubViewPagerViewHolder;->h(Lcom/transsion/home/bean/BannerData;Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter$SubViewPagerViewHolder;ILandroid/view/View;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final h(Lcom/transsion/home/bean/BannerData;Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter$SubViewPagerViewHolder;ILandroid/view/View;)Lkotlin/Unit;
    .locals 7

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/transsion/home/bean/BannerData;->getDeepLink()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p3

    .line 10
    if-eqz p3, :cond_3

    .line 11
    .line 12
    sget-object v0, Lyg/l;->a:Lyg/l;

    .line 13
    .line 14
    invoke-virtual {v0}, Lyg/l;->e()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    sget-object p0, Lfh/b;->a:Lfh/b$a;

    .line 21
    .line 22
    sget p1, Lcom/tn/lib/widget/R$string;->no_network_toast:I

    .line 23
    .line 24
    invoke-virtual {p0, p1}, Lfh/b$a;->d(I)V

    .line 25
    .line 26
    .line 27
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 28
    .line 29
    return-object p0

    .line 30
    :cond_0
    sget-object v0, Lcom/transsion/baselib/helper/b;->a:Lcom/transsion/baselib/helper/b;

    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/transsion/home/bean/BannerData;->getOps()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    new-instance v2, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string p3, "&module_name=opt_banner_free&autoPlay=true&ops="

    .line 45
    .line 46
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p3

    .line 56
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 57
    .line 58
    .line 59
    move-result-object p3

    .line 60
    invoke-virtual {v0, p3}, Lcom/transsion/baselib/helper/b;->g(Landroid/net/Uri;)Landroid/net/Uri;

    .line 61
    .line 62
    .line 63
    move-result-object p3

    .line 64
    if-eqz p3, :cond_1

    .line 65
    .line 66
    invoke-static {p3}, Lij/k;->o(Landroid/net/Uri;)V

    .line 67
    .line 68
    .line 69
    :cond_1
    sget-object p3, Lcom/transsnet/downloader/DownloadManagerApi;->j:Lcom/transsnet/downloader/DownloadManagerApi$a;

    .line 70
    .line 71
    invoke-virtual {p3}, Lcom/transsnet/downloader/DownloadManagerApi$a;->a()Lcom/transsnet/downloader/DownloadManagerApi;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-virtual {p0}, Lcom/transsion/home/bean/BannerData;->getSubjectId()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    const/16 v5, 0xc

    .line 80
    .line 81
    const/4 v6, 0x0

    .line 82
    const/4 v2, 0x0

    .line 83
    const/4 v3, 0x0

    .line 84
    const/4 v4, 0x0

    .line 85
    invoke-static/range {v0 .. v6}, Lcom/transsnet/downloader/DownloadManagerApi;->x0(Lcom/transsnet/downloader/DownloadManagerApi;Ljava/lang/String;Ljava/lang/String;ZZILjava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result p3

    .line 89
    if-eqz p3, :cond_2

    .line 90
    .line 91
    const-string p3, "play_subject"

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_2
    const-string p3, "download_subject"

    .line 95
    .line 96
    :goto_0
    invoke-direct {p1, p0, p2, p3}, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter$SubViewPagerViewHolder;->j(Lcom/transsion/home/bean/BannerData;ILjava/lang/String;)V

    .line 97
    .line 98
    .line 99
    :cond_3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 100
    .line 101
    return-object p0
.end method

.method private final i(Lcom/transsion/moviedetailapi/bean/Subject;)Landroid/text/SpannableString;
    .locals 10

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x0

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getReleaseDate()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v3

    .line 12
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getGenre()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v4

    .line 16
    if-eqz v4, :cond_0

    .line 17
    .line 18
    const/4 p1, 0x1

    .line 19
    new-array v5, p1, [C

    .line 20
    .line 21
    const/16 p1, 0x2c

    .line 22
    .line 23
    aput-char p1, v5, v1

    .line 24
    .line 25
    const/4 v8, 0x6

    .line 26
    const/4 v9, 0x0

    .line 27
    const/4 v6, 0x0

    .line 28
    const/4 v7, 0x0

    .line 29
    invoke-static/range {v4 .. v9}, Lkotlin/text/StringsKt;->R0(Ljava/lang/CharSequence;[CZIILjava/lang/Object;)Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    if-eqz p1, :cond_0

    .line 34
    .line 35
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    check-cast p1, Ljava/lang/String;

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    const/4 p1, 0x0

    .line 43
    :goto_0
    const-string v4, " | "

    .line 44
    .line 45
    if-eqz v3, :cond_2

    .line 46
    .line 47
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 48
    .line 49
    .line 50
    move-result v5

    .line 51
    if-nez v5, :cond_1

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_1
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    :cond_2
    :goto_1
    if-eqz p1, :cond_3

    .line 61
    .line 62
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    :cond_3
    new-instance v4, Landroid/text/SpannableString;

    .line 69
    .line 70
    invoke-direct {v4, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 71
    .line 72
    .line 73
    const/16 v5, 0x11

    .line 74
    .line 75
    if-eqz v3, :cond_5

    .line 76
    .line 77
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 78
    .line 79
    .line 80
    move-result v6

    .line 81
    if-nez v6, :cond_4

    .line 82
    .line 83
    goto :goto_2

    .line 84
    :cond_4
    new-instance v6, Landroid/text/style/ForegroundColorSpan;

    .line 85
    .line 86
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 87
    .line 88
    .line 89
    move-result-object v7

    .line 90
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 91
    .line 92
    .line 93
    move-result-object v7

    .line 94
    sget v8, Lcom/tn/lib/widget/R$color;->white_20:I

    .line 95
    .line 96
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    .line 97
    .line 98
    .line 99
    move-result v7

    .line 100
    invoke-direct {v6, v7}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 101
    .line 102
    .line 103
    new-instance v7, Landroid/text/style/ForegroundColorSpan;

    .line 104
    .line 105
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 106
    .line 107
    .line 108
    move-result-object v8

    .line 109
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 110
    .line 111
    .line 112
    move-result-object v8

    .line 113
    sget v9, Lcom/tn/lib/widget/R$color;->white_60:I

    .line 114
    .line 115
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    .line 116
    .line 117
    .line 118
    move-result v8

    .line 119
    invoke-direct {v7, v8}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v4, v6, v1, v0, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 126
    .line 127
    .line 128
    move-result v1

    .line 129
    add-int/2addr v1, v0

    .line 130
    invoke-virtual {v4, v7, v0, v1, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 131
    .line 132
    .line 133
    :cond_5
    :goto_2
    if-eqz p1, :cond_6

    .line 134
    .line 135
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    .line 136
    .line 137
    .line 138
    move-result p1

    .line 139
    if-lt p1, v0, :cond_6

    .line 140
    .line 141
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    .line 142
    .line 143
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 144
    .line 145
    .line 146
    move-result-object v3

    .line 147
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 148
    .line 149
    .line 150
    move-result-object v3

    .line 151
    sget v6, Lcom/tn/lib/widget/R$color;->white_20:I

    .line 152
    .line 153
    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getColor(I)I

    .line 154
    .line 155
    .line 156
    move-result v3

    .line 157
    invoke-direct {v1, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 158
    .line 159
    .line 160
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    .line 161
    .line 162
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 163
    .line 164
    .line 165
    move-result-object v6

    .line 166
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 167
    .line 168
    .line 169
    move-result-object v6

    .line 170
    sget v7, Lcom/tn/lib/widget/R$color;->white_60:I

    .line 171
    .line 172
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    .line 173
    .line 174
    .line 175
    move-result v6

    .line 176
    invoke-direct {v3, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 177
    .line 178
    .line 179
    add-int/lit8 v0, p1, -0x3

    .line 180
    .line 181
    invoke-virtual {v4, v1, v0, p1, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    .line 185
    .line 186
    .line 187
    move-result v0

    .line 188
    invoke-virtual {v4, v3, p1, v0, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 189
    .line 190
    .line 191
    :cond_6
    return-object v4
.end method

.method private final j(Lcom/transsion/home/bean/BannerData;ILjava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "event_type"

    .line 7
    .line 8
    const-string v2, "click_banner_poster"

    .line 9
    .line 10
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    const-string v1, "sequence"

    .line 14
    .line 15
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    const-string p2, "module_name"

    .line 23
    .line 24
    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    iget p2, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter$SubViewPagerViewHolder;->a:I

    .line 28
    .line 29
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    const-string p3, "tabId"

    .line 34
    .line 35
    invoke-interface {v0, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    if-eqz p1, :cond_0

    .line 39
    .line 40
    invoke-static {p1, v0}, Lsk/b;->b(Lcom/transsion/home/bean/BannerData;Ljava/util/Map;)V

    .line 41
    .line 42
    .line 43
    :cond_0
    iget-object p1, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter$SubViewPagerViewHolder;->b:Lcom/transsion/home/bean/OperateItem;

    .line 44
    .line 45
    invoke-static {p1, v0}, Lsk/b;->a(Lcom/transsion/home/bean/OperateItem;Ljava/util/Map;)V

    .line 46
    .line 47
    .line 48
    sget-object p1, Lcom/transsion/baselib/helper/a;->a:Lcom/transsion/baselib/helper/a;

    .line 49
    .line 50
    sget-object p2, Lcom/transsion/home/fragment/tab/SubTabFragment;->t:Lcom/transsion/home/fragment/tab/SubTabFragment$a;

    .line 51
    .line 52
    iget p3, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter$SubViewPagerViewHolder;->a:I

    .line 53
    .line 54
    invoke-virtual {p2, p3}, Lcom/transsion/home/fragment/tab/SubTabFragment$a;->a(I)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    invoke-virtual {p1, p2, v0}, Lcom/transsion/baselib/helper/a;->f(Ljava/lang/String;Ljava/util/Map;)V

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method private final k(Lcom/transsion/home/bean/BannerData;Landroid/widget/ImageView;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/transsion/home/bean/BannerData;->getHasResource()Ljava/lang/Boolean;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    if-eqz v0, :cond_2

    .line 16
    .line 17
    sget-object v0, Lij/t;->a:Lij/t;

    .line 18
    .line 19
    invoke-virtual {v0}, Lij/t;->b()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/transsion/home/bean/BannerData;->getSubjectType()I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    sget-object v0, Lcom/transsion/moviedetailapi/SubjectType;->SHORT_TV:Lcom/transsion/moviedetailapi/SubjectType;

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/SubjectType;->getValue()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eq p1, v0, :cond_1

    .line 36
    .line 37
    sget p1, Lcom/transsion/home/R$drawable;->ic_trending_play:I

    .line 38
    .line 39
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 40
    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_1
    sget p1, Lcom/transsion/home/R$drawable;->ic_trending_download:I

    .line 44
    .line 45
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 46
    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_2
    sget p1, Lcom/transsion/home/R$drawable;->ic_trending_arrow:I

    .line 50
    .line 51
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 52
    .line 53
    .line 54
    :goto_1
    return-void
.end method


# virtual methods
.method public final g(Lcom/transsion/home/bean/BannerData;I)V
    .locals 11

    .line 1
    const-string v0, "bannerData"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/transsion/home/bean/BannerData;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/4 v1, 0x0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Subject;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Cover;->getUrl()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-nez v0, :cond_2

    .line 24
    .line 25
    :cond_0
    invoke-virtual {p1}, Lcom/transsion/home/bean/BannerData;->getImage()Lcom/transsion/moviedetailapi/bean/Image;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Image;->getUrl()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    move-object v0, v1

    .line 37
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/transsion/home/bean/BannerData;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    if-eqz v2, :cond_3

    .line 42
    .line 43
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Subject;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    if-eqz v2, :cond_3

    .line 48
    .line 49
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Cover;->getThumbnail()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    if-nez v2, :cond_5

    .line 54
    .line 55
    :cond_3
    invoke-virtual {p1}, Lcom/transsion/home/bean/BannerData;->getImage()Lcom/transsion/moviedetailapi/bean/Image;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    if-eqz v2, :cond_4

    .line 60
    .line 61
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Image;->getThumbnail()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    goto :goto_1

    .line 66
    :cond_4
    move-object v2, v1

    .line 67
    :cond_5
    :goto_1
    invoke-virtual {p1}, Lcom/transsion/home/bean/BannerData;->getBuiltIn()Z

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    const-string v4, ""

    .line 72
    .line 73
    if-eqz v3, :cond_6

    .line 74
    .line 75
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    invoke-static {v2}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 80
    .line 81
    .line 82
    move-result-object v5

    .line 83
    new-instance v8, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter$SubViewPagerViewHolder$bindData$1;

    .line 84
    .line 85
    invoke-direct {v8, v0, p0, v1}, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter$SubViewPagerViewHolder$bindData$1;-><init>(Ljava/lang/String;Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter$SubViewPagerViewHolder;Lkotlin/coroutines/Continuation;)V

    .line 86
    .line 87
    .line 88
    const/4 v9, 0x3

    .line 89
    const/4 v10, 0x0

    .line 90
    const/4 v6, 0x0

    .line 91
    const/4 v7, 0x0

    .line 92
    invoke-static/range {v5 .. v10}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 93
    .line 94
    .line 95
    goto :goto_2

    .line 96
    :cond_6
    sget-object v3, Lni/f;->a:Lni/f$a;

    .line 97
    .line 98
    iget-object v5, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter$SubViewPagerViewHolder;->c:Landroid/widget/ImageView;

    .line 99
    .line 100
    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 101
    .line 102
    .line 103
    move-result-object v5

    .line 104
    const-string v6, "getContext(...)"

    .line 105
    .line 106
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v3, v5}, Lni/f$a;->m(Landroid/content/Context;)Lni/f$b;

    .line 110
    .line 111
    .line 112
    move-result-object v3

    .line 113
    if-nez v0, :cond_7

    .line 114
    .line 115
    move-object v0, v4

    .line 116
    :cond_7
    invoke-virtual {v3, v0}, Lni/f$b;->g(Ljava/lang/String;)Lni/f$b;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    if-nez v2, :cond_8

    .line 121
    .line 122
    move-object v2, v4

    .line 123
    :cond_8
    invoke-virtual {v0, v2}, Lni/f$b;->l(Ljava/lang/String;)Lni/f$b;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    sget v2, Lcom/tn/lib/widget/R$mipmap;->ic_img_placeholder:I

    .line 128
    .line 129
    invoke-virtual {v0, v2}, Lni/f$b;->i(I)Lni/f$b;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    const/16 v2, 0x28

    .line 134
    .line 135
    invoke-static {v2}, Llj/a;->b(I)I

    .line 136
    .line 137
    .line 138
    move-result v2

    .line 139
    invoke-virtual {v0, v2}, Lni/f$b;->m(I)Lni/f$b;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    const/16 v2, 0x38

    .line 144
    .line 145
    invoke-static {v2}, Llj/a;->b(I)I

    .line 146
    .line 147
    .line 148
    move-result v2

    .line 149
    invoke-virtual {v0, v2}, Lni/f$b;->c(I)Lni/f$b;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    iget-object v2, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter$SubViewPagerViewHolder;->c:Landroid/widget/ImageView;

    .line 154
    .line 155
    invoke-virtual {v0, v2}, Lni/f$b;->d(Landroid/widget/ImageView;)V

    .line 156
    .line 157
    .line 158
    :goto_2
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    .line 159
    .line 160
    const/4 v2, 0x0

    .line 161
    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {p1}, Lcom/transsion/home/bean/BannerData;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    if-eqz v0, :cond_a

    .line 169
    .line 170
    iget-object v3, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter$SubViewPagerViewHolder;->e:Landroid/widget/TextView;

    .line 171
    .line 172
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Subject;->getTitle()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v5

    .line 176
    if-eqz v5, :cond_9

    .line 177
    .line 178
    move-object v4, v5

    .line 179
    :cond_9
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    .line 181
    .line 182
    invoke-direct {p0, v0}, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter$SubViewPagerViewHolder;->i(Lcom/transsion/moviedetailapi/bean/Subject;)Landroid/text/SpannableString;

    .line 183
    .line 184
    .line 185
    move-result-object v3

    .line 186
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 187
    .line 188
    .line 189
    move-result v4

    .line 190
    if-lez v4, :cond_a

    .line 191
    .line 192
    iget-object v4, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter$SubViewPagerViewHolder;->f:Landroid/widget/TextView;

    .line 193
    .line 194
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    .line 196
    .line 197
    iget-object v3, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter$SubViewPagerViewHolder;->f:Landroid/widget/TextView;

    .line 198
    .line 199
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectType()Ljava/lang/Integer;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    invoke-static {v0}, Lcom/transsion/moviedetailapi/h;->a(Ljava/lang/Integer;)I

    .line 204
    .line 205
    .line 206
    move-result v0

    .line 207
    invoke-virtual {v3, v0, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 208
    .line 209
    .line 210
    :cond_a
    invoke-virtual {p1}, Lcom/transsion/home/bean/BannerData;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    if-nez v0, :cond_b

    .line 215
    .line 216
    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter$SubViewPagerViewHolder;->e:Landroid/widget/TextView;

    .line 217
    .line 218
    invoke-virtual {p1}, Lcom/transsion/home/bean/BannerData;->getContent()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v3

    .line 222
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 223
    .line 224
    .line 225
    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter$SubViewPagerViewHolder;->f:Landroid/widget/TextView;

    .line 226
    .line 227
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    .line 229
    .line 230
    :cond_b
    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter$SubViewPagerViewHolder;->f:Landroid/widget/TextView;

    .line 231
    .line 232
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    if-eqz v0, :cond_c

    .line 237
    .line 238
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 239
    .line 240
    .line 241
    move-result v0

    .line 242
    if-nez v0, :cond_d

    .line 243
    .line 244
    :cond_c
    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter$SubViewPagerViewHolder;->f:Landroid/widget/TextView;

    .line 245
    .line 246
    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 247
    .line 248
    .line 249
    :cond_d
    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter$SubViewPagerViewHolder;->f:Landroid/widget/TextView;

    .line 250
    .line 251
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 252
    .line 253
    .line 254
    move-result-object v1

    .line 255
    if-eqz v1, :cond_f

    .line 256
    .line 257
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 258
    .line 259
    .line 260
    move-result v1

    .line 261
    if-nez v1, :cond_e

    .line 262
    .line 263
    goto :goto_3

    .line 264
    :cond_e
    move v1, v2

    .line 265
    goto :goto_4

    .line 266
    :cond_f
    :goto_3
    const/4 v1, 0x1

    .line 267
    :goto_4
    if-nez v1, :cond_10

    .line 268
    .line 269
    goto :goto_5

    .line 270
    :cond_10
    const/16 v2, 0x8

    .line 271
    .line 272
    :goto_5
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 273
    .line 274
    .line 275
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    .line 276
    .line 277
    const-string v0, "itemView"

    .line 278
    .line 279
    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 280
    .line 281
    .line 282
    new-instance v6, Lcom/transsion/home/adapter/suboperate/adapter/j;

    .line 283
    .line 284
    invoke-direct {v6, p1, p0, p2}, Lcom/transsion/home/adapter/suboperate/adapter/j;-><init>(Lcom/transsion/home/bean/BannerData;Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter$SubViewPagerViewHolder;I)V

    .line 285
    .line 286
    .line 287
    const/4 v7, 0x1

    .line 288
    const/4 v8, 0x0

    .line 289
    const-wide/16 v4, 0x0

    .line 290
    .line 291
    invoke-static/range {v3 .. v8}, Luf/c;->c(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 292
    .line 293
    .line 294
    iget-object p2, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter$SubViewPagerViewHolder;->d:Landroid/widget/ImageView;

    .line 295
    .line 296
    invoke-direct {p0, p1, p2}, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter$SubViewPagerViewHolder;->k(Lcom/transsion/home/bean/BannerData;Landroid/widget/ImageView;)V

    .line 297
    .line 298
    .line 299
    return-void
.end method

.method public final getImageView()Landroid/widget/ImageView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter$SubViewPagerViewHolder;->c:Landroid/widget/ImageView;

    .line 2
    .line 3
    return-object v0
.end method
