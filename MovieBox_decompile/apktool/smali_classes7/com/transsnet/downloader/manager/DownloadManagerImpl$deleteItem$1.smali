.class final Lcom/transsnet/downloader/manager/DownloadManagerImpl$deleteItem$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsnet/downloader/manager/DownloadManagerImpl;->l0(Lcom/transsion/baselib/db/download/DownloadBean;ZLkotlin/jvm/functions/Function1;)V
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
    c = "com.transsnet.downloader.manager.DownloadManagerImpl$deleteItem$1"
    f = "DownloadManagerImpl.kt"
    l = {
        0x5a9,
        0x5ae,
        0x5b9,
        0x5be,
        0x5c0
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field final synthetic $callback:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $downloadInfo:Lcom/transsion/baselib/db/download/DownloadBean;

.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/transsnet/downloader/manager/DownloadManagerImpl;


# direct methods
.method constructor <init>(Lcom/transsion/baselib/db/download/DownloadBean;Lcom/transsnet/downloader/manager/DownloadManagerImpl;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/baselib/db/download/DownloadBean;",
            "Lcom/transsnet/downloader/manager/DownloadManagerImpl;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsnet/downloader/manager/DownloadManagerImpl$deleteItem$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsnet/downloader/manager/DownloadManagerImpl$deleteItem$1;->$downloadInfo:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsnet/downloader/manager/DownloadManagerImpl$deleteItem$1;->this$0:Lcom/transsnet/downloader/manager/DownloadManagerImpl;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/transsnet/downloader/manager/DownloadManagerImpl$deleteItem$1;->$callback:Lkotlin/jvm/functions/Function1;

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
    new-instance p1, Lcom/transsnet/downloader/manager/DownloadManagerImpl$deleteItem$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsnet/downloader/manager/DownloadManagerImpl$deleteItem$1;->$downloadInfo:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/transsnet/downloader/manager/DownloadManagerImpl$deleteItem$1;->this$0:Lcom/transsnet/downloader/manager/DownloadManagerImpl;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/transsnet/downloader/manager/DownloadManagerImpl$deleteItem$1;->$callback:Lkotlin/jvm/functions/Function1;

    .line 8
    .line 9
    invoke-direct {p1, v0, v1, v2, p2}, Lcom/transsnet/downloader/manager/DownloadManagerImpl$deleteItem$1;-><init>(Lcom/transsion/baselib/db/download/DownloadBean;Lcom/transsnet/downloader/manager/DownloadManagerImpl;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    .line 10
    .line 11
    .line 12
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsnet/downloader/manager/DownloadManagerImpl$deleteItem$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsnet/downloader/manager/DownloadManagerImpl$deleteItem$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsnet/downloader/manager/DownloadManagerImpl$deleteItem$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsnet/downloader/manager/DownloadManagerImpl$deleteItem$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/transsnet/downloader/manager/DownloadManagerImpl$deleteItem$1;->label:I

    .line 6
    .line 7
    const/4 v2, 0x5

    .line 8
    const/4 v3, 0x4

    .line 9
    const/4 v4, 0x3

    .line 10
    const/4 v5, 0x2

    .line 11
    const/4 v6, 0x1

    .line 12
    if-eqz v1, :cond_5

    .line 13
    .line 14
    if-eq v1, v6, :cond_4

    .line 15
    .line 16
    if-eq v1, v5, :cond_3

    .line 17
    .line 18
    if-eq v1, v4, :cond_2

    .line 19
    .line 20
    if-eq v1, v3, :cond_1

    .line 21
    .line 22
    if-ne v1, v2, :cond_0

    .line 23
    .line 24
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    goto/16 :goto_5

    .line 28
    .line 29
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 30
    .line 31
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 32
    .line 33
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw p1

    .line 37
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    goto/16 :goto_4

    .line 41
    .line 42
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    goto/16 :goto_3

    .line 46
    .line 47
    :cond_3
    iget-object v1, p0, Lcom/transsnet/downloader/manager/DownloadManagerImpl$deleteItem$1;->L$0:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v1, Lkotlin/Unit;

    .line 50
    .line 51
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    goto/16 :goto_2

    .line 55
    .line 56
    :cond_4
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_5
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    iget-object p1, p0, Lcom/transsnet/downloader/manager/DownloadManagerImpl$deleteItem$1;->$downloadInfo:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 64
    .line 65
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getStatus()I

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    invoke-virtual {p1, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setPreStatus(I)V

    .line 70
    .line 71
    .line 72
    iget-object p1, p0, Lcom/transsnet/downloader/manager/DownloadManagerImpl$deleteItem$1;->$downloadInfo:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 73
    .line 74
    const/4 v1, 0x7

    .line 75
    invoke-virtual {p1, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setStatus(I)V

    .line 76
    .line 77
    .line 78
    iget-object p1, p0, Lcom/transsnet/downloader/manager/DownloadManagerImpl$deleteItem$1;->this$0:Lcom/transsnet/downloader/manager/DownloadManagerImpl;

    .line 79
    .line 80
    invoke-static {p1}, Lcom/transsnet/downloader/manager/DownloadManagerImpl;->V(Lcom/transsnet/downloader/manager/DownloadManagerImpl;)Ljava/util/Set;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    check-cast p1, Ljava/lang/Iterable;

    .line 85
    .line 86
    iget-object v1, p0, Lcom/transsnet/downloader/manager/DownloadManagerImpl$deleteItem$1;->$downloadInfo:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 87
    .line 88
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 93
    .line 94
    .line 95
    move-result v7

    .line 96
    if-eqz v7, :cond_6

    .line 97
    .line 98
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v7

    .line 102
    check-cast v7, Lui/s0;

    .line 103
    .line 104
    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubtitleResId()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v8

    .line 108
    invoke-interface {v7, v8}, Lui/s0;->a(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_6
    sget-object p1, Lcom/transsnet/downloader/manager/DownloadEsHelper;->m:Lcom/transsnet/downloader/manager/DownloadEsHelper$a;

    .line 113
    .line 114
    invoke-virtual {p1}, Lcom/transsnet/downloader/manager/DownloadEsHelper$a;->a()Lcom/transsnet/downloader/manager/DownloadEsHelper;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    iget-object v1, p0, Lcom/transsnet/downloader/manager/DownloadManagerImpl$deleteItem$1;->$downloadInfo:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 119
    .line 120
    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    if-nez v1, :cond_7

    .line 125
    .line 126
    iget-object v1, p0, Lcom/transsnet/downloader/manager/DownloadManagerImpl$deleteItem$1;->$downloadInfo:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 127
    .line 128
    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    :cond_7
    iget-object v7, p0, Lcom/transsnet/downloader/manager/DownloadManagerImpl$deleteItem$1;->$downloadInfo:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 133
    .line 134
    invoke-virtual {v7}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcVideoId()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v7

    .line 138
    iget-object v8, p0, Lcom/transsnet/downloader/manager/DownloadManagerImpl$deleteItem$1;->$downloadInfo:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 139
    .line 140
    invoke-virtual {v8}, Lcom/transsion/baselib/db/download/DownloadBean;->getPostId()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v8

    .line 144
    iput v6, p0, Lcom/transsnet/downloader/manager/DownloadManagerImpl$deleteItem$1;->label:I

    .line 145
    .line 146
    invoke-virtual {p1, v1, v7, v8, p0}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    if-ne p1, v0, :cond_8

    .line 151
    .line 152
    return-object v0

    .line 153
    :cond_8
    :goto_1
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 154
    .line 155
    iget-object p1, p0, Lcom/transsnet/downloader/manager/DownloadManagerImpl$deleteItem$1;->this$0:Lcom/transsnet/downloader/manager/DownloadManagerImpl;

    .line 156
    .line 157
    invoke-static {p1}, Lcom/transsnet/downloader/manager/DownloadManagerImpl;->a0(Lcom/transsnet/downloader/manager/DownloadManagerImpl;)Lui/n0;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    iget-object v7, p0, Lcom/transsnet/downloader/manager/DownloadManagerImpl$deleteItem$1;->$downloadInfo:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 162
    .line 163
    invoke-virtual {v7}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v7

    .line 167
    if-nez v7, :cond_9

    .line 168
    .line 169
    iget-object v7, p0, Lcom/transsnet/downloader/manager/DownloadManagerImpl$deleteItem$1;->$downloadInfo:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 170
    .line 171
    invoke-virtual {v7}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v7

    .line 175
    :cond_9
    iput-object v1, p0, Lcom/transsnet/downloader/manager/DownloadManagerImpl$deleteItem$1;->L$0:Ljava/lang/Object;

    .line 176
    .line 177
    iput v5, p0, Lcom/transsnet/downloader/manager/DownloadManagerImpl$deleteItem$1;->label:I

    .line 178
    .line 179
    invoke-interface {p1, v7, p0}, Lui/n0;->b(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    if-ne p1, v0, :cond_a

    .line 184
    .line 185
    return-object v0

    .line 186
    :cond_a
    :goto_2
    sget-object p1, Lwf/a;->a:Lwf/a$a;

    .line 187
    .line 188
    new-instance v7, Ljava/lang/StringBuilder;

    .line 189
    .line 190
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 191
    .line 192
    .line 193
    const-string v8, "get deleteItem success "

    .line 194
    .line 195
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v1

    .line 205
    const/4 v7, 0x0

    .line 206
    const/4 v8, 0x0

    .line 207
    invoke-static {p1, v1, v7, v5, v8}, Lwf/a$a;->g(Lwf/a$a;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 208
    .line 209
    .line 210
    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    .line 211
    .line 212
    .line 213
    move-result-object p1

    .line 214
    new-instance v1, Lcom/transsnet/downloader/manager/DownloadManagerImpl$deleteItem$1$2;

    .line 215
    .line 216
    iget-object v5, p0, Lcom/transsnet/downloader/manager/DownloadManagerImpl$deleteItem$1;->$callback:Lkotlin/jvm/functions/Function1;

    .line 217
    .line 218
    invoke-direct {v1, v5, v8}, Lcom/transsnet/downloader/manager/DownloadManagerImpl$deleteItem$1$2;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    .line 219
    .line 220
    .line 221
    iput-object v8, p0, Lcom/transsnet/downloader/manager/DownloadManagerImpl$deleteItem$1;->L$0:Ljava/lang/Object;

    .line 222
    .line 223
    iput v4, p0, Lcom/transsnet/downloader/manager/DownloadManagerImpl$deleteItem$1;->label:I

    .line 224
    .line 225
    invoke-static {p1, v1, p0}, Lkotlinx/coroutines/i;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    move-result-object p1

    .line 229
    if-ne p1, v0, :cond_b

    .line 230
    .line 231
    return-object v0

    .line 232
    :cond_b
    :goto_3
    iget-object p1, p0, Lcom/transsnet/downloader/manager/DownloadManagerImpl$deleteItem$1;->$downloadInfo:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 233
    .line 234
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getType()I

    .line 235
    .line 236
    .line 237
    move-result p1

    .line 238
    if-ne p1, v6, :cond_d

    .line 239
    .line 240
    iget-object p1, p0, Lcom/transsnet/downloader/manager/DownloadManagerImpl$deleteItem$1;->this$0:Lcom/transsnet/downloader/manager/DownloadManagerImpl;

    .line 241
    .line 242
    invoke-static {p1}, Lcom/transsnet/downloader/manager/DownloadManagerImpl;->R(Lcom/transsnet/downloader/manager/DownloadManagerImpl;)Lsi/a;

    .line 243
    .line 244
    .line 245
    move-result-object p1

    .line 246
    if-eqz p1, :cond_d

    .line 247
    .line 248
    iget-object v1, p0, Lcom/transsnet/downloader/manager/DownloadManagerImpl$deleteItem$1;->$downloadInfo:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 249
    .line 250
    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v1

    .line 254
    iput v3, p0, Lcom/transsnet/downloader/manager/DownloadManagerImpl$deleteItem$1;->label:I

    .line 255
    .line 256
    invoke-interface {p1, v1, p0}, Lsi/a;->c(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 257
    .line 258
    .line 259
    move-result-object p1

    .line 260
    if-ne p1, v0, :cond_c

    .line 261
    .line 262
    return-object v0

    .line 263
    :cond_c
    :goto_4
    check-cast p1, Lcom/transsion/baselib/db/audio/AudioBean;

    .line 264
    .line 265
    if-eqz p1, :cond_d

    .line 266
    .line 267
    iget-object v1, p0, Lcom/transsnet/downloader/manager/DownloadManagerImpl$deleteItem$1;->this$0:Lcom/transsnet/downloader/manager/DownloadManagerImpl;

    .line 268
    .line 269
    const-wide/16 v3, 0x0

    .line 270
    .line 271
    invoke-static {v3, v4}, Lkotlin/coroutines/jvm/internal/Boxing;->e(J)Ljava/lang/Long;

    .line 272
    .line 273
    .line 274
    move-result-object v3

    .line 275
    invoke-virtual {p1, v3}, Lcom/transsion/baselib/db/audio/AudioBean;->setReadProcess(Ljava/lang/Long;)V

    .line 276
    .line 277
    .line 278
    invoke-static {v1}, Lcom/transsnet/downloader/manager/DownloadManagerImpl;->R(Lcom/transsnet/downloader/manager/DownloadManagerImpl;)Lsi/a;

    .line 279
    .line 280
    .line 281
    move-result-object v1

    .line 282
    if-eqz v1, :cond_d

    .line 283
    .line 284
    iput v2, p0, Lcom/transsnet/downloader/manager/DownloadManagerImpl$deleteItem$1;->label:I

    .line 285
    .line 286
    invoke-interface {v1, p1, p0}, Lsi/a;->b(Lcom/transsion/baselib/db/audio/AudioBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 287
    .line 288
    .line 289
    move-result-object p1

    .line 290
    if-ne p1, v0, :cond_d

    .line 291
    .line 292
    return-object v0

    .line 293
    :cond_d
    :goto_5
    sget-object p1, Lcom/transsnet/downloader/DownloadManagerApi;->j:Lcom/transsnet/downloader/DownloadManagerApi$a;

    .line 294
    .line 295
    invoke-virtual {p1}, Lcom/transsnet/downloader/DownloadManagerApi$a;->a()Lcom/transsnet/downloader/DownloadManagerApi;

    .line 296
    .line 297
    .line 298
    move-result-object v0

    .line 299
    iget-object p1, p0, Lcom/transsnet/downloader/manager/DownloadManagerImpl$deleteItem$1;->$downloadInfo:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 300
    .line 301
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectId()Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object v1

    .line 305
    iget-object p1, p0, Lcom/transsnet/downloader/manager/DownloadManagerImpl$deleteItem$1;->$downloadInfo:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 306
    .line 307
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object v2

    .line 311
    iget-object p1, p0, Lcom/transsnet/downloader/manager/DownloadManagerImpl$deleteItem$1;->$downloadInfo:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 312
    .line 313
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->isSeries()Z

    .line 314
    .line 315
    .line 316
    move-result v3

    .line 317
    iget-object p1, p0, Lcom/transsnet/downloader/manager/DownloadManagerImpl$deleteItem$1;->$downloadInfo:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 318
    .line 319
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->isMultiresolution()Z

    .line 320
    .line 321
    .line 322
    move-result v5

    .line 323
    const/16 v6, 0x8

    .line 324
    .line 325
    const/4 v7, 0x0

    .line 326
    const/4 v4, 0x0

    .line 327
    invoke-static/range {v0 .. v7}, Lcom/transsnet/downloader/DownloadManagerApi;->B0(Lcom/transsnet/downloader/DownloadManagerApi;Ljava/lang/String;Ljava/lang/String;ZZZILjava/lang/Object;)V

    .line 328
    .line 329
    .line 330
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 331
    .line 332
    return-object p1
.end method
