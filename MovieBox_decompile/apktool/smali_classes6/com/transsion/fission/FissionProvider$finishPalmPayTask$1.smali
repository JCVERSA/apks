.class final Lcom/transsion/fission/FissionProvider$finishPalmPayTask$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/fission/FissionProvider;->f(I)V
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
    c = "com.transsion.fission.FissionProvider$finishPalmPayTask$1"
    f = "FissionProvider.kt"
    l = {
        0x83
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $subjectType:I

.field label:I

.field final synthetic this$0:Lcom/transsion/fission/FissionProvider;


# direct methods
.method constructor <init>(ILcom/transsion/fission/FissionProvider;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/transsion/fission/FissionProvider;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/fission/FissionProvider$finishPalmPayTask$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/transsion/fission/FissionProvider$finishPalmPayTask$1;->$subjectType:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/fission/FissionProvider$finishPalmPayTask$1;->this$0:Lcom/transsion/fission/FissionProvider;

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static synthetic a(Z)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/fission/FissionProvider$finishPalmPayTask$1;->h(Z)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic d(Lcom/transsion/bean/HomePopupEntity;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/fission/FissionProvider$finishPalmPayTask$1;->g(Lcom/transsion/bean/HomePopupEntity;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final g(Lcom/transsion/bean/HomePopupEntity;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    const-class v1, Lwj/a;

    .line 5
    .line 6
    invoke-static {v1, v0}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lwj/a;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    new-instance v1, Lcom/transsion/fission/o;

    .line 15
    .line 16
    invoke-direct {v1}, Lcom/transsion/fission/o;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-interface {v0, p0, v1}, Lwj/a;->b(Lcom/transsion/bean/HomePopupEntity;Lkotlin/jvm/functions/Function1;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method private static final h(Z)Lkotlin/Unit;
    .locals 0

    .line 1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
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
    new-instance p1, Lcom/transsion/fission/FissionProvider$finishPalmPayTask$1;

    .line 2
    .line 3
    iget v0, p0, Lcom/transsion/fission/FissionProvider$finishPalmPayTask$1;->$subjectType:I

    .line 4
    .line 5
    iget-object v1, p0, Lcom/transsion/fission/FissionProvider$finishPalmPayTask$1;->this$0:Lcom/transsion/fission/FissionProvider;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lcom/transsion/fission/FissionProvider$finishPalmPayTask$1;-><init>(ILcom/transsion/fission/FissionProvider;Lkotlin/coroutines/Continuation;)V

    .line 8
    .line 9
    .line 10
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/fission/FissionProvider$finishPalmPayTask$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/fission/FissionProvider$finishPalmPayTask$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/fission/FissionProvider$finishPalmPayTask$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/fission/FissionProvider$finishPalmPayTask$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget v2, v1, Lcom/transsion/fission/FissionProvider$finishPalmPayTask$1;->label:I

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    const/4 v4, 0x1

    .line 11
    const/4 v5, 0x0

    .line 12
    if-eqz v2, :cond_1

    .line 13
    .line 14
    if-ne v2, v4, :cond_0

    .line 15
    .line 16
    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    .line 19
    move-object/from16 v2, p1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception v0

    .line 23
    goto/16 :goto_6

    .line 24
    .line 25
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 26
    .line 27
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 28
    .line 29
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw v0

    .line 33
    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    iget v2, v1, Lcom/transsion/fission/FissionProvider$finishPalmPayTask$1;->$subjectType:I

    .line 37
    .line 38
    iget-object v6, v1, Lcom/transsion/fission/FissionProvider$finishPalmPayTask$1;->this$0:Lcom/transsion/fission/FissionProvider;

    .line 39
    .line 40
    :try_start_1
    sget-object v7, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 41
    .line 42
    new-instance v7, Lorg/json/JSONObject;

    .line 43
    .line 44
    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 45
    .line 46
    .line 47
    const-string v8, "subjectType"

    .line 48
    .line 49
    invoke-virtual {v7, v8, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 50
    .line 51
    .line 52
    sget-object v2, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    .line 53
    .line 54
    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v7

    .line 58
    const-string v8, "toString(...)"

    .line 59
    .line 60
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    sget-object v8, Lokhttp3/MediaType;->Companion:Lokhttp3/MediaType$Companion;

    .line 64
    .line 65
    const-string v9, "application/json"

    .line 66
    .line 67
    invoke-virtual {v8, v9}, Lokhttp3/MediaType$Companion;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    .line 68
    .line 69
    .line 70
    move-result-object v8

    .line 71
    invoke-virtual {v2, v7, v8}, Lokhttp3/RequestBody$Companion;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    invoke-static {v6}, Lcom/transsion/fission/FissionProvider;->k(Lcom/transsion/fission/FissionProvider;)Lgk/b;

    .line 76
    .line 77
    .line 78
    move-result-object v6

    .line 79
    if-eqz v6, :cond_3

    .line 80
    .line 81
    sget-object v7, Lgg/a;->a:Lgg/a$a;

    .line 82
    .line 83
    invoke-virtual {v7}, Lgg/a$a;->a()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v7

    .line 87
    iput v4, v1, Lcom/transsion/fission/FissionProvider$finishPalmPayTask$1;->label:I

    .line 88
    .line 89
    invoke-interface {v6, v7, v2, v1}, Lgk/b;->a(Ljava/lang/String;Lokhttp3/RequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    if-ne v2, v0, :cond_2

    .line 94
    .line 95
    return-object v0

    .line 96
    :cond_2
    :goto_0
    check-cast v2, Lcom/tn/lib/net/bean/BaseDto;

    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_3
    move-object v2, v5

    .line 100
    :goto_1
    if-eqz v2, :cond_4

    .line 101
    .line 102
    invoke-virtual {v2}, Lcom/tn/lib/net/bean/BaseDto;->getCode()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    goto :goto_2

    .line 107
    :cond_4
    move-object v0, v5

    .line 108
    :goto_2
    const-string v6, "0"

    .line 109
    .line 110
    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    if-eqz v0, :cond_8

    .line 115
    .line 116
    invoke-virtual {v2}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    if-eqz v0, :cond_8

    .line 121
    .line 122
    invoke-virtual {v2}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    check-cast v0, Lcom/transsion/fission/activity/bean/PalmPayTaskResult;

    .line 127
    .line 128
    if-eqz v0, :cond_5

    .line 129
    .line 130
    invoke-virtual {v0}, Lcom/transsion/fission/activity/bean/PalmPayTaskResult;->getTaskInfo()Lcom/transsion/fission/activity/bean/PalmPayTaskInfo;

    .line 131
    .line 132
    .line 133
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 134
    goto :goto_3

    .line 135
    :cond_5
    move-object v0, v5

    .line 136
    :goto_3
    const-string v6, "kv_task_is_finished"

    .line 137
    .line 138
    if-eqz v0, :cond_6

    .line 139
    .line 140
    :try_start_2
    invoke-virtual {v0}, Lcom/transsion/fission/activity/bean/PalmPayTaskInfo;->getProgress()I

    .line 141
    .line 142
    .line 143
    move-result v7

    .line 144
    invoke-virtual {v0}, Lcom/transsion/fission/activity/bean/PalmPayTaskInfo;->getTotalProgress()I

    .line 145
    .line 146
    .line 147
    move-result v0

    .line 148
    if-lt v7, v0, :cond_6

    .line 149
    .line 150
    sget-object v0, Lc;->a:Lc;

    .line 151
    .line 152
    invoke-virtual {v0}, Lc;->b()Lcom/tencent/mmkv/MMKV;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    invoke-virtual {v0, v6, v4}, Lcom/tencent/mmkv/MMKV;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 157
    .line 158
    .line 159
    goto :goto_4

    .line 160
    :cond_6
    sget-object v0, Lc;->a:Lc;

    .line 161
    .line 162
    invoke-virtual {v0}, Lc;->b()Lcom/tencent/mmkv/MMKV;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    invoke-virtual {v0, v6, v3}, Lcom/tencent/mmkv/MMKV;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 167
    .line 168
    .line 169
    :goto_4
    invoke-virtual {v2}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    check-cast v0, Lcom/transsion/fission/activity/bean/PalmPayTaskResult;

    .line 174
    .line 175
    if-eqz v0, :cond_7

    .line 176
    .line 177
    invoke-virtual {v0}, Lcom/transsion/fission/activity/bean/PalmPayTaskResult;->getPopup()Lcom/transsion/bean/HomePopupInfo;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    move-object v7, v0

    .line 182
    goto :goto_5

    .line 183
    :cond_7
    move-object v7, v5

    .line 184
    :goto_5
    if-eqz v7, :cond_8

    .line 185
    .line 186
    new-instance v0, Lcom/transsion/bean/HomePopupInfo;

    .line 187
    .line 188
    const-string v11, ""

    .line 189
    .line 190
    const-string v13, ""

    .line 191
    .line 192
    const-string v15, ""

    .line 193
    .line 194
    const-string v16, ""

    .line 195
    .line 196
    const-wide/16 v9, 0x0

    .line 197
    .line 198
    const/4 v12, 0x0

    .line 199
    const/4 v14, 0x0

    .line 200
    move-object v8, v0

    .line 201
    invoke-direct/range {v8 .. v16}, Lcom/transsion/bean/HomePopupInfo;-><init>(JLjava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    new-instance v2, Lcom/transsion/bean/HomePopupEntity;

    .line 205
    .line 206
    const/4 v9, 0x0

    .line 207
    const-wide/16 v10, 0x0

    .line 208
    .line 209
    move-object v6, v2

    .line 210
    move-object v8, v0

    .line 211
    invoke-direct/range {v6 .. v11}, Lcom/transsion/bean/HomePopupEntity;-><init>(Lcom/transsion/bean/HomePopupInfo;Lcom/transsion/bean/HomePopupInfo;IJ)V

    .line 212
    .line 213
    .line 214
    invoke-static {}, Lcom/blankj/utilcode/util/a;->b()Landroid/app/Activity;

    .line 215
    .line 216
    .line 217
    move-result-object v0

    .line 218
    if-eqz v0, :cond_8

    .line 219
    .line 220
    new-instance v4, Lcom/transsion/fission/n;

    .line 221
    .line 222
    invoke-direct {v4, v2}, Lcom/transsion/fission/n;-><init>(Lcom/transsion/bean/HomePopupEntity;)V

    .line 223
    .line 224
    .line 225
    invoke-virtual {v0, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 226
    .line 227
    .line 228
    :cond_8
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 229
    .line 230
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 234
    goto :goto_7

    .line 235
    :goto_6
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 236
    .line 237
    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 238
    .line 239
    .line 240
    move-result-object v0

    .line 241
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    move-result-object v0

    .line 245
    :goto_7
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 246
    .line 247
    .line 248
    move-result-object v0

    .line 249
    if-nez v0, :cond_9

    .line 250
    .line 251
    goto :goto_8

    .line 252
    :cond_9
    sget-object v2, Lwf/a;->a:Lwf/a$a;

    .line 253
    .line 254
    new-instance v4, Ljava/lang/StringBuilder;

    .line 255
    .line 256
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 257
    .line 258
    .line 259
    const-string v6, "finishPalmPayTask() ---> getOrElse() --> it = "

    .line 260
    .line 261
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v0

    .line 271
    const/4 v4, 0x2

    .line 272
    invoke-static {v2, v0, v3, v4, v5}, Lwf/a$a;->m(Lwf/a$a;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 273
    .line 274
    .line 275
    :goto_8
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 276
    .line 277
    return-object v0
.end method
