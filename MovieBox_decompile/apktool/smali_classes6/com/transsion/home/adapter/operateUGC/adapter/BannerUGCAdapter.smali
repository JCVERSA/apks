.class public final Lcom/transsion/home/adapter/operateUGC/adapter/BannerUGCAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/home/adapter/operateUGC/adapter/BannerUGCAdapter$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/List;

.field private final b:I

.field private final c:Lcom/transsion/home/adapter/operateUGC/provider/c;

.field private final d:Lcom/transsion/home/bean/OperateItem;

.field private final e:I

.field private final f:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Ljava/util/List;ILcom/transsion/home/adapter/operateUGC/provider/c;Lcom/transsion/home/bean/OperateItem;)V
    .locals 1

    .line 1
    const-string v0, "banners"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "bannerProvider"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "operateItem"

    .line 12
    .line 13
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lcom/transsion/home/adapter/operateUGC/adapter/BannerUGCAdapter;->a:Ljava/util/List;

    .line 20
    .line 21
    iput p2, p0, Lcom/transsion/home/adapter/operateUGC/adapter/BannerUGCAdapter;->b:I

    .line 22
    .line 23
    iput-object p3, p0, Lcom/transsion/home/adapter/operateUGC/adapter/BannerUGCAdapter;->c:Lcom/transsion/home/adapter/operateUGC/provider/c;

    .line 24
    .line 25
    iput-object p4, p0, Lcom/transsion/home/adapter/operateUGC/adapter/BannerUGCAdapter;->d:Lcom/transsion/home/bean/OperateItem;

    .line 26
    .line 27
    invoke-static {}, Lcom/blankj/utilcode/util/y;->e()I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    const/high16 p2, 0x41400000    # 12.0f

    .line 32
    .line 33
    invoke-static {p2}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 34
    .line 35
    .line 36
    move-result p2

    .line 37
    mul-int/lit8 p2, p2, 0x2

    .line 38
    .line 39
    sub-int/2addr p1, p2

    .line 40
    iput p1, p0, Lcom/transsion/home/adapter/operateUGC/adapter/BannerUGCAdapter;->e:I

    .line 41
    .line 42
    invoke-virtual {p4}, Lcom/transsion/home/bean/OperateItem;->getStyleTemplate()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    const-string p3, "BANNER_NARROW"

    .line 47
    .line 48
    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result p2

    .line 52
    if-eqz p2, :cond_0

    .line 53
    .line 54
    mul-int/lit8 p1, p1, 0x5

    .line 55
    .line 56
    div-int/lit8 p1, p1, 0xe

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_0
    mul-int/lit8 p1, p1, 0x9

    .line 60
    .line 61
    div-int/lit8 p1, p1, 0x10

    .line 62
    .line 63
    :goto_0
    iput p1, p0, Lcom/transsion/home/adapter/operateUGC/adapter/BannerUGCAdapter;->f:I

    .line 64
    .line 65
    return-void
.end method

