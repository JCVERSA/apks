.class final Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp$resDownloadListener$1$downloadCheck$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp$resDownloadListener$1;->e(Lxr/a;Z)V
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
    c = "com.transsion.shorttv.subtitle.manager.ShortTvVideoSubtitleManagerImp$resDownloadListener$1$downloadCheck$1"
    f = "ShortTvVideoSubtitleManagerImp.kt"
    l = {
        0x52
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $bean:Lxr/a;

.field final synthetic $isSuccess:Z

.field label:I

.field final synthetic this$0:Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp;

.field final synthetic this$1:Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp$resDownloadListener$1;


# direct methods
.method constructor <init>(Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp;Lxr/a;ZLcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp$resDownloadListener$1;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp;",
            "Lxr/a;",
            "Z",
            "Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp$resDownloadListener$1;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp$resDownloadListener$1$downloadCheck$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp$resDownloadListener$1$downloadCheck$1;->this$0:Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp$resDownloadListener$1$downloadCheck$1;->$bean:Lxr/a;

    .line 4
    .line 5
    iput-boolean p3, p0, Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp$resDownloadListener$1$downloadCheck$1;->$isSuccess:Z

    .line 6
    .line 7
    iput-object p4, p0, Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp$resDownloadListener$1$downloadCheck$1;->this$1:Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp$resDownloadListener$1;

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
    new-instance p1, Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp$resDownloadListener$1$downloadCheck$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp$resDownloadListener$1$downloadCheck$1;->this$0:Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp$resDownloadListener$1$downloadCheck$1;->$bean:Lxr/a;

    .line 6
    .line 7
    iget-boolean v3, p0, Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp$resDownloadListener$1$downloadCheck$1;->$isSuccess:Z

    .line 8
    .line 9
    iget-object v4, p0, Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp$resDownloadListener$1$downloadCheck$1;->this$1:Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp$resDownloadListener$1;

    .line 10
    .line 11
    move-object v0, p1

    .line 12
    move-object v5, p2

    .line 13
    invoke-direct/range {v0 .. v5}, Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp$resDownloadListener$1$downloadCheck$1;-><init>(Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp;Lxr/a;ZLcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp$resDownloadListener$1;Lkotlin/coroutines/Continuation;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp$resDownloadListener$1$downloadCheck$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp$resDownloadListener$1$downloadCheck$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp$resDownloadListener$1$downloadCheck$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp$resDownloadListener$1$downloadCheck$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v1, p0, Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp$resDownloadListener$1$downloadCheck$1;->label:I

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    if-ne v1, v2, :cond_0

    .line 11
    .line 12
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 17
    .line 18
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 19
    .line 20
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw p1

    .line 24
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp$resDownloadListener$1$downloadCheck$1;->this$0:Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp;

    .line 28
    .line 29
    iget-object v1, p0, Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp$resDownloadListener$1$downloadCheck$1;->$bean:Lxr/a;

    .line 30
    .line 31
    invoke-virtual {v1}, Lxr/a;->g()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    iput v2, p0, Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp$resDownloadListener$1$downloadCheck$1;->label:I

    .line 36
    .line 37
    invoke-virtual {p1, v1, p0}, Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp;->a(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    if-ne p1, v0, :cond_2

    .line 42
    .line 43
    return-object v0

    .line 44
    :cond_2
    :goto_0
    check-cast p1, Ljava/util/List;

    .line 45
    .line 46
    iget-boolean v0, p0, Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp$resDownloadListener$1$downloadCheck$1;->$isSuccess:Z

    .line 47
    .line 48
    if-eqz v0, :cond_3

    .line 49
    .line 50
    const-string v0, "\u4e0b\u8f7d\u5b8c\u6210"

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_3
    const-string v0, "\u8d44\u6e90\u7ee7\u7eed\u4e0b\u8f7d"

    .line 54
    .line 55
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    const/4 v3, 0x2

    .line 60
    const-string v4, " se:"

    .line 61
    .line 62
    const-string v5, ", ep:"

    .line 63
    .line 64
    const-string v6, " "

    .line 65
    .line 66
    const-string v7, "short_tv_subtitle"

    .line 67
    .line 68
    const/4 v8, 0x0

    .line 69
    if-eqz v1, :cond_4

    .line 70
    .line 71
    sget-object p1, Lwf/a;->a:Lwf/a$a;

    .line 72
    .line 73
    iget-object v1, p0, Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp$resDownloadListener$1$downloadCheck$1;->this$0:Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp;

    .line 74
    .line 75
    invoke-static {v1}, Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp;->k(Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    iget-object v9, p0, Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp$resDownloadListener$1$downloadCheck$1;->$bean:Lxr/a;

    .line 80
    .line 81
    invoke-virtual {v9}, Lxr/a;->h()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v9

    .line 85
    iget-object v10, p0, Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp$resDownloadListener$1$downloadCheck$1;->$bean:Lxr/a;

    .line 86
    .line 87
    invoke-virtual {v10}, Lxr/a;->a()I

    .line 88
    .line 89
    .line 90
    move-result v10

    .line 91
    iget-object v11, p0, Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp$resDownloadListener$1$downloadCheck$1;->$bean:Lxr/a;

    .line 92
    .line 93
    invoke-virtual {v11}, Lxr/a;->c()I

    .line 94
    .line 95
    .line 96
    move-result v11

    .line 97
    new-instance v12, Ljava/lang/StringBuilder;

    .line 98
    .line 99
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    const-string v0, "\uff0c\u6570\u636e\u5e93\u4e3a\u7a7a\uff0c\u6267\u884c\u68c0\u6d4b titleName:"

    .line 112
    .line 113
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    invoke-virtual {p1, v7, v0, v2}, Lwf/a$a;->u(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 136
    .line 137
    .line 138
    iget-object p1, p0, Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp$resDownloadListener$1$downloadCheck$1;->this$0:Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp;

    .line 139
    .line 140
    iget-object v0, p0, Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp$resDownloadListener$1$downloadCheck$1;->$bean:Lxr/a;

    .line 141
    .line 142
    invoke-static {p1, v0, v8, v3, v8}, Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp;->n(Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp;Lxr/a;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 143
    .line 144
    .line 145
    goto/16 :goto_2

    .line 146
    .line 147
    :cond_4
    iget-object v1, p0, Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp$resDownloadListener$1$downloadCheck$1;->this$1:Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp$resDownloadListener$1;

    .line 148
    .line 149
    invoke-static {v1, p1}, Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp$resDownloadListener$1;->d(Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp$resDownloadListener$1;Ljava/util/List;)Z

    .line 150
    .line 151
    .line 152
    move-result p1

    .line 153
    if-eqz p1, :cond_5

    .line 154
    .line 155
    sget-object p1, Lwf/a;->a:Lwf/a$a;

    .line 156
    .line 157
    iget-object v1, p0, Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp$resDownloadListener$1$downloadCheck$1;->this$0:Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp;

    .line 158
    .line 159
    invoke-static {v1}, Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp;->k(Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp;)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    iget-object v9, p0, Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp$resDownloadListener$1$downloadCheck$1;->$bean:Lxr/a;

    .line 164
    .line 165
    invoke-virtual {v9}, Lxr/a;->h()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v9

    .line 169
    iget-object v10, p0, Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp$resDownloadListener$1$downloadCheck$1;->$bean:Lxr/a;

    .line 170
    .line 171
    invoke-virtual {v10}, Lxr/a;->a()I

    .line 172
    .line 173
    .line 174
    move-result v10

    .line 175
    iget-object v11, p0, Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp$resDownloadListener$1$downloadCheck$1;->$bean:Lxr/a;

    .line 176
    .line 177
    invoke-virtual {v11}, Lxr/a;->c()I

    .line 178
    .line 179
    .line 180
    move-result v11

    .line 181
    new-instance v12, Ljava/lang/StringBuilder;

    .line 182
    .line 183
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    const-string v0, "\uff0c\u6709\u5931\u8d25\uff0c\u6267\u884c\u68c0\u6d4b titleName:"

    .line 196
    .line 197
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    invoke-virtual {p1, v7, v0, v2}, Lwf/a$a;->u(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 220
    .line 221
    .line 222
    iget-object p1, p0, Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp$resDownloadListener$1$downloadCheck$1;->this$0:Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp;

    .line 223
    .line 224
    iget-object v0, p0, Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp$resDownloadListener$1$downloadCheck$1;->$bean:Lxr/a;

    .line 225
    .line 226
    invoke-static {p1, v0, v8, v3, v8}, Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp;->n(Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp;Lxr/a;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 227
    .line 228
    .line 229
    goto :goto_2

    .line 230
    :cond_5
    sget-object p1, Lwf/a;->a:Lwf/a$a;

    .line 231
    .line 232
    iget-object v1, p0, Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp$resDownloadListener$1$downloadCheck$1;->this$0:Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp;

    .line 233
    .line 234
    invoke-static {v1}, Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp;->k(Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp;)Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v1

    .line 238
    iget-object v3, p0, Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp$resDownloadListener$1$downloadCheck$1;->$bean:Lxr/a;

    .line 239
    .line 240
    invoke-virtual {v3}, Lxr/a;->h()Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v3

    .line 244
    iget-object v8, p0, Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp$resDownloadListener$1$downloadCheck$1;->$bean:Lxr/a;

    .line 245
    .line 246
    invoke-virtual {v8}, Lxr/a;->a()I

    .line 247
    .line 248
    .line 249
    move-result v8

    .line 250
    iget-object v9, p0, Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp$resDownloadListener$1$downloadCheck$1;->$bean:Lxr/a;

    .line 251
    .line 252
    invoke-virtual {v9}, Lxr/a;->c()I

    .line 253
    .line 254
    .line 255
    move-result v9

    .line 256
    new-instance v10, Ljava/lang/StringBuilder;

    .line 257
    .line 258
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 259
    .line 260
    .line 261
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    .line 269
    .line 270
    const-string v0, "\uff0c\u6709\u5b57\u5e55\u65e0\u9700\u68c0\u6d4b titleName:"

    .line 271
    .line 272
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    .line 274
    .line 275
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    .line 277
    .line 278
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    .line 280
    .line 281
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 282
    .line 283
    .line 284
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    .line 286
    .line 287
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 288
    .line 289
    .line 290
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object v0

    .line 294
    invoke-virtual {p1, v7, v0, v2}, Lwf/a$a;->u(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 295
    .line 296
    .line 297
    :goto_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 298
    .line 299
    return-object p1
.end method
