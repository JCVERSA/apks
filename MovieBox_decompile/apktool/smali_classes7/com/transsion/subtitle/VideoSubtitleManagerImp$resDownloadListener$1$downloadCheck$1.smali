.class final Lcom/transsion/subtitle/VideoSubtitleManagerImp$resDownloadListener$1$downloadCheck$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/subtitle/VideoSubtitleManagerImp$resDownloadListener$1;->e(Lcom/transsion/baselib/db/download/DownloadBean;Z)V
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
    c = "com.transsion.subtitle.VideoSubtitleManagerImp$resDownloadListener$1$downloadCheck$1"
    f = "VideoSubtitleManagerImp.kt"
    l = {
        0x5e
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $bean:Lcom/transsion/baselib/db/download/DownloadBean;

.field final synthetic $isSuccess:Z

.field label:I

.field final synthetic this$0:Lcom/transsion/subtitle/VideoSubtitleManagerImp;

.field final synthetic this$1:Lcom/transsion/subtitle/VideoSubtitleManagerImp$resDownloadListener$1;


# direct methods
.method constructor <init>(Lcom/transsion/subtitle/VideoSubtitleManagerImp;Lcom/transsion/baselib/db/download/DownloadBean;ZLcom/transsion/subtitle/VideoSubtitleManagerImp$resDownloadListener$1;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/subtitle/VideoSubtitleManagerImp;",
            "Lcom/transsion/baselib/db/download/DownloadBean;",
            "Z",
            "Lcom/transsion/subtitle/VideoSubtitleManagerImp$resDownloadListener$1;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/subtitle/VideoSubtitleManagerImp$resDownloadListener$1$downloadCheck$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/subtitle/VideoSubtitleManagerImp$resDownloadListener$1$downloadCheck$1;->this$0:Lcom/transsion/subtitle/VideoSubtitleManagerImp;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/subtitle/VideoSubtitleManagerImp$resDownloadListener$1$downloadCheck$1;->$bean:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 4
    .line 5
    iput-boolean p3, p0, Lcom/transsion/subtitle/VideoSubtitleManagerImp$resDownloadListener$1$downloadCheck$1;->$isSuccess:Z

    .line 6
    .line 7
    iput-object p4, p0, Lcom/transsion/subtitle/VideoSubtitleManagerImp$resDownloadListener$1$downloadCheck$1;->this$1:Lcom/transsion/subtitle/VideoSubtitleManagerImp$resDownloadListener$1;

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
    new-instance p1, Lcom/transsion/subtitle/VideoSubtitleManagerImp$resDownloadListener$1$downloadCheck$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/subtitle/VideoSubtitleManagerImp$resDownloadListener$1$downloadCheck$1;->this$0:Lcom/transsion/subtitle/VideoSubtitleManagerImp;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsion/subtitle/VideoSubtitleManagerImp$resDownloadListener$1$downloadCheck$1;->$bean:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 6
    .line 7
    iget-boolean v3, p0, Lcom/transsion/subtitle/VideoSubtitleManagerImp$resDownloadListener$1$downloadCheck$1;->$isSuccess:Z

    .line 8
    .line 9
    iget-object v4, p0, Lcom/transsion/subtitle/VideoSubtitleManagerImp$resDownloadListener$1$downloadCheck$1;->this$1:Lcom/transsion/subtitle/VideoSubtitleManagerImp$resDownloadListener$1;

    .line 10
    .line 11
    move-object v0, p1

    .line 12
    move-object v5, p2

    .line 13
    invoke-direct/range {v0 .. v5}, Lcom/transsion/subtitle/VideoSubtitleManagerImp$resDownloadListener$1$downloadCheck$1;-><init>(Lcom/transsion/subtitle/VideoSubtitleManagerImp;Lcom/transsion/baselib/db/download/DownloadBean;ZLcom/transsion/subtitle/VideoSubtitleManagerImp$resDownloadListener$1;Lkotlin/coroutines/Continuation;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/subtitle/VideoSubtitleManagerImp$resDownloadListener$1$downloadCheck$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/subtitle/VideoSubtitleManagerImp$resDownloadListener$1$downloadCheck$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/subtitle/VideoSubtitleManagerImp$resDownloadListener$1$downloadCheck$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/subtitle/VideoSubtitleManagerImp$resDownloadListener$1$downloadCheck$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v1, p0, Lcom/transsion/subtitle/VideoSubtitleManagerImp$resDownloadListener$1$downloadCheck$1;->label:I

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
    iget-object p1, p0, Lcom/transsion/subtitle/VideoSubtitleManagerImp$resDownloadListener$1$downloadCheck$1;->this$0:Lcom/transsion/subtitle/VideoSubtitleManagerImp;

    .line 28
    .line 29
    iget-object v1, p0, Lcom/transsion/subtitle/VideoSubtitleManagerImp$resDownloadListener$1$downloadCheck$1;->$bean:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 30
    .line 31
    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubtitleResId()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    iput v2, p0, Lcom/transsion/subtitle/VideoSubtitleManagerImp$resDownloadListener$1$downloadCheck$1;->label:I

    .line 36
    .line 37
    invoke-virtual {p1, v1, p0}, Lcom/transsion/subtitle/VideoSubtitleManagerImp;->a(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    iget-boolean v0, p0, Lcom/transsion/subtitle/VideoSubtitleManagerImp$resDownloadListener$1$downloadCheck$1;->$isSuccess:Z

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
    const/4 v7, 0x0

    .line 67
    if-eqz v1, :cond_4

    .line 68
    .line 69
    sget-object p1, Lwf/a;->a:Lwf/a$a;

    .line 70
    .line 71
    sget-object v1, Lcom/transsion/baselib/report/a;->a:Lcom/transsion/baselib/report/a;

    .line 72
    .line 73
    invoke-virtual {v1}, Lcom/transsion/baselib/report/a;->a()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    iget-object v8, p0, Lcom/transsion/subtitle/VideoSubtitleManagerImp$resDownloadListener$1$downloadCheck$1;->this$0:Lcom/transsion/subtitle/VideoSubtitleManagerImp;

    .line 78
    .line 79
    invoke-static {v8}, Lcom/transsion/subtitle/VideoSubtitleManagerImp;->p(Lcom/transsion/subtitle/VideoSubtitleManagerImp;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v8

    .line 83
    iget-object v9, p0, Lcom/transsion/subtitle/VideoSubtitleManagerImp$resDownloadListener$1$downloadCheck$1;->$bean:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 84
    .line 85
    invoke-virtual {v9}, Lcom/transsion/baselib/db/download/DownloadBean;->getTitleName()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v9

    .line 89
    iget-object v10, p0, Lcom/transsion/subtitle/VideoSubtitleManagerImp$resDownloadListener$1$downloadCheck$1;->$bean:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 90
    .line 91
    invoke-virtual {v10}, Lcom/transsion/baselib/db/download/DownloadBean;->getEp()I

    .line 92
    .line 93
    .line 94
    move-result v10

    .line 95
    iget-object v11, p0, Lcom/transsion/subtitle/VideoSubtitleManagerImp$resDownloadListener$1$downloadCheck$1;->$bean:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 96
    .line 97
    invoke-virtual {v11}, Lcom/transsion/baselib/db/download/DownloadBean;->getSe()I

    .line 98
    .line 99
    .line 100
    move-result v11

    .line 101
    new-instance v12, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    const-string v0, "\uff0c\u6570\u636e\u5e93\u4e3a\u7a7a\uff0c\u6267\u884c\u68c0\u6d4b titleName:"

    .line 116
    .line 117
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    invoke-virtual {p1, v1, v0, v2}, Lwf/a$a;->u(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 140
    .line 141
    .line 142
    iget-object p1, p0, Lcom/transsion/subtitle/VideoSubtitleManagerImp$resDownloadListener$1$downloadCheck$1;->this$0:Lcom/transsion/subtitle/VideoSubtitleManagerImp;

    .line 143
    .line 144
    iget-object v0, p0, Lcom/transsion/subtitle/VideoSubtitleManagerImp$resDownloadListener$1$downloadCheck$1;->$bean:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 145
    .line 146
    invoke-static {p1, v0, v7, v3, v7}, Lcom/transsion/subtitle/VideoSubtitleManagerImp;->t(Lcom/transsion/subtitle/VideoSubtitleManagerImp;Lcom/transsion/baselib/db/download/DownloadBean;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 147
    .line 148
    .line 149
    goto/16 :goto_2

    .line 150
    .line 151
    :cond_4
    iget-object v1, p0, Lcom/transsion/subtitle/VideoSubtitleManagerImp$resDownloadListener$1$downloadCheck$1;->this$1:Lcom/transsion/subtitle/VideoSubtitleManagerImp$resDownloadListener$1;

    .line 152
    .line 153
    invoke-static {v1, p1}, Lcom/transsion/subtitle/VideoSubtitleManagerImp$resDownloadListener$1;->d(Lcom/transsion/subtitle/VideoSubtitleManagerImp$resDownloadListener$1;Ljava/util/List;)Z

    .line 154
    .line 155
    .line 156
    move-result p1

    .line 157
    if-eqz p1, :cond_5

    .line 158
    .line 159
    sget-object p1, Lwf/a;->a:Lwf/a$a;

    .line 160
    .line 161
    sget-object v1, Lcom/transsion/baselib/report/a;->a:Lcom/transsion/baselib/report/a;

    .line 162
    .line 163
    invoke-virtual {v1}, Lcom/transsion/baselib/report/a;->a()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    iget-object v8, p0, Lcom/transsion/subtitle/VideoSubtitleManagerImp$resDownloadListener$1$downloadCheck$1;->this$0:Lcom/transsion/subtitle/VideoSubtitleManagerImp;

    .line 168
    .line 169
    invoke-static {v8}, Lcom/transsion/subtitle/VideoSubtitleManagerImp;->p(Lcom/transsion/subtitle/VideoSubtitleManagerImp;)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v8

    .line 173
    iget-object v9, p0, Lcom/transsion/subtitle/VideoSubtitleManagerImp$resDownloadListener$1$downloadCheck$1;->$bean:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 174
    .line 175
    invoke-virtual {v9}, Lcom/transsion/baselib/db/download/DownloadBean;->getTitleName()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v9

    .line 179
    iget-object v10, p0, Lcom/transsion/subtitle/VideoSubtitleManagerImp$resDownloadListener$1$downloadCheck$1;->$bean:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 180
    .line 181
    invoke-virtual {v10}, Lcom/transsion/baselib/db/download/DownloadBean;->getEp()I

    .line 182
    .line 183
    .line 184
    move-result v10

    .line 185
    iget-object v11, p0, Lcom/transsion/subtitle/VideoSubtitleManagerImp$resDownloadListener$1$downloadCheck$1;->$bean:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 186
    .line 187
    invoke-virtual {v11}, Lcom/transsion/baselib/db/download/DownloadBean;->getSe()I

    .line 188
    .line 189
    .line 190
    move-result v11

    .line 191
    new-instance v12, Ljava/lang/StringBuilder;

    .line 192
    .line 193
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    const-string v0, "\uff0c\u6709\u5931\u8d25\uff0c\u6267\u884c\u68c0\u6d4b titleName:"

    .line 206
    .line 207
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v0

    .line 229
    invoke-virtual {p1, v1, v0, v2}, Lwf/a$a;->u(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 230
    .line 231
    .line 232
    iget-object p1, p0, Lcom/transsion/subtitle/VideoSubtitleManagerImp$resDownloadListener$1$downloadCheck$1;->this$0:Lcom/transsion/subtitle/VideoSubtitleManagerImp;

    .line 233
    .line 234
    iget-object v0, p0, Lcom/transsion/subtitle/VideoSubtitleManagerImp$resDownloadListener$1$downloadCheck$1;->$bean:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 235
    .line 236
    invoke-static {p1, v0, v7, v3, v7}, Lcom/transsion/subtitle/VideoSubtitleManagerImp;->t(Lcom/transsion/subtitle/VideoSubtitleManagerImp;Lcom/transsion/baselib/db/download/DownloadBean;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 237
    .line 238
    .line 239
    goto :goto_2

    .line 240
    :cond_5
    sget-object p1, Lwf/a;->a:Lwf/a$a;

    .line 241
    .line 242
    sget-object v1, Lcom/transsion/baselib/report/a;->a:Lcom/transsion/baselib/report/a;

    .line 243
    .line 244
    invoke-virtual {v1}, Lcom/transsion/baselib/report/a;->a()Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v1

    .line 248
    iget-object v3, p0, Lcom/transsion/subtitle/VideoSubtitleManagerImp$resDownloadListener$1$downloadCheck$1;->this$0:Lcom/transsion/subtitle/VideoSubtitleManagerImp;

    .line 249
    .line 250
    invoke-static {v3}, Lcom/transsion/subtitle/VideoSubtitleManagerImp;->p(Lcom/transsion/subtitle/VideoSubtitleManagerImp;)Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v3

    .line 254
    iget-object v7, p0, Lcom/transsion/subtitle/VideoSubtitleManagerImp$resDownloadListener$1$downloadCheck$1;->$bean:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 255
    .line 256
    invoke-virtual {v7}, Lcom/transsion/baselib/db/download/DownloadBean;->getTitleName()Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v7

    .line 260
    iget-object v8, p0, Lcom/transsion/subtitle/VideoSubtitleManagerImp$resDownloadListener$1$downloadCheck$1;->$bean:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 261
    .line 262
    invoke-virtual {v8}, Lcom/transsion/baselib/db/download/DownloadBean;->getEp()I

    .line 263
    .line 264
    .line 265
    move-result v8

    .line 266
    iget-object v9, p0, Lcom/transsion/subtitle/VideoSubtitleManagerImp$resDownloadListener$1$downloadCheck$1;->$bean:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 267
    .line 268
    invoke-virtual {v9}, Lcom/transsion/baselib/db/download/DownloadBean;->getSe()I

    .line 269
    .line 270
    .line 271
    move-result v9

    .line 272
    new-instance v10, Ljava/lang/StringBuilder;

    .line 273
    .line 274
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 275
    .line 276
    .line 277
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    .line 279
    .line 280
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    .line 282
    .line 283
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    .line 285
    .line 286
    const-string v0, "\uff0c\u6709\u5b57\u5e55\u65e0\u9700\u68c0\u6d4b titleName:"

    .line 287
    .line 288
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    .line 290
    .line 291
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    .line 293
    .line 294
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    .line 296
    .line 297
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 298
    .line 299
    .line 300
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    .line 302
    .line 303
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 304
    .line 305
    .line 306
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object v0

    .line 310
    invoke-virtual {p1, v1, v0, v2}, Lwf/a$a;->u(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 311
    .line 312
    .line 313
    :goto_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 314
    .line 315
    return-object p1
.end method
