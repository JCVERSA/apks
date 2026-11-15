.class final Lcom/transsnet/downloader/manager/DownloadManagerImpl$requestNewSource$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsnet/downloader/manager/DownloadManagerImpl$requestNewSource$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
        "Lcom/transsnet/downloader/bean/DownloadListBean;",
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
    c = "com.transsnet.downloader.manager.DownloadManagerImpl$requestNewSource$1$1"
    f = "DownloadManagerImpl.kt"
    l = {
        0x5df,
        0x5e4,
        0x5e6
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $bean:Lcom/transsion/baselib/db/download/DownloadBean;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/transsnet/downloader/manager/DownloadManagerImpl;


# direct methods
.method constructor <init>(Lcom/transsnet/downloader/manager/DownloadManagerImpl;Lcom/transsion/baselib/db/download/DownloadBean;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsnet/downloader/manager/DownloadManagerImpl;",
            "Lcom/transsion/baselib/db/download/DownloadBean;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsnet/downloader/manager/DownloadManagerImpl$requestNewSource$1$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsnet/downloader/manager/DownloadManagerImpl$requestNewSource$1$1;->this$0:Lcom/transsnet/downloader/manager/DownloadManagerImpl;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsnet/downloader/manager/DownloadManagerImpl$requestNewSource$1$1;->$bean:Lcom/transsion/baselib/db/download/DownloadBean;

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


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
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
    new-instance v0, Lcom/transsnet/downloader/manager/DownloadManagerImpl$requestNewSource$1$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsnet/downloader/manager/DownloadManagerImpl$requestNewSource$1$1;->this$0:Lcom/transsnet/downloader/manager/DownloadManagerImpl;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsnet/downloader/manager/DownloadManagerImpl$requestNewSource$1$1;->$bean:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2, p2}, Lcom/transsnet/downloader/manager/DownloadManagerImpl$requestNewSource$1$1;-><init>(Lcom/transsnet/downloader/manager/DownloadManagerImpl;Lcom/transsion/baselib/db/download/DownloadBean;Lkotlin/coroutines/Continuation;)V

    .line 8
    .line 9
    .line 10
    iput-object p1, v0, Lcom/transsnet/downloader/manager/DownloadManagerImpl$requestNewSource$1$1;->L$0:Ljava/lang/Object;

    .line 11
    .line 12
    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/flow/b;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsnet/downloader/manager/DownloadManagerImpl$requestNewSource$1$1;->invoke(Lkotlinx/coroutines/flow/b;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsnet/downloader/manager/DownloadManagerImpl$requestNewSource$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsnet/downloader/manager/DownloadManagerImpl$requestNewSource$1$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsnet/downloader/manager/DownloadManagerImpl$requestNewSource$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    .line 1
    move-object/from16 v10, p0

    .line 2
    .line 3
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v11

    .line 7
    iget v0, v10, Lcom/transsnet/downloader/manager/DownloadManagerImpl$requestNewSource$1$1;->label:I

    .line 8
    .line 9
    const/4 v12, 0x3

    .line 10
    const/4 v13, 0x2

    .line 11
    const/4 v14, 0x1

    .line 12
    const/4 v15, 0x0

    .line 13
    if-eqz v0, :cond_3

    .line 14
    .line 15
    if-eq v0, v14, :cond_2

    .line 16
    .line 17
    if-eq v0, v13, :cond_0

    .line 18
    .line 19
    if-ne v0, v12, :cond_1

    .line 20
    .line 21
    :cond_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    goto/16 :goto_5

    .line 25
    .line 26
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 27
    .line 28
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 29
    .line 30
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw v0

    .line 34
    :cond_2
    iget-object v0, v10, Lcom/transsnet/downloader/manager/DownloadManagerImpl$requestNewSource$1$1;->L$0:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v0, Lkotlinx/coroutines/flow/b;

    .line 37
    .line 38
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    move-object v1, v0

    .line 42
    move-object/from16 v0, p1

    .line 43
    .line 44
    goto/16 :goto_3

    .line 45
    .line 46
    :cond_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    iget-object v0, v10, Lcom/transsnet/downloader/manager/DownloadManagerImpl$requestNewSource$1$1;->L$0:Ljava/lang/Object;

    .line 50
    .line 51
    move-object v9, v0

    .line 52
    check-cast v9, Lkotlinx/coroutines/flow/b;

    .line 53
    .line 54
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 55
    .line 56
    iget-object v1, v10, Lcom/transsnet/downloader/manager/DownloadManagerImpl$requestNewSource$1$1;->this$0:Lcom/transsnet/downloader/manager/DownloadManagerImpl;

    .line 57
    .line 58
    invoke-static {v1}, Lcom/transsnet/downloader/manager/DownloadManagerImpl;->c0(Lcom/transsnet/downloader/manager/DownloadManagerImpl;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    iget-object v2, v10, Lcom/transsnet/downloader/manager/DownloadManagerImpl$requestNewSource$1$1;->$bean:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 63
    .line 64
    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadBean;->getException()Lcom/transsion/baselib/db/download/DownloadException;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    if-eqz v2, :cond_4

    .line 69
    .line 70
    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadException;->getResponseCode()I

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    goto :goto_0

    .line 79
    :cond_4
    move-object v2, v15

    .line 80
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    .line 84
    .line 85
    const-string v4, "download, resource error~ request new resource\uff0c responseCode = "

    .line 86
    .line 87
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    invoke-virtual {v0, v1, v2, v14}, Lwf/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 98
    .line 99
    .line 100
    iget-object v0, v10, Lcom/transsnet/downloader/manager/DownloadManagerImpl$requestNewSource$1$1;->$bean:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 101
    .line 102
    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v4

    .line 106
    iget-object v0, v10, Lcom/transsnet/downloader/manager/DownloadManagerImpl$requestNewSource$1$1;->$bean:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 107
    .line 108
    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getException()Lcom/transsion/baselib/db/download/DownloadException;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    if-eqz v0, :cond_5

    .line 113
    .line 114
    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadException;->getResponseCode()I

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    goto :goto_1

    .line 123
    :cond_5
    move-object v0, v15

    .line 124
    :goto_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v5

    .line 128
    iget-object v0, v10, Lcom/transsnet/downloader/manager/DownloadManagerImpl$requestNewSource$1$1;->this$0:Lcom/transsnet/downloader/manager/DownloadManagerImpl;

    .line 129
    .line 130
    invoke-static {v0}, Lcom/transsnet/downloader/manager/DownloadManagerImpl;->b0(Lcom/transsnet/downloader/manager/DownloadManagerImpl;)Lcx/a;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    sget-object v1, Lgg/a;->a:Lgg/a$a;

    .line 135
    .line 136
    invoke-virtual {v1}, Lgg/a$a;->a()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    iget-object v2, v10, Lcom/transsnet/downloader/manager/DownloadManagerImpl$requestNewSource$1$1;->$bean:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 141
    .line 142
    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectId()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v2

    .line 146
    const-string v3, ""

    .line 147
    .line 148
    if-nez v2, :cond_6

    .line 149
    .line 150
    move-object v2, v3

    .line 151
    :cond_6
    iget-object v6, v10, Lcom/transsnet/downloader/manager/DownloadManagerImpl$requestNewSource$1$1;->$bean:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 152
    .line 153
    invoke-virtual {v6}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v6

    .line 157
    if-nez v6, :cond_7

    .line 158
    .line 159
    goto :goto_2

    .line 160
    :cond_7
    move-object v3, v6

    .line 161
    :goto_2
    iput-object v9, v10, Lcom/transsnet/downloader/manager/DownloadManagerImpl$requestNewSource$1$1;->L$0:Ljava/lang/Object;

    .line 162
    .line 163
    iput v14, v10, Lcom/transsnet/downloader/manager/DownloadManagerImpl$requestNewSource$1$1;->label:I

    .line 164
    .line 165
    const/4 v6, 0x0

    .line 166
    const/16 v8, 0x20

    .line 167
    .line 168
    const/16 v16, 0x0

    .line 169
    .line 170
    move-object/from16 v7, p0

    .line 171
    .line 172
    move-object/from16 v17, v9

    .line 173
    .line 174
    move-object/from16 v9, v16

    .line 175
    .line 176
    invoke-static/range {v0 .. v9}, Lcx/a$a;->d(Lcx/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    if-ne v0, v11, :cond_8

    .line 181
    .line 182
    return-object v11

    .line 183
    :cond_8
    move-object/from16 v1, v17

    .line 184
    .line 185
    :goto_3
    check-cast v0, Lcom/tn/lib/net/bean/BaseDto;

    .line 186
    .line 187
    invoke-virtual {v0}, Lcom/tn/lib/net/bean/BaseDto;->getCode()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v2

    .line 191
    const-string v3, "0"

    .line 192
    .line 193
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 194
    .line 195
    .line 196
    move-result v2

    .line 197
    if-eqz v2, :cond_a

    .line 198
    .line 199
    invoke-virtual {v0}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    move-result-object v2

    .line 203
    check-cast v2, Lcom/transsnet/downloader/bean/DownloadListBean;

    .line 204
    .line 205
    if-eqz v2, :cond_9

    .line 206
    .line 207
    invoke-virtual {v2}, Lcom/transsnet/downloader/bean/DownloadListBean;->getItems()Ljava/util/List;

    .line 208
    .line 209
    .line 210
    move-result-object v2

    .line 211
    if-eqz v2, :cond_9

    .line 212
    .line 213
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 214
    .line 215
    .line 216
    move-result v2

    .line 217
    if-ne v2, v14, :cond_9

    .line 218
    .line 219
    goto :goto_4

    .line 220
    :cond_9
    invoke-virtual {v0}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    iput-object v15, v10, Lcom/transsnet/downloader/manager/DownloadManagerImpl$requestNewSource$1$1;->L$0:Ljava/lang/Object;

    .line 225
    .line 226
    iput v12, v10, Lcom/transsnet/downloader/manager/DownloadManagerImpl$requestNewSource$1$1;->label:I

    .line 227
    .line 228
    invoke-interface {v1, v0, v10}, Lkotlinx/coroutines/flow/b;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    move-result-object v0

    .line 232
    if-ne v0, v11, :cond_b

    .line 233
    .line 234
    return-object v11

    .line 235
    :cond_a
    :goto_4
    iput-object v15, v10, Lcom/transsnet/downloader/manager/DownloadManagerImpl$requestNewSource$1$1;->L$0:Ljava/lang/Object;

    .line 236
    .line 237
    iput v13, v10, Lcom/transsnet/downloader/manager/DownloadManagerImpl$requestNewSource$1$1;->label:I

    .line 238
    .line 239
    invoke-interface {v1, v15, v10}, Lkotlinx/coroutines/flow/b;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 240
    .line 241
    .line 242
    move-result-object v0

    .line 243
    if-ne v0, v11, :cond_b

    .line 244
    .line 245
    return-object v11

    .line 246
    :cond_b
    :goto_5
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 247
    .line 248
    return-object v0
.end method
