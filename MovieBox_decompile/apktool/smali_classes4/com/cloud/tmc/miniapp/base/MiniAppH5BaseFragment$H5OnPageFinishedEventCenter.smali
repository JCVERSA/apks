.class public final Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$H5OnPageFinishedEventCenter;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "H5OnPageFinishedEventCenter"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field private final app:Lcom/cloud/tmc/integration/structure/App;

.field private final page:Lcom/cloud/tmc/integration/structure/Page;

.field public final synthetic this$0:Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;Lcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/integration/structure/Page;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/integration/structure/App;",
            "Lcom/cloud/tmc/integration/structure/Page;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$H5OnPageFinishedEventCenter;->this$0:Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$H5OnPageFinishedEventCenter;->app:Lcom/cloud/tmc/integration/structure/App;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$H5OnPageFinishedEventCenter;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final getApp()Lcom/cloud/tmc/integration/structure/App;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$H5OnPageFinishedEventCenter;->app:Lcom/cloud/tmc/integration/structure/App;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPage()Lcom/cloud/tmc/integration/structure/Page;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$H5OnPageFinishedEventCenter;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 2
    .line 3
    return-object v0
.end method

.method public onEvent(Lcom/cloud/tmc/kernel/proxy/eventcenter/IEvent;)Z
    .locals 9

    .line 1
    const-string v0, "2"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    :try_start_0
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$H5OnPageFinishedEventCenter;->this$0:Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;

    .line 5
    .line 6
    invoke-static {v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->access$getTAG_NEW$p(Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    const-string v3, "juggist[FCP] -> \u6267\u884c\u56de\u8c03"

    .line 11
    .line 12
    invoke-static {v2, v3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$H5OnPageFinishedEventCenter;->app:Lcom/cloud/tmc/integration/structure/App;

    .line 16
    .line 17
    if-eqz v2, :cond_d

    .line 18
    .line 19
    const-class v3, Lcom/cloud/tmc/miniapp/base/ShowPageStore;

    .line 20
    .line 21
    invoke-interface {v2, v3}, Lcom/cloud/tmc/kernel/node/DataNode;->getData(Ljava/lang/Class;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Lcom/cloud/tmc/miniapp/base/ShowPageStore;

    .line 26
    .line 27
    if-eqz v2, :cond_d

    .line 28
    .line 29
    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/base/ShowPageStore;->findShowPages()Ljava/util/Stack;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    if-nez v2, :cond_0

    .line 34
    .line 35
    goto/16 :goto_4

    .line 36
    .line 37
    :cond_0
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-nez v3, :cond_1

    .line 42
    .line 43
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$H5OnPageFinishedEventCenter;->this$0:Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;

    .line 44
    .line 45
    invoke-static {p1}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->access$getTAG_NEW$p(Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    const-string v0, "juggist[FCP] -> showPages.size == 0 return"

    .line 50
    .line 51
    invoke-static {p1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    return v1

    .line 55
    :cond_1
    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    check-cast v2, Lcom/cloud/tmc/miniapp/base/ShowPageData;

    .line 60
    .line 61
    if-nez v2, :cond_2

    .line 62
    .line 63
    return v1

    .line 64
    :cond_2
    iget-object v3, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$H5OnPageFinishedEventCenter;->this$0:Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;

    .line 65
    .line 66
    invoke-static {v3}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->access$getTAG_NEW$p(Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->getOriginalUrl()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    new-instance v5, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    .line 78
    .line 79
    const-string v6, "juggist[FCP] -> originalUrl:"

    .line 80
    .line 81
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    invoke-static {v3, v4}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    iget-object v3, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$H5OnPageFinishedEventCenter;->this$0:Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;

    .line 95
    .line 96
    invoke-static {v3}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->access$getTAG_NEW$p(Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->getUrl()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v4

    .line 104
    new-instance v5, Ljava/lang/StringBuilder;

    .line 105
    .line 106
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 107
    .line 108
    .line 109
    const-string v6, "juggist[FCP] -> url        :"

    .line 110
    .line 111
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v4

    .line 121
    invoke-static {v3, v4}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    iget-object v3, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$H5OnPageFinishedEventCenter;->this$0:Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;

    .line 125
    .line 126
    invoke-static {v3}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->access$getTAG_NEW$p(Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v3

    .line 130
    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->getRequestUrl()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v4

    .line 134
    new-instance v5, Ljava/lang/StringBuilder;

    .line 135
    .line 136
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 137
    .line 138
    .line 139
    const-string v6, "juggist[FCP] -> requestUrl :"

    .line 140
    .line 141
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v4

    .line 151
    invoke-static {v3, v4}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    iget-object v3, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$H5OnPageFinishedEventCenter;->this$0:Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;

    .line 155
    .line 156
    invoke-static {v3}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->access$getTAG_NEW$p(Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v3

    .line 160
    new-instance v4, Ljava/lang/StringBuilder;

    .line 161
    .line 162
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 163
    .line 164
    .line 165
    const-string v5, "juggist[FCP] -> showPages:"

    .line 166
    .line 167
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v4

    .line 177
    invoke-static {v3, v4}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->getStatus()Lcom/cloud/tmc/miniapp/base/ShowPageStatus;

    .line 181
    .line 182
    .line 183
    move-result-object v3

    .line 184
    invoke-virtual {v3}, Lcom/cloud/tmc/miniapp/base/ShowPageStatus;->getType()I

    .line 185
    .line 186
    .line 187
    move-result v3

    .line 188
    sget-object v4, Lcom/cloud/tmc/miniapp/base/ShowPageStatus;->PAGE_START:Lcom/cloud/tmc/miniapp/base/ShowPageStatus;

    .line 189
    .line 190
    invoke-virtual {v4}, Lcom/cloud/tmc/miniapp/base/ShowPageStatus;->getType()I

    .line 191
    .line 192
    .line 193
    move-result v4

    .line 194
    if-eq v3, v4, :cond_3

    .line 195
    .line 196
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$H5OnPageFinishedEventCenter;->this$0:Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;

    .line 197
    .line 198
    invoke-static {p1}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->access$getTAG_NEW$p(Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;)Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object p1

    .line 202
    const-string v0, "juggist[FCP] -> showPage.status != ShowPageStatus.PAGE_START return"

    .line 203
    .line 204
    invoke-static {p1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    return v1

    .line 208
    :cond_3
    const/4 v3, 0x0

    .line 209
    if-eqz p1, :cond_4

    .line 210
    .line 211
    invoke-interface {p1}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEvent;->getData()Ljava/util/Map;

    .line 212
    .line 213
    .line 214
    move-result-object p1

    .line 215
    if-eqz p1, :cond_4

    .line 216
    .line 217
    const-string v4, "params"

    .line 218
    .line 219
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    move-result-object p1

    .line 223
    goto :goto_0

    .line 224
    :cond_4
    move-object p1, v3

    .line 225
    :goto_0
    instance-of v4, p1, Ljava/lang/String;

    .line 226
    .line 227
    if-eqz v4, :cond_5

    .line 228
    .line 229
    check-cast p1, Ljava/lang/String;

    .line 230
    .line 231
    goto :goto_1

    .line 232
    :cond_5
    move-object p1, v3

    .line 233
    :goto_1
    if-nez p1, :cond_6

    .line 234
    .line 235
    const-string p1, ""

    .line 236
    .line 237
    :cond_6
    const-class v4, Lcom/cloud/tmc/render/IPageChainCallback$OnPageFinishedData;

    .line 238
    .line 239
    invoke-static {p1, v4}, Lcom/cloud/tmc/miniutils/util/GsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 240
    .line 241
    .line 242
    move-result-object p1

    .line 243
    const-string v4, "fromJson(params, IPageCh\u2026FinishedData::class.java)"

    .line 244
    .line 245
    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    check-cast p1, Lcom/cloud/tmc/render/IPageChainCallback$OnPageFinishedData;

    .line 249
    .line 250
    invoke-virtual {p1}, Lcom/cloud/tmc/render/IPageChainCallback$OnPageFinishedData;->getUrl()Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v4

    .line 254
    invoke-virtual {p1}, Lcom/cloud/tmc/render/IPageChainCallback$OnPageFinishedData;->getFcpCurrentTimeMillis()J

    .line 255
    .line 256
    .line 257
    move-result-wide v5

    .line 258
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$H5OnPageFinishedEventCenter;->this$0:Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;

    .line 259
    .line 260
    invoke-static {p1}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->access$getTAG_NEW$p(Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;)Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object p1

    .line 264
    new-instance v7, Ljava/lang/StringBuilder;

    .line 265
    .line 266
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 267
    .line 268
    .line 269
    const-string v8, "juggist[FCP] -> FCPUrl:"

    .line 270
    .line 271
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    .line 273
    .line 274
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object v7

    .line 281
    invoke-static {p1, v7}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    .line 283
    .line 284
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$H5OnPageFinishedEventCenter;->this$0:Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;

    .line 285
    .line 286
    invoke-static {p1}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->access$getTAG_NEW$p(Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;)Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object p1

    .line 290
    new-instance v7, Ljava/lang/StringBuilder;

    .line 291
    .line 292
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 293
    .line 294
    .line 295
    const-string v8, "juggist[FCP] -> FCPTime:"

    .line 296
    .line 297
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    .line 299
    .line 300
    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 301
    .line 302
    .line 303
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object v7

    .line 307
    invoke-static {p1, v7}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    .line 309
    .line 310
    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->getUrl()Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object p1

    .line 314
    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 315
    .line 316
    .line 317
    move-result p1

    .line 318
    if-nez p1, :cond_7

    .line 319
    .line 320
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$H5OnPageFinishedEventCenter;->this$0:Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;

    .line 321
    .line 322
    invoke-static {p1}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->access$getTAG_NEW$p(Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;)Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object p1

    .line 326
    const-string v0, "juggist[FCP] -> url != FCPUrl return"

    .line 327
    .line 328
    invoke-static {p1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    .line 330
    .line 331
    return v1

    .line 332
    :cond_7
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$H5OnPageFinishedEventCenter;->this$0:Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;

    .line 333
    .line 334
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->getTrackPointLoadData()Z

    .line 335
    .line 336
    .line 337
    move-result p1

    .line 338
    const/4 v4, 0x0

    .line 339
    if-eqz p1, :cond_8

    .line 340
    .line 341
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$H5OnPageFinishedEventCenter;->this$0:Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;

    .line 342
    .line 343
    invoke-virtual {p1, v4}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->setTrackPointLoadData(Z)V

    .line 344
    .line 345
    .line 346
    move v4, v1

    .line 347
    :cond_8
    new-instance p1, Landroid/os/Bundle;

    .line 348
    .line 349
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 350
    .line 351
    .line 352
    sget-object v7, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_PATH:Ljava/lang/String;

    .line 353
    .line 354
    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->getRequestUrl()Ljava/lang/String;

    .line 355
    .line 356
    .line 357
    move-result-object v8

    .line 358
    invoke-virtual {p1, v7, v8}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    .line 360
    .line 361
    sget-object v7, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_ID:Ljava/lang/String;

    .line 362
    .line 363
    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->getVirtual_h5PageId()Ljava/lang/String;

    .line 364
    .line 365
    .line 366
    move-result-object v8

    .line 367
    invoke-virtual {p1, v7, v8}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    .line 369
    .line 370
    sget-object v7, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->FCP_CURRENT_TIMEMILLIS:Ljava/lang/String;

    .line 371
    .line 372
    invoke-virtual {p1, v7, v5, v6}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 373
    .line 374
    .line 375
    sget-object v5, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_CATEGOR_TYPE:Ljava/lang/String;

    .line 376
    .line 377
    invoke-virtual {p1, v5, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    .line 379
    .line 380
    sget-object v5, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->CHAIN_DRAW_END_TYPE:Ljava/lang/String;

    .line 381
    .line 382
    invoke-virtual {p1, v5, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    .line 384
    .line 385
    sget-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_TYPE_LOAD_DATA:Ljava/lang/String;

    .line 386
    .line 387
    invoke-virtual {p1, v0, v4}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 388
    .line 389
    .line 390
    const-string v0, "pageRandomId"

    .line 391
    .line 392
    iget-object v4, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$H5OnPageFinishedEventCenter;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 393
    .line 394
    if-eqz v4, :cond_9

    .line 395
    .line 396
    invoke-interface {v4}, Lcom/cloud/tmc/integration/structure/Page;->getPageRandomIdByGAId()Ljava/lang/String;

    .line 397
    .line 398
    .line 399
    move-result-object v4

    .line 400
    goto :goto_2

    .line 401
    :cond_9
    move-object v4, v3

    .line 402
    :goto_2
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 403
    .line 404
    .line 405
    move-result-object v4

    .line 406
    invoke-virtual {p1, v0, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    .line 408
    .line 409
    const-string v0, "pageUniqueId"

    .line 410
    .line 411
    invoke-static {}, Lcom/cloud/tmc/integration/utils/DeviceUtil;->getGAId()Ljava/lang/String;

    .line 412
    .line 413
    .line 414
    move-result-object v4

    .line 415
    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->getVirtual_h5PageId()Ljava/lang/String;

    .line 416
    .line 417
    .line 418
    move-result-object v5

    .line 419
    new-instance v6, Ljava/lang/StringBuilder;

    .line 420
    .line 421
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 422
    .line 423
    .line 424
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 425
    .line 426
    .line 427
    const-string v4, "_"

    .line 428
    .line 429
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    .line 431
    .line 432
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    .line 434
    .line 435
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 436
    .line 437
    .line 438
    move-result-object v4

    .line 439
    invoke-virtual {p1, v0, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    .line 441
    .line 442
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$H5OnPageFinishedEventCenter;->app:Lcom/cloud/tmc/integration/structure/App;

    .line 443
    .line 444
    if-nez v0, :cond_a

    .line 445
    .line 446
    goto :goto_3

    .line 447
    :cond_a
    invoke-interface {v0, v1}, Lcom/cloud/tmc/integration/structure/App;->setMiniAppLoadStatus(Z)V

    .line 448
    .line 449
    .line 450
    :goto_3
    sget-object v0, Lcom/cloud/tmc/miniapp/base/ShowPageStatus;->PAGE_PROGRESS100:Lcom/cloud/tmc/miniapp/base/ShowPageStatus;

    .line 451
    .line 452
    invoke-virtual {v2, v0}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->setStatus(Lcom/cloud/tmc/miniapp/base/ShowPageStatus;)V

    .line 453
    .line 454
    .line 455
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$H5OnPageFinishedEventCenter;->this$0:Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;

    .line 456
    .line 457
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 458
    .line 459
    .line 460
    move-result-object v0

    .line 461
    if-eqz v0, :cond_c

    .line 462
    .line 463
    sget-object v4, Lcom/cloud/tmc/integration/utils/PrivacyUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/PrivacyUtils;

    .line 464
    .line 465
    iget-object v5, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$H5OnPageFinishedEventCenter;->app:Lcom/cloud/tmc/integration/structure/App;

    .line 466
    .line 467
    if-eqz v5, :cond_b

    .line 468
    .line 469
    invoke-interface {v5}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 470
    .line 471
    .line 472
    move-result-object v3

    .line 473
    :cond_b
    invoke-virtual {v4, v0, v3}, Lcom/cloud/tmc/integration/utils/PrivacyUtils;->updateNewUserStatus(Landroid/content/Context;Ljava/lang/String;)V

    .line 474
    .line 475
    .line 476
    :cond_c
    new-instance v0, Lcom/cloud/tmc/integration/chain/endState/DrawViewEndState;

    .line 477
    .line 478
    invoke-direct {v0, p1}, Lcom/cloud/tmc/integration/chain/endState/DrawViewEndState;-><init>(Landroid/os/Bundle;)V

    .line 479
    .line 480
    .line 481
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$H5OnPageFinishedEventCenter;->this$0:Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;

    .line 482
    .line 483
    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->getVirtual_h5PageId()Ljava/lang/String;

    .line 484
    .line 485
    .line 486
    move-result-object v2

    .line 487
    invoke-static {p1, v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->access$getPageChainContext(Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;Ljava/lang/String;)Lcom/cloud/tmc/integration/chain/page/PageChainContext;

    .line 488
    .line 489
    .line 490
    move-result-object p1

    .line 491
    invoke-virtual {v0, p1}, Lcom/cloud/tmc/integration/chain/endState/DrawViewEndState;->setChainContext(Lcom/cloud/tmc/integration/chain/ChainContext;)V

    .line 492
    .line 493
    .line 494
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$H5OnPageFinishedEventCenter;->this$0:Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;

    .line 495
    .line 496
    invoke-static {p1}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->access$getTAG_NEW$p(Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;)Ljava/lang/String;

    .line 497
    .line 498
    .line 499
    move-result-object p1

    .line 500
    const-string v0, "juggist[FCP] -> \u9759\u6001\u8d44\u6e90\u6e32\u67d3\u6210\u529f"

    .line 501
    .line 502
    invoke-static {p1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 503
    .line 504
    .line 505
    nop

    .line 506
    :catchall_0
    :cond_d
    :goto_4
    return v1
.end method
