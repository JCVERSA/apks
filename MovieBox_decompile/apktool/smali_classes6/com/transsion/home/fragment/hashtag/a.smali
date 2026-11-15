.class final Lcom/transsion/home/fragment/hashtag/a;
.super Landroidx/recyclerview/widget/RecyclerView$l;
.source "source.java"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$l;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/transsion/home/fragment/hashtag/a;->a:I

    .line 5
    .line 6
    iput p2, p0, Lcom/transsion/home/fragment/hashtag/a;->b:I

    .line 7
    .line 8
    iput p3, p0, Lcom/transsion/home/fragment/hashtag/a;->c:I

    .line 9
    .line 10
    iput p4, p0, Lcom/transsion/home/fragment/hashtag/a;->d:I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$x;)V
    .locals 5

    .line 1
    const-string v0, "outRect"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "view"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "parent"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "state"

    .line 17
    .line 18
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$l;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$x;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    .line 25
    .line 26
    .line 27
    move-result p4

    .line 28
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$m;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    instance-of v1, v0, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 33
    .line 34
    const/4 v2, 0x0

    .line 35
    if-eqz v1, :cond_b

    .line 36
    .line 37
    check-cast v0, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 38
    .line 39
    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager;->U()I

    .line 40
    .line 41
    .line 42
    move-result p2

    .line 43
    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager;->Y()Landroidx/recyclerview/widget/GridLayoutManager$c;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v0, p4, p2}, Landroidx/recyclerview/widget/GridLayoutManager$c;->e(II)I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-static {v1}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    const/4 v3, 0x1

    .line 60
    if-ne v1, v3, :cond_0

    .line 61
    .line 62
    move v1, v3

    .line 63
    goto :goto_0

    .line 64
    :cond_0
    move v1, v2

    .line 65
    :goto_0
    if-nez v0, :cond_2

    .line 66
    .line 67
    if-eqz v1, :cond_1

    .line 68
    .line 69
    iget v0, p0, Lcom/transsion/home/fragment/hashtag/a;->b:I

    .line 70
    .line 71
    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 72
    .line 73
    iget v0, p0, Lcom/transsion/home/fragment/hashtag/a;->a:I

    .line 74
    .line 75
    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_1
    iget v0, p0, Lcom/transsion/home/fragment/hashtag/a;->a:I

    .line 79
    .line 80
    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 81
    .line 82
    iget v0, p0, Lcom/transsion/home/fragment/hashtag/a;->b:I

    .line 83
    .line 84
    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_2
    add-int/lit8 v4, p2, -0x1

    .line 88
    .line 89
    if-ne v0, v4, :cond_4

    .line 90
    .line 91
    if-eqz v1, :cond_3

    .line 92
    .line 93
    iget v0, p0, Lcom/transsion/home/fragment/hashtag/a;->a:I

    .line 94
    .line 95
    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 96
    .line 97
    iget v0, p0, Lcom/transsion/home/fragment/hashtag/a;->b:I

    .line 98
    .line 99
    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_3
    iget v0, p0, Lcom/transsion/home/fragment/hashtag/a;->b:I

    .line 103
    .line 104
    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 105
    .line 106
    iget v0, p0, Lcom/transsion/home/fragment/hashtag/a;->a:I

    .line 107
    .line 108
    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_4
    iget v0, p0, Lcom/transsion/home/fragment/hashtag/a;->b:I

    .line 112
    .line 113
    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 114
    .line 115
    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 116
    .line 117
    :goto_1
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 118
    .line 119
    .line 120
    move-result-object p3

    .line 121
    if-eqz p3, :cond_5

    .line 122
    .line 123
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    goto :goto_2

    .line 128
    :cond_5
    move v0, v2

    .line 129
    :goto_2
    instance-of p3, p3, Lcom/chad/library/adapter/base/BaseQuickAdapter;

    .line 130
    .line 131
    if-eqz p3, :cond_7

    .line 132
    .line 133
    if-nez p4, :cond_6

    .line 134
    .line 135
    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 136
    .line 137
    iput v2, p1, Landroid/graphics/Rect;->right:I

    .line 138
    .line 139
    iput v2, p1, Landroid/graphics/Rect;->top:I

    .line 140
    .line 141
    iget p2, p0, Lcom/transsion/home/fragment/hashtag/a;->d:I

    .line 142
    .line 143
    div-int/lit8 p2, p2, 0x2

    .line 144
    .line 145
    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    .line 146
    .line 147
    return-void

    .line 148
    :cond_6
    add-int/lit8 p4, p4, -0x1

    .line 149
    .line 150
    :cond_7
    div-int p3, v0, p2

    .line 151
    .line 152
    rem-int/2addr v0, p2

    .line 153
    if-eqz v0, :cond_8

    .line 154
    .line 155
    move v0, v3

    .line 156
    goto :goto_3

    .line 157
    :cond_8
    move v0, v2

    .line 158
    :goto_3
    add-int/2addr p3, v0

    .line 159
    div-int/2addr p4, p2

    .line 160
    if-nez p4, :cond_9

    .line 161
    .line 162
    iput v2, p1, Landroid/graphics/Rect;->top:I

    .line 163
    .line 164
    iget p2, p0, Lcom/transsion/home/fragment/hashtag/a;->d:I

    .line 165
    .line 166
    div-int/lit8 p2, p2, 0x2

    .line 167
    .line 168
    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    .line 169
    .line 170
    goto :goto_4

    .line 171
    :cond_9
    sub-int/2addr p3, v3

    .line 172
    if-ne p4, p3, :cond_a

    .line 173
    .line 174
    iget p2, p0, Lcom/transsion/home/fragment/hashtag/a;->c:I

    .line 175
    .line 176
    div-int/lit8 p2, p2, 0x2

    .line 177
    .line 178
    iput p2, p1, Landroid/graphics/Rect;->top:I

    .line 179
    .line 180
    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    .line 181
    .line 182
    goto :goto_4

    .line 183
    :cond_a
    iget p2, p0, Lcom/transsion/home/fragment/hashtag/a;->c:I

    .line 184
    .line 185
    div-int/lit8 p2, p2, 0x2

    .line 186
    .line 187
    iput p2, p1, Landroid/graphics/Rect;->top:I

    .line 188
    .line 189
    iget p2, p0, Lcom/transsion/home/fragment/hashtag/a;->d:I

    .line 190
    .line 191
    div-int/lit8 p2, p2, 0x2

    .line 192
    .line 193
    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    .line 194
    .line 195
    goto :goto_4

    .line 196
    :cond_b
    instance-of p3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 197
    .line 198
    if-eqz p3, :cond_e

    .line 199
    .line 200
    check-cast v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 201
    .line 202
    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->Q()I

    .line 203
    .line 204
    .line 205
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 206
    .line 207
    .line 208
    move-result-object p2

    .line 209
    const-string p3, "null cannot be cast to non-null type androidx.recyclerview.widget.StaggeredGridLayoutManager.LayoutParams"

    .line 210
    .line 211
    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    check-cast p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;

    .line 215
    .line 216
    invoke-virtual {p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->a()I

    .line 217
    .line 218
    .line 219
    move-result p2

    .line 220
    if-nez p4, :cond_c

    .line 221
    .line 222
    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 223
    .line 224
    iput v2, p1, Landroid/graphics/Rect;->right:I

    .line 225
    .line 226
    goto :goto_4

    .line 227
    :cond_c
    const/high16 p3, 0x41800000    # 16.0f

    .line 228
    .line 229
    invoke-static {p3}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 230
    .line 231
    .line 232
    move-result p3

    .line 233
    iput p3, p1, Landroid/graphics/Rect;->bottom:I

    .line 234
    .line 235
    if-nez p2, :cond_d

    .line 236
    .line 237
    iget p2, p0, Lcom/transsion/home/fragment/hashtag/a;->a:I

    .line 238
    .line 239
    iput p2, p1, Landroid/graphics/Rect;->left:I

    .line 240
    .line 241
    iget p2, p0, Lcom/transsion/home/fragment/hashtag/a;->b:I

    .line 242
    .line 243
    iput p2, p1, Landroid/graphics/Rect;->right:I

    .line 244
    .line 245
    goto :goto_4

    .line 246
    :cond_d
    iget p2, p0, Lcom/transsion/home/fragment/hashtag/a;->b:I

    .line 247
    .line 248
    iput p2, p1, Landroid/graphics/Rect;->left:I

    .line 249
    .line 250
    iget p2, p0, Lcom/transsion/home/fragment/hashtag/a;->a:I

    .line 251
    .line 252
    iput p2, p1, Landroid/graphics/Rect;->right:I

    .line 253
    .line 254
    :cond_e
    :goto_4
    return-void
.end method
