.class final Lcom/transsion/audio/viewmodel/HistoryListManager$getAudioList$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/audio/viewmodel/HistoryListManager;->r()V
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
    c = "com.transsion.audio.viewmodel.HistoryListManager$getAudioList$1"
    f = "HistoryListManager.kt"
    l = {
        0x38,
        0x43
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/transsion/audio/viewmodel/HistoryListManager;


# direct methods
.method constructor <init>(Lcom/transsion/audio/viewmodel/HistoryListManager;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/audio/viewmodel/HistoryListManager;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/audio/viewmodel/HistoryListManager$getAudioList$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/audio/viewmodel/HistoryListManager$getAudioList$1;->this$0:Lcom/transsion/audio/viewmodel/HistoryListManager;

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
    new-instance p1, Lcom/transsion/audio/viewmodel/HistoryListManager$getAudioList$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsion/audio/viewmodel/HistoryListManager$getAudioList$1;->this$0:Lcom/transsion/audio/viewmodel/HistoryListManager;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lcom/transsion/audio/viewmodel/HistoryListManager$getAudioList$1;-><init>(Lcom/transsion/audio/viewmodel/HistoryListManager;Lkotlin/coroutines/Continuation;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/audio/viewmodel/HistoryListManager$getAudioList$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/audio/viewmodel/HistoryListManager$getAudioList$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/audio/viewmodel/HistoryListManager$getAudioList$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/audio/viewmodel/HistoryListManager$getAudioList$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v1, p0, Lcom/transsion/audio/viewmodel/HistoryListManager$getAudioList$1;->label:I

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    const/4 v3, 0x2

    .line 9
    const/4 v4, 0x0

    .line 10
    if-eqz v1, :cond_2

    .line 11
    .line 12
    if-eq v1, v2, :cond_1

    .line 13
    .line 14
    if-ne v1, v3, :cond_0

    .line 15
    .line 16
    iget-object v1, p0, Lcom/transsion/audio/viewmodel/HistoryListManager$getAudioList$1;->L$2:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v1, Ljava/util/Iterator;

    .line 19
    .line 20
    iget-object v2, p0, Lcom/transsion/audio/viewmodel/HistoryListManager$getAudioList$1;->L$1:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v2, Lcom/transsion/baselib/db/audio/AudioBean;

    .line 23
    .line 24
    iget-object v5, p0, Lcom/transsion/audio/viewmodel/HistoryListManager$getAudioList$1;->L$0:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v5, Ljava/util/List;

    .line 27
    .line 28
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    goto :goto_2

    .line 32
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 33
    .line 34
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 35
    .line 36
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw p1

    .line 40
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    iget-object p1, p0, Lcom/transsion/audio/viewmodel/HistoryListManager$getAudioList$1;->this$0:Lcom/transsion/audio/viewmodel/HistoryListManager;

    .line 48
    .line 49
    invoke-static {p1}, Lcom/transsion/audio/viewmodel/HistoryListManager;->f(Lcom/transsion/audio/viewmodel/HistoryListManager;)Lsi/a;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    if-eqz p1, :cond_4

    .line 54
    .line 55
    iput v2, p0, Lcom/transsion/audio/viewmodel/HistoryListManager$getAudioList$1;->label:I

    .line 56
    .line 57
    invoke-interface {p1, p0}, Lsi/a;->e(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    if-ne p1, v0, :cond_3

    .line 62
    .line 63
    return-object v0

    .line 64
    :cond_3
    :goto_0
    check-cast p1, Ljava/util/List;

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_4
    move-object p1, v4

    .line 68
    :goto_1
    if-eqz p1, :cond_8

    .line 69
    .line 70
    move-object v1, p1

    .line 71
    check-cast v1, Ljava/util/Collection;

    .line 72
    .line 73
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    if-nez v1, :cond_8

    .line 78
    .line 79
    sget-object v1, Lcom/transsion/audio/player/AudioPlayer;->i:Lcom/transsion/audio/player/AudioPlayer$a;

    .line 80
    .line 81
    invoke-virtual {v1}, Lcom/transsion/audio/player/AudioPlayer$a;->a()Lcom/transsion/audio/player/AudioPlayer;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-virtual {v1}, Lcom/transsion/audio/player/AudioPlayer;->t()Lcom/transsion/baselib/db/audio/AudioBean;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    move-object v5, p1

    .line 94
    move-object v8, v2

    .line 95
    move-object v2, v1

    .line 96
    move-object v1, v8

    .line 97
    :cond_5
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 98
    .line 99
    .line 100
    move-result p1

    .line 101
    if-eqz p1, :cond_7

    .line 102
    .line 103
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    check-cast p1, Lcom/transsion/baselib/db/audio/AudioBean;

    .line 108
    .line 109
    invoke-virtual {p1}, Lcom/transsion/baselib/db/audio/AudioBean;->getStatus()I

    .line 110
    .line 111
    .line 112
    move-result v6

    .line 113
    const/4 v7, 0x3

    .line 114
    if-ne v6, v7, :cond_5

    .line 115
    .line 116
    if-eqz v2, :cond_6

    .line 117
    .line 118
    invoke-virtual {v2}, Lcom/transsion/baselib/db/audio/AudioBean;->getAudioUrl()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v6

    .line 122
    goto :goto_3

    .line 123
    :cond_6
    move-object v6, v4

    .line 124
    :goto_3
    invoke-virtual {p1}, Lcom/transsion/baselib/db/audio/AudioBean;->getAudioUrl()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v7

    .line 128
    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 129
    .line 130
    .line 131
    move-result v6

    .line 132
    if-nez v6, :cond_5

    .line 133
    .line 134
    const/4 v6, 0x4

    .line 135
    invoke-virtual {p1, v6}, Lcom/transsion/baselib/db/audio/AudioBean;->setStatus(I)V

    .line 136
    .line 137
    .line 138
    iget-object v6, p0, Lcom/transsion/audio/viewmodel/HistoryListManager$getAudioList$1;->this$0:Lcom/transsion/audio/viewmodel/HistoryListManager;

    .line 139
    .line 140
    invoke-static {v6}, Lcom/transsion/audio/viewmodel/HistoryListManager;->f(Lcom/transsion/audio/viewmodel/HistoryListManager;)Lsi/a;

    .line 141
    .line 142
    .line 143
    move-result-object v6

    .line 144
    if-eqz v6, :cond_5

    .line 145
    .line 146
    iput-object v5, p0, Lcom/transsion/audio/viewmodel/HistoryListManager$getAudioList$1;->L$0:Ljava/lang/Object;

    .line 147
    .line 148
    iput-object v2, p0, Lcom/transsion/audio/viewmodel/HistoryListManager$getAudioList$1;->L$1:Ljava/lang/Object;

    .line 149
    .line 150
    iput-object v1, p0, Lcom/transsion/audio/viewmodel/HistoryListManager$getAudioList$1;->L$2:Ljava/lang/Object;

    .line 151
    .line 152
    iput v3, p0, Lcom/transsion/audio/viewmodel/HistoryListManager$getAudioList$1;->label:I

    .line 153
    .line 154
    invoke-interface {v6, p1, p0}, Lsi/a;->h(Lcom/transsion/baselib/db/audio/AudioBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    if-ne p1, v0, :cond_5

    .line 159
    .line 160
    return-object v0

    .line 161
    :cond_7
    move-object p1, v5

    .line 162
    :cond_8
    iget-object v0, p0, Lcom/transsion/audio/viewmodel/HistoryListManager$getAudioList$1;->this$0:Lcom/transsion/audio/viewmodel/HistoryListManager;

    .line 163
    .line 164
    invoke-virtual {v0}, Lcom/transsion/audio/viewmodel/HistoryListManager;->p()Landroidx/lifecycle/b0;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    invoke-virtual {v0, p1}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 169
    .line 170
    .line 171
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 172
    .line 173
    if-eqz p1, :cond_9

    .line 174
    .line 175
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 176
    .line 177
    .line 178
    move-result p1

    .line 179
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    goto :goto_4

    .line 184
    :cond_9
    move-object p1, v4

    .line 185
    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 186
    .line 187
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 188
    .line 189
    .line 190
    const-string v2, "get getAudioList success"

    .line 191
    .line 192
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object p1

    .line 202
    const/4 v1, 0x0

    .line 203
    invoke-static {v0, p1, v1, v3, v4}, Lwf/a$a;->g(Lwf/a$a;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 204
    .line 205
    .line 206
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 207
    .line 208
    return-object p1
.end method
