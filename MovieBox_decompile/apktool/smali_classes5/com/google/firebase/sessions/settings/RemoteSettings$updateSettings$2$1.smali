.class final Lcom/google/firebase/sessions/settings/RemoteSettings$updateSettings$2$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/sessions/settings/RemoteSettings;->d(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lorg/json/JSONObject;",
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
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lorg/json/JSONObject;"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.google.firebase.sessions.settings.RemoteSettings$updateSettings$2$1"
    f = "RemoteSettings.kt"
    l = {
        0x7d,
        0x80,
        0x83,
        0x85,
        0x86,
        0x88
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/google/firebase/sessions/settings/RemoteSettings;


# direct methods
.method constructor <init>(Lcom/google/firebase/sessions/settings/RemoteSettings;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/sessions/settings/RemoteSettings;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/google/firebase/sessions/settings/RemoteSettings$updateSettings$2$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/firebase/sessions/settings/RemoteSettings$updateSettings$2$1;->this$0:Lcom/google/firebase/sessions/settings/RemoteSettings;

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
    new-instance v0, Lcom/google/firebase/sessions/settings/RemoteSettings$updateSettings$2$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/firebase/sessions/settings/RemoteSettings$updateSettings$2$1;->this$0:Lcom/google/firebase/sessions/settings/RemoteSettings;

    .line 4
    .line 5
    invoke-direct {v0, v1, p2}, Lcom/google/firebase/sessions/settings/RemoteSettings$updateSettings$2$1;-><init>(Lcom/google/firebase/sessions/settings/RemoteSettings;Lkotlin/coroutines/Continuation;)V

    .line 6
    .line 7
    .line 8
    iput-object p1, v0, Lcom/google/firebase/sessions/settings/RemoteSettings$updateSettings$2$1;->L$0:Ljava/lang/Object;

    .line 9
    .line 10
    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lorg/json/JSONObject;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/sessions/settings/RemoteSettings$updateSettings$2$1;->invoke(Lorg/json/JSONObject;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lorg/json/JSONObject;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/sessions/settings/RemoteSettings$updateSettings$2$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/sessions/settings/RemoteSettings$updateSettings$2$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/google/firebase/sessions/settings/RemoteSettings$updateSettings$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    const-string v0, "cache_duration"

    .line 2
    .line 3
    const-string v1, "session_timeout_seconds"

    .line 4
    .line 5
    const-string v2, "sampling_rate"

    .line 6
    .line 7
    const-string v3, "sessions_enabled"

    .line 8
    .line 9
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v4

    .line 13
    iget v5, p0, Lcom/google/firebase/sessions/settings/RemoteSettings$updateSettings$2$1;->label:I

    .line 14
    .line 15
    const/4 v6, 0x0

    .line 16
    packed-switch v5, :pswitch_data_0

    .line 17
    .line 18
    .line 19
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 20
    .line 21
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 22
    .line 23
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw p1

    .line 27
    :pswitch_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    goto/16 :goto_b

    .line 31
    .line 32
    :pswitch_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    goto/16 :goto_a

    .line 36
    .line 37
    :pswitch_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    goto/16 :goto_8

    .line 41
    .line 42
    :pswitch_3
    iget-object v0, p0, Lcom/google/firebase/sessions/settings/RemoteSettings$updateSettings$2$1;->L$0:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 45
    .line 46
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    goto/16 :goto_7

    .line 50
    .line 51
    :pswitch_4
    iget-object v0, p0, Lcom/google/firebase/sessions/settings/RemoteSettings$updateSettings$2$1;->L$1:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 54
    .line 55
    iget-object v1, p0, Lcom/google/firebase/sessions/settings/RemoteSettings$updateSettings$2$1;->L$0:Ljava/lang/Object;

    .line 56
    .line 57
    check-cast v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 58
    .line 59
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    goto/16 :goto_6

    .line 63
    .line 64
    :pswitch_5
    iget-object v0, p0, Lcom/google/firebase/sessions/settings/RemoteSettings$updateSettings$2$1;->L$2:Ljava/lang/Object;

    .line 65
    .line 66
    check-cast v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 67
    .line 68
    iget-object v1, p0, Lcom/google/firebase/sessions/settings/RemoteSettings$updateSettings$2$1;->L$1:Ljava/lang/Object;

    .line 69
    .line 70
    check-cast v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 71
    .line 72
    iget-object v2, p0, Lcom/google/firebase/sessions/settings/RemoteSettings$updateSettings$2$1;->L$0:Ljava/lang/Object;

    .line 73
    .line 74
    check-cast v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 75
    .line 76
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    goto/16 :goto_4

    .line 80
    .line 81
    :pswitch_6
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    iget-object p1, p0, Lcom/google/firebase/sessions/settings/RemoteSettings$updateSettings$2$1;->L$0:Ljava/lang/Object;

    .line 85
    .line 86
    check-cast p1, Lorg/json/JSONObject;

    .line 87
    .line 88
    new-instance v5, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    .line 92
    .line 93
    const-string v7, "Fetched settings: "

    .line 94
    .line 95
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    new-instance v5, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 102
    .line 103
    invoke-direct {v5}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 104
    .line 105
    .line 106
    new-instance v7, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 107
    .line 108
    invoke-direct {v7}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 109
    .line 110
    .line 111
    new-instance v8, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 112
    .line 113
    invoke-direct {v8}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 114
    .line 115
    .line 116
    const-string v9, "app_quality"

    .line 117
    .line 118
    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 119
    .line 120
    .line 121
    move-result v10

    .line 122
    if-eqz v10, :cond_3

    .line 123
    .line 124
    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    const-string v9, "null cannot be cast to non-null type org.json.JSONObject"

    .line 129
    .line 130
    invoke-static {p1, v9}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    check-cast p1, Lorg/json/JSONObject;

    .line 134
    .line 135
    :try_start_0
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 136
    .line 137
    .line 138
    move-result v9

    .line 139
    if-eqz v9, :cond_0

    .line 140
    .line 141
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v3

    .line 145
    check-cast v3, Ljava/lang/Boolean;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    .line 147
    goto :goto_0

    .line 148
    :catch_0
    move-exception p1

    .line 149
    move-object v3, v6

    .line 150
    goto :goto_2

    .line 151
    :cond_0
    move-object v3, v6

    .line 152
    :goto_0
    :try_start_1
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 153
    .line 154
    .line 155
    move-result v9

    .line 156
    if-eqz v9, :cond_1

    .line 157
    .line 158
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object v2

    .line 162
    check-cast v2, Ljava/lang/Double;

    .line 163
    .line 164
    iput-object v2, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 165
    .line 166
    goto :goto_1

    .line 167
    :catch_1
    move-exception p1

    .line 168
    goto :goto_2

    .line 169
    :cond_1
    :goto_1
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 170
    .line 171
    .line 172
    move-result v2

    .line 173
    if-eqz v2, :cond_2

    .line 174
    .line 175
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object v1

    .line 179
    check-cast v1, Ljava/lang/Integer;

    .line 180
    .line 181
    iput-object v1, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 182
    .line 183
    :cond_2
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 184
    .line 185
    .line 186
    move-result v1

    .line 187
    if-eqz v1, :cond_4

    .line 188
    .line 189
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object p1

    .line 193
    check-cast p1, Ljava/lang/Integer;

    .line 194
    .line 195
    iput-object p1, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 196
    .line 197
    goto :goto_3

    .line 198
    :goto_2
    const-string v0, "SessionConfigFetcher"

    .line 199
    .line 200
    const-string v1, "Error parsing the configs remotely fetched: "

    .line 201
    .line 202
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 203
    .line 204
    .line 205
    goto :goto_3

    .line 206
    :cond_3
    move-object v3, v6

    .line 207
    :cond_4
    :goto_3
    if-eqz v3, :cond_6

    .line 208
    .line 209
    iget-object p1, p0, Lcom/google/firebase/sessions/settings/RemoteSettings$updateSettings$2$1;->this$0:Lcom/google/firebase/sessions/settings/RemoteSettings;

    .line 210
    .line 211
    invoke-static {p1}, Lcom/google/firebase/sessions/settings/RemoteSettings;->e(Lcom/google/firebase/sessions/settings/RemoteSettings;)Lcom/google/firebase/sessions/settings/SettingsCache;

    .line 212
    .line 213
    .line 214
    move-result-object p1

    .line 215
    iput-object v5, p0, Lcom/google/firebase/sessions/settings/RemoteSettings$updateSettings$2$1;->L$0:Ljava/lang/Object;

    .line 216
    .line 217
    iput-object v7, p0, Lcom/google/firebase/sessions/settings/RemoteSettings$updateSettings$2$1;->L$1:Ljava/lang/Object;

    .line 218
    .line 219
    iput-object v8, p0, Lcom/google/firebase/sessions/settings/RemoteSettings$updateSettings$2$1;->L$2:Ljava/lang/Object;

    .line 220
    .line 221
    const/4 v0, 0x1

    .line 222
    iput v0, p0, Lcom/google/firebase/sessions/settings/RemoteSettings$updateSettings$2$1;->label:I

    .line 223
    .line 224
    invoke-virtual {p1, v3, p0}, Lcom/google/firebase/sessions/settings/SettingsCache;->n(Ljava/lang/Boolean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    move-result-object p1

    .line 228
    if-ne p1, v4, :cond_5

    .line 229
    .line 230
    return-object v4

    .line 231
    :cond_5
    move-object v2, v5

    .line 232
    move-object v1, v7

    .line 233
    move-object v0, v8

    .line 234
    :goto_4
    move-object v7, v1

    .line 235
    move-object v1, v2

    .line 236
    goto :goto_5

    .line 237
    :cond_6
    move-object v1, v5

    .line 238
    move-object v0, v8

    .line 239
    :goto_5
    iget-object p1, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 240
    .line 241
    check-cast p1, Ljava/lang/Integer;

    .line 242
    .line 243
    if-eqz p1, :cond_7

    .line 244
    .line 245
    iget-object p1, p0, Lcom/google/firebase/sessions/settings/RemoteSettings$updateSettings$2$1;->this$0:Lcom/google/firebase/sessions/settings/RemoteSettings;

    .line 246
    .line 247
    invoke-static {p1}, Lcom/google/firebase/sessions/settings/RemoteSettings;->e(Lcom/google/firebase/sessions/settings/RemoteSettings;)Lcom/google/firebase/sessions/settings/SettingsCache;

    .line 248
    .line 249
    .line 250
    move-result-object p1

    .line 251
    iget-object v2, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 252
    .line 253
    check-cast v2, Ljava/lang/Integer;

    .line 254
    .line 255
    iput-object v1, p0, Lcom/google/firebase/sessions/settings/RemoteSettings$updateSettings$2$1;->L$0:Ljava/lang/Object;

    .line 256
    .line 257
    iput-object v0, p0, Lcom/google/firebase/sessions/settings/RemoteSettings$updateSettings$2$1;->L$1:Ljava/lang/Object;

    .line 258
    .line 259
    iput-object v6, p0, Lcom/google/firebase/sessions/settings/RemoteSettings$updateSettings$2$1;->L$2:Ljava/lang/Object;

    .line 260
    .line 261
    const/4 v3, 0x2

    .line 262
    iput v3, p0, Lcom/google/firebase/sessions/settings/RemoteSettings$updateSettings$2$1;->label:I

    .line 263
    .line 264
    invoke-virtual {p1, v2, p0}, Lcom/google/firebase/sessions/settings/SettingsCache;->m(Ljava/lang/Integer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 265
    .line 266
    .line 267
    move-result-object p1

    .line 268
    if-ne p1, v4, :cond_7

    .line 269
    .line 270
    return-object v4

    .line 271
    :cond_7
    :goto_6
    iget-object p1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 272
    .line 273
    check-cast p1, Ljava/lang/Double;

    .line 274
    .line 275
    if-eqz p1, :cond_8

    .line 276
    .line 277
    iget-object p1, p0, Lcom/google/firebase/sessions/settings/RemoteSettings$updateSettings$2$1;->this$0:Lcom/google/firebase/sessions/settings/RemoteSettings;

    .line 278
    .line 279
    invoke-static {p1}, Lcom/google/firebase/sessions/settings/RemoteSettings;->e(Lcom/google/firebase/sessions/settings/RemoteSettings;)Lcom/google/firebase/sessions/settings/SettingsCache;

    .line 280
    .line 281
    .line 282
    move-result-object p1

    .line 283
    iget-object v1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 284
    .line 285
    check-cast v1, Ljava/lang/Double;

    .line 286
    .line 287
    iput-object v0, p0, Lcom/google/firebase/sessions/settings/RemoteSettings$updateSettings$2$1;->L$0:Ljava/lang/Object;

    .line 288
    .line 289
    iput-object v6, p0, Lcom/google/firebase/sessions/settings/RemoteSettings$updateSettings$2$1;->L$1:Ljava/lang/Object;

    .line 290
    .line 291
    iput-object v6, p0, Lcom/google/firebase/sessions/settings/RemoteSettings$updateSettings$2$1;->L$2:Ljava/lang/Object;

    .line 292
    .line 293
    const/4 v2, 0x3

    .line 294
    iput v2, p0, Lcom/google/firebase/sessions/settings/RemoteSettings$updateSettings$2$1;->label:I

    .line 295
    .line 296
    invoke-virtual {p1, v1, p0}, Lcom/google/firebase/sessions/settings/SettingsCache;->i(Ljava/lang/Double;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 297
    .line 298
    .line 299
    move-result-object p1

    .line 300
    if-ne p1, v4, :cond_8

    .line 301
    .line 302
    return-object v4

    .line 303
    :cond_8
    :goto_7
    iget-object p1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 304
    .line 305
    check-cast p1, Ljava/lang/Integer;

    .line 306
    .line 307
    if-eqz p1, :cond_a

    .line 308
    .line 309
    iget-object p1, p0, Lcom/google/firebase/sessions/settings/RemoteSettings$updateSettings$2$1;->this$0:Lcom/google/firebase/sessions/settings/RemoteSettings;

    .line 310
    .line 311
    invoke-static {p1}, Lcom/google/firebase/sessions/settings/RemoteSettings;->e(Lcom/google/firebase/sessions/settings/RemoteSettings;)Lcom/google/firebase/sessions/settings/SettingsCache;

    .line 312
    .line 313
    .line 314
    move-result-object p1

    .line 315
    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 316
    .line 317
    check-cast v0, Ljava/lang/Integer;

    .line 318
    .line 319
    iput-object v6, p0, Lcom/google/firebase/sessions/settings/RemoteSettings$updateSettings$2$1;->L$0:Ljava/lang/Object;

    .line 320
    .line 321
    iput-object v6, p0, Lcom/google/firebase/sessions/settings/RemoteSettings$updateSettings$2$1;->L$1:Ljava/lang/Object;

    .line 322
    .line 323
    iput-object v6, p0, Lcom/google/firebase/sessions/settings/RemoteSettings$updateSettings$2$1;->L$2:Ljava/lang/Object;

    .line 324
    .line 325
    const/4 v1, 0x4

    .line 326
    iput v1, p0, Lcom/google/firebase/sessions/settings/RemoteSettings$updateSettings$2$1;->label:I

    .line 327
    .line 328
    invoke-virtual {p1, v0, p0}, Lcom/google/firebase/sessions/settings/SettingsCache;->j(Ljava/lang/Integer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 329
    .line 330
    .line 331
    move-result-object p1

    .line 332
    if-ne p1, v4, :cond_9

    .line 333
    .line 334
    return-object v4

    .line 335
    :cond_9
    :goto_8
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 336
    .line 337
    goto :goto_9

    .line 338
    :cond_a
    move-object p1, v6

    .line 339
    :goto_9
    if-nez p1, :cond_b

    .line 340
    .line 341
    iget-object p1, p0, Lcom/google/firebase/sessions/settings/RemoteSettings$updateSettings$2$1;->this$0:Lcom/google/firebase/sessions/settings/RemoteSettings;

    .line 342
    .line 343
    invoke-static {p1}, Lcom/google/firebase/sessions/settings/RemoteSettings;->e(Lcom/google/firebase/sessions/settings/RemoteSettings;)Lcom/google/firebase/sessions/settings/SettingsCache;

    .line 344
    .line 345
    .line 346
    move-result-object p1

    .line 347
    const v0, 0x15180

    .line 348
    .line 349
    .line 350
    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    .line 351
    .line 352
    .line 353
    move-result-object v0

    .line 354
    iput-object v6, p0, Lcom/google/firebase/sessions/settings/RemoteSettings$updateSettings$2$1;->L$0:Ljava/lang/Object;

    .line 355
    .line 356
    iput-object v6, p0, Lcom/google/firebase/sessions/settings/RemoteSettings$updateSettings$2$1;->L$1:Ljava/lang/Object;

    .line 357
    .line 358
    iput-object v6, p0, Lcom/google/firebase/sessions/settings/RemoteSettings$updateSettings$2$1;->L$2:Ljava/lang/Object;

    .line 359
    .line 360
    const/4 v1, 0x5

    .line 361
    iput v1, p0, Lcom/google/firebase/sessions/settings/RemoteSettings$updateSettings$2$1;->label:I

    .line 362
    .line 363
    invoke-virtual {p1, v0, p0}, Lcom/google/firebase/sessions/settings/SettingsCache;->j(Ljava/lang/Integer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 364
    .line 365
    .line 366
    move-result-object p1

    .line 367
    if-ne p1, v4, :cond_b

    .line 368
    .line 369
    return-object v4

    .line 370
    :cond_b
    :goto_a
    iget-object p1, p0, Lcom/google/firebase/sessions/settings/RemoteSettings$updateSettings$2$1;->this$0:Lcom/google/firebase/sessions/settings/RemoteSettings;

    .line 371
    .line 372
    invoke-static {p1}, Lcom/google/firebase/sessions/settings/RemoteSettings;->e(Lcom/google/firebase/sessions/settings/RemoteSettings;)Lcom/google/firebase/sessions/settings/SettingsCache;

    .line 373
    .line 374
    .line 375
    move-result-object p1

    .line 376
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 377
    .line 378
    .line 379
    move-result-wide v0

    .line 380
    invoke-static {v0, v1}, Lkotlin/coroutines/jvm/internal/Boxing;->e(J)Ljava/lang/Long;

    .line 381
    .line 382
    .line 383
    move-result-object v0

    .line 384
    iput-object v6, p0, Lcom/google/firebase/sessions/settings/RemoteSettings$updateSettings$2$1;->L$0:Ljava/lang/Object;

    .line 385
    .line 386
    iput-object v6, p0, Lcom/google/firebase/sessions/settings/RemoteSettings$updateSettings$2$1;->L$1:Ljava/lang/Object;

    .line 387
    .line 388
    iput-object v6, p0, Lcom/google/firebase/sessions/settings/RemoteSettings$updateSettings$2$1;->L$2:Ljava/lang/Object;

    .line 389
    .line 390
    const/4 v1, 0x6

    .line 391
    iput v1, p0, Lcom/google/firebase/sessions/settings/RemoteSettings$updateSettings$2$1;->label:I

    .line 392
    .line 393
    invoke-virtual {p1, v0, p0}, Lcom/google/firebase/sessions/settings/SettingsCache;->k(Ljava/lang/Long;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 394
    .line 395
    .line 396
    move-result-object p1

    .line 397
    if-ne p1, v4, :cond_c

    .line 398
    .line 399
    return-object v4

    .line 400
    :cond_c
    :goto_b
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 401
    .line 402
    return-object p1

    .line 403
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
