.class public final Lvp/c;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lf4/a;


# instance fields
.field private final a:Landroidx/core/widget/NestedScrollView;

.field public final b:Lcom/transsion/search/ad/SearchHotAdContainerView;

.field public final c:Landroidx/recyclerview/widget/RecyclerView;

.field public final d:Landroidx/cardview/widget/CardView;

.field public final e:Landroid/widget/ProgressBar;

.field public final f:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final g:Landroidx/recyclerview/widget/RecyclerView;

.field public final h:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final i:Landroid/widget/ImageView;

.field public final j:Landroid/widget/TextView;

.field public final k:Landroid/view/View;

.field public final l:Lnet/lucode/hackware/magicindicator/MagicIndicator;

.field public final m:Landroid/widget/ImageView;

.field public final n:Landroid/widget/RelativeLayout;

.field public final o:Landroidx/viewpager2/widget/ViewPager2;

.field public final p:Landroidx/core/widget/NestedScrollView;

.field public final q:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroidx/core/widget/NestedScrollView;Lcom/transsion/search/ad/SearchHotAdContainerView;Landroidx/recyclerview/widget/RecyclerView;Landroidx/cardview/widget/CardView;Landroid/widget/ProgressBar;Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/recyclerview/widget/RecyclerView;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/view/View;Lnet/lucode/hackware/magicindicator/MagicIndicator;Landroid/widget/ImageView;Landroid/widget/RelativeLayout;Landroidx/viewpager2/widget/ViewPager2;Landroidx/core/widget/NestedScrollView;Landroid/widget/TextView;)V
    .locals 2

    .line 1
    move-object v0, p0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    .line 4
    .line 5
    move-object v1, p1

    .line 6
    iput-object v1, v0, Lvp/c;->a:Landroidx/core/widget/NestedScrollView;

    .line 7
    .line 8
    move-object v1, p2

    .line 9
    iput-object v1, v0, Lvp/c;->b:Lcom/transsion/search/ad/SearchHotAdContainerView;

    .line 10
    .line 11
    move-object v1, p3

    .line 12
    iput-object v1, v0, Lvp/c;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 13
    .line 14
    move-object v1, p4

    .line 15
    iput-object v1, v0, Lvp/c;->d:Landroidx/cardview/widget/CardView;

    .line 16
    .line 17
    move-object v1, p5

    .line 18
    iput-object v1, v0, Lvp/c;->e:Landroid/widget/ProgressBar;

    .line 19
    .line 20
    move-object v1, p6

    .line 21
    iput-object v1, v0, Lvp/c;->f:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 22
    .line 23
    move-object v1, p7

    .line 24
    iput-object v1, v0, Lvp/c;->g:Landroidx/recyclerview/widget/RecyclerView;

    .line 25
    .line 26
    move-object v1, p8

    .line 27
    iput-object v1, v0, Lvp/c;->h:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 28
    .line 29
    move-object v1, p9

    .line 30
    iput-object v1, v0, Lvp/c;->i:Landroid/widget/ImageView;

    .line 31
    .line 32
    move-object v1, p10

    .line 33
    iput-object v1, v0, Lvp/c;->j:Landroid/widget/TextView;

    .line 34
    .line 35
    move-object v1, p11

    .line 36
    iput-object v1, v0, Lvp/c;->k:Landroid/view/View;

    .line 37
    .line 38
    move-object v1, p12

    .line 39
    iput-object v1, v0, Lvp/c;->l:Lnet/lucode/hackware/magicindicator/MagicIndicator;

    .line 40
    .line 41
    move-object v1, p13

    .line 42
    iput-object v1, v0, Lvp/c;->m:Landroid/widget/ImageView;

    .line 43
    .line 44
    move-object/from16 v1, p14

    .line 45
    .line 46
    iput-object v1, v0, Lvp/c;->n:Landroid/widget/RelativeLayout;

    .line 47
    .line 48
    move-object/from16 v1, p15

    .line 49
    .line 50
    iput-object v1, v0, Lvp/c;->o:Landroidx/viewpager2/widget/ViewPager2;

    .line 51
    .line 52
    move-object/from16 v1, p16

    .line 53
    .line 54
    iput-object v1, v0, Lvp/c;->p:Landroidx/core/widget/NestedScrollView;

    .line 55
    .line 56
    move-object/from16 v1, p17

    .line 57
    .line 58
    iput-object v1, v0, Lvp/c;->q:Landroid/widget/TextView;

    .line 59
    .line 60
    return-void
