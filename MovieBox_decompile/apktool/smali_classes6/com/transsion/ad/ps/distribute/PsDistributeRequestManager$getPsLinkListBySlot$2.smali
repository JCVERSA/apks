.class final Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager$getPsLinkListBySlot$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager;->n(IILjava/lang/Integer;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    c = "com.transsion.ad.ps.distribute.PsDistributeRequestManager$getPsLinkListBySlot$2"
    f = "PsDistributeRequestManager.kt"
    l = {
        0x5c,
        0x6a
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $nonId:Ljava/lang/String;

.field final synthetic $pageIndex:I

.field final synthetic $pageSize:I

.field final synthetic $psScene:Ljava/lang/Integer;

.field label:I


# direct methods
.method constructor <init>(IILjava/lang/Integer;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager$getPsLinkListBySlot$2;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager$getPsLinkListBySlot$2;->$pageIndex:I

    .line 2
    .line 3
    iput p2, p0, Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager$getPsLinkListBySlot$2;->$pageSize:I

    .line 4
    .line 5
    iput-object p3, p0, Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager$getPsLinkListBySlot$2;->$psScene:Ljava/lang/Integer;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager$getPsLinkListBySlot$2;->$nonId:Ljava/lang/String;

    .line 8
    .line 9
    const/4 p1, 0x2

    .line 10
    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6
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
    new-instance p1, Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager$getPsLinkListBySlot$2;

    .line 2
    .line 3
    iget v1, p0, Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager$getPsLinkListBySlot$2;->$pageIndex:I

    .line 4
    .line 5
    iget v2, p0, Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager$getPsLinkListBySlot$2;->$pageSize:I

    .line 6
    .line 7
    iget-object v3, p0, Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager$getPsLinkListBySlot$2;->$psScene:Ljava/lang/Integer;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager$getPsLinkListBySlot$2;->$nonId:Ljava/lang/String;

    .line 10
    .line 11
    move-object v0, p1

    .line 12
    move-object v5, p2

    .line 13
    invoke-direct/range {v0 .. v5}, Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager$getPsLinkListBySlot$2;-><init>(IILjava/lang/Integer;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 14
    .line 15
    .line 16
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager$getPsLinkListBySlot$2;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager$getPsLinkListBySlot$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager$getPsLinkListBySlot$2;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager$getPsLinkListBySlot$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v1, p0, Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager$getPsLinkListBySlot$2;->label:I

    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    const/4 v3, 0x1

    .line 9
    if-eqz v1, :cond_2

    .line 10
    .line 11
    if-eq v1, v3, :cond_1

    .line 12
    .line 13
    if-ne v1, v2, :cond_0

    .line 14
    .line 15
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    .line 18
    goto/16 :goto_4

    .line 19
    .line 20
    :catchall_0
    move-exception p1

    .line 21
    goto/16 :goto_7

    .line 22
    .line 23
    :catch_0
    move-exception p1

    .line 24
    goto/16 :goto_5

    .line 25
    .line 26
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 27
    .line 28
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 29
    .line 30
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw p1

    .line 34
    :cond_1
    :try_start_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    :try_start_2
    sget-object p1, Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager;->a:Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager;

    .line 42
    .line 43
    iget v1, p0, Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager$getPsLinkListBySlot$2;->$pageIndex:I

    .line 44
    .line 45
    iget v4, p0, Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager$getPsLinkListBySlot$2;->$pageSize:I

    .line 46
    .line 47
    iget-object v5, p0, Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager$getPsLinkListBySlot$2;->$psScene:Ljava/lang/Integer;

    .line 48
    .line 49
    invoke-static {p1, v1, v4, v5}, Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager;->d(Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager;IILjava/lang/Integer;)Lorg/json/JSONObject;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    sget-object v4, Lrh/f;->a:Lrh/f;

    .line 54
    .line 55
    invoke-virtual {v4}, Lrh/f;->d()Z

    .line 56
    .line 57
    .line 58
    move-result v5

    .line 59
    if-eqz v5, :cond_3

    .line 60
    .line 61
    const-string v5, "https://feature-api.palmplaystore.com"

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_3
    const-string v5, "https://test-feature-api.palmplaystore.com"

    .line 65
    .line 66
    :goto_0
    invoke-virtual {v4}, Lrh/f;->a()Z

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    if-eqz v4, :cond_4

    .line 71
    .line 72
    sget-object v6, Lxh/a;->a:Lxh/a;

    .line 73
    .line 74
    invoke-static {p1}, Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager;->c(Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    iget-object v7, p0, Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager$getPsLinkListBySlot$2;->$psScene:Ljava/lang/Integer;

    .line 79
    .line 80
    new-instance v8, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const-string v4, " --> getPsLinkListBySlot() --> psScene = "

    .line 89
    .line 90
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string v4, " --> url = "

    .line 97
    .line 98
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    const-string v4, " --> jsonObject = "

    .line 105
    .line 106
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v7

    .line 116
    const/4 v10, 0x6

    .line 117
    const/4 v11, 0x0

    .line 118
    const/4 v8, 0x0

    .line 119
    const/4 v9, 0x0

    .line 120
    invoke-static/range {v6 .. v11}, Lxh/a;->i(Lxh/a;Ljava/lang/String;IZILjava/lang/Object;)V

    .line 121
    .line 122
    .line 123
    :cond_4
    invoke-static {p1}, Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager;->g(Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager;)Lzh/a;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    sget-object v4, Lmg/b;->a:Lmg/b$a;

    .line 128
    .line 129
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    const-string v6, "toString(...)"

    .line 134
    .line 135
    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v4, v1}, Lmg/b$a;->a(Ljava/lang/Object;)Lokhttp3/RequestBody;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    iput v3, p0, Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager$getPsLinkListBySlot$2;->label:I

    .line 143
    .line 144
    invoke-interface {p1, v1, v5, p0}, Lzh/a;->b(Lokhttp3/RequestBody;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    if-ne p1, v0, :cond_5

    .line 149
    .line 150
    return-object v0

    .line 151
    :cond_5
    :goto_1
    check-cast p1, Lcom/transsion/ad/ps/model/PsLinkDto;

    .line 152
    .line 153
    sget-object v3, Lcom/transsion/ad/ps/PSReportUtil;->a:Lcom/transsion/ad/ps/PSReportUtil;

    .line 154
    .line 155
    sget-object v4, Lcom/transsion/ad/ps/PSReportUtil$PSRequestState;->REQUEST_SUCCESS:Lcom/transsion/ad/ps/PSReportUtil$PSRequestState;

    .line 156
    .line 157
    if-eqz p1, :cond_6

    .line 158
    .line 159
    invoke-virtual {p1}, Lcom/transsion/ad/ps/model/PsLinkDto;->getData()Ljava/util/List;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    if-eqz v1, :cond_6

    .line 164
    .line 165
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 166
    .line 167
    .line 168
    move-result v1

    .line 169
    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    .line 170
    .line 171
    .line 172
    move-result-object v1

    .line 173
    :goto_2
    move-object v5, v1

    .line 174
    goto :goto_3

    .line 175
    :cond_6
    const/4 v1, 0x0

    .line 176
    goto :goto_2

    .line 177
    :goto_3
    const-string v6, ""

    .line 178
    .line 179
    iget-object v1, p0, Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager$getPsLinkListBySlot$2;->$psScene:Ljava/lang/Integer;

    .line 180
    .line 181
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v7

    .line 185
    sget-object v1, Lcom/transsion/ad/ps/PSReportUtil$PsDistributeSceneEnum;->PS_DISTRIBUTE_SCENE_AD_PLAN:Lcom/transsion/ad/ps/PSReportUtil$PsDistributeSceneEnum;

    .line 186
    .line 187
    invoke-virtual {v1}, Lcom/transsion/ad/ps/PSReportUtil$PsDistributeSceneEnum;->getValue()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v8

    .line 191
    invoke-virtual/range {v3 .. v8}, Lcom/transsion/ad/ps/PSReportUtil;->d(Lcom/transsion/ad/ps/PSReportUtil$PSRequestState;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    sget-object v1, Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager;->a:Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager;

    .line 195
    .line 196
    iget-object v3, p0, Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager$getPsLinkListBySlot$2;->$psScene:Ljava/lang/Integer;

    .line 197
    .line 198
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v3

    .line 202
    iget-object v4, p0, Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager$getPsLinkListBySlot$2;->$nonId:Ljava/lang/String;

    .line 203
    .line 204
    iput v2, p0, Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager$getPsLinkListBySlot$2;->label:I

    .line 205
    .line 206
    invoke-static {v1, v3, v4, p1, p0}, Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager;->b(Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/ad/ps/model/PsLinkDto;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 210
    if-ne p1, v0, :cond_7

    .line 211
    .line 212
    return-object v0

    .line 213
    :cond_7
    :goto_4
    invoke-static {}, Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager;->f()Ljava/util/concurrent/ConcurrentHashMap;

    .line 214
    .line 215
    .line 216
    move-result-object p1

    .line 217
    iget-object v0, p0, Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager$getPsLinkListBySlot$2;->$psScene:Ljava/lang/Integer;

    .line 218
    .line 219
    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    goto :goto_6

    .line 223
    :goto_5
    :try_start_3
    sget-object v0, Lxh/a;->a:Lxh/a;

    .line 224
    .line 225
    sget-object v1, Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager;->a:Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager;

    .line 226
    .line 227
    invoke-static {v1}, Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager;->c(Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager;)Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v1

    .line 231
    iget-object v2, p0, Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager$getPsLinkListBySlot$2;->$psScene:Ljava/lang/Integer;

    .line 232
    .line 233
    new-instance v3, Ljava/lang/StringBuilder;

    .line 234
    .line 235
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    const-string v1, " --> getPsLinkList() --> psScene = "

    .line 242
    .line 243
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    const-string v1, " --> it = "

    .line 250
    .line 251
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 255
    .line 256
    .line 257
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object v1

    .line 261
    const/4 v4, 0x4

    .line 262
    const/4 v5, 0x0

    .line 263
    const/4 v2, 0x6

    .line 264
    const/4 v3, 0x0

    .line 265
    invoke-static/range {v0 .. v5}, Lxh/a;->i(Lxh/a;Ljava/lang/String;IZILjava/lang/Object;)V

    .line 266
    .line 267
    .line 268
    sget-object v6, Lcom/transsion/ad/ps/PSReportUtil;->a:Lcom/transsion/ad/ps/PSReportUtil;

    .line 269
    .line 270
    sget-object v7, Lcom/transsion/ad/ps/PSReportUtil$PSRequestState;->REQUEST_FAIL:Lcom/transsion/ad/ps/PSReportUtil$PSRequestState;

    .line 271
    .line 272
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object p1

    .line 276
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v9

    .line 280
    iget-object p1, p0, Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager$getPsLinkListBySlot$2;->$psScene:Ljava/lang/Integer;

    .line 281
    .line 282
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object v11

    .line 286
    sget-object p1, Lcom/transsion/ad/ps/PSReportUtil$PsDistributeSceneEnum;->PS_DISTRIBUTE_SCENE_AD_PLAN:Lcom/transsion/ad/ps/PSReportUtil$PsDistributeSceneEnum;

    .line 287
    .line 288
    invoke-virtual {p1}, Lcom/transsion/ad/ps/PSReportUtil$PsDistributeSceneEnum;->getValue()Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v10

    .line 292
    const/4 v8, 0x0

    .line 293
    invoke-virtual/range {v6 .. v11}, Lcom/transsion/ad/ps/PSReportUtil;->d(Lcom/transsion/ad/ps/PSReportUtil$PSRequestState;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 294
    .line 295
    .line 296
    goto :goto_4

    .line 297
    :goto_6
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 298
    .line 299
    return-object p1

    .line 300
    :goto_7
    invoke-static {}, Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager;->f()Ljava/util/concurrent/ConcurrentHashMap;

    .line 301
    .line 302
    .line 303
    move-result-object v0

    .line 304
    iget-object v1, p0, Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager$getPsLinkListBySlot$2;->$psScene:Ljava/lang/Integer;

    .line 305
    .line 306
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    .line 308
    .line 309
    throw p1
.end method
