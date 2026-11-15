.class public final Lcom/transsion/shorttv_pugc/ui/adapter/ShortTVBannerAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "source.java"


# instance fields
.field private final a:Ljava/util/List;

.field private b:Lkotlin/jvm/functions/Function3;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/transsion/shorttv_pugc/ui/adapter/ShortTVBannerAdapter;->a:Ljava/util/List;

    .line 10
    .line 11
    return-void
.end method

.method public static synthetic g(Lcom/transsion/shorttv_pugc/bean/BannerData;Lcom/transsion/shorttv_pugc/ui/adapter/ShortTVBannerAdapter;ILandroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/transsion/shorttv_pugc/ui/adapter/ShortTVBannerAdapter;->i(Lcom/transsion/shorttv_pugc/bean/BannerData;Lcom/transsion/shorttv_pugc/ui/adapter/ShortTVBannerAdapter;ILandroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final i(Lcom/transsion/shorttv_pugc/bean/BannerData;Lcom/transsion/shorttv_pugc/ui/adapter/ShortTVBannerAdapter;ILandroid/view/View;)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    iget-object p1, p1, Lcom/transsion/shorttv_pugc/ui/adapter/ShortTVBannerAdapter;->b:Lkotlin/jvm/functions/Function3;

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    invoke-interface {p1, p3, p2, p0}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method


# virtual methods
.method public final getData()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/adapter/ShortTVBannerAdapter;->a:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/adapter/ShortTVBannerAdapter;->a:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public h(Lcom/transsion/shorttv_pugc/ui/adapter/b;I)V
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    const-string v3, "holder"

    .line 8
    .line 9
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v3, v0, Lcom/transsion/shorttv_pugc/ui/adapter/ShortTVBannerAdapter;->a:Ljava/util/List;

    .line 13
    .line 14
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    check-cast v3, Lcom/transsion/shorttv_pugc/bean/BannerData;

    .line 19
    .line 20
    iget-object v4, v1, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    .line 21
    .line 22
    new-instance v5, Lcom/transsion/shorttv_pugc/ui/adapter/a;

    .line 23
    .line 24
    invoke-direct {v5, v3, v0, v2}, Lcom/transsion/shorttv_pugc/ui/adapter/a;-><init>(Lcom/transsion/shorttv_pugc/bean/BannerData;Lcom/transsion/shorttv_pugc/ui/adapter/ShortTVBannerAdapter;I)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    .line 29
    .line 30
    const/4 v2, 0x0

    .line 31
    if-eqz v3, :cond_0

    .line 32
    .line 33
    invoke-virtual {v3}, Lcom/transsion/shorttv_pugc/bean/BannerData;->getBuiltIn()Z

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    const/4 v5, 0x1

    .line 38
    if-ne v4, v5, :cond_0

    .line 39
    .line 40
    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    invoke-static {v4}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 45
    .line 46
    .line 47
    move-result-object v5

    .line 48
    new-instance v8, Lcom/transsion/shorttv_pugc/ui/adapter/ShortTVBannerAdapter$onBindViewHolder$1$2;

    .line 49
    .line 50
    invoke-direct {v8, v3, v1, v2}, Lcom/transsion/shorttv_pugc/ui/adapter/ShortTVBannerAdapter$onBindViewHolder$1$2;-><init>(Lcom/transsion/shorttv_pugc/bean/BannerData;Lcom/transsion/shorttv_pugc/ui/adapter/b;Lkotlin/coroutines/Continuation;)V

    .line 51
    .line 52
    .line 53
    const/4 v9, 0x3

    .line 54
    const/4 v10, 0x0

    .line 55
    const/4 v6, 0x0

    .line 56
    const/4 v7, 0x0

    .line 57
    invoke-static/range {v5 .. v10}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 58
    .line 59
    .line 60
    goto :goto_4

    .line 61
    :cond_0
    sget-object v11, Lis/b;->a:Lis/b$a;

    .line 62
    .line 63
    iget-object v4, v1, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    .line 64
    .line 65
    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 66
    .line 67
    .line 68
    move-result-object v12

    .line 69
    const-string v4, "getContext(...)"

    .line 70
    .line 71
    invoke-static {v12, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/shorttv_pugc/ui/adapter/b;->f()Lqr/e0;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    iget-object v13, v4, Lqr/e0;->b:Lcom/google/android/material/imageview/ShapeableImageView;

    .line 79
    .line 80
    const-string v4, "ivCover"

    .line 81
    .line 82
    invoke-static {v13, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    const-string v4, ""

    .line 86
    .line 87
    if-eqz v3, :cond_2

    .line 88
    .line 89
    invoke-virtual {v3}, Lcom/transsion/shorttv_pugc/bean/BannerData;->getImage()Lcom/transsion/shorttv_pugc/bean/Image;

    .line 90
    .line 91
    .line 92
    move-result-object v5

    .line 93
    if-eqz v5, :cond_2

    .line 94
    .line 95
    invoke-virtual {v5}, Lcom/transsion/shorttv_pugc/bean/Image;->getUrl()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v5

    .line 99
    if-nez v5, :cond_1

    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_1
    move-object v14, v5

    .line 103
    goto :goto_1

    .line 104
    :cond_2
    :goto_0
    move-object v14, v4

    .line 105
    :goto_1
    sget v15, Lcom/transsion/shorttv/R$color;->short_tv_module_04:I

    .line 106
    .line 107
    if-eqz v3, :cond_4

    .line 108
    .line 109
    invoke-virtual {v3}, Lcom/transsion/shorttv_pugc/bean/BannerData;->getImage()Lcom/transsion/shorttv_pugc/bean/Image;

    .line 110
    .line 111
    .line 112
    move-result-object v5

    .line 113
    if-eqz v5, :cond_4

    .line 114
    .line 115
    invoke-virtual {v5}, Lcom/transsion/shorttv_pugc/bean/Image;->getThumbnail()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v5

    .line 119
    if-nez v5, :cond_3

    .line 120
    .line 121
    goto :goto_2

    .line 122
    :cond_3
    move-object/from16 v18, v5

    .line 123
    .line 124
    goto :goto_3

    .line 125
    :cond_4
    :goto_2
    move-object/from16 v18, v4

    .line 126
    .line 127
    :goto_3
    const/16 v25, 0x1fb0

    .line 128
    .line 129
    const/16 v26, 0x0

    .line 130
    .line 131
    const/16 v16, 0x0

    .line 132
    .line 133
    const/16 v17, 0x0

    .line 134
    .line 135
    const/16 v19, 0x0

    .line 136
    .line 137
    const/16 v20, 0x0

    .line 138
    .line 139
    const/16 v21, 0x0

    .line 140
    .line 141
    const/16 v22, 0x0

    .line 142
    .line 143
    const/16 v23, 0x0

    .line 144
    .line 145
    const/16 v24, 0x0

    .line 146
    .line 147
    invoke-static/range {v11 .. v26}, Lis/b$a;->m(Lis/b$a;Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;IIZLjava/lang/String;ZZZZZIILjava/lang/Object;)V

    .line 148
    .line 149
    .line 150
    :goto_4
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/shorttv_pugc/ui/adapter/b;->f()Lqr/e0;

    .line 151
    .line 152
    .line 153
    move-result-object v4

    .line 154
    iget-object v4, v4, Lqr/e0;->d:Landroidx/appcompat/widget/AppCompatTextView;

    .line 155
    .line 156
    if-eqz v3, :cond_5

    .line 157
    .line 158
    invoke-virtual {v3}, Lcom/transsion/shorttv_pugc/bean/BannerData;->getContent()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v2

    .line 162
    :cond_5
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/shorttv_pugc/ui/adapter/b;->f()Lqr/e0;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    iget-object v1, v1, Lqr/e0;->c:Landroidx/appcompat/widget/AppCompatImageView;

    .line 170
    .line 171
    const-string v2, "ivPlay"

    .line 172
    .line 173
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    const/4 v2, 0x0

    .line 177
    if-eqz v3, :cond_6

    .line 178
    .line 179
    invoke-virtual {v3}, Lcom/transsion/shorttv_pugc/bean/BannerData;->getHasResource()Ljava/lang/Boolean;

    .line 180
    .line 181
    .line 182
    move-result-object v3

    .line 183
    if-eqz v3, :cond_6

    .line 184
    .line 185
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 186
    .line 187
    .line 188
    move-result v3

    .line 189
    goto :goto_5

    .line 190
    :cond_6
    move v3, v2

    .line 191
    :goto_5
    if-eqz v3, :cond_7

    .line 192
    .line 193
    goto :goto_6

    .line 194
    :cond_7
    const/16 v2, 0x8

    .line 195
    .line 196
    :goto_6
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 197
    .line 198
    .line 199
    return-void
.end method

.method public j(Landroid/view/ViewGroup;I)Lcom/transsion/shorttv_pugc/ui/adapter/b;
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
    sget v0, Lcom/transsion/shorttv/R$layout;->short_tv_item_banner:I

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
    new-instance p2, Lcom/transsion/shorttv_pugc/ui/adapter/b;

    .line 22
    .line 23
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    invoke-direct {p2, p1}, Lcom/transsion/shorttv_pugc/ui/adapter/b;-><init>(Landroid/view/View;)V

    .line 27
    .line 28
    .line 29
    return-object p2
.end method

.method public final k(Lkotlin/jvm/functions/Function3;)V
    .locals 1

    .line 1
    const-string v0, "listener"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/transsion/shorttv_pugc/ui/adapter/ShortTVBannerAdapter;->b:Lkotlin/jvm/functions/Function3;

    .line 7
    .line 8
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$a0;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/transsion/shorttv_pugc/ui/adapter/b;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/transsion/shorttv_pugc/ui/adapter/ShortTVBannerAdapter;->h(Lcom/transsion/shorttv_pugc/ui/adapter/b;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$a0;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/transsion/shorttv_pugc/ui/adapter/ShortTVBannerAdapter;->j(Landroid/view/ViewGroup;I)Lcom/transsion/shorttv_pugc/ui/adapter/b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public final setData(Ljava/util/List;)V
    .locals 1

    .line 1
    const-string v0, "list"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/adapter/ShortTVBannerAdapter;->a:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/adapter/ShortTVBannerAdapter;->a:Ljava/util/List;

    .line 12
    .line 13
    check-cast p1, Ljava/util/Collection;

    .line 14
    .line 15
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 19
    .line 20
    .line 21
    return-void
.end method
