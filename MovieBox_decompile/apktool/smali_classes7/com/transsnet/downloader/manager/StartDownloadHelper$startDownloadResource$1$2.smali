.class final Lcom/transsnet/downloader/manager/StartDownloadHelper$startDownloadResource$1$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsnet/downloader/manager/StartDownloadHelper$startDownloadResource$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/flow/b;",
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
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0003\u001a\u00020\u0002*\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0000H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "Lkotlinx/coroutines/flow/b;",
        "Lcom/transsnet/downloader/bean/StartResponseBean;",
        "",
        "<anonymous>",
        "(Lkotlinx/coroutines/flow/b;)V"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.transsnet.downloader.manager.StartDownloadHelper$startDownloadResource$1$2"
    f = "StartDownloadHelper.kt"
    l = {
        0x4e,
        0x57,
        0x5b,
        0x5d
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $normalList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/transsnet/downloader/bean/StartlDownloadBean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $ugcList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/transsnet/downloader/manager/UGCStartDownloadBean;",
            ">;"
        }
    .end annotation
.end field

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/transsnet/downloader/manager/StartDownloadHelper;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;Lcom/transsnet/downloader/manager/StartDownloadHelper;Ljava/util/ArrayList;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/transsnet/downloader/manager/UGCStartDownloadBean;",
            ">;",
            "Lcom/transsnet/downloader/manager/StartDownloadHelper;",
            "Ljava/util/ArrayList<",
            "Lcom/transsnet/downloader/bean/StartlDownloadBean;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsnet/downloader/manager/StartDownloadHelper$startDownloadResource$1$2;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsnet/downloader/manager/StartDownloadHelper$startDownloadResource$1$2;->$ugcList:Ljava/util/ArrayList;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsnet/downloader/manager/StartDownloadHelper$startDownloadResource$1$2;->this$0:Lcom/transsnet/downloader/manager/StartDownloadHelper;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/transsnet/downloader/manager/StartDownloadHelper$startDownloadResource$1$2;->$normalList:Ljava/util/ArrayList;

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 4
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
    new-instance v0, Lcom/transsnet/downloader/manager/StartDownloadHelper$startDownloadResource$1$2;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsnet/downloader/manager/StartDownloadHelper$startDownloadResource$1$2;->$ugcList:Ljava/util/ArrayList;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsnet/downloader/manager/StartDownloadHelper$startDownloadResource$1$2;->this$0:Lcom/transsnet/downloader/manager/StartDownloadHelper;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/transsnet/downloader/manager/StartDownloadHelper$startDownloadResource$1$2;->$normalList:Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v0, v1, v2, v3, p2}, Lcom/transsnet/downloader/manager/StartDownloadHelper$startDownloadResource$1$2;-><init>(Ljava/util/ArrayList;Lcom/transsnet/downloader/manager/StartDownloadHelper;Ljava/util/ArrayList;Lkotlin/coroutines/Continuation;)V

    .line 10
    .line 11
    .line 12
    iput-object p1, v0, Lcom/transsnet/downloader/manager/StartDownloadHelper$startDownloadResource$1$2;->L$0:Ljava/lang/Object;

    .line 13
    .line 14
    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/flow/b;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsnet/downloader/manager/StartDownloadHelper$startDownloadResource$1$2;->invoke(Lkotlinx/coroutines/flow/b;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/flow/b;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/b;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/transsnet/downloader/manager/StartDownloadHelper$startDownloadResource$1$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsnet/downloader/manager/StartDownloadHelper$startDownloadResource$1$2;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsnet/downloader/manager/StartDownloadHelper$startDownloadResource$1$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/transsnet/downloader/manager/StartDownloadHelper$startDownloadResource$1$2;->label:I

    .line 6
    .line 7
    const-string v2, "toJson(...)"

    .line 8
    .line 9
    const/4 v3, 0x4

    .line 10
    const/4 v4, 0x3

    .line 11
    const/4 v5, 0x2

    .line 12
    const/4 v6, 0x1

    .line 13
    const/4 v7, 0x0

    .line 14
    if-eqz v1, :cond_4

    .line 15
    .line 16
    if-eq v1, v6, :cond_3

    .line 17
    .line 18
    if-eq v1, v5, :cond_2

    .line 19
    .line 20
    if-eq v1, v4, :cond_1

    .line 21
    .line 22
    if-ne v1, v3, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 26
    .line 27
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 28
    .line 29
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw p1

    .line 33
    :cond_1
    :goto_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    goto/16 :goto_3

    .line 37
    .line 38
    :cond_2
    iget-object v1, p0, Lcom/transsnet/downloader/manager/StartDownloadHelper$startDownloadResource$1$2;->L$0:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v1, Lkotlinx/coroutines/flow/b;

    .line 41
    .line 42
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    goto/16 :goto_2

    .line 46
    .line 47
    :cond_3
    iget-object v1, p0, Lcom/transsnet/downloader/manager/StartDownloadHelper$startDownloadResource$1$2;->L$0:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v1, Lkotlinx/coroutines/flow/b;

    .line 50
    .line 51
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_4
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    iget-object p1, p0, Lcom/transsnet/downloader/manager/StartDownloadHelper$startDownloadResource$1$2;->L$0:Ljava/lang/Object;

    .line 59
    .line 60
    move-object v1, p1

    .line 61
    check-cast v1, Lkotlinx/coroutines/flow/b;

    .line 62
    .line 63
    sget-object p1, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    .line 64
    .line 65
    invoke-virtual {p1}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    sget-object v8, Lcom/transsnet/downloader/manager/f;->a:Lcom/transsnet/downloader/manager/f$a;

    .line 70
    .line 71
    invoke-virtual {v8}, Lcom/transsnet/downloader/manager/f$a;->b()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v8

    .line 75
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 76
    .line 77
    .line 78
    move-result-wide v9

    .line 79
    invoke-virtual {p1, v8, v9, v10}, Lcom/tencent/mmkv/MMKV;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 80
    .line 81
    .line 82
    iget-object p1, p0, Lcom/transsnet/downloader/manager/StartDownloadHelper$startDownloadResource$1$2;->$ugcList:Ljava/util/ArrayList;

    .line 83
    .line 84
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    if-nez p1, :cond_6

    .line 89
    .line 90
    iget-object p1, p0, Lcom/transsnet/downloader/manager/StartDownloadHelper$startDownloadResource$1$2;->this$0:Lcom/transsnet/downloader/manager/StartDownloadHelper;

    .line 91
    .line 92
    invoke-static {p1}, Lcom/transsnet/downloader/manager/StartDownloadHelper;->b(Lcom/transsnet/downloader/manager/StartDownloadHelper;)Lcx/a;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    sget-object v8, Lgg/a;->a:Lgg/a$a;

    .line 97
    .line 98
    invoke-virtual {v8}, Lgg/a$a;->a()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v8

    .line 102
    sget-object v9, Lmg/b;->a:Lmg/b$a;

    .line 103
    .line 104
    new-instance v10, Lcom/transsnet/downloader/manager/UGCStartRequestBean;

    .line 105
    .line 106
    iget-object v11, p0, Lcom/transsnet/downloader/manager/StartDownloadHelper$startDownloadResource$1$2;->$ugcList:Ljava/util/ArrayList;

    .line 107
    .line 108
    invoke-direct {v10, v11}, Lcom/transsnet/downloader/manager/UGCStartRequestBean;-><init>(Ljava/util/List;)V

    .line 109
    .line 110
    .line 111
    invoke-static {v10}, Lcom/blankj/utilcode/util/o;->j(Ljava/lang/Object;)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v10

    .line 115
    invoke-static {v10, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v9, v10}, Lmg/b$a;->a(Ljava/lang/Object;)Lokhttp3/RequestBody;

    .line 119
    .line 120
    .line 121
    move-result-object v9

    .line 122
    iput-object v1, p0, Lcom/transsnet/downloader/manager/StartDownloadHelper$startDownloadResource$1$2;->L$0:Ljava/lang/Object;

    .line 123
    .line 124
    iput v6, p0, Lcom/transsnet/downloader/manager/StartDownloadHelper$startDownloadResource$1$2;->label:I

    .line 125
    .line 126
    invoke-interface {p1, v8, v9, p0}, Lcx/a;->i(Ljava/lang/String;Lokhttp3/RequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    if-ne p1, v0, :cond_5

    .line 131
    .line 132
    return-object v0

    .line 133
    :cond_5
    :goto_1
    check-cast p1, Lcom/tn/lib/net/bean/BaseDto;

    .line 134
    .line 135
    sget-object v8, Lwf/a;->a:Lwf/a$a;

    .line 136
    .line 137
    iget-object p1, p0, Lcom/transsnet/downloader/manager/StartDownloadHelper$startDownloadResource$1$2;->this$0:Lcom/transsnet/downloader/manager/StartDownloadHelper;

    .line 138
    .line 139
    invoke-static {p1}, Lcom/transsnet/downloader/manager/StartDownloadHelper;->c(Lcom/transsnet/downloader/manager/StartDownloadHelper;)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v9

    .line 143
    iget-object p1, p0, Lcom/transsnet/downloader/manager/StartDownloadHelper$startDownloadResource$1$2;->$ugcList:Ljava/util/ArrayList;

    .line 144
    .line 145
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 146
    .line 147
    .line 148
    move-result p1

    .line 149
    new-instance v6, Ljava/lang/StringBuilder;

    .line 150
    .line 151
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 152
    .line 153
    .line 154
    const-string v10, "startDownloadUGCResource success, count = "

    .line 155
    .line 156
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v10

    .line 166
    const/4 v12, 0x4

    .line 167
    const/4 v13, 0x0

    .line 168
    const/4 v11, 0x0

    .line 169
    invoke-static/range {v8 .. v13}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 170
    .line 171
    .line 172
    :cond_6
    iget-object p1, p0, Lcom/transsnet/downloader/manager/StartDownloadHelper$startDownloadResource$1$2;->$normalList:Ljava/util/ArrayList;

    .line 173
    .line 174
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 175
    .line 176
    .line 177
    move-result p1

    .line 178
    if-nez p1, :cond_8

    .line 179
    .line 180
    iget-object p1, p0, Lcom/transsnet/downloader/manager/StartDownloadHelper$startDownloadResource$1$2;->this$0:Lcom/transsnet/downloader/manager/StartDownloadHelper;

    .line 181
    .line 182
    invoke-static {p1}, Lcom/transsnet/downloader/manager/StartDownloadHelper;->b(Lcom/transsnet/downloader/manager/StartDownloadHelper;)Lcx/a;

    .line 183
    .line 184
    .line 185
    move-result-object p1

    .line 186
    sget-object v3, Lgg/a;->a:Lgg/a$a;

    .line 187
    .line 188
    invoke-virtual {v3}, Lgg/a$a;->a()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v3

    .line 192
    sget-object v6, Lmg/b;->a:Lmg/b$a;

    .line 193
    .line 194
    new-instance v8, Lcom/transsnet/downloader/bean/StartRequestBean;

    .line 195
    .line 196
    iget-object v9, p0, Lcom/transsnet/downloader/manager/StartDownloadHelper$startDownloadResource$1$2;->$normalList:Ljava/util/ArrayList;

    .line 197
    .line 198
    invoke-direct {v8, v9}, Lcom/transsnet/downloader/bean/StartRequestBean;-><init>(Ljava/util/List;)V

    .line 199
    .line 200
    .line 201
    invoke-static {v8}, Lcom/blankj/utilcode/util/o;->j(Ljava/lang/Object;)Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v8

    .line 205
    invoke-static {v8, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {v6, v8}, Lmg/b$a;->a(Ljava/lang/Object;)Lokhttp3/RequestBody;

    .line 209
    .line 210
    .line 211
    move-result-object v2

    .line 212
    iput-object v1, p0, Lcom/transsnet/downloader/manager/StartDownloadHelper$startDownloadResource$1$2;->L$0:Ljava/lang/Object;

    .line 213
    .line 214
    iput v5, p0, Lcom/transsnet/downloader/manager/StartDownloadHelper$startDownloadResource$1$2;->label:I

    .line 215
    .line 216
    invoke-interface {p1, v3, v2, p0}, Lcx/a;->b(Ljava/lang/String;Lokhttp3/RequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    move-result-object p1

    .line 220
    if-ne p1, v0, :cond_7

    .line 221
    .line 222
    return-object v0

    .line 223
    :cond_7
    :goto_2
    check-cast p1, Lcom/tn/lib/net/bean/BaseDto;

    .line 224
    .line 225
    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    move-result-object p1

    .line 229
    iput-object v7, p0, Lcom/transsnet/downloader/manager/StartDownloadHelper$startDownloadResource$1$2;->L$0:Ljava/lang/Object;

    .line 230
    .line 231
    iput v4, p0, Lcom/transsnet/downloader/manager/StartDownloadHelper$startDownloadResource$1$2;->label:I

    .line 232
    .line 233
    invoke-interface {v1, p1, p0}, Lkotlinx/coroutines/flow/b;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    move-result-object p1

    .line 237
    if-ne p1, v0, :cond_9

    .line 238
    .line 239
    return-object v0

    .line 240
    :cond_8
    iput-object v7, p0, Lcom/transsnet/downloader/manager/StartDownloadHelper$startDownloadResource$1$2;->L$0:Ljava/lang/Object;

    .line 241
    .line 242
    iput v3, p0, Lcom/transsnet/downloader/manager/StartDownloadHelper$startDownloadResource$1$2;->label:I

    .line 243
    .line 244
    invoke-interface {v1, v7, p0}, Lkotlinx/coroutines/flow/b;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 245
    .line 246
    .line 247
    move-result-object p1

    .line 248
    if-ne p1, v0, :cond_9

    .line 249
    .line 250
    return-object v0

    .line 251
    :cond_9
    :goto_3
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 252
    .line 253
    return-object p1
.end method
