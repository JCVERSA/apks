.class final Lcom/transsion/postdetail/util/UGCShortTVFloatManager$saveHistoryInner$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/postdetail/util/UGCShortTVFloatManager;->o(Ldw/a;Lkotlin/jvm/functions/Function0;)V
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
    c = "com.transsion.postdetail.util.UGCShortTVFloatManager$saveHistoryInner$1"
    f = "UGCShortTVFloatManager.kt"
    l = {
        0x3b,
        0x3f
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $callback:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $floatBean:Ldw/a;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Ldw/a;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldw/a;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/postdetail/util/UGCShortTVFloatManager$saveHistoryInner$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/postdetail/util/UGCShortTVFloatManager$saveHistoryInner$1;->$floatBean:Ldw/a;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/postdetail/util/UGCShortTVFloatManager$saveHistoryInner$1;->$callback:Lkotlin/jvm/functions/Function0;

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
    new-instance v0, Lcom/transsion/postdetail/util/UGCShortTVFloatManager$saveHistoryInner$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/postdetail/util/UGCShortTVFloatManager$saveHistoryInner$1;->$floatBean:Ldw/a;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsion/postdetail/util/UGCShortTVFloatManager$saveHistoryInner$1;->$callback:Lkotlin/jvm/functions/Function0;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2, p2}, Lcom/transsion/postdetail/util/UGCShortTVFloatManager$saveHistoryInner$1;-><init>(Ldw/a;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    .line 8
    .line 9
    .line 10
    iput-object p1, v0, Lcom/transsion/postdetail/util/UGCShortTVFloatManager$saveHistoryInner$1;->L$0:Ljava/lang/Object;

    .line 11
    .line 12
    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/postdetail/util/UGCShortTVFloatManager$saveHistoryInner$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/postdetail/util/UGCShortTVFloatManager$saveHistoryInner$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/postdetail/util/UGCShortTVFloatManager$saveHistoryInner$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/postdetail/util/UGCShortTVFloatManager$saveHistoryInner$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/transsion/postdetail/util/UGCShortTVFloatManager$saveHistoryInner$1;->label:I

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
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    goto/16 :goto_6

    .line 19
    .line 20
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 21
    .line 22
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 23
    .line 24
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw p1

    .line 28
    :cond_1
    iget-object v1, p0, Lcom/transsion/postdetail/util/UGCShortTVFloatManager$saveHistoryInner$1;->L$0:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 31
    .line 32
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    .line 34
    .line 35
    goto/16 :goto_3

    .line 36
    .line 37
    :catchall_0
    move-exception p1

    .line 38
    goto/16 :goto_4

    .line 39
    .line 40
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    iget-object p1, p0, Lcom/transsion/postdetail/util/UGCShortTVFloatManager$saveHistoryInner$1;->L$0:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast p1, Lkotlinx/coroutines/n0;

    .line 46
    .line 47
    iget-object p1, p0, Lcom/transsion/postdetail/util/UGCShortTVFloatManager$saveHistoryInner$1;->$floatBean:Ldw/a;

    .line 48
    .line 49
    if-eqz p1, :cond_6

    .line 50
    .line 51
    iget-object v1, p0, Lcom/transsion/postdetail/util/UGCShortTVFloatManager$saveHistoryInner$1;->$callback:Lkotlin/jvm/functions/Function0;

    .line 52
    .line 53
    sget-object v4, Lwf/a;->a:Lwf/a$a;

    .line 54
    .line 55
    invoke-virtual {p1}, Ldw/a;->c()I

    .line 56
    .line 57
    .line 58
    move-result v5

    .line 59
    invoke-virtual {p1}, Ldw/a;->n()J

    .line 60
    .line 61
    .line 62
    move-result-wide v6

    .line 63
    new-instance v8, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    .line 67
    .line 68
    const-string v9, "shorttv-----saveHistory, ep:"

    .line 69
    .line 70
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v5, ", progress:"

    .line 77
    .line 78
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v6

    .line 88
    const/4 v8, 0x4

    .line 89
    const/4 v9, 0x0

    .line 90
    const-string v5, "VideoFloat"

    .line 91
    .line 92
    const/4 v7, 0x0

    .line 93
    invoke-static/range {v4 .. v9}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    :try_start_1
    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 97
    .line 98
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 99
    .line 100
    .line 101
    move-result-wide v8

    .line 102
    invoke-virtual {p1}, Ldw/a;->v()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 103
    .line 104
    .line 105
    move-result-object v4

    .line 106
    if-eqz v4, :cond_4

    .line 107
    .line 108
    invoke-virtual {v4}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getBelongToCollection()Lcom/transsion/ugcvideodetail/api/bean/UGCVideoBelongToCollection;

    .line 109
    .line 110
    .line 111
    move-result-object v4

    .line 112
    if-eqz v4, :cond_4

    .line 113
    .line 114
    invoke-virtual {v4}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoBelongToCollection;->getCollectionId()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v4

    .line 118
    if-nez v4, :cond_3

    .line 119
    .line 120
    goto :goto_1

    .line 121
    :cond_3
    :goto_0
    move-object v6, v4

    .line 122
    goto :goto_2

    .line 123
    :cond_4
    :goto_1
    invoke-virtual {p1}, Ldw/a;->r()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v4

    .line 127
    goto :goto_0

    .line 128
    :goto_2
    invoke-virtual {p1}, Ldw/a;->v()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 129
    .line 130
    .line 131
    move-result-object v4

    .line 132
    if-eqz v4, :cond_5

    .line 133
    .line 134
    invoke-virtual {v4}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getUgcVideoId()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v7

    .line 138
    if-eqz v7, :cond_5

    .line 139
    .line 140
    sget-object v4, Lcom/transsion/postdetail/util/UGCShortTVFloatManager;->b:Lcom/transsion/postdetail/util/UGCShortTVFloatManager;

    .line 141
    .line 142
    invoke-static {v4}, Lcom/transsion/postdetail/util/UGCShortTVFloatManager;->f(Lcom/transsion/postdetail/util/UGCShortTVFloatManager;)Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;

    .line 143
    .line 144
    .line 145
    move-result-object v5

    .line 146
    invoke-virtual {p1}, Ldw/a;->n()J

    .line 147
    .line 148
    .line 149
    move-result-wide v10

    .line 150
    iput-object v1, p0, Lcom/transsion/postdetail/util/UGCShortTVFloatManager$saveHistoryInner$1;->L$0:Ljava/lang/Object;

    .line 151
    .line 152
    iput v3, p0, Lcom/transsion/postdetail/util/UGCShortTVFloatManager$saveHistoryInner$1;->label:I

    .line 153
    .line 154
    move-object v12, p0

    .line 155
    invoke-interface/range {v5 .. v12}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;->k(Ljava/lang/String;Ljava/lang/String;JJLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    if-ne p1, v0, :cond_5

    .line 160
    .line 161
    return-object v0

    .line 162
    :cond_5
    :goto_3
    sget-object v3, Lwf/a;->a:Lwf/a$a;

    .line 163
    .line 164
    const-string v4, "VideoFloat"

    .line 165
    .line 166
    const-string v5, "shorttv--saveHistory--end"

    .line 167
    .line 168
    const/4 v7, 0x4

    .line 169
    const/4 v8, 0x0

    .line 170
    const/4 v6, 0x0

    .line 171
    invoke-static/range {v3 .. v8}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 172
    .line 173
    .line 174
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 175
    .line 176
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 177
    .line 178
    .line 179
    goto :goto_5

    .line 180
    :goto_4
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 181
    .line 182
    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object p1

    .line 186
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    :goto_5
    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    .line 190
    .line 191
    .line 192
    move-result-object p1

    .line 193
    new-instance v3, Lcom/transsion/postdetail/util/UGCShortTVFloatManager$saveHistoryInner$1$1$2;

    .line 194
    .line 195
    const/4 v4, 0x0

    .line 196
    invoke-direct {v3, v1, v4}, Lcom/transsion/postdetail/util/UGCShortTVFloatManager$saveHistoryInner$1$1$2;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    .line 197
    .line 198
    .line 199
    iput-object v4, p0, Lcom/transsion/postdetail/util/UGCShortTVFloatManager$saveHistoryInner$1;->L$0:Ljava/lang/Object;

    .line 200
    .line 201
    iput v2, p0, Lcom/transsion/postdetail/util/UGCShortTVFloatManager$saveHistoryInner$1;->label:I

    .line 202
    .line 203
    invoke-static {p1, v3, p0}, Lkotlinx/coroutines/i;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object p1

    .line 207
    if-ne p1, v0, :cond_6

    .line 208
    .line 209
    return-object v0

    .line 210
    :cond_6
    :goto_6
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 211
    .line 212
    return-object p1
.end method
