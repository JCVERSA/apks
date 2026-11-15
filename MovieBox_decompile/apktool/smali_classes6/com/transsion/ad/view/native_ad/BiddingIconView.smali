.class public final Lcom/transsion/ad/view/native_ad/BiddingIconView;
.super Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;
.source "source.java"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u001d\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0011\u0010\t\u001a\u0004\u0018\u00010\u0008H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nJ\u000f\u0010\u000c\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u000f\u0010\u000f\u001a\u00020\u000eH\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\r\u0010\u0012\u001a\u00020\u0011\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u0017\u0010\u0016\u001a\u00020\u00112\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0014\u00a2\u0006\u0004\u0008\u0016\u0010\u0017R\u0018\u0010\u001b\u001a\u0004\u0018\u00010\u00188\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u001aR\u0016\u0010\u001e\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010\u001d\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/transsion/ad/view/native_ad/BiddingIconView;",
        "Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "Landroid/widget/FrameLayout;",
        "getMediaContainer",
        "()Landroid/widget/FrameLayout;",
        "",
        "isShowVolumeIcon",
        "()Z",
        "",
        "getLogTag",
        "()Ljava/lang/String;",
        "",
        "iconPerformClick",
        "()V",
        "Lcom/transsion/ad/bidding/base/r;",
        "adLayoutProvider",
        "bindIconView",
        "(Lcom/transsion/ad/bidding/base/r;)V",
        "Lcom/transsion/ad/bidding/base/w;",
        "p",
        "Lcom/transsion/ad/bidding/base/w;",
        "adProviderBean",
        "q",
        "Z",
        "mIsShowVolumeIcon",
        "lib_ad_gpRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private p:Lcom/transsion/ad/bidding/base/w;

