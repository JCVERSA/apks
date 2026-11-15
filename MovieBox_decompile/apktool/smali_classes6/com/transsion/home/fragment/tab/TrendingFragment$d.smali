.class public final Lcom/transsion/home/fragment/tab/TrendingFragment$d;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/transsion/wrapperad/view/secondfloor/CustomSwipeRefreshLayout$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/home/fragment/tab/TrendingFragment;->initAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/home/fragment/tab/TrendingFragment;


# direct methods
.method constructor <init>(Lcom/transsion/home/fragment/tab/TrendingFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/home/fragment/tab/TrendingFragment$d;->a:Lcom/transsion/home/fragment/tab/TrendingFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic b(Lcom/transsion/home/fragment/tab/TrendingFragment;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/home/fragment/tab/TrendingFragment$d;->d(Lcom/transsion/home/fragment/tab/TrendingFragment;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c(Lcom/transsion/home/fragment/tab/TrendingFragment;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/home/fragment/tab/TrendingFragment$d;->e(Lcom/transsion/home/fragment/tab/TrendingFragment;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final d(Lcom/transsion/home/fragment/tab/TrendingFragment;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/transsion/home/fragment/tab/TrendingFragment;->c0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final e(Lcom/transsion/home/fragment/tab/TrendingFragment;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/transsion/home/fragment/tab/TrendingFragment;->c0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;FF)V
    .locals 6

    .line 1
    const-string v0, "action"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "DOWN"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const/4 v2, 0x0

    .line 13
    const/4 v3, 0x0

    .line 14
    if-eqz v1, :cond_2

    .line 15
    .line 16
    iget-object v1, p0, Lcom/transsion/home/fragment/tab/TrendingFragment$d;->a:Lcom/transsion/home/fragment/tab/TrendingFragment;

    .line 17
    .line 18
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    instance-of v5, v4, Lcom/transsion/baseui/activity/BaseActivity;

    .line 23
    .line 24
    if-eqz v5, :cond_0

    .line 25
    .line 26
    check-cast v4, Lcom/transsion/baseui/activity/BaseActivity;

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move-object v4, v2

    .line 30
    :goto_0
    if-eqz v4, :cond_1

    .line 31
    .line 32
    invoke-virtual {v4}, Lcom/transsion/baseui/activity/BaseActivity;->hasAd()Z

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    move v4, v3

    .line 38
    :goto_1
    invoke-static {v1, v4}, Lcom/transsion/home/fragment/tab/TrendingFragment;->d1(Lcom/transsion/home/fragment/tab/TrendingFragment;Z)V

    .line 39
    .line 40
    .line 41
    :cond_2
    iget-object v1, p0, Lcom/transsion/home/fragment/tab/TrendingFragment$d;->a:Lcom/transsion/home/fragment/tab/TrendingFragment;

    .line 42
    .line 43
    invoke-static {v1}, Lcom/transsion/home/fragment/tab/TrendingFragment;->T0(Lcom/transsion/home/fragment/tab/TrendingFragment;)Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-nez v1, :cond_5

    .line 48
    .line 49
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    if-eqz p1, :cond_3

    .line 54
    .line 55
    iget-object p1, p0, Lcom/transsion/home/fragment/tab/TrendingFragment$d;->a:Lcom/transsion/home/fragment/tab/TrendingFragment;

    .line 56
    .line 57
    invoke-virtual {p1}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    check-cast p1, Lqk/x;

    .line 62
    .line 63
    if-eqz p1, :cond_3

    .line 64
    .line 65
    iget-object p1, p1, Lqk/x;->e:Lcom/transsion/wrapperad/view/secondfloor/CustomSwipeRefreshLayout;

    .line 66
    .line 67
    if-eqz p1, :cond_3

    .line 68
    .line 69
    iget-object p2, p0, Lcom/transsion/home/fragment/tab/TrendingFragment$d;->a:Lcom/transsion/home/fragment/tab/TrendingFragment;

    .line 70
    .line 71
    invoke-static {p2}, Lcom/transsion/home/fragment/tab/TrendingFragment;->W0(Lcom/transsion/home/fragment/tab/TrendingFragment;)I

    .line 72
    .line 73
    .line 74
    move-result p2

    .line 75
    iget-object p3, p0, Lcom/transsion/home/fragment/tab/TrendingFragment$d;->a:Lcom/transsion/home/fragment/tab/TrendingFragment;

    .line 76
    .line 77
    invoke-static {p3}, Lcom/transsion/home/fragment/tab/TrendingFragment;->W0(Lcom/transsion/home/fragment/tab/TrendingFragment;)I

    .line 78
    .line 79
    .line 80
    move-result p3

    .line 81
    const/high16 v0, 0x42480000    # 50.0f

    .line 82
    .line 83
    invoke-static {v0}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    add-int/2addr p3, v0

    .line 88
    invoke-virtual {p1, v3, p2, p3}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setProgressViewOffset(ZII)V

    .line 89
    .line 90
    .line 91
    :cond_3
    iget-object p1, p0, Lcom/transsion/home/fragment/tab/TrendingFragment$d;->a:Lcom/transsion/home/fragment/tab/TrendingFragment;

    .line 92
    .line 93
    invoke-virtual {p1}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    check-cast p1, Lqk/x;

    .line 98
    .line 99
    if-eqz p1, :cond_4

    .line 100
    .line 101
    iget-object p1, p1, Lqk/x;->e:Lcom/transsion/wrapperad/view/secondfloor/CustomSwipeRefreshLayout;

    .line 102
    .line 103
    if-eqz p1, :cond_4

    .line 104
    .line 105
    const-string p2, "IDLE"

    .line 106
    .line 107
    invoke-virtual {p1, p2}, Lcom/transsion/wrapperad/view/secondfloor/CustomSwipeRefreshLayout;->setCurrentState(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    :cond_4
    return-void

    .line 111
    :cond_5
    iget-object v1, p0, Lcom/transsion/home/fragment/tab/TrendingFragment$d;->a:Lcom/transsion/home/fragment/tab/TrendingFragment;

    .line 112
    .line 113
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    instance-of v4, v1, Lcom/transsion/baseui/activity/BaseActivity;

    .line 118
    .line 119
    if-eqz v4, :cond_6

    .line 120
    .line 121
    move-object v2, v1

    .line 122
    check-cast v2, Lcom/transsion/baseui/activity/BaseActivity;

    .line 123
    .line 124
    :cond_6
    if-eqz v2, :cond_7

    .line 125
    .line 126
    invoke-virtual {v2, p1, p2, p3}, Lcom/transsion/baseui/activity/BaseActivity;->onAction(Ljava/lang/String;FF)V

    .line 127
    .line 128
    .line 129
    :cond_7
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 130
    .line 131
    .line 132
    move-result p2

    .line 133
    const p3, -0x558e5f9f

    .line 134
    .line 135
    .line 136
    const-wide/16 v1, 0x12c

    .line 137
    .line 138
    const/4 v4, 0x1

    .line 139
    if-eq p2, p3, :cond_e

    .line 140
    .line 141
    const/16 p3, 0xa9b

    .line 142
    .line 143
    if-eq p2, p3, :cond_d

    .line 144
    .line 145
    const p3, 0x201ca2

    .line 146
    .line 147
    .line 148
    if-eq p2, p3, :cond_b

    .line 149
    .line 150
    const p3, 0x6b7e1ebb

    .line 151
    .line 152
    .line 153
    if-eq p2, p3, :cond_8

    .line 154
    .line 155
    goto/16 :goto_2

    .line 156
    .line 157
    :cond_8
    const-string p2, "REFRESH"

    .line 158
    .line 159
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    move-result p1

    .line 163
    if-nez p1, :cond_9

    .line 164
    .line 165
    goto/16 :goto_2

    .line 166
    .line 167
    :cond_9
    iget-object p1, p0, Lcom/transsion/home/fragment/tab/TrendingFragment$d;->a:Lcom/transsion/home/fragment/tab/TrendingFragment;

    .line 168
    .line 169
    invoke-virtual {p1}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    check-cast p1, Lqk/x;

    .line 174
    .line 175
    if-eqz p1, :cond_a

    .line 176
    .line 177
    iget-object p1, p1, Lqk/x;->e:Lcom/transsion/wrapperad/view/secondfloor/CustomSwipeRefreshLayout;

    .line 178
    .line 179
    if-eqz p1, :cond_a

    .line 180
    .line 181
    invoke-virtual {p1, v4}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 182
    .line 183
    .line 184
    :cond_a
    iget-object p1, p0, Lcom/transsion/home/fragment/tab/TrendingFragment$d;->a:Lcom/transsion/home/fragment/tab/TrendingFragment;

    .line 185
    .line 186
    invoke-virtual {p1}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 187
    .line 188
    .line 189
    move-result-object p1

    .line 190
    check-cast p1, Lqk/x;

    .line 191
    .line 192
    if-eqz p1, :cond_11

    .line 193
    .line 194
    iget-object p1, p1, Lqk/x;->e:Lcom/transsion/wrapperad/view/secondfloor/CustomSwipeRefreshLayout;

    .line 195
    .line 196
    if-eqz p1, :cond_11

    .line 197
    .line 198
    iget-object p2, p0, Lcom/transsion/home/fragment/tab/TrendingFragment$d;->a:Lcom/transsion/home/fragment/tab/TrendingFragment;

    .line 199
    .line 200
    new-instance p3, Lcom/transsion/home/fragment/tab/s1;

    .line 201
    .line 202
    invoke-direct {p3, p2}, Lcom/transsion/home/fragment/tab/s1;-><init>(Lcom/transsion/home/fragment/tab/TrendingFragment;)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {p1, p3, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 206
    .line 207
    .line 208
    goto :goto_2

    .line 209
    :cond_b
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 210
    .line 211
    .line 212
    move-result p1

    .line 213
    if-nez p1, :cond_c

    .line 214
    .line 215
    goto :goto_2

    .line 216
    :cond_c
    iget-object p1, p0, Lcom/transsion/home/fragment/tab/TrendingFragment$d;->a:Lcom/transsion/home/fragment/tab/TrendingFragment;

    .line 217
    .line 218
    invoke-virtual {p1}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 219
    .line 220
    .line 221
    move-result-object p1

    .line 222
    check-cast p1, Lqk/x;

    .line 223
    .line 224
    if-eqz p1, :cond_11

    .line 225
    .line 226
    iget-object p1, p1, Lqk/x;->e:Lcom/transsion/wrapperad/view/secondfloor/CustomSwipeRefreshLayout;

    .line 227
    .line 228
    if-eqz p1, :cond_11

    .line 229
    .line 230
    const/16 p2, -0x258

    .line 231
    .line 232
    invoke-virtual {p1, v3, p2, p2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setProgressViewOffset(ZII)V

    .line 233
    .line 234
    .line 235
    goto :goto_2

    .line 236
    :cond_d
    const-string p2, "UP"

    .line 237
    .line 238
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 239
    .line 240
    .line 241
    goto :goto_2

    .line 242
    :cond_e
    const-string p2, "SECOND_FLOOR"

    .line 243
    .line 244
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 245
    .line 246
    .line 247
    move-result p1

    .line 248
    if-nez p1, :cond_f

    .line 249
    .line 250
    goto :goto_2

    .line 251
    :cond_f
    iget-object p1, p0, Lcom/transsion/home/fragment/tab/TrendingFragment$d;->a:Lcom/transsion/home/fragment/tab/TrendingFragment;

    .line 252
    .line 253
    invoke-virtual {p1}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 254
    .line 255
    .line 256
    move-result-object p1

    .line 257
    check-cast p1, Lqk/x;

    .line 258
    .line 259
    if-eqz p1, :cond_10

    .line 260
    .line 261
    iget-object p1, p1, Lqk/x;->e:Lcom/transsion/wrapperad/view/secondfloor/CustomSwipeRefreshLayout;

    .line 262
    .line 263
    if-eqz p1, :cond_10

    .line 264
    .line 265
    invoke-virtual {p1, v4}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 266
    .line 267
    .line 268
    :cond_10
    iget-object p1, p0, Lcom/transsion/home/fragment/tab/TrendingFragment$d;->a:Lcom/transsion/home/fragment/tab/TrendingFragment;

    .line 269
    .line 270
    invoke-virtual {p1}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 271
    .line 272
    .line 273
    move-result-object p1

    .line 274
    check-cast p1, Lqk/x;

    .line 275
    .line 276
    if-eqz p1, :cond_11

    .line 277
    .line 278
    iget-object p1, p1, Lqk/x;->e:Lcom/transsion/wrapperad/view/secondfloor/CustomSwipeRefreshLayout;

    .line 279
    .line 280
    if-eqz p1, :cond_11

    .line 281
    .line 282
    iget-object p2, p0, Lcom/transsion/home/fragment/tab/TrendingFragment$d;->a:Lcom/transsion/home/fragment/tab/TrendingFragment;

    .line 283
    .line 284
    new-instance p3, Lcom/transsion/home/fragment/tab/t1;

    .line 285
    .line 286
    invoke-direct {p3, p2}, Lcom/transsion/home/fragment/tab/t1;-><init>(Lcom/transsion/home/fragment/tab/TrendingFragment;)V

    .line 287
    .line 288
    .line 289
    invoke-virtual {p1, p3, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 290
    .line 291
    .line 292
    :cond_11
    :goto_2
    return-void
.end method
