.class public final Lcom/transsion/ad/view/native_ad/BiddingBuyOutNativeView;
.super Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;
.source "source.java"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u001d\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0011\u0010\t\u001a\u0004\u0018\u00010\u0008H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nJ\u000f\u0010\u000c\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u000f\u0010\u000f\u001a\u00020\u000eH\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0017\u0010\u0014\u001a\u00020\u00132\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0011\u00a2\u0006\u0004\u0008\u0014\u0010\u0015R\u0018\u0010\u0019\u001a\u0004\u0018\u00010\u00168\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u0018R\u0016\u0010\u001c\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010\u001b\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/transsion/ad/view/native_ad/BiddingBuyOutNativeView;",
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
        "Lcom/transsion/ad/bidding/base/r;",
        "adLayoutProvider",
        "",
        "bindNativeView",
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

    invoke-direct {p0, p1, v0, v1, v0}, Lcom/transsion/ad/view/native_ad/BiddingBuyOutNativeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

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
    iput-boolean p1, p0, Lcom/transsion/ad/view/native_ad/BiddingBuyOutNativeView;->q:Z

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 2
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/transsion/ad/view/native_ad/BiddingBuyOutNativeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static synthetic j(Lcom/transsion/ad/view/native_ad/BiddingBuyOutNativeView;Landroid/view/View;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/ad/view/native_ad/BiddingBuyOutNativeView;->k(Lcom/transsion/ad/view/native_ad/BiddingBuyOutNativeView;Landroid/view/View;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final k(Lcom/transsion/ad/view/native_ad/BiddingBuyOutNativeView;Landroid/view/View;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->onAdClick()V

    .line 7
    .line 8
    .line 9
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 10
    .line 11
    return-object p0
.end method


# virtual methods
.method public final bindNativeView(Lcom/transsion/ad/bidding/base/r;)V
    .locals 10

    .line 1
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->getAdPlans()Lcom/transsion/ad/monopoly/model/AdPlans;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_16

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    goto/16 :goto_c

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
    if-eqz v0, :cond_2

    .line 25
    .line 26
    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    const/4 v1, 0x1

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
    const-string v5, "bindNativeView() --> \u5f53\u524dActivity\u9500\u6bc1\uff0c\u5e7f\u544a\u5c31\u4e0d\u9700\u8981\u5c55\u793a\u4e86"

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
    iput-object v0, p0, Lcom/transsion/ad/view/native_ad/BiddingBuyOutNativeView;->p:Lcom/transsion/ad/bidding/base/w;

    .line 50
    .line 51
    invoke-virtual {p1}, Lcom/transsion/ad/bidding/base/r;->A()Z

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    iput-boolean p1, p0, Lcom/transsion/ad/view/native_ad/BiddingBuyOutNativeView;->q:Z

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
    move-result-object v1

    .line 71
    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

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
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->getAdMaterialList()Lcom/transsion/ad/monopoly/model/AdMaterialList;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    if-eqz v1, :cond_3

    .line 84
    .line 85
    invoke-virtual {v1}, Lcom/transsion/ad/monopoly/model/AdMaterialList;->getTitle()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    goto :goto_1

    .line 90
    :cond_3
    move-object v1, v2

    .line 91
    :goto_1
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    .line 93
    .line 94
    :cond_4
    invoke-virtual {v0}, Lcom/transsion/ad/bidding/base/w;->g()Ljava/lang/Integer;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    if-eqz p1, :cond_6

    .line 99
    .line 100
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    invoke-virtual {v0}, Lcom/transsion/ad/bidding/base/w;->i()Landroid/view/View;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    check-cast p1, Landroid/widget/TextView;

    .line 113
    .line 114
    if-eqz p1, :cond_6

    .line 115
    .line 116
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->getAdMaterialList()Lcom/transsion/ad/monopoly/model/AdMaterialList;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    if-eqz v1, :cond_5

    .line 121
    .line 122
    invoke-virtual {v1}, Lcom/transsion/ad/monopoly/model/AdMaterialList;->getDesc()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    goto :goto_2

    .line 127
    :cond_5
    move-object v1, v2

    .line 128
    :goto_2
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    .line 130
    .line 131
    :cond_6
    invoke-virtual {v0}, Lcom/transsion/ad/bidding/base/w;->f()Ljava/lang/Integer;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    if-eqz p1, :cond_a

    .line 136
    .line 137
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 138
    .line 139
    .line 140
    move-result p1

    .line 141
    invoke-virtual {v0}, Lcom/transsion/ad/bidding/base/w;->i()Landroid/view/View;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    check-cast p1, Landroid/widget/TextView;

    .line 150
    .line 151
    if-eqz p1, :cond_a

    .line 152
    .line 153
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->getAdMaterialList()Lcom/transsion/ad/monopoly/model/AdMaterialList;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    if-eqz v1, :cond_7

    .line 158
    .line 159
    invoke-virtual {v1}, Lcom/transsion/ad/monopoly/model/AdMaterialList;->getButtonText()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    goto :goto_3

    .line 164
    :cond_7
    move-object v1, v2

    .line 165
    :goto_3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 166
    .line 167
    .line 168
    move-result v1

    .line 169
    if-eqz v1, :cond_8

    .line 170
    .line 171
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->getAdMaterialList()Lcom/transsion/ad/monopoly/model/AdMaterialList;

    .line 172
    .line 173
    .line 174
    move-result-object v1

    .line 175
    if-eqz v1, :cond_8

    .line 176
    .line 177
    const-string v3, "GO"

    .line 178
    .line 179
    invoke-virtual {v1, v3}, Lcom/transsion/ad/monopoly/model/AdMaterialList;->setButtonText(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    :cond_8
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->getAdMaterialList()Lcom/transsion/ad/monopoly/model/AdMaterialList;

    .line 183
    .line 184
    .line 185
    move-result-object v1

    .line 186
    if-eqz v1, :cond_9

    .line 187
    .line 188
    invoke-virtual {v1}, Lcom/transsion/ad/monopoly/model/AdMaterialList;->getButtonText()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v1

    .line 192
    goto :goto_4

    .line 193
    :cond_9
    move-object v1, v2

    .line 194
    :goto_4
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    .line 196
    .line 197
    new-instance v1, Lci/g;

    .line 198
    .line 199
    new-instance v6, Lcom/transsion/ad/view/native_ad/a;

    .line 200
    .line 201
    invoke-direct {v6, p0}, Lcom/transsion/ad/view/native_ad/a;-><init>(Lcom/transsion/ad/view/native_ad/BiddingBuyOutNativeView;)V

    .line 202
    .line 203
    .line 204
    const/4 v7, 0x1

    .line 205
    const/4 v8, 0x0

    .line 206
    const-wide/16 v4, 0x0

    .line 207
    .line 208
    move-object v3, v1

    .line 209
    invoke-direct/range {v3 .. v8}, Lci/g;-><init>(JLkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 213
    .line 214
    .line 215
    :cond_a
    invoke-virtual {v0}, Lcom/transsion/ad/bidding/base/w;->h()Ljava/lang/Integer;

    .line 216
    .line 217
    .line 218
    move-result-object p1

    .line 219
    if-eqz p1, :cond_f

    .line 220
    .line 221
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 222
    .line 223
    .line 224
    move-result p1

    .line 225
    invoke-virtual {v0}, Lcom/transsion/ad/bidding/base/w;->i()Landroid/view/View;

    .line 226
    .line 227
    .line 228
    move-result-object v1

    .line 229
    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 230
    .line 231
    .line 232
    move-result-object p1

    .line 233
    check-cast p1, Landroid/widget/FrameLayout;

    .line 234
    .line 235
    if-eqz p1, :cond_f

    .line 236
    .line 237
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 238
    .line 239
    .line 240
    new-instance v1, Landroid/widget/ImageView;

    .line 241
    .line 242
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 243
    .line 244
    .line 245
    move-result-object v3

    .line 246
    invoke-direct {v1, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 247
    .line 248
    .line 249
    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    .line 250
    .line 251
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->getAdPlans()Lcom/transsion/ad/monopoly/model/AdPlans;

    .line 255
    .line 256
    .line 257
    move-result-object v3

    .line 258
    if-eqz v3, :cond_b

    .line 259
    .line 260
    invoke-virtual {v3}, Lcom/transsion/ad/monopoly/model/AdPlans;->getAdvertiserAvatarPath()Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v3

    .line 264
    goto :goto_5

    .line 265
    :cond_b
    move-object v3, v2

    .line 266
    :goto_5
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 267
    .line 268
    .line 269
    move-result v3

    .line 270
    if-eqz v3, :cond_d

    .line 271
    .line 272
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 273
    .line 274
    .line 275
    move-result-object v3

    .line 276
    invoke-static {v3}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    .line 277
    .line 278
    .line 279
    move-result-object v3

    .line 280
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->getAdPlans()Lcom/transsion/ad/monopoly/model/AdPlans;

    .line 281
    .line 282
    .line 283
    move-result-object v4

    .line 284
    if-eqz v4, :cond_c

    .line 285
    .line 286
    invoke-virtual {v4}, Lcom/transsion/ad/monopoly/model/AdPlans;->getAdvertiserAvatar()Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object v4

    .line 290
    goto :goto_6

    .line 291
    :cond_c
    move-object v4, v2

    .line 292
    :goto_6
    invoke-virtual {v3, v4}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    .line 293
    .line 294
    .line 295
    move-result-object v3

    .line 296
    invoke-virtual {v3}, Lcom/bumptech/glide/request/BaseRequestOptions;->fitCenter()Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 297
    .line 298
    .line 299
    move-result-object v3

    .line 300
    check-cast v3, Lcom/bumptech/glide/RequestBuilder;

    .line 301
    .line 302
    invoke-virtual {v3, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 303
    .line 304
    .line 305
    goto :goto_8

    .line 306
    :cond_d
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 307
    .line 308
    .line 309
    move-result-object v3

    .line 310
    invoke-static {v3}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    .line 311
    .line 312
    .line 313
    move-result-object v3

    .line 314
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->getAdPlans()Lcom/transsion/ad/monopoly/model/AdPlans;

    .line 315
    .line 316
    .line 317
    move-result-object v4

    .line 318
    if-eqz v4, :cond_e

    .line 319
    .line 320
    invoke-virtual {v4}, Lcom/transsion/ad/monopoly/model/AdPlans;->getAdvertiserAvatarPath()Ljava/lang/String;

    .line 321
    .line 322
    .line 323
    move-result-object v4

    .line 324
    goto :goto_7

    .line 325
    :cond_e
    move-object v4, v2

    .line 326
    :goto_7
    invoke-virtual {v3, v4}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    .line 327
    .line 328
    .line 329
    move-result-object v3

    .line 330
    invoke-virtual {v3}, Lcom/bumptech/glide/request/BaseRequestOptions;->fitCenter()Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 331
    .line 332
    .line 333
    move-result-object v3

    .line 334
    check-cast v3, Lcom/bumptech/glide/RequestBuilder;

    .line 335
    .line 336
    invoke-virtual {v3, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 337
    .line 338
    .line 339
    :goto_8
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 340
    .line 341
    .line 342
    :cond_f
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->getAdMaterialList()Lcom/transsion/ad/monopoly/model/AdMaterialList;

    .line 343
    .line 344
    .line 345
    move-result-object p1

    .line 346
    if-eqz p1, :cond_10

    .line 347
    .line 348
    invoke-virtual {p1}, Lcom/transsion/ad/monopoly/model/AdMaterialList;->getType()Ljava/lang/String;

    .line 349
    .line 350
    .line 351
    move-result-object p1

    .line 352
    goto :goto_9

    .line 353
    :cond_10
    move-object p1, v2

    .line 354
    :goto_9
    const-string v1, "TextAdMaterial"

    .line 355
    .line 356
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 357
    .line 358
    .line 359
    move-result p1

    .line 360
    if-eqz p1, :cond_14

    .line 361
    .line 362
    invoke-virtual {v0}, Lcom/transsion/ad/bidding/base/w;->e()Ljava/lang/Integer;

    .line 363
    .line 364
    .line 365
    move-result-object p1

    .line 366
    if-eqz p1, :cond_14

    .line 367
    .line 368
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 369
    .line 370
    .line 371
    move-result p1

    .line 372
    invoke-virtual {v0}, Lcom/transsion/ad/bidding/base/w;->i()Landroid/view/View;

    .line 373
    .line 374
    .line 375
    move-result-object v1

    .line 376
    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 377
    .line 378
    .line 379
    move-result-object p1

    .line 380
    check-cast p1, Landroid/widget/ImageView;

    .line 381
    .line 382
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    .line 383
    .line 384
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 385
    .line 386
    .line 387
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->getAdMaterialList()Lcom/transsion/ad/monopoly/model/AdMaterialList;

    .line 388
    .line 389
    .line 390
    move-result-object v1

    .line 391
    if-eqz v1, :cond_11

    .line 392
    .line 393
    invoke-virtual {v1}, Lcom/transsion/ad/monopoly/model/AdMaterialList;->getImage()Lcom/transsion/ad/monopoly/model/MbAdImage;

    .line 394
    .line 395
    .line 396
    move-result-object v1

    .line 397
    if-eqz v1, :cond_11

    .line 398
    .line 399
    invoke-virtual {v1}, Lcom/transsion/ad/monopoly/model/MbAdImage;->getPath()Ljava/lang/String;

    .line 400
    .line 401
    .line 402
    move-result-object v1

    .line 403
    goto :goto_a

    .line 404
    :cond_11
    move-object v1, v2

    .line 405
    :goto_a
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 406
    .line 407
    .line 408
    move-result v1

    .line 409
    if-eqz v1, :cond_12

    .line 410
    .line 411
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->getAdMaterialList()Lcom/transsion/ad/monopoly/model/AdMaterialList;

    .line 412
    .line 413
    .line 414
    move-result-object v1

    .line 415
    if-eqz v1, :cond_13

    .line 416
    .line 417
    invoke-virtual {v1}, Lcom/transsion/ad/monopoly/model/AdMaterialList;->getImage()Lcom/transsion/ad/monopoly/model/MbAdImage;

    .line 418
    .line 419
    .line 420
    move-result-object v1

    .line 421
    if-eqz v1, :cond_13

    .line 422
    .line 423
    invoke-virtual {v1}, Lcom/transsion/ad/monopoly/model/MbAdImage;->getUrl()Ljava/lang/String;

    .line 424
    .line 425
    .line 426
    move-result-object v2

    .line 427
    goto :goto_b

    .line 428
    :cond_12
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->getAdMaterialList()Lcom/transsion/ad/monopoly/model/AdMaterialList;

    .line 429
    .line 430
    .line 431
    move-result-object v1

    .line 432
    if-eqz v1, :cond_13

    .line 433
    .line 434
    invoke-virtual {v1}, Lcom/transsion/ad/monopoly/model/AdMaterialList;->getImage()Lcom/transsion/ad/monopoly/model/MbAdImage;

    .line 435
    .line 436
    .line 437
    move-result-object v1

    .line 438
    if-eqz v1, :cond_13

    .line 439
    .line 440
    invoke-virtual {v1}, Lcom/transsion/ad/monopoly/model/MbAdImage;->getPath()Ljava/lang/String;

    .line 441
    .line 442
    .line 443
    move-result-object v2

    .line 444
    :cond_13
    :goto_b
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 445
    .line 446
    .line 447
    move-result-object v1

    .line 448
    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    .line 449
    .line 450
    .line 451
    move-result-object v1

    .line 452
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    .line 453
    .line 454
    .line 455
    move-result-object v1

    .line 456
    new-instance v2, Lei/a;

    .line 457
    .line 458
    const/16 v3, 0x19

    .line 459
    .line 460
    invoke-direct {v2, v3}, Lei/a;-><init>(I)V

    .line 461
    .line 462
    .line 463
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/request/BaseRequestOptions;->transform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 464
    .line 465
    .line 466
    move-result-object v1

    .line 467
    check-cast v1, Lcom/bumptech/glide/RequestBuilder;

    .line 468
    .line 469
    invoke-virtual {v1, p1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 470
    .line 471
    .line 472
    :cond_14
    invoke-virtual {v0}, Lcom/transsion/ad/bidding/base/w;->c()Ljava/lang/Integer;

    .line 473
    .line 474
    .line 475
    move-result-object p1

    .line 476
    if-eqz p1, :cond_15

    .line 477
    .line 478
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 479
    .line 480
    .line 481
    move-result p1

    .line 482
    invoke-virtual {v0}, Lcom/transsion/ad/bidding/base/w;->i()Landroid/view/View;

    .line 483
    .line 484
    .line 485
    move-result-object v1

    .line 486
    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 487
    .line 488
    .line 489
    move-result-object p1

    .line 490
    check-cast p1, Lcom/transsion/ad/view/AdTagView;

    .line 491
    .line 492
    if-eqz p1, :cond_15

    .line 493
    .line 494
    sget-object v1, Lcom/transsion/ad/strategy/h;->a:Lcom/transsion/ad/strategy/h;

    .line 495
    .line 496
    invoke-virtual {v1, p1}, Lcom/transsion/ad/strategy/h;->a(Landroid/view/View;)V

    .line 497
    .line 498
    .line 499
    :cond_15
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->showMedia()V

    .line 500
    .line 501
    .line 502
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 503
    .line 504
    .line 505
    invoke-virtual {v0}, Lcom/transsion/ad/bidding/base/w;->i()Landroid/view/View;

    .line 506
    .line 507
    .line 508
    move-result-object p1

    .line 509
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 510
    .line 511
    const/4 v1, -0x1

    .line 512
    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 513
    .line 514
    .line 515
    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 516
    .line 517
    .line 518
    :cond_16
    :goto_c
    return-void
.end method

.method public getLogTag()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "ad_n"

    .line 2
    .line 3
    return-object v0
.end method

.method public getMediaContainer()Landroid/widget/FrameLayout;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/view/native_ad/BiddingBuyOutNativeView;->p:Lcom/transsion/ad/bidding/base/w;

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
    iget-object v2, p0, Lcom/transsion/ad/view/native_ad/BiddingBuyOutNativeView;->p:Lcom/transsion/ad/bidding/base/w;

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
    iget-object v0, p0, Lcom/transsion/ad/view/native_ad/BiddingBuyOutNativeView;->p:Lcom/transsion/ad/bidding/base/w;

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
    iget-object v2, p0, Lcom/transsion/ad/view/native_ad/BiddingBuyOutNativeView;->p:Lcom/transsion/ad/bidding/base/w;

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

.method public isShowVolumeIcon()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/ad/view/native_ad/BiddingBuyOutNativeView;->q:Z

    .line 2
    .line 3
    return v0
.end method
