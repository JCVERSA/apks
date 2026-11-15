.class public final Lcom/transsion/postdetail/layer/a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/postdetail/layer/a$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "LayerManager"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/transsion/postdetail/layer/a;->a:Ljava/lang/String;

    .line 7
    .line 8
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/transsion/postdetail/layer/a;->b:Ljava/util/List;

    .line 14
    .line 15
    return-void
.end method

.method public static final varargs synthetic a(Lcom/transsion/postdetail/layer/a;Lcom/transsion/postdetail/layer/BaseLayer;Lcom/transsion/postdetail/layer/listener/LayerFlag;[Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/postdetail/layer/a;->i(Lcom/transsion/postdetail/layer/BaseLayer;Lcom/transsion/postdetail/layer/listener/LayerFlag;[Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final varargs synthetic b(Lcom/transsion/postdetail/layer/a;Lzn/d;Lcom/transsion/postdetail/layer/listener/LayerFlag;[Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/postdetail/layer/a;->j(Lzn/d;Lcom/transsion/postdetail/layer/listener/LayerFlag;[Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final varargs synthetic c(Lcom/transsion/postdetail/layer/a;Lcom/transsion/player/orplayer/e;Lcom/transsion/postdetail/layer/listener/LayerFlag;[Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/postdetail/layer/a;->k(Lcom/transsion/player/orplayer/e;Lcom/transsion/postdetail/layer/listener/LayerFlag;[Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final f(Lzn/a;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/layer/a;->b:Ljava/util/List;

    .line 2
    .line 3
    check-cast v0, Ljava/util/Collection;

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_2

    .line 10
    .line 11
    iget-object v0, p0, Lcom/transsion/postdetail/layer/a;->b:Ljava/util/List;

    .line 12
    .line 13
    check-cast v0, Ljava/lang/Iterable;

    .line 14
    .line 15
    new-instance v1, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_1

    .line 29
    .line 30
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    move-object v3, v2

    .line 35
    check-cast v3, Lcom/transsion/postdetail/layer/BaseLayer;

    .line 36
    .line 37
    invoke-interface {p1, v3}, Lzn/a;->a(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-eqz v3, :cond_0

    .line 42
    .line 43
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-eqz v1, :cond_2

    .line 56
    .line 57
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    check-cast v1, Lcom/transsion/postdetail/layer/BaseLayer;

    .line 62
    .line 63
    :try_start_0
    invoke-interface {p1, v1}, Lzn/a;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    .line 65
    .line 66
    goto :goto_1

    .line 67
    :catch_0
    move-exception v1

    .line 68
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 69
    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_2
    return-void
.end method

.method private final varargs i(Lcom/transsion/postdetail/layer/BaseLayer;Lcom/transsion/postdetail/layer/listener/LayerFlag;[Ljava/lang/Object;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/transsion/postdetail/layer/a$a;->a:[I

    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    aget p2, v0, p2

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    const/4 v1, 0x2

    .line 11
    const/4 v2, 0x1

    .line 12
    if-eq p2, v2, :cond_2

    .line 13
    .line 14
    if-eq p2, v1, :cond_1

    .line 15
    .line 16
    const/4 v1, 0x3

    .line 17
    if-eq p2, v1, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    array-length p2, p3

    .line 21
    if-ne p2, v2, :cond_3

    .line 22
    .line 23
    aget-object p2, p3, v0

    .line 24
    .line 25
    const-string p3, "null cannot be cast to non-null type com.transsion.postdetail.layer.LayerManager"

    .line 26
    .line 27
    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    check-cast p2, Lcom/transsion/postdetail/layer/a;

    .line 31
    .line 32
    invoke-virtual {p1, p2}, Lcom/transsion/postdetail/layer/BaseLayer;->L(Lcom/transsion/postdetail/layer/a;)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    array-length p2, p3

    .line 37
    if-ne p2, v1, :cond_3

    .line 38
    .line 39
    aget-object p2, p3, v0

    .line 40
    .line 41
    const-string v0, "null cannot be cast to non-null type kotlin.String"

    .line 42
    .line 43
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    check-cast p2, Ljava/lang/String;

    .line 47
    .line 48
    aget-object p3, p3, v2

    .line 49
    .line 50
    const-string v0, "null cannot be cast to non-null type com.transsion.moviedetailapi.bean.PostSubjectItem"

    .line 51
    .line 52
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    check-cast p3, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 56
    .line 57
    invoke-virtual {p1, p2, p3}, Lcom/transsion/postdetail/layer/BaseLayer;->N(Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_2
    array-length p2, p3

    .line 62
    if-ne p2, v1, :cond_3

    .line 63
    .line 64
    aget-object p2, p3, v0

    .line 65
    .line 66
    const-string v0, "null cannot be cast to non-null type com.transsion.player.orplayer.ORPlayer"

    .line 67
    .line 68
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    check-cast p2, Lcom/transsion/player/orplayer/f;

    .line 72
    .line 73
    aget-object p3, p3, v2

    .line 74
    .line 75
    const-string v0, "null cannot be cast to non-null type com.transsion.player.ui.ORPlayerView"

    .line 76
    .line 77
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    check-cast p3, Lcom/transsion/player/ui/ORPlayerView;

    .line 81
    .line 82
    invoke-virtual {p1, p2, p3}, Lcom/transsion/postdetail/layer/BaseLayer;->M(Lcom/transsion/player/orplayer/f;Lcom/transsion/player/ui/ORPlayerView;)V

    .line 83
    .line 84
    .line 85
    :cond_3
    :goto_0
    return-void
.end method

.method private final varargs j(Lzn/d;Lcom/transsion/postdetail/layer/listener/LayerFlag;[Ljava/lang/Object;)V
    .locals 12

    .line 1
    sget-object v2, Lcom/transsion/postdetail/layer/a$a;->a:[I

    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result v3

    .line 7
    aget v2, v2, v3

    .line 8
    .line 9
    const-string v3, "null cannot be cast to non-null type android.view.View"

    .line 10
    .line 11
    const/4 v4, 0x3

    .line 12
    const-string v5, "null cannot be cast to non-null type com.transsion.baselib.db.download.DownloadBean"

    .line 13
    .line 14
    const-string v6, "null cannot be cast to non-null type com.transsion.postdetail.layer.local.LocalUiType"

    .line 15
    .line 16
    const-string v7, "null cannot be cast to non-null type kotlin.Boolean"

    .line 17
    .line 18
    const/4 v8, 0x2

    .line 19
    const-string v9, "null cannot be cast to non-null type kotlin.String"

    .line 20
    .line 21
    const/4 v10, 0x1

    .line 22
    const/4 v11, 0x0

    .line 23
    packed-switch v2, :pswitch_data_0

    .line 24
    .line 25
    .line 26
    goto/16 :goto_0

    .line 27
    .line 28
    :pswitch_0
    invoke-interface {p1}, Lzn/d;->isVisible()Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-eqz v2, :cond_1

    .line 33
    .line 34
    invoke-static {p3}, Lkotlin/collections/ArraysKt;->U([Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    if-eqz v1, :cond_1

    .line 39
    .line 40
    instance-of v2, v1, Ljava/lang/Boolean;

    .line 41
    .line 42
    if-eqz v2, :cond_1

    .line 43
    .line 44
    check-cast v1, Ljava/lang/Boolean;

    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    invoke-interface {p1, v1}, Lzn/d;->j(Z)V

    .line 51
    .line 52
    .line 53
    goto/16 :goto_0

    .line 54
    .line 55
    :pswitch_1
    invoke-interface {p1}, Lzn/d;->isVisible()Z

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    if-eqz v2, :cond_1

    .line 60
    .line 61
    invoke-static {p3}, Lkotlin/collections/ArraysKt;->U([Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    if-eqz v1, :cond_1

    .line 66
    .line 67
    instance-of v2, v1, Ljava/lang/Boolean;

    .line 68
    .line 69
    if-eqz v2, :cond_1

    .line 70
    .line 71
    check-cast v1, Ljava/lang/Boolean;

    .line 72
    .line 73
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    invoke-interface {p1, v1}, Lzn/d;->u(Z)V

    .line 78
    .line 79
    .line 80
    goto/16 :goto_0

    .line 81
    .line 82
    :pswitch_2
    invoke-interface {p1}, Lzn/d;->isVisible()Z

    .line 83
    .line 84
    .line 85
    move-result v2

    .line 86
    if-eqz v2, :cond_1

    .line 87
    .line 88
    invoke-static {p3}, Lkotlin/collections/ArraysKt;->U([Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    if-eqz v1, :cond_1

    .line 93
    .line 94
    instance-of v2, v1, Lcom/transsion/videofloat/bean/FloatActionType;

    .line 95
    .line 96
    if-eqz v2, :cond_1

    .line 97
    .line 98
    check-cast v1, Lcom/transsion/videofloat/bean/FloatActionType;

    .line 99
    .line 100
    invoke-interface {p1, v1}, Lzn/d;->e(Lcom/transsion/videofloat/bean/FloatActionType;)Z

    .line 101
    .line 102
    .line 103
    goto/16 :goto_0

    .line 104
    .line 105
    :pswitch_3
    invoke-static {p3}, Lkotlin/collections/ArraysKt;->U([Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    if-eqz v1, :cond_1

    .line 110
    .line 111
    instance-of v2, v1, Ljava/lang/Integer;

    .line 112
    .line 113
    if-eqz v2, :cond_1

    .line 114
    .line 115
    check-cast v1, Ljava/lang/Number;

    .line 116
    .line 117
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 118
    .line 119
    .line 120
    move-result v1

    .line 121
    invoke-interface {p1, v1}, Lzn/d;->C(I)V

    .line 122
    .line 123
    .line 124
    goto/16 :goto_0

    .line 125
    .line 126
    :pswitch_4
    invoke-static {p3}, Lkotlin/collections/ArraysKt;->U([Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    if-eqz v1, :cond_1

    .line 131
    .line 132
    instance-of v2, v1, Ljava/lang/Float;

    .line 133
    .line 134
    if-eqz v2, :cond_1

    .line 135
    .line 136
    check-cast v1, Ljava/lang/Number;

    .line 137
    .line 138
    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    .line 139
    .line 140
    .line 141
    move-result v1

    .line 142
    invoke-interface {p1, v1}, Lzn/d;->p(F)V

    .line 143
    .line 144
    .line 145
    goto/16 :goto_0

    .line 146
    .line 147
    :pswitch_5
    invoke-interface {p1}, Lzn/d;->d()V

    .line 148
    .line 149
    .line 150
    goto/16 :goto_0

    .line 151
    .line 152
    :pswitch_6
    invoke-interface {p1}, Lzn/d;->isVisible()Z

    .line 153
    .line 154
    .line 155
    move-result v2

    .line 156
    if-eqz v2, :cond_1

    .line 157
    .line 158
    array-length v2, p3

    .line 159
    if-ne v2, v8, :cond_1

    .line 160
    .line 161
    aget-object v2, p3, v11

    .line 162
    .line 163
    invoke-static {v2, v9}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    check-cast v2, Ljava/lang/String;

    .line 167
    .line 168
    aget-object v1, p3, v10

    .line 169
    .line 170
    invoke-static {v1, v9}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    check-cast v1, Ljava/lang/String;

    .line 174
    .line 175
    invoke-interface {p1, v2, v1}, Lzn/d;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    goto/16 :goto_0

    .line 179
    .line 180
    :pswitch_7
    array-length v2, p3

    .line 181
    if-ne v2, v10, :cond_1

    .line 182
    .line 183
    aget-object v1, p3, v11

    .line 184
    .line 185
    const-string v2, "null cannot be cast to non-null type com.transsion.postdetail.layer.listener.SeriesEvent"

    .line 186
    .line 187
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    check-cast v1, Lzn/c;

    .line 191
    .line 192
    invoke-interface {p1, v1}, Lzn/d;->E(Lzn/c;)V

    .line 193
    .line 194
    .line 195
    goto/16 :goto_0

    .line 196
    .line 197
    :pswitch_8
    array-length v2, p3

    .line 198
    if-ne v2, v8, :cond_1

    .line 199
    .line 200
    aget-object v2, p3, v11

    .line 201
    .line 202
    invoke-static {v2, v9}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    check-cast v2, Ljava/lang/String;

    .line 206
    .line 207
    aget-object v1, p3, v10

    .line 208
    .line 209
    invoke-static {v1, v9}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    check-cast v1, Ljava/lang/String;

    .line 213
    .line 214
    invoke-interface {p1, v2, v1}, Lzn/d;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    goto/16 :goto_0

    .line 218
    .line 219
    :pswitch_9
    array-length v2, p3

    .line 220
    if-ne v2, v8, :cond_1

    .line 221
    .line 222
    aget-object v2, p3, v11

    .line 223
    .line 224
    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    check-cast v2, Ljava/lang/Boolean;

    .line 228
    .line 229
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 230
    .line 231
    .line 232
    move-result v2

    .line 233
    aget-object v1, p3, v10

    .line 234
    .line 235
    invoke-static {v1, v9}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    check-cast v1, Ljava/lang/String;

    .line 239
    .line 240
    invoke-interface {p1, v2, v1}, Lzn/d;->f(ZLjava/lang/String;)V

    .line 241
    .line 242
    .line 243
    goto/16 :goto_0

    .line 244
    .line 245
    :pswitch_a
    invoke-interface {p1}, Lzn/d;->g()V

    .line 246
    .line 247
    .line 248
    goto/16 :goto_0

    .line 249
    .line 250
    :pswitch_b
    array-length v2, p3

    .line 251
    if-ne v2, v10, :cond_1

    .line 252
    .line 253
    aget-object v1, p3, v11

    .line 254
    .line 255
    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 256
    .line 257
    .line 258
    check-cast v1, Ljava/lang/Boolean;

    .line 259
    .line 260
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 261
    .line 262
    .line 263
    move-result v1

    .line 264
    invoke-interface {p1, v1}, Lzn/d;->w(Z)V

    .line 265
    .line 266
    .line 267
    goto/16 :goto_0

    .line 268
    .line 269
    :pswitch_c
    invoke-interface {p1}, Lzn/d;->t()V

    .line 270
    .line 271
    .line 272
    goto/16 :goto_0

    .line 273
    .line 274
    :pswitch_d
    array-length v2, p3

    .line 275
    if-ne v2, v10, :cond_0

    .line 276
    .line 277
    aget-object v1, p3, v11

    .line 278
    .line 279
    invoke-static {v1, v9}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 280
    .line 281
    .line 282
    check-cast v1, Ljava/lang/String;

    .line 283
    .line 284
    const/4 v4, 0x2

    .line 285
    const/4 v5, 0x0

    .line 286
    const-wide/16 v2, 0x0

    .line 287
    .line 288
    move-object v0, p1

    .line 289
    invoke-static/range {v0 .. v5}, Lzn/d$a;->l(Lzn/d;Ljava/lang/String;JILjava/lang/Object;)V

    .line 290
    .line 291
    .line 292
    goto/16 :goto_0

    .line 293
    .line 294
    :cond_0
    array-length v2, p3

    .line 295
    if-ne v2, v8, :cond_1

    .line 296
    .line 297
    aget-object v2, p3, v11

    .line 298
    .line 299
    invoke-static {v2, v9}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 300
    .line 301
    .line 302
    check-cast v2, Ljava/lang/String;

    .line 303
    .line 304
    aget-object v1, p3, v10

    .line 305
    .line 306
    const-string v3, "null cannot be cast to non-null type kotlin.Long"

    .line 307
    .line 308
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 309
    .line 310
    .line 311
    check-cast v1, Ljava/lang/Long;

    .line 312
    .line 313
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 314
    .line 315
    .line 316
    move-result-wide v3

    .line 317
    invoke-interface {p1, v2, v3, v4}, Lzn/d;->i(Ljava/lang/String;J)V

    .line 318
    .line 319
    .line 320
    goto/16 :goto_0

    .line 321
    .line 322
    :pswitch_e
    array-length v2, p3

    .line 323
    if-ne v2, v10, :cond_1

    .line 324
    .line 325
    aget-object v1, p3, v11

    .line 326
    .line 327
    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 328
    .line 329
    .line 330
    check-cast v1, Lcom/transsion/baselib/db/download/DownloadBean;

    .line 331
    .line 332
    invoke-interface {p1, v1}, Lzn/d;->D(Lcom/transsion/baselib/db/download/DownloadBean;)V

    .line 333
    .line 334
    .line 335
    goto/16 :goto_0

    .line 336
    .line 337
    :pswitch_f
    array-length v2, p3

    .line 338
    if-ne v2, v10, :cond_1

    .line 339
    .line 340
    aget-object v1, p3, v11

    .line 341
    .line 342
    invoke-static {v1, v9}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 343
    .line 344
    .line 345
    check-cast v1, Ljava/lang/String;

    .line 346
    .line 347
    invoke-interface {p1, v1}, Lzn/d;->y(Ljava/lang/String;)V

    .line 348
    .line 349
    .line 350
    goto/16 :goto_0

    .line 351
    .line 352
    :pswitch_10
    array-length v2, p3

    .line 353
    if-ne v2, v10, :cond_1

    .line 354
    .line 355
    aget-object v1, p3, v11

    .line 356
    .line 357
    const-string v2, "null cannot be cast to non-null type kotlin.collections.MutableMap<kotlin.Int, kotlin.Int>"

    .line 358
    .line 359
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 360
    .line 361
    .line 362
    invoke-static {v1}, Lkotlin/jvm/internal/TypeIntrinsics;->d(Ljava/lang/Object;)Ljava/util/Map;

    .line 363
    .line 364
    .line 365
    move-result-object v1

    .line 366
    invoke-interface {p1, v1}, Lzn/d;->l(Ljava/util/Map;)V

    .line 367
    .line 368
    .line 369
    goto/16 :goto_0

    .line 370
    .line 371
    :pswitch_11
    array-length v2, p3

    .line 372
    if-ne v2, v10, :cond_1

    .line 373
    .line 374
    aget-object v1, p3, v11

    .line 375
    .line 376
    const-string v2, "null cannot be cast to non-null type com.transsion.subtitle.VideoSubtitleControl"

    .line 377
    .line 378
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 379
    .line 380
    .line 381
    check-cast v1, Lcom/transsion/subtitle/VideoSubtitleControl;

    .line 382
    .line 383
    invoke-interface {p1, v1}, Lzn/d;->B(Lcom/transsion/subtitle/VideoSubtitleControl;)V

    .line 384
    .line 385
    .line 386
    goto/16 :goto_0

    .line 387
    .line 388
    :pswitch_12
    array-length v2, p3

    .line 389
    if-ne v2, v8, :cond_1

    .line 390
    .line 391
    aget-object v2, p3, v11

    .line 392
    .line 393
    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 394
    .line 395
    .line 396
    check-cast v2, Ljava/lang/Boolean;

    .line 397
    .line 398
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 399
    .line 400
    .line 401
    move-result v2

    .line 402
    aget-object v1, p3, v10

    .line 403
    .line 404
    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 405
    .line 406
    .line 407
    check-cast v1, Ljava/lang/Boolean;

    .line 408
    .line 409
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 410
    .line 411
    .line 412
    move-result v1

    .line 413
    invoke-interface {p1, v2, v1}, Lzn/d;->b(ZZ)V

    .line 414
    .line 415
    .line 416
    goto/16 :goto_0

    .line 417
    .line 418
    :pswitch_13
    invoke-interface {p1}, Lzn/d;->c()V

    .line 419
    .line 420
    .line 421
    goto/16 :goto_0

    .line 422
    .line 423
    :pswitch_14
    invoke-interface {p1}, Lzn/d;->isVisible()Z

    .line 424
    .line 425
    .line 426
    move-result v1

    .line 427
    if-eqz v1, :cond_1

    .line 428
    .line 429
    invoke-interface {p1}, Lzn/d;->A()V

    .line 430
    .line 431
    .line 432
    goto/16 :goto_0

    .line 433
    .line 434
    :pswitch_15
    invoke-interface {p1}, Lzn/d;->isVisible()Z

    .line 435
    .line 436
    .line 437
    move-result v1

    .line 438
    if-eqz v1, :cond_1

    .line 439
    .line 440
    invoke-interface {p1}, Lzn/d;->o()V

    .line 441
    .line 442
    .line 443
    goto/16 :goto_0

    .line 444
    .line 445
    :pswitch_16
    invoke-interface {p1}, Lzn/d;->isVisible()Z

    .line 446
    .line 447
    .line 448
    move-result v1

    .line 449
    if-eqz v1, :cond_1

    .line 450
    .line 451
    invoke-interface {p1}, Lzn/d;->onViewPause()V

    .line 452
    .line 453
    .line 454
    goto/16 :goto_0

    .line 455
    .line 456
    :pswitch_17
    invoke-interface {p1}, Lzn/d;->isVisible()Z

    .line 457
    .line 458
    .line 459
    move-result v1

    .line 460
    if-eqz v1, :cond_1

    .line 461
    .line 462
    invoke-interface {p1}, Lzn/d;->onViewResume()V

    .line 463
    .line 464
    .line 465
    goto/16 :goto_0

    .line 466
    .line 467
    :pswitch_18
    invoke-interface {p1}, Lzn/d;->isVisible()Z

    .line 468
    .line 469
    .line 470
    move-result v1

    .line 471
    if-eqz v1, :cond_1

    .line 472
    .line 473
    invoke-interface {p1}, Lzn/d;->onBackPressed()V

    .line 474
    .line 475
    .line 476
    goto/16 :goto_0

    .line 477
    .line 478
    :pswitch_19
    array-length v2, p3

    .line 479
    if-ne v2, v10, :cond_1

    .line 480
    .line 481
    aget-object v1, p3, v11

    .line 482
    .line 483
    invoke-static {v1, v9}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 484
    .line 485
    .line 486
    check-cast v1, Ljava/lang/String;

    .line 487
    .line 488
    invoke-interface {p1, v1}, Lzn/d;->updateTitle(Ljava/lang/String;)V

    .line 489
    .line 490
    .line 491
    goto/16 :goto_0

    .line 492
    .line 493
    :pswitch_1a
    array-length v2, p3

    .line 494
    if-ne v2, v4, :cond_1

    .line 495
    .line 496
    aget-object v2, p3, v11

    .line 497
    .line 498
    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 499
    .line 500
    .line 501
    check-cast v2, Lcom/transsion/baselib/db/download/DownloadBean;

    .line 502
    .line 503
    aget-object v3, p3, v10

    .line 504
    .line 505
    invoke-static {v3, v9}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 506
    .line 507
    .line 508
    check-cast v3, Ljava/lang/String;

    .line 509
    .line 510
    aget-object v1, p3, v8

    .line 511
    .line 512
    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 513
    .line 514
    .line 515
    check-cast v1, Ljava/lang/Boolean;

    .line 516
    .line 517
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 518
    .line 519
    .line 520
    move-result v1

    .line 521
    invoke-interface {p1, v2, v3, v1}, Lzn/d;->k(Lcom/transsion/baselib/db/download/DownloadBean;Ljava/lang/String;Z)V

    .line 522
    .line 523
    .line 524
    goto/16 :goto_0

    .line 525
    .line 526
    :pswitch_1b
    array-length v2, p3

    .line 527
    if-ne v2, v10, :cond_1

    .line 528
    .line 529
    aget-object v1, p3, v11

    .line 530
    .line 531
    const-string v2, "null cannot be cast to non-null type com.transsion.moviedetailapi.bean.PostSubjectItem"

    .line 532
    .line 533
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 534
    .line 535
    .line 536
    check-cast v1, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 537
    .line 538
    invoke-interface {p1, v1}, Lzn/d;->x(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V

    .line 539
    .line 540
    .line 541
    goto/16 :goto_0

    .line 542
    .line 543
    :pswitch_1c
    array-length v2, p3

    .line 544
    if-ne v2, v10, :cond_1

    .line 545
    .line 546
    aget-object v1, p3, v11

    .line 547
    .line 548
    const-string v2, "null cannot be cast to non-null type com.transsion.postdetail.layer.listener.LayerEvent"

    .line 549
    .line 550
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 551
    .line 552
    .line 553
    check-cast v1, Lzn/b;

    .line 554
    .line 555
    invoke-interface {p1, v1}, Lzn/d;->n(Lzn/b;)V

    .line 556
    .line 557
    .line 558
    goto/16 :goto_0

    .line 559
    .line 560
    :pswitch_1d
    array-length v2, p3

    .line 561
    if-ne v2, v10, :cond_1

    .line 562
    .line 563
    aget-object v1, p3, v11

    .line 564
    .line 565
    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 566
    .line 567
    .line 568
    check-cast v1, Lcom/transsion/postdetail/layer/local/LocalUiType;

    .line 569
    .line 570
    invoke-interface {p1, v1}, Lzn/d;->a(Lcom/transsion/postdetail/layer/local/LocalUiType;)V

    .line 571
    .line 572
    .line 573
    goto/16 :goto_0

    .line 574
    .line 575
    :pswitch_1e
    array-length v2, p3

    .line 576
    if-ne v2, v10, :cond_1

    .line 577
    .line 578
    aget-object v1, p3, v11

    .line 579
    .line 580
    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 581
    .line 582
    .line 583
    check-cast v1, Lcom/transsion/postdetail/layer/local/LocalUiType;

    .line 584
    .line 585
    invoke-interface {p1, v1}, Lzn/d;->m(Lcom/transsion/postdetail/layer/local/LocalUiType;)V

    .line 586
    .line 587
    .line 588
    goto/16 :goto_0

    .line 589
    .line 590
    :pswitch_1f
    array-length v2, p3

    .line 591
    if-ne v2, v8, :cond_1

    .line 592
    .line 593
    aget-object v2, p3, v11

    .line 594
    .line 595
    const-string v3, "null cannot be cast to non-null type kotlin.Int"

    .line 596
    .line 597
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 598
    .line 599
    .line 600
    check-cast v2, Ljava/lang/Integer;

    .line 601
    .line 602
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 603
    .line 604
    .line 605
    move-result v2

    .line 606
    aget-object v1, p3, v10

    .line 607
    .line 608
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 609
    .line 610
    .line 611
    check-cast v1, Ljava/lang/Integer;

    .line 612
    .line 613
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 614
    .line 615
    .line 616
    move-result v1

    .line 617
    invoke-interface {p1, v2, v1}, Lzn/d;->r(II)V

    .line 618
    .line 619
    .line 620
    goto :goto_0

    .line 621
    :pswitch_20
    array-length v2, p3

    .line 622
    const/4 v3, 0x5

    .line 623
    if-ne v2, v3, :cond_1

    .line 624
    .line 625
    aget-object v2, p3, v11

    .line 626
    .line 627
    invoke-static {v2, v9}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 628
    .line 629
    .line 630
    check-cast v2, Ljava/lang/String;

    .line 631
    .line 632
    aget-object v3, p3, v10

    .line 633
    .line 634
    invoke-static {v3, v9}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 635
    .line 636
    .line 637
    check-cast v3, Ljava/lang/String;

    .line 638
    .line 639
    aget-object v5, p3, v8

    .line 640
    .line 641
    invoke-static {v5, v9}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 642
    .line 643
    .line 644
    check-cast v5, Ljava/lang/String;

    .line 645
    .line 646
    aget-object v4, p3, v4

    .line 647
    .line 648
    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 649
    .line 650
    .line 651
    check-cast v4, Ljava/lang/Boolean;

    .line 652
    .line 653
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 654
    .line 655
    .line 656
    move-result v4

    .line 657
    const/4 v6, 0x4

    .line 658
    aget-object v1, p3, v6

    .line 659
    .line 660
    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 661
    .line 662
    .line 663
    check-cast v1, Ljava/lang/Boolean;

    .line 664
    .line 665
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 666
    .line 667
    .line 668
    move-result v6

    .line 669
    move-object v0, p1

    .line 670
    move-object v1, v2

    .line 671
    move-object v2, v3

    .line 672
    move-object v3, v5

    .line 673
    move v5, v6

    .line 674
    invoke-interface/range {v0 .. v5}, Lzn/d;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 675
    .line 676
    .line 677
    goto :goto_0

    .line 678
    :pswitch_21
    array-length v2, p3

    .line 679
    if-ne v2, v8, :cond_1

    .line 680
    .line 681
    aget-object v2, p3, v11

    .line 682
    .line 683
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 684
    .line 685
    .line 686
    check-cast v2, Landroid/view/View;

    .line 687
    .line 688
    aget-object v1, p3, v10

    .line 689
    .line 690
    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 691
    .line 692
    .line 693
    check-cast v1, Lcom/transsion/postdetail/layer/local/LocalUiType;

    .line 694
    .line 695
    invoke-interface {p1, v2, v1}, Lzn/d;->s(Landroid/view/View;Lcom/transsion/postdetail/layer/local/LocalUiType;)V

    .line 696
    .line 697
    .line 698
    goto :goto_0

    .line 699
    :pswitch_22
    array-length v2, p3

    .line 700
    if-ne v2, v8, :cond_1

    .line 701
    .line 702
    aget-object v2, p3, v11

    .line 703
    .line 704
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 705
    .line 706
    .line 707
    check-cast v2, Landroid/view/View;

    .line 708
    .line 709
    aget-object v1, p3, v10

    .line 710
    .line 711
    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 712
    .line 713
    .line 714
    check-cast v1, Ljava/lang/Boolean;

    .line 715
    .line 716
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 717
    .line 718
    .line 719
    move-result v1

    .line 720
    invoke-interface {p1, v2, v1}, Lzn/d;->z(Landroid/view/View;Z)V

    .line 721
    .line 722
    .line 723
    :cond_1
    :goto_0
    return-void

    .line 724
    nop

    .line 725
    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final varargs k(Lcom/transsion/player/orplayer/e;Lcom/transsion/postdetail/layer/listener/LayerFlag;[Ljava/lang/Object;)V
    .locals 6

    .line 1
    sget-object v0, Lcom/transsion/postdetail/layer/a$a;->a:[I

    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    aget p2, v0, p2

    .line 8
    .line 9
    const/4 v0, 0x2

    .line 10
    const/4 v1, 0x0

    .line 11
    const/4 v2, 0x1

    .line 12
    const/4 v3, 0x0

    .line 13
    packed-switch p2, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    goto/16 :goto_0

    .line 17
    .line 18
    :pswitch_0
    invoke-interface {p1}, Lcom/transsion/player/orplayer/e;->onPlayerReset()V

    .line 19
    .line 20
    .line 21
    goto/16 :goto_0

    .line 22
    .line 23
    :pswitch_1
    invoke-interface {p1}, Lcom/transsion/player/orplayer/e;->onLoopingStart()V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :pswitch_2
    array-length p2, p3

    .line 28
    if-ne p2, v2, :cond_0

    .line 29
    .line 30
    aget-object p2, p3, v1

    .line 31
    .line 32
    const-string p3, "null cannot be cast to non-null type com.transsion.player.orplayer.PlayError"

    .line 33
    .line 34
    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    check-cast p2, Lcom/transsion/player/orplayer/PlayError;

    .line 38
    .line 39
    invoke-static {p1, p2, v3, v0, v3}, Lcom/transsion/player/orplayer/e$a;->r(Lcom/transsion/player/orplayer/e;Lcom/transsion/player/orplayer/PlayError;Lgn/e;ILjava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :pswitch_3
    array-length p2, p3

    .line 44
    if-ne p2, v2, :cond_0

    .line 45
    .line 46
    aget-object p2, p3, v1

    .line 47
    .line 48
    const-string p3, "null cannot be cast to non-null type kotlin.Long"

    .line 49
    .line 50
    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    check-cast p2, Ljava/lang/Long;

    .line 54
    .line 55
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 56
    .line 57
    .line 58
    move-result-wide v1

    .line 59
    const/4 v4, 0x2

    .line 60
    const/4 v5, 0x0

    .line 61
    const/4 v3, 0x0

    .line 62
    move-object v0, p1

    .line 63
    invoke-static/range {v0 .. v5}, Lcom/transsion/player/orplayer/e$a;->z(Lcom/transsion/player/orplayer/e;JLgn/e;ILjava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :pswitch_4
    invoke-static {p1, v3, v2, v3}, Lcom/transsion/player/orplayer/e$a;->G(Lcom/transsion/player/orplayer/e;Lgn/e;ILjava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :pswitch_5
    invoke-static {p1, v3, v2, v3}, Lcom/transsion/player/orplayer/e$a;->J(Lcom/transsion/player/orplayer/e;Lgn/e;ILjava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :pswitch_6
    invoke-static {p1, v3, v2, v3}, Lcom/transsion/player/orplayer/e$a;->l(Lcom/transsion/player/orplayer/e;Lgn/e;ILjava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :pswitch_7
    invoke-static {p1, v3, v2, v3}, Lcom/transsion/player/orplayer/e$a;->j(Lcom/transsion/player/orplayer/e;Lgn/e;ILjava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :pswitch_8
    array-length p2, p3

    .line 84
    if-ne p2, v0, :cond_0

    .line 85
    .line 86
    aget-object p2, p3, v1

    .line 87
    .line 88
    const-string v0, "null cannot be cast to non-null type kotlin.Int"

    .line 89
    .line 90
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    check-cast p2, Ljava/lang/Integer;

    .line 94
    .line 95
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 96
    .line 97
    .line 98
    move-result p2

    .line 99
    aget-object p3, p3, v2

    .line 100
    .line 101
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    check-cast p3, Ljava/lang/Integer;

    .line 105
    .line 106
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 107
    .line 108
    .line 109
    move-result p3

    .line 110
    invoke-interface {p1, p2, p3}, Lcom/transsion/player/orplayer/e;->onVideoSizeChanged(II)V

    .line 111
    .line 112
    .line 113
    goto :goto_0

    .line 114
    :pswitch_9
    invoke-static {p1, v3, v2, v3}, Lcom/transsion/player/orplayer/e$a;->f(Lcom/transsion/player/orplayer/e;Lgn/e;ILjava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    goto :goto_0

    .line 118
    :pswitch_a
    invoke-interface {p1}, Lcom/transsion/player/orplayer/e;->onRenderFirstFrame()V

    .line 119
    .line 120
    .line 121
    goto :goto_0

    .line 122
    :pswitch_b
    invoke-interface {p1}, Lcom/transsion/player/orplayer/e;->initPlayer()V

    .line 123
    .line 124
    .line 125
    :cond_0
    :goto_0
    return-void

    .line 126
    nop

    .line 127
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final d(Lcom/transsion/postdetail/layer/BaseLayer;)V
    .locals 7

    .line 1
    const-string v0, "layer"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/transsion/postdetail/layer/a;->b:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 15
    .line 16
    iget-object v2, p0, Lcom/transsion/postdetail/layer/a;->a:Ljava/lang/String;

    .line 17
    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string p1, " is already add"

    .line 27
    .line 28
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    const/4 v5, 0x4

    .line 36
    const/4 v6, 0x0

    .line 37
    const/4 v4, 0x0

    .line 38
    invoke-static/range {v1 .. v6}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/transsion/postdetail/layer/a;->b:Ljava/util/List;

    .line 43
    .line 44
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public final varargs e(Lcom/transsion/postdetail/layer/listener/LayerFlag;[Ljava/lang/Object;)V
    .locals 1

    .line 1
    const-string v0, "flag"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "params"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lcom/transsion/postdetail/layer/a$b;

    .line 12
    .line 13
    invoke-direct {v0, p0, p1, p2}, Lcom/transsion/postdetail/layer/a$b;-><init>(Lcom/transsion/postdetail/layer/a;Lcom/transsion/postdetail/layer/listener/LayerFlag;[Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, v0}, Lcom/transsion/postdetail/layer/a;->f(Lzn/a;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final varargs g(Lcom/transsion/postdetail/layer/listener/LayerFlag;[Ljava/lang/Object;)V
    .locals 1

    .line 1
    const-string v0, "flag"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "params"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lcom/transsion/postdetail/layer/a$c;

    .line 12
    .line 13
    invoke-direct {v0, p0, p1, p2}, Lcom/transsion/postdetail/layer/a$c;-><init>(Lcom/transsion/postdetail/layer/a;Lcom/transsion/postdetail/layer/listener/LayerFlag;[Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, v0}, Lcom/transsion/postdetail/layer/a;->f(Lzn/a;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final varargs h(Lcom/transsion/postdetail/layer/listener/LayerFlag;[Ljava/lang/Object;)V
    .locals 1

    .line 1
    const-string v0, "flag"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "params"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lcom/transsion/postdetail/layer/a$d;

    .line 12
    .line 13
    invoke-direct {v0, p0, p1, p2}, Lcom/transsion/postdetail/layer/a$d;-><init>(Lcom/transsion/postdetail/layer/a;Lcom/transsion/postdetail/layer/listener/LayerFlag;[Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, v0}, Lcom/transsion/postdetail/layer/a;->f(Lzn/a;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