.method public static synthetic g(Lcom/transsion/home/bean/BannerData;Lcom/transsion/home/adapter/operateUGC/adapter/BannerUGCAdapter;ILandroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/transsion/home/adapter/operateUGC/adapter/BannerUGCAdapter;->i(Lcom/transsion/home/bean/BannerData;Lcom/transsion/home/adapter/operateUGC/adapter/BannerUGCAdapter;ILandroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final i(Lcom/transsion/home/bean/BannerData;Lcom/transsion/home/adapter/operateUGC/adapter/BannerUGCAdapter;ILandroid/view/View;)V
    .locals 5

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/transsion/home/bean/BannerData;->getDeepLink()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p3

    .line 7
    if-eqz p3, :cond_1

    .line 8
    .line 9
    sget-object v0, Lyg/l;->a:Lyg/l;

    .line 10
    .line 11
    invoke-virtual {v0}, Lyg/l;->e()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    sget-object p0, Lfh/b;->a:Lfh/b$a;

    .line 18
    .line 19
    sget p1, Lcom/tn/lib/widget/R$string;->no_network_toast:I

    .line 20
    .line 21
    invoke-virtual {p0, p1}, Lfh/b$a;->d(I)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    iget-object v0, p1, Lcom/transsion/home/adapter/operateUGC/adapter/BannerUGCAdapter;->d:Lcom/transsion/home/bean/OperateItem;

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/transsion/home/bean/OperateItem;->getOpId()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {p0}, Lcom/transsion/home/bean/BannerData;->getOps()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    iget v2, p1, Lcom/transsion/home/adapter/operateUGC/adapter/BannerUGCAdapter;->b:I

    .line 36
    .line 37
    new-instance v3, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    const-string v4, "&module_name=opt_banner_free&from_opt_id="

    .line 43
    .line 44
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string v0, "&ops="

    .line 51
    .line 52
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string v0, "&tab_id="

    .line 59
    .line 60
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-static {p3, v0}, Lij/k;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    sget-object p3, Lrk/d;->c:Lrk/d$a;

    .line 74
    .line 75
    iget v0, p1, Lcom/transsion/home/adapter/operateUGC/adapter/BannerUGCAdapter;->b:I

    .line 76
    .line 77
    iget-object p1, p1, Lcom/transsion/home/adapter/operateUGC/adapter/BannerUGCAdapter;->d:Lcom/transsion/home/bean/OperateItem;

    .line 78
    .line 79
    invoke-virtual {p3, v0, p2, p1, p0}, Lrk/d$a;->b(IILcom/transsion/home/bean/OperateItem;Lcom/transsion/home/bean/BannerData;)V

    .line 80
    .line 81
    .line 82
    :cond_1
    return-void
.end method

.method private final k(Lcom/transsion/home/bean/BannerData;I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/home/adapter/operateUGC/adapter/BannerUGCAdapter;->c:Lcom/transsion/home/adapter/operateUGC/provider/c;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/transsion/home/bean/BannerData;->getDeepLink()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v1, 0x0

    .line 11
    :goto_0
    invoke-virtual {v0, v1}, Lcom/transsion/home/adapter/operateUGC/provider/c;->I(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    return-void

    .line 18
    :cond_1
    sget-object v0, Lrk/d;->c:Lrk/d$a;

    .line 19
    .line 20
    iget v1, p0, Lcom/transsion/home/adapter/operateUGC/adapter/BannerUGCAdapter;->b:I

    .line 21
    .line 22
    iget-object v2, p0, Lcom/transsion/home/adapter/operateUGC/adapter/BannerUGCAdapter;->d:Lcom/transsion/home/bean/OperateItem;

    .line 23
    .line 24
    invoke-virtual {v0, v1, p2, v2, p1}, Lrk/d$a;->a(IILcom/transsion/home/bean/OperateItem;Lcom/transsion/home/bean/BannerData;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1
    const v0, 0x7fffffff

    .line 2
    .line 3
    .line 4
    return v0
.end method

.method public h(Lcom/transsion/home/adapter/operateUGC/adapter/BannerUGCAdapter$a;I)V
    .locals 9

    .line 1
    const-string v0, "holder"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/transsion/home/adapter/operateUGC/adapter/BannerUGCAdapter;->a:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/transsion/home/adapter/operateUGC/adapter/BannerUGCAdapter;->a:Ljava/util/List;

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    rem-int/2addr p2, v0

    .line 22
    iget-object v0, p0, Lcom/transsion/home/adapter/operateUGC/adapter/BannerUGCAdapter;->a:Ljava/util/List;

    .line 23
    .line 24
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Lcom/transsion/home/bean/BannerData;

    .line 29
    .line 30
    const-string v1, ""

    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/transsion/home/bean/BannerData;->getBuiltIn()Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    const/4 v3, 0x1

    .line 39
    if-ne v2, v3, :cond_1

    .line 40
    .line 41
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-static {v2}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    new-instance v6, Lcom/transsion/home/adapter/operateUGC/adapter/BannerUGCAdapter$onBindViewHolder$1;

    .line 50
    .line 51
    const/4 v2, 0x0

    .line 52
    invoke-direct {v6, v0, p1, v2}, Lcom/transsion/home/adapter/operateUGC/adapter/BannerUGCAdapter$onBindViewHolder$1;-><init>(Lcom/transsion/home/bean/BannerData;Lcom/transsion/home/adapter/operateUGC/adapter/BannerUGCAdapter$a;Lkotlin/coroutines/Continuation;)V

    .line 53
    .line 54
    .line 55
    const/4 v7, 0x3

    .line 56
    const/4 v8, 0x0

    .line 57
    const/4 v4, 0x0

    .line 58
    const/4 v5, 0x0

    .line 59
    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_1
    sget-object v2, Lni/f;->a:Lni/f$a;

    .line 64
    .line 65
    invoke-virtual {p1}, Lcom/transsion/home/adapter/operateUGC/adapter/BannerUGCAdapter$a;->getImageView()Landroid/widget/ImageView;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    const-string v4, "getContext(...)"

    .line 74
    .line 75
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v2, v3}, Lni/f$a;->m(Landroid/content/Context;)Lni/f$b;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    if-eqz v0, :cond_2

    .line 83
    .line 84
    invoke-virtual {v0}, Lcom/transsion/home/bean/BannerData;->getImage()Lcom/transsion/moviedetailapi/bean/Image;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    if-eqz v3, :cond_2

    .line 89
    .line 90
    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/Image;->getUrl()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    if-nez v3, :cond_3

    .line 95
    .line 96
    :cond_2
    move-object v3, v1

    .line 97
    :cond_3
    invoke-virtual {v2, v3}, Lni/f$b;->g(Ljava/lang/String;)Lni/f$b;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    iget v3, p0, Lcom/transsion/home/adapter/operateUGC/adapter/BannerUGCAdapter;->e:I

    .line 102
    .line 103
    invoke-virtual {v2, v3}, Lni/f$b;->m(I)Lni/f$b;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    if-eqz v0, :cond_4

    .line 108
    .line 109
    invoke-virtual {v0}, Lcom/transsion/home/bean/BannerData;->getImage()Lcom/transsion/moviedetailapi/bean/Image;

    .line 110
    .line 111
    .line 112
    move-result-object v3

    .line 113
    if-eqz v3, :cond_4

    .line 114
    .line 115
    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/Image;->getThumbnail()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v3

    .line 119
    if-nez v3, :cond_5

    .line 120
    .line 121
    :cond_4
    move-object v3, v1

    .line 122
    :cond_5
    invoke-virtual {v2, v3}, Lni/f$b;->l(Ljava/lang/String;)Lni/f$b;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    invoke-virtual {p1}, Lcom/transsion/home/adapter/operateUGC/adapter/BannerUGCAdapter$a;->getImageView()Landroid/widget/ImageView;

    .line 127
    .line 128
    .line 129
    move-result-object v3

    .line 130
    invoke-virtual {v2, v3}, Lni/f$b;->d(Landroid/widget/ImageView;)V

    .line 131
    .line 132
    .line 133
    :goto_0
    invoke-virtual {p1}, Lcom/transsion/home/adapter/operateUGC/adapter/BannerUGCAdapter$a;->f()Landroid/widget/TextView;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    if-eqz v0, :cond_6

    .line 138
    .line 139
    invoke-virtual {v0}, Lcom/transsion/home/bean/BannerData;->getContent()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v3

    .line 143
    if-eqz v3, :cond_6

    .line 144
    .line 145
    move-object v1, v3

    .line 146
    :cond_6
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    .line 148
    .line 149
    invoke-direct {p0, v0, p2}, Lcom/transsion/home/adapter/operateUGC/adapter/BannerUGCAdapter;->k(Lcom/transsion/home/bean/BannerData;I)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {p1}, Lcom/transsion/home/adapter/operateUGC/adapter/BannerUGCAdapter$a;->getImageView()Landroid/widget/ImageView;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    new-instance v1, Lcom/transsion/home/adapter/operateUGC/adapter/a;

    .line 157
    .line 158
    invoke-direct {v1, v0, p0, p2}, Lcom/transsion/home/adapter/operateUGC/adapter/a;-><init>(Lcom/transsion/home/bean/BannerData;Lcom/transsion/home/adapter/operateUGC/adapter/BannerUGCAdapter;I)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    .line 163
    .line 164
    return-void
.end method

.method public j(Landroid/view/ViewGroup;I)Lcom/transsion/home/adapter/operateUGC/adapter/BannerUGCAdapter$a;
    .locals 2

    .line 1
    const-string p2, "parent"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

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
    sget v0, Lcom/transsion/home/R$layout;->item_ugc_banner:I

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    new-instance p2, Lcom/transsion/home/adapter/operateUGC/adapter/BannerUGCAdapter$a;

    .line 22
    .line 23
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    invoke-direct {p2, p1}, Lcom/transsion/home/adapter/operateUGC/adapter/BannerUGCAdapter$a;-><init>(Landroid/view/View;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2}, Lcom/transsion/home/adapter/operateUGC/adapter/BannerUGCAdapter$a;->getImageView()Landroid/widget/ImageView;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    iget v0, p0, Lcom/transsion/home/adapter/operateUGC/adapter/BannerUGCAdapter;->f:I

    .line 38
    .line 39
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 40
    .line 41
    return-object p2
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$a0;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/transsion/home/adapter/operateUGC/adapter/BannerUGCAdapter$a;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/transsion/home/adapter/operateUGC/adapter/BannerUGCAdapter;->h(Lcom/transsion/home/adapter/operateUGC/adapter/BannerUGCAdapter$a;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$a0;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/transsion/home/adapter/operateUGC/adapter/BannerUGCAdapter;->j(Landroid/view/ViewGroup;I)Lcom/transsion/home/adapter/operateUGC/adapter/BannerUGCAdapter$a;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
