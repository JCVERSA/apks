.class Lcom/bytedance/sdk/openadsdk/Fmk/Sj$3;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/Fmk/Sj;->Sj(ILcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic EjP:Z

.field final synthetic HiB:Lcom/bytedance/sdk/openadsdk/Fmk/Sj;

.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

.field final synthetic TKC:Ljava/lang/String;

.field final synthetic sP:I


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/Fmk/Sj;Lcom/bytedance/sdk/openadsdk/core/model/sU;ILjava/lang/String;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/Fmk/Sj$3;->HiB:Lcom/bytedance/sdk/openadsdk/Fmk/Sj;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/Fmk/Sj$3;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 4
    .line 5
    iput p3, p0, Lcom/bytedance/sdk/openadsdk/Fmk/Sj$3;->sP:I

    .line 6
    .line 7
    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/Fmk/Sj$3;->TKC:Ljava/lang/String;

    .line 8
    .line 9
    iput-boolean p5, p0, Lcom/bytedance/sdk/openadsdk/Fmk/Sj$3;->EjP:Z

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private Sj(Lcom/bytedance/sdk/component/uA/vS;Lcom/bytedance/sdk/openadsdk/EjP/Ym;)Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;
    .locals 9
    .param p1    # Lcom/bytedance/sdk/component/uA/vS;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v8, Lcom/bytedance/sdk/openadsdk/Fmk/Sj$3$3;

    .line 2
    .line 3
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/Fmk/Sj$3;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->aZ()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v4

    .line 13
    const/4 v6, 0x1

    .line 14
    const/4 v3, 0x0

    .line 15
    move-object v0, v8

    .line 16
    move-object v1, p0

    .line 17
    move-object v5, p2

    .line 18
    move-object v7, p1

    .line 19
    invoke-direct/range {v0 .. v7}, Lcom/bytedance/sdk/openadsdk/Fmk/Sj$3$3;-><init>(Lcom/bytedance/sdk/openadsdk/Fmk/Sj$3;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/Yf;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/EjP/Ym;ZLcom/bytedance/sdk/component/uA/vS;)V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/Fmk/Sj$3;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 23
    .line 24
    invoke-virtual {v8, p1}, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/Fmk/Sj$3;->TKC:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {v8, p1}, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;->Sj(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    return-object v8
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/Fmk/Sj$3;->HiB:Lcom/bytedance/sdk/openadsdk/Fmk/Sj;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/Fmk/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/Fmk/Sj;)Ljava/util/LinkedHashMap;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/Fmk/Sj$3;->HiB:Lcom/bytedance/sdk/openadsdk/Fmk/Sj;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/Fmk/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/Fmk/Sj;)Ljava/util/LinkedHashMap;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Ljava/util/AbstractMap;->size()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/Fmk/Sj;->sP()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-lt v0, v2, :cond_1

    .line 25
    .line 26
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/Fmk/Sj$3;->HiB:Lcom/bytedance/sdk/openadsdk/Fmk/Sj;

    .line 27
    .line 28
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/Fmk/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/Fmk/Sj;)Ljava/util/LinkedHashMap;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    check-cast v0, Ljava/util/Map$Entry;

    .line 45
    .line 46
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    check-cast v2, Ljava/lang/ref/SoftReference;

    .line 51
    .line 52
    if-eqz v2, :cond_1

    .line 53
    .line 54
    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    check-cast v2, Lcom/bytedance/sdk/component/uA/vS;

    .line 59
    .line 60
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/Fmk/Sj$3;->HiB:Lcom/bytedance/sdk/openadsdk/Fmk/Sj;

    .line 61
    .line 62
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    check-cast v0, Ljava/lang/Integer;

    .line 67
    .line 68
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/Fmk/Sj$3;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 73
    .line 74
    if-nez v2, :cond_0

    .line 75
    .line 76
    const-string v2, ""

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_0
    invoke-virtual {v2}, Lcom/bytedance/sdk/component/uA/vS;->getTag()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    :goto_0
    invoke-static {v3, v0, v1, v4, v2}, Lcom/bytedance/sdk/openadsdk/Fmk/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/Fmk/Sj;IILcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/Fmk/Sj$3;->HiB:Lcom/bytedance/sdk/openadsdk/Fmk/Sj;

    .line 87
    .line 88
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/Fmk/Sj;->sP(Lcom/bytedance/sdk/openadsdk/Fmk/Sj;)Landroid/os/Handler;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    if-eqz v0, :cond_2

    .line 93
    .line 94
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/Fmk/Sj$3;->sP:I

    .line 99
    .line 100
    iput v2, v0, Landroid/os/Message;->what:I

    .line 101
    .line 102
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/Fmk/Sj$3;->HiB:Lcom/bytedance/sdk/openadsdk/Fmk/Sj;

    .line 103
    .line 104
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/Fmk/Sj;->sP(Lcom/bytedance/sdk/openadsdk/Fmk/Sj;)Landroid/os/Handler;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/Fmk/Sj;->TKC()J

    .line 109
    .line 110
    .line 111
    move-result-wide v3

    .line 112
    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 113
    .line 114
    .line 115
    :cond_2
    new-instance v0, Ljava/lang/ref/SoftReference;

    .line 116
    .line 117
    new-instance v2, Lcom/bytedance/sdk/component/uA/vS;

    .line 118
    .line 119
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    .line 120
    .line 121
    .line 122
    move-result-object v3

    .line 123
    const/4 v4, 0x0

    .line 124
    invoke-direct {v2, v3, v4}, Lcom/bytedance/sdk/component/uA/vS;-><init>(Landroid/content/Context;Z)V

    .line 125
    .line 126
    .line 127
    invoke-direct {v0, v2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v2

    .line 134
    check-cast v2, Lcom/bytedance/sdk/component/uA/vS;

    .line 135
    .line 136
    if-nez v2, :cond_3

    .line 137
    .line 138
    return-void

    .line 139
    :cond_3
    const/4 v3, 0x2

    .line 140
    const/4 v5, 0x0

    .line 141
    invoke-virtual {v2, v3, v5}, Lcom/bytedance/sdk/component/uA/vS;->setLayerType(ILandroid/graphics/Paint;)V

    .line 142
    .line 143
    .line 144
    const/4 v6, 0x4

    .line 145
    invoke-static {v2, v6}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->Sj(Landroid/view/View;I)V

    .line 146
    .line 147
    .line 148
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/Fmk/Sj$3;->TKC:Ljava/lang/String;

    .line 149
    .line 150
    invoke-virtual {v2, v6}, Lcom/bytedance/sdk/component/uA/vS;->setTag(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v2, v1}, Lcom/bytedance/sdk/component/uA/vS;->setLandingPage(Z)V

    .line 154
    .line 155
    .line 156
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/Fmk/Sj$3;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 157
    .line 158
    invoke-virtual {v6}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->sef()Lcom/bytedance/sdk/openadsdk/core/model/dNu;

    .line 159
    .line 160
    .line 161
    move-result-object v6

    .line 162
    if-eqz v6, :cond_4

    .line 163
    .line 164
    invoke-virtual {v6}, Lcom/bytedance/sdk/openadsdk/core/model/dNu;->Sj()I

    .line 165
    .line 166
    .line 167
    move-result v6

    .line 168
    goto :goto_1

    .line 169
    :cond_4
    const/4 v6, 0x3

    .line 170
    :goto_1
    if-ne v6, v3, :cond_7

    .line 171
    .line 172
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    .line 173
    .line 174
    .line 175
    move-result-object v6

    .line 176
    invoke-static {v6}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->TKC(Landroid/content/Context;)I

    .line 177
    .line 178
    .line 179
    move-result v6

    .line 180
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    .line 181
    .line 182
    .line 183
    move-result-object v7

    .line 184
    invoke-static {v7}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->HiB(Landroid/content/Context;)I

    .line 185
    .line 186
    .line 187
    move-result v7

    .line 188
    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/Fmk/Sj$3;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 189
    .line 190
    invoke-virtual {v8}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->liH()I

    .line 191
    .line 192
    .line 193
    move-result v8

    .line 194
    if-ne v8, v1, :cond_5

    .line 195
    .line 196
    if-lt v6, v7, :cond_6

    .line 197
    .line 198
    invoke-virtual {v2, v4, v4, v7, v6}, Landroid/view/View;->layout(IIII)V

    .line 199
    .line 200
    .line 201
    goto :goto_2

    .line 202
    :cond_5
    if-ne v8, v3, :cond_8

    .line 203
    .line 204
    if-ge v6, v7, :cond_6

    .line 205
    .line 206
    invoke-virtual {v2, v4, v4, v7, v6}, Landroid/view/View;->layout(IIII)V

    .line 207
    .line 208
    .line 209
    goto :goto_2

    .line 210
    :cond_6
    invoke-virtual {v2, v4, v4, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 211
    .line 212
    .line 213
    goto :goto_2

    .line 214
    :cond_7
    if-ne v6, v1, :cond_8

    .line 215
    .line 216
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/Zq;->Sj()Lcom/bytedance/sdk/openadsdk/core/Zq;

    .line 217
    .line 218
    .line 219
    move-result-object v6

    .line 220
    invoke-virtual {v6}, Lcom/bytedance/sdk/openadsdk/core/Zq;->HiB()Lcom/bytedance/sdk/openadsdk/utils/Sj;

    .line 221
    .line 222
    .line 223
    move-result-object v6

    .line 224
    if-eqz v6, :cond_8

    .line 225
    .line 226
    invoke-virtual {v6}, Lcom/bytedance/sdk/openadsdk/utils/Sj;->sP()Landroid/app/Activity;

    .line 227
    .line 228
    .line 229
    move-result-object v7

    .line 230
    if-eqz v7, :cond_8

    .line 231
    .line 232
    invoke-virtual {v7}, Ljava/lang/Object;->hashCode()I

    .line 233
    .line 234
    .line 235
    move-result v8

    .line 236
    new-instance v9, Lcom/bytedance/sdk/openadsdk/Fmk/Sj$3$1;

    .line 237
    .line 238
    invoke-direct {v9, p0, v8, v2}, Lcom/bytedance/sdk/openadsdk/Fmk/Sj$3$1;-><init>(Lcom/bytedance/sdk/openadsdk/Fmk/Sj$3;ILcom/bytedance/sdk/component/uA/vS;)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {v6, v9}, Lcom/bytedance/sdk/openadsdk/utils/Sj;->Sj(Lcom/bytedance/sdk/component/adexpress/Sj;)V

    .line 242
    .line 243
    .line 244
    const v6, 0x1020002

    .line 245
    .line 246
    .line 247
    invoke-virtual {v7, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 248
    .line 249
    .line 250
    move-result-object v6

    .line 251
    check-cast v6, Landroid/widget/FrameLayout;

    .line 252
    .line 253
    if-eqz v6, :cond_8

    .line 254
    .line 255
    invoke-virtual {v6, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 256
    .line 257
    .line 258
    :cond_8
    :goto_2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/Jcg/sP;->Sj()Lcom/bytedance/sdk/openadsdk/Jcg/sP;

    .line 259
    .line 260
    .line 261
    move-result-object v6

    .line 262
    invoke-virtual {v6}, Lcom/bytedance/sdk/openadsdk/Jcg/sP;->sP()Lcom/bykv/vk/openvk/preload/falconx/loader/ILoader;

    .line 263
    .line 264
    .line 265
    move-result-object v6

    .line 266
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/Jcg/sP;->Sj()Lcom/bytedance/sdk/openadsdk/Jcg/sP;

    .line 267
    .line 268
    .line 269
    move-result-object v7

    .line 270
    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/Fmk/Sj$3;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 271
    .line 272
    invoke-virtual {v8}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->eMB()Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v8

    .line 276
    invoke-virtual {v7, v6, v8}, Lcom/bytedance/sdk/openadsdk/Jcg/sP;->Sj(Lcom/bykv/vk/openvk/preload/falconx/loader/ILoader;Ljava/lang/String;)I

    .line 277
    .line 278
    .line 279
    move-result v6

    .line 280
    new-instance v7, Lcom/bytedance/sdk/openadsdk/EjP/Ym;

    .line 281
    .line 282
    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/Fmk/Sj$3;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 283
    .line 284
    invoke-virtual {v2}, Lcom/bytedance/sdk/component/uA/vS;->getWebView()Landroid/webkit/WebView;

    .line 285
    .line 286
    .line 287
    move-result-object v9

    .line 288
    invoke-direct {v7, v8, v9}, Lcom/bytedance/sdk/openadsdk/EjP/Ym;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/sU;Landroid/webkit/WebView;)V

    .line 289
    .line 290
    .line 291
    if-lez v6, :cond_9

    .line 292
    .line 293
    move v4, v3

    .line 294
    :cond_9
    invoke-virtual {v7, v4}, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->Sj(I)V

    .line 295
    .line 296
    .line 297
    invoke-virtual {v7, v1}, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->Sj(Z)V

    .line 298
    .line 299
    .line 300
    invoke-virtual {v7, v1}, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->sP(Z)Lcom/bytedance/sdk/openadsdk/EjP/Ym;

    .line 301
    .line 302
    .line 303
    invoke-direct {p0, v2, v7}, Lcom/bytedance/sdk/openadsdk/Fmk/Sj$3;->Sj(Lcom/bytedance/sdk/component/uA/vS;Lcom/bytedance/sdk/openadsdk/EjP/Ym;)Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;

    .line 304
    .line 305
    .line 306
    move-result-object v1

    .line 307
    invoke-virtual {v2, v1}, Lcom/bytedance/sdk/component/uA/vS;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 308
    .line 309
    .line 310
    new-instance v1, Lcom/bytedance/sdk/openadsdk/Fmk/Sj$3$2;

    .line 311
    .line 312
    invoke-direct {v1, p0, v5, v7, v2}, Lcom/bytedance/sdk/openadsdk/Fmk/Sj$3$2;-><init>(Lcom/bytedance/sdk/openadsdk/Fmk/Sj$3;Lcom/bytedance/sdk/openadsdk/core/Yf;Lcom/bytedance/sdk/openadsdk/EjP/Ym;Lcom/bytedance/sdk/component/uA/vS;)V

    .line 313
    .line 314
    .line 315
    invoke-virtual {v2, v1}, Lcom/bytedance/sdk/component/uA/vS;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 316
    .line 317
    .line 318
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/Fmk/Sj$3;->HiB:Lcom/bytedance/sdk/openadsdk/Fmk/Sj;

    .line 319
    .line 320
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/Fmk/Sj$3;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 321
    .line 322
    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Chv()Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object v3

    .line 326
    invoke-static {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/Fmk/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/Fmk/Sj;Lcom/bytedance/sdk/component/uA/vS;Ljava/lang/String;)V

    .line 327
    .line 328
    .line 329
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 330
    .line 331
    .line 332
    move-result-wide v1

    .line 333
    const-wide/16 v3, 0x3e8

    .line 334
    .line 335
    div-long/2addr v1, v3

    .line 336
    long-to-double v1, v1

    .line 337
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/Fmk/Sj$3;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 338
    .line 339
    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->cra()D

    .line 340
    .line 341
    .line 342
    move-result-wide v3

    .line 343
    sub-double/2addr v1, v3

    .line 344
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 345
    .line 346
    .line 347
    move-result-object v1

    .line 348
    invoke-virtual {v1}, Ljava/lang/Double;->floatValue()F

    .line 349
    .line 350
    .line 351
    move-result v1

    .line 352
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/Fmk/Sj$3;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 353
    .line 354
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/Fmk/Sj$3;->TKC:Ljava/lang/String;

    .line 355
    .line 356
    const-string v4, "web_start_pre_render"

    .line 357
    .line 358
    invoke-static {v2, v3, v1, v4}, Lcom/bytedance/sdk/openadsdk/Fmk/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;FLjava/lang/String;)V

    .line 359
    .line 360
    .line 361
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/Fmk/Sj$3;->HiB:Lcom/bytedance/sdk/openadsdk/Fmk/Sj;

    .line 362
    .line 363
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/Fmk/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/Fmk/Sj;)Ljava/util/LinkedHashMap;

    .line 364
    .line 365
    .line 366
    move-result-object v1

    .line 367
    if-eqz v1, :cond_a

    .line 368
    .line 369
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/Fmk/Sj$3;->HiB:Lcom/bytedance/sdk/openadsdk/Fmk/Sj;

    .line 370
    .line 371
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/Fmk/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/Fmk/Sj;)Ljava/util/LinkedHashMap;

    .line 372
    .line 373
    .line 374
    move-result-object v1

    .line 375
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/Fmk/Sj$3;->sP:I

    .line 376
    .line 377
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 378
    .line 379
    .line 380
    move-result-object v2

    .line 381
    invoke-virtual {v1, v2, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    .line 383
    .line 384
    :cond_a
    return-void
.end method