.end method

.method public static a(Landroid/view/View;)Lvp/c;
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    sget v1, Lcom/transsion/search/R$id;->ad_container_view:I

    .line 4
    .line 5
    invoke-static {v0, v1}, Lf4/b;->a(Landroid/view/View;I)Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    move-object v5, v2

    .line 10
    check-cast v5, Lcom/transsion/search/ad/SearchHotAdContainerView;

    .line 11
    .line 12
    if-eqz v5, :cond_0

    .line 13
    .line 14
    sget v1, Lcom/transsion/search/R$id;->everyone_search_rv:I

    .line 15
    .line 16
    invoke-static {v0, v1}, Lf4/b;->a(Landroid/view/View;I)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    move-object v6, v2

    .line 21
    check-cast v6, Landroidx/recyclerview/widget/RecyclerView;

    .line 22
    .line 23
    if-eqz v6, :cond_0

    .line 24
    .line 25
    sget v1, Lcom/transsion/search/R$id;->native_ad_container:I

    .line 26
    .line 27
    invoke-static {v0, v1}, Lf4/b;->a(Landroid/view/View;I)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    move-object v7, v2

    .line 32
    check-cast v7, Landroidx/cardview/widget/CardView;

    .line 33
    .line 34
    if-eqz v7, :cond_0

    .line 35
    .line 36
    sget v1, Lcom/transsion/search/R$id;->progress_bar:I

    .line 37
    .line 38
    invoke-static {v0, v1}, Lf4/b;->a(Landroid/view/View;I)Landroid/view/View;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    move-object v8, v2

    .line 43
    check-cast v8, Landroid/widget/ProgressBar;

    .line 44
    .line 45
    if-eqz v8, :cond_0

    .line 46
    .line 47
    sget v1, Lcom/transsion/search/R$id;->rl_tips:I

    .line 48
    .line 49
    invoke-static {v0, v1}, Lf4/b;->a(Landroid/view/View;I)Landroid/view/View;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    move-object v9, v2

    .line 54
    check-cast v9, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 55
    .line 56
    if-eqz v9, :cond_0

    .line 57
    .line 58
    sget v1, Lcom/transsion/search/R$id;->rv_history:I

    .line 59
    .line 60
    invoke-static {v0, v1}, Lf4/b;->a(Landroid/view/View;I)Landroid/view/View;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    move-object v10, v2

    .line 65
    check-cast v10, Landroidx/recyclerview/widget/RecyclerView;

    .line 66
    .line 67
    if-eqz v10, :cond_0

    .line 68
    .line 69
    sget v1, Lcom/transsion/search/R$id;->search_hot_everyone_linear:I

    .line 70
    .line 71
    invoke-static {v0, v1}, Lf4/b;->a(Landroid/view/View;I)Landroid/view/View;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    move-object v11, v2

    .line 76
    check-cast v11, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 77
    .line 78
    if-eqz v11, :cond_0

    .line 79
    .line 80
    sget v1, Lcom/transsion/search/R$id;->search_hot_everyone_title_image:I

    .line 81
    .line 82
    invoke-static {v0, v1}, Lf4/b;->a(Landroid/view/View;I)Landroid/view/View;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    move-object v12, v2

    .line 87
    check-cast v12, Landroid/widget/ImageView;

    .line 88
    .line 89
    if-eqz v12, :cond_0

    .line 90
    .line 91
    sget v1, Lcom/transsion/search/R$id;->search_hot_everyone_title_text:I

    .line 92
    .line 93
    invoke-static {v0, v1}, Lf4/b;->a(Landroid/view/View;I)Landroid/view/View;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    move-object v13, v2

    .line 98
    check-cast v13, Landroid/widget/TextView;

    .line 99
    .line 100
    if-eqz v13, :cond_0

    .line 101
    .line 102
    sget v1, Lcom/transsion/search/R$id;->search_hot_rank_indicator_linear:I

    .line 103
    .line 104
    invoke-static {v0, v1}, Lf4/b;->a(Landroid/view/View;I)Landroid/view/View;

    .line 105
    .line 106
    .line 107
    move-result-object v14

    .line 108
    if-eqz v14, :cond_0

    .line 109
    .line 110
    sget v1, Lcom/transsion/search/R$id;->search_hot_rank_magic_indicator:I

    .line 111
    .line 112
    invoke-static {v0, v1}, Lf4/b;->a(Landroid/view/View;I)Landroid/view/View;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    move-object v15, v2

    .line 117
    check-cast v15, Lnet/lucode/hackware/magicindicator/MagicIndicator;

    .line 118
    .line 119
    if-eqz v15, :cond_0

    .line 120
    .line 121
    sget v1, Lcom/transsion/search/R$id;->search_hot_rank_magic_indicator_image:I

    .line 122
    .line 123
    invoke-static {v0, v1}, Lf4/b;->a(Landroid/view/View;I)Landroid/view/View;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    move-object/from16 v16, v2

    .line 128
    .line 129
    check-cast v16, Landroid/widget/ImageView;

    .line 130
    .line 131
    if-eqz v16, :cond_0

    .line 132
    .line 133
    sget v1, Lcom/transsion/search/R$id;->search_hot_rank_magic_indicator_ll:I

    .line 134
    .line 135
    invoke-static {v0, v1}, Lf4/b;->a(Landroid/view/View;I)Landroid/view/View;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    move-object/from16 v17, v2

    .line 140
    .line 141
    check-cast v17, Landroid/widget/RelativeLayout;

    .line 142
    .line 143
    if-eqz v17, :cond_0

    .line 144
    .line 145
    sget v1, Lcom/transsion/search/R$id;->search_hot_rank_view_pager:I

    .line 146
    .line 147
    invoke-static {v0, v1}, Lf4/b;->a(Landroid/view/View;I)Landroid/view/View;

    .line 148
    .line 149
    .line 150
    move-result-object v2

    .line 151
    move-object/from16 v18, v2

    .line 152
    .line 153
    check-cast v18, Landroidx/viewpager2/widget/ViewPager2;

    .line 154
    .line 155
    if-eqz v18, :cond_0

    .line 156
    .line 157
    move-object/from16 v19, v0

    .line 158
    .line 159
    check-cast v19, Landroidx/core/widget/NestedScrollView;

    .line 160
    .line 161
    sget v1, Lcom/transsion/search/R$id;->tv_clear:I

    .line 162
    .line 163
    invoke-static {v0, v1}, Lf4/b;->a(Landroid/view/View;I)Landroid/view/View;

    .line 164
    .line 165
    .line 166
    move-result-object v2

    .line 167
    move-object/from16 v20, v2

    .line 168
    .line 169
    check-cast v20, Landroid/widget/TextView;

    .line 170
    .line 171
    if-eqz v20, :cond_0

    .line 172
    .line 173
    new-instance v0, Lvp/c;

    .line 174
    .line 175
    move-object v3, v0

    .line 176
    move-object/from16 v4, v19

    .line 177
    .line 178
    invoke-direct/range {v3 .. v20}, Lvp/c;-><init>(Landroidx/core/widget/NestedScrollView;Lcom/transsion/search/ad/SearchHotAdContainerView;Landroidx/recyclerview/widget/RecyclerView;Landroidx/cardview/widget/CardView;Landroid/widget/ProgressBar;Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/recyclerview/widget/RecyclerView;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/view/View;Lnet/lucode/hackware/magicindicator/MagicIndicator;Landroid/widget/ImageView;Landroid/widget/RelativeLayout;Landroidx/viewpager2/widget/ViewPager2;Landroidx/core/widget/NestedScrollView;Landroid/widget/TextView;)V

    .line 179
    .line 180
    .line 181
    return-object v0

    .line 182
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    new-instance v1, Ljava/lang/NullPointerException;

    .line 191
    .line 192
    const-string v2, "Missing required view with ID: "

    .line 193
    .line 194
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    throw v1
.end method

.method public static c(Landroid/view/LayoutInflater;)Lvp/c;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-static {p0, v0, v1}, Lvp/c;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lvp/c;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lvp/c;
    .locals 2

    .line 1
    sget v0, Lcom/transsion/search/R$layout;->fragment_hot_search:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    if-eqz p2, :cond_0

    .line 9
    .line 10
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-static {p0}, Lvp/c;->a(Landroid/view/View;)Lvp/c;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method


# virtual methods
.method public b()Landroidx/core/widget/NestedScrollView;
    .locals 1

    .line 1
    iget-object v0, p0, Lvp/c;->a:Landroidx/core/widget/NestedScrollView;

    .line 2
    .line 3
    return-object v0
.end method

.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lvp/c;->b()Landroidx/core/widget/NestedScrollView;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
