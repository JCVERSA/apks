.class final Lcom/transsion/home/viewmodel/preload/PreloadTrendingData$getAppTab$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;->z()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/n0;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "Lkotlinx/coroutines/n0;",
        "",
        "<anonymous>",
        "(Lkotlinx/coroutines/n0;)V"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.transsion.home.viewmodel.preload.PreloadTrendingData$getAppTab$1"
    f = "PreloadTrendingData.kt"
    l = {
        0xf2
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;


# direct methods
.method constructor <init>(Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/home/viewmodel/preload/PreloadTrendingData$getAppTab$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData$getAppTab$1;->this$0:Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;

    .line 2
    .line 3
    const/4 p1, 0x2

    .line 4
    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p1, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData$getAppTab$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData$getAppTab$1;->this$0:Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData$getAppTab$1;-><init>(Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;Lkotlin/coroutines/Continuation;)V

    .line 6
    .line 7
    .line 8
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData$getAppTab$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/n0;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData$getAppTab$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData$getAppTab$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData$getAppTab$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData$getAppTab$1;->label:I

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    const-string v3, " version="

    .line 9
    .line 10
    const-string v4, "PreloadTrending"

    .line 11
    .line 12
    const/4 v5, 0x1

    .line 13
    const/4 v6, 0x0

    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    if-ne v1, v5, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData$getAppTab$1;->L$0:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v0, Lcom/transsion/home/bean/AppTab;

    .line 21
    .line 22
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    .line 24
    .line 25
    goto/16 :goto_4

    .line 26
    .line 27
    :catch_0
    move-exception p1

    .line 28
    goto/16 :goto_e

    .line 29
    .line 30
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 31
    .line 32
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 33
    .line 34
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw p1

    .line 38
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    :try_start_1
    iget-object p1, p0, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData$getAppTab$1;->this$0:Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;

    .line 42
    .line 43
    invoke-static {p1}, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;->j(Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;)Lcom/transsion/home/bean/AppTab;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    if-eqz p1, :cond_3

    .line 48
    .line 49
    iget-object v1, p0, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData$getAppTab$1;->this$0:Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;

    .line 50
    .line 51
    invoke-virtual {p1}, Lcom/transsion/home/bean/AppTab;->getHomeTabs()Ljava/util/List;

    .line 52
    .line 53
    .line 54
    move-result-object v7

    .line 55
    invoke-static {v1, v7}, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;->i(Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;Ljava/util/List;)Ljava/util/List;

    .line 56
    .line 57
    .line 58
    move-result-object v7

    .line 59
    invoke-virtual {p1, v7}, Lcom/transsion/home/bean/AppTab;->resetHomeTabs(Ljava/util/List;)V

    .line 60
    .line 61
    .line 62
    invoke-static {v1, p1}, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;->h(Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;Lcom/transsion/home/bean/AppTab;)Ljava/util/List;

    .line 63
    .line 64
    .line 65
    move-result-object v7

    .line 66
    invoke-virtual {p1, v7}, Lcom/transsion/home/bean/AppTab;->setBottomTabs(Ljava/util/List;)V

    .line 67
    .line 68
    .line 69
    sget-object v7, Lwf/a;->a:Lwf/a$a;

    .line 70
    .line 71
    invoke-virtual {p1}, Lcom/transsion/home/bean/AppTab;->getBottomTabs()Ljava/util/List;

    .line 72
    .line 73
    .line 74
    move-result-object v8

    .line 75
    if-eqz v8, :cond_2

    .line 76
    .line 77
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 78
    .line 79
    .line 80
    move-result v8

    .line 81
    invoke-static {v8}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    .line 82
    .line 83
    .line 84
    move-result-object v8

    .line 85
    goto :goto_0

    .line 86
    :cond_2
    move-object v8, v6

    .line 87
    :goto_0
    invoke-virtual {p1}, Lcom/transsion/home/bean/AppTab;->getVersion()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v9

    .line 91
    new-instance v10, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    .line 95
    .line 96
    const-string v11, "get tab cache "

    .line 97
    .line 98
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v8

    .line 114
    invoke-virtual {v7, v4, v8, v5}, Lwf/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 115
    .line 116
    .line 117
    invoke-static {v1, p1}, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;->s(Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;Lcom/transsion/home/bean/AppTab;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v1}, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;->C()Landroidx/lifecycle/b0;

    .line 121
    .line 122
    .line 123
    move-result-object v7

    .line 124
    invoke-virtual {v7, p1}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    invoke-static {v1, p1}, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;->o(Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;Lcom/transsion/home/bean/AppTab;)V

    .line 128
    .line 129
    .line 130
    goto :goto_1

    .line 131
    :cond_3
    move-object p1, v6

    .line 132
    :goto_1
    sget-object v1, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    .line 133
    .line 134
    invoke-virtual {v1}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    const-string v7, "key_or_content_mode_local"

    .line 139
    .line 140
    const/4 v8, -0x1

    .line 141
    invoke-virtual {v1, v7, v8}, Lcom/tencent/mmkv/MMKV;->getInt(Ljava/lang/String;I)I

    .line 142
    .line 143
    .line 144
    move-result v1

    .line 145
    if-ltz v1, :cond_5

    .line 146
    .line 147
    if-ne v1, v5, :cond_4

    .line 148
    .line 149
    move v1, v5

    .line 150
    goto :goto_2

    .line 151
    :cond_4
    move v1, v2

    .line 152
    :goto_2
    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    goto :goto_3

    .line 157
    :cond_5
    move-object v1, v6

    .line 158
    :goto_3
    sget-object v7, Lwf/a;->a:Lwf/a$a;

    .line 159
    .line 160
    new-instance v8, Ljava/lang/StringBuilder;

    .line 161
    .line 162
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 163
    .line 164
    .line 165
    const-string v9, "homeTab getAppTab ,isUGCMode:"

    .line 166
    .line 167
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v8

    .line 177
    invoke-virtual {v7, v4, v8, v5}, Lwf/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 178
    .line 179
    .line 180
    iget-object v7, p0, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData$getAppTab$1;->this$0:Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;

    .line 181
    .line 182
    invoke-static {v7}, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;->n(Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;)Lyk/e;

    .line 183
    .line 184
    .line 185
    move-result-object v7

    .line 186
    sget-object v8, Lgg/a;->a:Lgg/a$a;

    .line 187
    .line 188
    invoke-virtual {v8}, Lgg/a$a;->a()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v8

    .line 192
    iput-object p1, p0, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData$getAppTab$1;->L$0:Ljava/lang/Object;

    .line 193
    .line 194
    iput v5, p0, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData$getAppTab$1;->label:I

    .line 195
    .line 196
    invoke-interface {v7, v1, v8, p0}, Lyk/e;->g(Ljava/lang/Boolean;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object v1

    .line 200
    if-ne v1, v0, :cond_6

    .line 201
    .line 202
    return-object v0

    .line 203
    :cond_6
    move-object v0, p1

    .line 204
    move-object p1, v1

    .line 205
    :goto_4
    iget-object v1, p0, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData$getAppTab$1;->this$0:Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;

    .line 206
    .line 207
    check-cast p1, Lcom/tn/lib/net/bean/BaseDto;

    .line 208
    .line 209
    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    move-result-object p1

    .line 213
    check-cast p1, Lcom/transsion/home/bean/AppTab;

    .line 214
    .line 215
    if-eqz p1, :cond_7

    .line 216
    .line 217
    invoke-virtual {p1}, Lcom/transsion/home/bean/AppTab;->getHomeTabs()Ljava/util/List;

    .line 218
    .line 219
    .line 220
    move-result-object v7

    .line 221
    goto :goto_5

    .line 222
    :cond_7
    move-object v7, v6

    .line 223
    :goto_5
    invoke-static {v1, v7}, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;->i(Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;Ljava/util/List;)Ljava/util/List;

    .line 224
    .line 225
    .line 226
    move-result-object v7

    .line 227
    if-eqz p1, :cond_8

    .line 228
    .line 229
    invoke-virtual {p1, v7}, Lcom/transsion/home/bean/AppTab;->resetHomeTabs(Ljava/util/List;)V

    .line 230
    .line 231
    .line 232
    :cond_8
    if-eqz p1, :cond_9

    .line 233
    .line 234
    invoke-static {v1, p1}, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;->h(Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;Lcom/transsion/home/bean/AppTab;)Ljava/util/List;

    .line 235
    .line 236
    .line 237
    move-result-object v7

    .line 238
    invoke-virtual {p1, v7}, Lcom/transsion/home/bean/AppTab;->setBottomTabs(Ljava/util/List;)V

    .line 239
    .line 240
    .line 241
    :cond_9
    sget-object v7, Lwf/a;->a:Lwf/a$a;

    .line 242
    .line 243
    if-eqz p1, :cond_a

    .line 244
    .line 245
    invoke-virtual {p1}, Lcom/transsion/home/bean/AppTab;->getHomeTabs()Ljava/util/List;

    .line 246
    .line 247
    .line 248
    move-result-object v8

    .line 249
    if-eqz v8, :cond_a

    .line 250
    .line 251
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 252
    .line 253
    .line 254
    move-result v8

    .line 255
    invoke-static {v8}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    .line 256
    .line 257
    .line 258
    move-result-object v8

    .line 259
    goto :goto_6

    .line 260
    :cond_a
    move-object v8, v6

    .line 261
    :goto_6
    new-instance v9, Ljava/lang/StringBuilder;

    .line 262
    .line 263
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 264
    .line 265
    .line 266
    const-string v10, "homeTab size="

    .line 267
    .line 268
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 272
    .line 273
    .line 274
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v8

    .line 278
    invoke-virtual {v7, v4, v8, v5}, Lwf/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 279
    .line 280
    .line 281
    if-eqz p1, :cond_b

    .line 282
    .line 283
    invoke-virtual {p1}, Lcom/transsion/home/bean/AppTab;->getBottomTabs()Ljava/util/List;

    .line 284
    .line 285
    .line 286
    move-result-object v8

    .line 287
    if-eqz v8, :cond_b

    .line 288
    .line 289
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 290
    .line 291
    .line 292
    move-result v8

    .line 293
    invoke-static {v8}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    .line 294
    .line 295
    .line 296
    move-result-object v8

    .line 297
    goto :goto_7

    .line 298
    :cond_b
    move-object v8, v6

    .line 299
    :goto_7
    if-eqz p1, :cond_c

    .line 300
    .line 301
    invoke-virtual {p1}, Lcom/transsion/home/bean/AppTab;->getVersion()Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object v9

    .line 305
    goto :goto_8

    .line 306
    :cond_c
    move-object v9, v6

    .line 307
    :goto_8
    new-instance v10, Ljava/lang/StringBuilder;

    .line 308
    .line 309
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 310
    .line 311
    .line 312
    const-string v11, "bottomTab size="

    .line 313
    .line 314
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    .line 316
    .line 317
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 318
    .line 319
    .line 320
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    .line 322
    .line 323
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    .line 325
    .line 326
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 327
    .line 328
    .line 329
    move-result-object v3

    .line 330
    invoke-virtual {v7, v4, v3, v5}, Lwf/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 331
    .line 332
    .line 333
    invoke-virtual {v1}, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;->D()Landroidx/lifecycle/b0;

    .line 334
    .line 335
    .line 336
    move-result-object v3

    .line 337
    invoke-virtual {v3, p1}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    .line 338
    .line 339
    .line 340
    invoke-static {v1, p1}, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;->o(Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;Lcom/transsion/home/bean/AppTab;)V

    .line 341
    .line 342
    .line 343
    if-eqz v0, :cond_d

    .line 344
    .line 345
    invoke-virtual {v0}, Lcom/transsion/home/bean/AppTab;->getVersion()Ljava/lang/String;

    .line 346
    .line 347
    .line 348
    move-result-object v3

    .line 349
    goto :goto_9

    .line 350
    :cond_d
    move-object v3, v6

    .line 351
    :goto_9
    if-eqz p1, :cond_e

    .line 352
    .line 353
    invoke-virtual {p1}, Lcom/transsion/home/bean/AppTab;->getVersion()Ljava/lang/String;

    .line 354
    .line 355
    .line 356
    move-result-object v7

    .line 357
    goto :goto_a

    .line 358
    :cond_e
    move-object v7, v6

    .line 359
    :goto_a
    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 360
    .line 361
    .line 362
    move-result v3

    .line 363
    if-eqz v3, :cond_13

    .line 364
    .line 365
    if-eqz v0, :cond_f

    .line 366
    .line 367
    invoke-virtual {v0}, Lcom/transsion/home/bean/AppTab;->getHomeTabs()Ljava/util/List;

    .line 368
    .line 369
    .line 370
    move-result-object v3

    .line 371
    if-eqz v3, :cond_f

    .line 372
    .line 373
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 374
    .line 375
    .line 376
    move-result v3

    .line 377
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    .line 378
    .line 379
    .line 380
    move-result-object v3

    .line 381
    goto :goto_b

    .line 382
    :cond_f
    move-object v3, v6

    .line 383
    :goto_b
    if-eqz p1, :cond_10

    .line 384
    .line 385
    invoke-virtual {p1}, Lcom/transsion/home/bean/AppTab;->getHomeTabs()Ljava/util/List;

    .line 386
    .line 387
    .line 388
    move-result-object v7

    .line 389
    if-eqz v7, :cond_10

    .line 390
    .line 391
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 392
    .line 393
    .line 394
    move-result v7

    .line 395
    invoke-static {v7}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    .line 396
    .line 397
    .line 398
    move-result-object v7

    .line 399
    goto :goto_c

    .line 400
    :cond_10
    move-object v7, v6

    .line 401
    :goto_c
    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 402
    .line 403
    .line 404
    move-result v3

    .line 405
    if-eqz v3, :cond_13

    .line 406
    .line 407
    if-eqz v0, :cond_11

    .line 408
    .line 409
    invoke-virtual {v0}, Lcom/transsion/home/bean/AppTab;->getBottomTabs()Ljava/util/List;

    .line 410
    .line 411
    .line 412
    move-result-object v0

    .line 413
    if-eqz v0, :cond_11

    .line 414
    .line 415
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 416
    .line 417
    .line 418
    move-result v0

    .line 419
    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    .line 420
    .line 421
    .line 422
    move-result-object v0

    .line 423
    goto :goto_d

    .line 424
    :cond_11
    move-object v0, v6

    .line 425
    :goto_d
    if-eqz p1, :cond_12

    .line 426
    .line 427
    invoke-virtual {p1}, Lcom/transsion/home/bean/AppTab;->getBottomTabs()Ljava/util/List;

    .line 428
    .line 429
    .line 430
    move-result-object v3

    .line 431
    if-eqz v3, :cond_12

    .line 432
    .line 433
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 434
    .line 435
    .line 436
    move-result v3

    .line 437
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    .line 438
    .line 439
    .line 440
    move-result-object v6

    .line 441
    :cond_12
    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 442
    .line 443
    .line 444
    move-result v0

    .line 445
    if-nez v0, :cond_15

    .line 446
    .line 447
    :cond_13
    invoke-static {v1, p1}, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;->q(Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;Lcom/transsion/home/bean/AppTab;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 448
    .line 449
    .line 450
    goto :goto_f

    .line 451
    :goto_e
    iget-object v0, p0, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData$getAppTab$1;->this$0:Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;

    .line 452
    .line 453
    invoke-virtual {v0}, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;->D()Landroidx/lifecycle/b0;

    .line 454
    .line 455
    .line 456
    move-result-object v0

    .line 457
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    .line 458
    .line 459
    .line 460
    move-result-object v0

    .line 461
    if-nez v0, :cond_14

    .line 462
    .line 463
    iget-object v0, p0, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData$getAppTab$1;->this$0:Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;

    .line 464
    .line 465
    invoke-static {v0, v2}, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;->r(Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;Z)V

    .line 466
    .line 467
    .line 468
    :cond_14
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 469
    .line 470
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 471
    .line 472
    .line 473
    move-result-object p1

    .line 474
    new-instance v1, Ljava/lang/StringBuilder;

    .line 475
    .line 476
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 477
    .line 478
    .line 479
    const-string v2, "getHomeTab error "

    .line 480
    .line 481
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 482
    .line 483
    .line 484
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 485
    .line 486
    .line 487
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 488
    .line 489
    .line 490
    move-result-object p1

    .line 491
    invoke-virtual {v0, v4, p1, v5}, Lwf/a$a;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 492
    .line 493
    .line 494
    :cond_15
    :goto_f
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 495
    .line 496
    return-object p1
.end method
