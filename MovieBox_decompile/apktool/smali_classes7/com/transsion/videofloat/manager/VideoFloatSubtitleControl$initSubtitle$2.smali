.class final Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl$initSubtitle$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;->o()V
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
    c = "com.transsion.videofloat.manager.VideoFloatSubtitleControl$initSubtitle$2"
    f = "VideoFloatSubtitleControl.kt"
    l = {
        0x4b,
        0x4e,
        0x52,
        0x54
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;


# direct methods
.method constructor <init>(Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl$initSubtitle$2;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl$initSubtitle$2;->this$0:Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;

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
    new-instance p1, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl$initSubtitle$2;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl$initSubtitle$2;->this$0:Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl$initSubtitle$2;-><init>(Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;Lkotlin/coroutines/Continuation;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl$initSubtitle$2;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl$initSubtitle$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl$initSubtitle$2;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl$initSubtitle$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl$initSubtitle$2;->label:I

    .line 6
    .line 7
    const/4 v2, 0x4

    .line 8
    const/4 v3, 0x3

    .line 9
    const/4 v4, 0x2

    .line 10
    const/4 v5, 0x1

    .line 11
    const/4 v6, 0x0

    .line 12
    if-eqz v1, :cond_4

    .line 13
    .line 14
    if-eq v1, v5, :cond_3

    .line 15
    .line 16
    if-eq v1, v4, :cond_2

    .line 17
    .line 18
    if-eq v1, v3, :cond_1

    .line 19
    .line 20
    if-ne v1, v2, :cond_0

    .line 21
    .line 22
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    goto/16 :goto_7

    .line 26
    .line 27
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 28
    .line 29
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 30
    .line 31
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    throw p1

    .line 35
    :cond_1
    iget-object v1, p0, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl$initSubtitle$2;->L$0:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v1, Ljava/lang/String;

    .line 38
    .line 39
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    goto/16 :goto_5

    .line 43
    .line 44
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_4
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    iget-object p1, p0, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl$initSubtitle$2;->this$0:Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;

    .line 56
    .line 57
    invoke-static {p1}, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;->d(Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;)Ldw/a;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-virtual {p1}, Ldw/a;->i()Lcom/transsion/videofloat/bean/FloatPlayType;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    sget-object v1, Lcom/transsion/videofloat/bean/FloatPlayType;->STREAM:Lcom/transsion/videofloat/bean/FloatPlayType;

    .line 66
    .line 67
    if-ne p1, v1, :cond_7

    .line 68
    .line 69
    iget-object p1, p0, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl$initSubtitle$2;->this$0:Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;

    .line 70
    .line 71
    invoke-static {p1}, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;->f(Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;)Lcom/transsion/baselib/db/video/VideoDetailPlayDao;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    iget-object v1, p0, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl$initSubtitle$2;->this$0:Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;

    .line 76
    .line 77
    invoke-static {v1}, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;->d(Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;)Ldw/a;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-virtual {v1}, Ldw/a;->r()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    iput v5, p0, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl$initSubtitle$2;->label:I

    .line 86
    .line 87
    invoke-interface {p1, v1, p0}, Lcom/transsion/baselib/db/video/VideoDetailPlayDao;->c(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    if-ne p1, v0, :cond_5

    .line 92
    .line 93
    return-object v0

    .line 94
    :cond_5
    :goto_0
    check-cast p1, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;

    .line 95
    .line 96
    if-eqz p1, :cond_6

    .line 97
    .line 98
    invoke-virtual {p1}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getSubtitleSelectId()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    :goto_1
    move-object v1, p1

    .line 103
    goto :goto_4

    .line 104
    :cond_6
    move-object v1, v6

    .line 105
    goto :goto_4

    .line 106
    :cond_7
    iget-object p1, p0, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl$initSubtitle$2;->this$0:Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;

    .line 107
    .line 108
    invoke-static {p1}, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;->d(Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;)Ldw/a;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    invoke-virtual {p1}, Ldw/a;->p()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    if-eqz p1, :cond_6

    .line 117
    .line 118
    iget-object v1, p0, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl$initSubtitle$2;->this$0:Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;

    .line 119
    .line 120
    invoke-static {v1}, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;->c(Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;)Lui/c;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    iput v4, p0, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl$initSubtitle$2;->label:I

    .line 125
    .line 126
    invoke-interface {v1, p1, p0}, Lui/c;->d(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    if-ne p1, v0, :cond_8

    .line 131
    .line 132
    return-object v0

    .line 133
    :cond_8
    :goto_2
    check-cast p1, Lcom/transsion/baselib/db/download/DownloadBean;

    .line 134
    .line 135
    if-eqz p1, :cond_9

    .line 136
    .line 137
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubtitleSelectId()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    goto :goto_3

    .line 142
    :cond_9
    move-object p1, v6

    .line 143
    :goto_3
    if-eqz p1, :cond_6

    .line 144
    .line 145
    const-string p1, ""

    .line 146
    .line 147
    goto :goto_1

    .line 148
    :goto_4
    sget-object p1, Lcom/transsion/subtitle/h;->a:Lcom/transsion/subtitle/h$a;

    .line 149
    .line 150
    invoke-virtual {p1}, Lcom/transsion/subtitle/h$a;->b()Lcom/transsion/subtitle/h;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    iget-object v4, p0, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl$initSubtitle$2;->this$0:Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;

    .line 155
    .line 156
    invoke-static {v4}, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;->d(Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;)Ldw/a;

    .line 157
    .line 158
    .line 159
    move-result-object v4

    .line 160
    invoke-virtual {v4}, Ldw/a;->t()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v4

    .line 164
    iput-object v1, p0, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl$initSubtitle$2;->L$0:Ljava/lang/Object;

    .line 165
    .line 166
    iput v3, p0, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl$initSubtitle$2;->label:I

    .line 167
    .line 168
    invoke-interface {p1, v4, p0}, Lcom/transsion/subtitle/h;->a(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    if-ne p1, v0, :cond_a

    .line 173
    .line 174
    return-object v0

    .line 175
    :cond_a
    :goto_5
    check-cast p1, Ljava/util/List;

    .line 176
    .line 177
    sget-object v3, Lwf/a;->a:Lwf/a$a;

    .line 178
    .line 179
    iget-object v4, p0, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl$initSubtitle$2;->this$0:Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;

    .line 180
    .line 181
    invoke-static {v4}, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;->e(Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;)Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v4

    .line 185
    iget-object v7, p0, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl$initSubtitle$2;->this$0:Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;

    .line 186
    .line 187
    invoke-static {v7}, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;->d(Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;)Ldw/a;

    .line 188
    .line 189
    .line 190
    move-result-object v7

    .line 191
    invoke-virtual {v7}, Ldw/a;->t()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v7

    .line 195
    if-eqz p1, :cond_b

    .line 196
    .line 197
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 198
    .line 199
    .line 200
    move-result v8

    .line 201
    invoke-static {v8}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    .line 202
    .line 203
    .line 204
    move-result-object v8

    .line 205
    goto :goto_6

    .line 206
    :cond_b
    move-object v8, v6

    .line 207
    :goto_6
    new-instance v9, Ljava/lang/StringBuilder;

    .line 208
    .line 209
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 210
    .line 211
    .line 212
    const-string v10, "float subtitle----loadFromDB id:"

    .line 213
    .line 214
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    const-string v7, ", size:"

    .line 221
    .line 222
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v7

    .line 232
    invoke-virtual {v3, v4, v7, v5}, Lwf/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 233
    .line 234
    .line 235
    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    .line 236
    .line 237
    .line 238
    move-result-object v3

    .line 239
    new-instance v4, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl$initSubtitle$2$1;

    .line 240
    .line 241
    iget-object v5, p0, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl$initSubtitle$2;->this$0:Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;

    .line 242
    .line 243
    invoke-direct {v4, p1, v5, v1, v6}, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl$initSubtitle$2$1;-><init>(Ljava/util/List;Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 244
    .line 245
    .line 246
    iput-object v6, p0, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl$initSubtitle$2;->L$0:Ljava/lang/Object;

    .line 247
    .line 248
    iput v2, p0, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl$initSubtitle$2;->label:I

    .line 249
    .line 250
    invoke-static {v3, v4, p0}, Lkotlinx/coroutines/i;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    move-result-object p1

    .line 254
    if-ne p1, v0, :cond_c

    .line 255
    .line 256
    return-object v0

    .line 257
    :cond_c
    :goto_7
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 258
    .line 259
    return-object p1
.end method