.field private q:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Lcom/transsion/ad/view/native_ad/BiddingIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/transsion/ad/view/native_ad/BiddingIconView;->q:Z

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 2
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/transsion/ad/view/native_ad/BiddingIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static final synthetic access$onShowErrorCallback(Lcom/transsion/ad/view/native_ad/BiddingIconView;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->f(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final bindIconView(Lcom/transsion/ad/bidding/base/r;)V
    .locals 10

    .line 1
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->getRecommendInfo()Lcom/transsion/ad/ps/model/RecommendInfo;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_10

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    goto/16 :goto_7

    .line 10
    .line 11
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    instance-of v1, v0, Landroid/app/Activity;

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    check-cast v0, Landroid/app/Activity;

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    move-object v0, v2

    .line 24
    :goto_0
    const/4 v1, 0x1

    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-ne v0, v1, :cond_2

    .line 32
    .line 33
    const/4 v8, 0x4

    .line 34
    const/4 v9, 0x0

    .line 35
    const/4 v4, 0x5

    .line 36
    const-string v5, "\u5f53\u524dActivity\u9500\u6bc1\uff0c\u5e7f\u544a\u5c31\u4e0d\u9700\u8981\u5c55\u793a\u4e86"

    .line 37
    .line 38
    const/4 v6, 0x0

    .line 39
    const/4 v7, 0x0

    .line 40
    move-object v3, p0

    .line 41
    invoke-static/range {v3 .. v9}, Lxh/b$a;->c(Lxh/b;ILjava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_2
    invoke-virtual {p1}, Lcom/transsion/ad/bidding/base/r;->g()Lcom/transsion/ad/bidding/base/w;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    iput-object v0, p0, Lcom/transsion/ad/view/native_ad/BiddingIconView;->p:Lcom/transsion/ad/bidding/base/w;

    .line 50
    .line 51
    invoke-virtual {p1}, Lcom/transsion/ad/bidding/base/r;->A()Z

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    iput-boolean p1, p0, Lcom/transsion/ad/view/native_ad/BiddingIconView;->q:Z

    .line 56
    .line 57
    invoke-virtual {v0}, Lcom/transsion/ad/bidding/base/w;->l()Ljava/lang/Integer;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    if-eqz p1, :cond_4

    .line 62
    .line 63
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    invoke-virtual {v0}, Lcom/transsion/ad/bidding/base/w;->i()Landroid/view/View;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    invoke-virtual {v3, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    check-cast p1, Landroid/widget/TextView;

    .line 76
    .line 77
    if-eqz p1, :cond_4

    .line 78
    .line 79
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->getRecommendInfo()Lcom/transsion/ad/ps/model/RecommendInfo;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    if-eqz v3, :cond_3

    .line 84
    .line 85
    invoke-virtual {v3}, Lcom/transsion/ad/ps/model/RecommendInfo;->getDetail()Lcom/transsion/ad/ps/model/ItemDetail;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    if-eqz v3, :cond_3

    .line 90
    .line 91
    invoke-virtual {v3}, Lcom/transsion/ad/ps/model/ItemDetail;->getName()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    goto :goto_1

    .line 96
    :cond_3
    move-object v3, v2

    .line 97
    :goto_1
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    .line 99
    .line 100
    :cond_4
    invoke-virtual {v0}, Lcom/transsion/ad/bidding/base/w;->g()Ljava/lang/Integer;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    if-eqz p1, :cond_6

    .line 105
    .line 106
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 107
    .line 108
    .line 109
    move-result p1

    .line 110
    invoke-virtual {v0}, Lcom/transsion/ad/bidding/base/w;->i()Landroid/view/View;

    .line 111
    .line 112
    .line 113
    move-result-object v3

    .line 114
    invoke-virtual {v3, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    check-cast p1, Landroid/widget/TextView;

    .line 119
    .line 120
    if-eqz p1, :cond_6

    .line 121
    .line 122
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->getRecommendInfo()Lcom/transsion/ad/ps/model/RecommendInfo;

    .line 123
    .line 124
    .line 125
    move-result-object v3

    .line 126
    if-eqz v3, :cond_5

    .line 127
    .line 128
    invoke-virtual {v3}, Lcom/transsion/ad/ps/model/RecommendInfo;->getDetail()Lcom/transsion/ad/ps/model/ItemDetail;

    .line 129
    .line 130
    .line 131
    move-result-object v3

    .line 132
    if-eqz v3, :cond_5

    .line 133
    .line 134
    invoke-virtual {v3}, Lcom/transsion/ad/ps/model/ItemDetail;->getSimpleDescription()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v3

    .line 138
    goto :goto_2

    .line 139
    :cond_5
    move-object v3, v2

    .line 140
    :goto_2
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    .line 142
    .line 143
    :cond_6
    invoke-virtual {v0}, Lcom/transsion/ad/bidding/base/w;->f()Ljava/lang/Integer;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    if-eqz p1, :cond_9

    .line 148
    .line 149
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 150
    .line 151
    .line 152
    move-result p1

    .line 153
    invoke-virtual {v0}, Lcom/transsion/ad/bidding/base/w;->i()Landroid/view/View;

    .line 154
    .line 155
    .line 156
    move-result-object v3

    .line 157
    invoke-virtual {v3, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    check-cast p1, Landroid/widget/TextView;

    .line 162
    .line 163
    if-eqz p1, :cond_9

    .line 164
    .line 165
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->getRecommendInfo()Lcom/transsion/ad/ps/model/RecommendInfo;

    .line 166
    .line 167
    .line 168
    move-result-object v3

    .line 169
    if-eqz v3, :cond_7

    .line 170
    .line 171
    invoke-virtual {v3}, Lcom/transsion/ad/ps/model/RecommendInfo;->getButtonText()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v3

    .line 175
    goto :goto_3

    .line 176
    :cond_7
    move-object v3, v2

    .line 177
    :goto_3
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->getRecommendInfo()Lcom/transsion/ad/ps/model/RecommendInfo;

    .line 181
    .line 182
    .line 183
    move-result-object v3

    .line 184
    if-eqz v3, :cond_8

    .line 185
    .line 186
    invoke-virtual {v3}, Lcom/transsion/ad/ps/model/RecommendInfo;->getButtonText()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v3

    .line 190
    goto :goto_4

    .line 191
    :cond_8
    move-object v3, v2

    .line 192
    :goto_4
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 193
    .line 194
    .line 195
    move-result v3

    .line 196
    if-eqz v3, :cond_9

    .line 197
    .line 198
    const/16 v3, 0x8

    .line 199
    .line 200
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 201
    .line 202
    .line 203
    :cond_9
    new-instance p1, Lcom/transsion/ad/view/native_ad/BiddingIconView$bindIconView$4;

    .line 204
    .line 205
    invoke-direct {p1, v0, p0, v2}, Lcom/transsion/ad/view/native_ad/BiddingIconView$bindIconView$4;-><init>(Lcom/transsion/ad/bidding/base/w;Lcom/transsion/ad/view/native_ad/BiddingIconView;Lkotlin/coroutines/Continuation;)V

    .line 206
    .line 207
    .line 208
    invoke-static {v2, p1, v1, v2}, Lkotlinx/coroutines/i;->f(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    invoke-virtual {v0}, Lcom/transsion/ad/bidding/base/w;->k()Ljava/lang/Integer;

    .line 212
    .line 213
    .line 214
    move-result-object p1

    .line 215
    if-eqz p1, :cond_b

    .line 216
    .line 217
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 218
    .line 219
    .line 220
    move-result p1

    .line 221
    invoke-virtual {v0}, Lcom/transsion/ad/bidding/base/w;->i()Landroid/view/View;

    .line 222
    .line 223
    .line 224
    move-result-object v1

    .line 225
    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 226
    .line 227
    .line 228
    move-result-object p1

    .line 229
    check-cast p1, Landroid/widget/TextView;

    .line 230
    .line 231
    if-eqz p1, :cond_b

    .line 232
    .line 233
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->getRecommendInfo()Lcom/transsion/ad/ps/model/RecommendInfo;

    .line 234
    .line 235
    .line 236
    move-result-object v1

    .line 237
    if-eqz v1, :cond_a

    .line 238
    .line 239
    invoke-virtual {v1}, Lcom/transsion/ad/ps/model/RecommendInfo;->getDetail()Lcom/transsion/ad/ps/model/ItemDetail;

    .line 240
    .line 241
    .line 242
    move-result-object v1

    .line 243
    if-eqz v1, :cond_a

    .line 244
    .line 245
    invoke-virtual {v1}, Lcom/transsion/ad/ps/model/ItemDetail;->getStar()Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v1

    .line 249
    goto :goto_5

    .line 250
    :cond_a
    move-object v1, v2

    .line 251
    :goto_5
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 252
    .line 253
    .line 254
    :cond_b
    invoke-virtual {v0}, Lcom/transsion/ad/bidding/base/w;->h()Ljava/lang/Integer;

    .line 255
    .line 256
    .line 257
    move-result-object p1

    .line 258
    if-eqz p1, :cond_d

    .line 259
    .line 260
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 261
    .line 262
    .line 263
    move-result p1

    .line 264
    invoke-virtual {v0}, Lcom/transsion/ad/bidding/base/w;->i()Landroid/view/View;

    .line 265
    .line 266
    .line 267
    move-result-object v1

    .line 268
    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 269
    .line 270
    .line 271
    move-result-object p1

    .line 272
    check-cast p1, Landroid/widget/FrameLayout;

    .line 273
    .line 274
    if-eqz p1, :cond_d

    .line 275
    .line 276
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 277
    .line 278
    .line 279
    new-instance v1, Landroid/widget/ImageView;

    .line 280
    .line 281
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 282
    .line 283
    .line 284
    move-result-object v3

    .line 285
    invoke-direct {v1, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 286
    .line 287
    .line 288
    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    .line 289
    .line 290
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 291
    .line 292
    .line 293
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 294
    .line 295
    .line 296
    move-result-object v3

    .line 297
    invoke-static {v3}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    .line 298
    .line 299
    .line 300
    move-result-object v3

    .line 301
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->getRecommendInfo()Lcom/transsion/ad/ps/model/RecommendInfo;

    .line 302
    .line 303
    .line 304
    move-result-object v4

    .line 305
    if-eqz v4, :cond_c

    .line 306
    .line 307
    invoke-virtual {v4}, Lcom/transsion/ad/ps/model/RecommendInfo;->getIconUrl()Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object v4

    .line 311
    goto :goto_6

    .line 312
    :cond_c
    move-object v4, v2

    .line 313
    :goto_6
    invoke-virtual {v3, v4}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    .line 314
    .line 315
    .line 316
    move-result-object v3

    .line 317
    new-instance v4, Lcom/transsion/ad/view/native_ad/BiddingIconView$a;

    .line 318
    .line 319
    invoke-direct {v4, p0}, Lcom/transsion/ad/view/native_ad/BiddingIconView$a;-><init>(Lcom/transsion/ad/view/native_ad/BiddingIconView;)V

    .line 320
    .line 321
    .line 322
    invoke-virtual {v3, v4}, Lcom/bumptech/glide/RequestBuilder;->listener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;

    .line 323
    .line 324
    .line 325
    move-result-object v3

    .line 326
    invoke-virtual {v3, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 327
    .line 328
    .line 329
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 330
    .line 331
    .line 332
    :cond_d
    invoke-virtual {v0}, Lcom/transsion/ad/bidding/base/w;->e()Ljava/lang/Integer;

    .line 333
    .line 334
    .line 335
    move-result-object p1

    .line 336
    if-eqz p1, :cond_f

    .line 337
    .line 338
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 339
    .line 340
    .line 341
    move-result p1

    .line 342
    invoke-virtual {v0}, Lcom/transsion/ad/bidding/base/w;->i()Landroid/view/View;

    .line 343
    .line 344
    .line 345
    move-result-object v1

    .line 346
    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 347
    .line 348
    .line 349
    move-result-object p1

    .line 350
    check-cast p1, Landroid/widget/ImageView;

    .line 351
    .line 352
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    .line 353
    .line 354
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 355
    .line 356
    .line 357
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 358
    .line 359
    .line 360
    move-result-object v1

    .line 361
    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    .line 362
    .line 363
    .line 364
    move-result-object v1

    .line 365
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->getRecommendInfo()Lcom/transsion/ad/ps/model/RecommendInfo;

    .line 366
    .line 367
    .line 368
    move-result-object v3

    .line 369
    if-eqz v3, :cond_e

    .line 370
    .line 371
    invoke-virtual {v3}, Lcom/transsion/ad/ps/model/RecommendInfo;->getIconUrl()Ljava/lang/String;

    .line 372
    .line 373
    .line 374
    move-result-object v2

    .line 375
    :cond_e
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    .line 376
    .line 377
    .line 378
    move-result-object v1

    .line 379
    new-instance v2, Lei/a;

    .line 380
    .line 381
    const/16 v3, 0x19

    .line 382
    .line 383
    invoke-direct {v2, v3}, Lei/a;-><init>(I)V

    .line 384
    .line 385
    .line 386
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/request/BaseRequestOptions;->transform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 387
    .line 388
    .line 389
    move-result-object v1

    .line 390
    check-cast v1, Lcom/bumptech/glide/RequestBuilder;

    .line 391
    .line 392
    invoke-virtual {v1, p1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 393
    .line 394
    .line 395
    :cond_f
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->addSession()V

    .line 396
    .line 397
    .line 398
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 399
    .line 400
    .line 401
    invoke-virtual {v0}, Lcom/transsion/ad/bidding/base/w;->i()Landroid/view/View;

    .line 402
    .line 403
    .line 404
    move-result-object p1

    .line 405
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 406
    .line 407
    const/4 v1, -0x1

    .line 408
    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 409
    .line 410
    .line 411
    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 412
    .line 413
    .line 414
    :cond_10
    :goto_7
    return-void
.end method

.method public getLogTag()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "ad_ic"

    .line 2
    .line 3
    return-object v0
.end method

.method public getMediaContainer()Landroid/widget/FrameLayout;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/view/native_ad/BiddingIconView;->p:Lcom/transsion/ad/bidding/base/w;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/transsion/ad/bidding/base/w;->j()Ljava/lang/Integer;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iget-object v2, p0, Lcom/transsion/ad/view/native_ad/BiddingIconView;->p:Lcom/transsion/ad/bidding/base/w;

    .line 17
    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    invoke-virtual {v2}, Lcom/transsion/ad/bidding/base/w;->i()Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    move-object v1, v0

    .line 31
    check-cast v1, Landroid/widget/FrameLayout;

    .line 32
    .line 33
    :cond_0
    return-object v1

    .line 34
    :cond_1
    iget-object v0, p0, Lcom/transsion/ad/view/native_ad/BiddingIconView;->p:Lcom/transsion/ad/bidding/base/w;

    .line 35
    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/transsion/ad/bidding/base/w;->h()Ljava/lang/Integer;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    if-eqz v0, :cond_2

    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    iget-object v2, p0, Lcom/transsion/ad/view/native_ad/BiddingIconView;->p:Lcom/transsion/ad/bidding/base/w;

    .line 49
    .line 50
    if-eqz v2, :cond_2

    .line 51
    .line 52
    invoke-virtual {v2}, Lcom/transsion/ad/bidding/base/w;->i()Landroid/view/View;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    if-eqz v2, :cond_2

    .line 57
    .line 58
    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    move-object v1, v0

    .line 63
    check-cast v1, Landroid/widget/FrameLayout;

    .line 64
    .line 65
    :cond_2
    return-object v1
.end method

.method public final iconPerformClick()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->onAdClick()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public isShowVolumeIcon()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/ad/view/native_ad/BiddingIconView;->q:Z

    .line 2
    .line 3
    return v0
.end method
