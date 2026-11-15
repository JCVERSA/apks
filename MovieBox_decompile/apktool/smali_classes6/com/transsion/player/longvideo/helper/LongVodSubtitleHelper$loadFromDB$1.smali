.class final Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper$loadFromDB$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->Q(Lcom/transsion/baselib/db/download/DownloadBean;)V
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
    c = "com.transsion.player.longvideo.helper.LongVodSubtitleHelper$loadFromDB$1"
    f = "LongVodSubtitleHelper.kt"
    l = {
        0xba,
        0xbd,
        0xc1,
        0xc9
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $bean:Lcom/transsion/baselib/db/download/DownloadBean;

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;


# direct methods
.method constructor <init>(Lcom/transsion/baselib/db/download/DownloadBean;Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/baselib/db/download/DownloadBean;",
            "Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper$loadFromDB$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper$loadFromDB$1;->$bean:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper$loadFromDB$1;->this$0:Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;

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
    new-instance p1, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper$loadFromDB$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper$loadFromDB$1;->$bean:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper$loadFromDB$1;->this$0:Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper$loadFromDB$1;-><init>(Lcom/transsion/baselib/db/download/DownloadBean;Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;Lkotlin/coroutines/Continuation;)V

    .line 8
    .line 9
    .line 10
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper$loadFromDB$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper$loadFromDB$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper$loadFromDB$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper$loadFromDB$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v1, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper$loadFromDB$1;->label:I

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
    goto/16 :goto_8

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
    iget-object v1, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper$loadFromDB$1;->L$1:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v1, Lcom/transsion/baselib/db/download/DownloadBean;

    .line 38
    .line 39
    iget-object v3, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper$loadFromDB$1;->L$0:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast v3, Ljava/util/List;

    .line 42
    .line 43
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    goto/16 :goto_4

    .line 47
    .line 48
    :cond_2
    iget-object v1, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper$loadFromDB$1;->L$1:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast v1, Lcom/transsion/baselib/db/download/DownloadBean;

    .line 51
    .line 52
    iget-object v3, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper$loadFromDB$1;->L$0:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast v3, Ljava/util/List;

    .line 55
    .line 56
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_4
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    sget-object p1, Lcom/transsion/subtitle/h;->a:Lcom/transsion/subtitle/h$a;

    .line 68
    .line 69
    invoke-virtual {p1}, Lcom/transsion/subtitle/h$a;->b()Lcom/transsion/subtitle/h;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    iget-object v1, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper$loadFromDB$1;->$bean:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 74
    .line 75
    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubtitleResId()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    iput v5, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper$loadFromDB$1;->label:I

    .line 80
    .line 81
    invoke-interface {p1, v1, p0}, Lcom/transsion/subtitle/h;->a(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    if-ne p1, v0, :cond_5

    .line 86
    .line 87
    return-object v0

    .line 88
    :cond_5
    :goto_0
    check-cast p1, Ljava/util/List;

    .line 89
    .line 90
    iget-object v1, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper$loadFromDB$1;->$bean:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 91
    .line 92
    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->isUGCVideo()Z

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    if-eqz v1, :cond_8

    .line 97
    .line 98
    iget-object v1, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper$loadFromDB$1;->$bean:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 99
    .line 100
    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcVideoCollectionId()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    if-eqz v1, :cond_b

    .line 105
    .line 106
    iget-object v3, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper$loadFromDB$1;->$bean:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 107
    .line 108
    iget-object v5, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper$loadFromDB$1;->this$0:Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;

    .line 109
    .line 110
    invoke-static {v5}, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->C(Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;)Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;

    .line 111
    .line 112
    .line 113
    move-result-object v5

    .line 114
    iput-object p1, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper$loadFromDB$1;->L$0:Ljava/lang/Object;

    .line 115
    .line 116
    iput-object v3, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper$loadFromDB$1;->L$1:Ljava/lang/Object;

    .line 117
    .line 118
    iput v4, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper$loadFromDB$1;->label:I

    .line 119
    .line 120
    invoke-interface {v5, v1, p0}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;->c(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    if-ne v1, v0, :cond_6

    .line 125
    .line 126
    return-object v0

    .line 127
    :cond_6
    move-object v13, v3

    .line 128
    move-object v3, p1

    .line 129
    move-object p1, v1

    .line 130
    move-object v1, v13

    .line 131
    :goto_1
    check-cast p1, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;

    .line 132
    .line 133
    if-eqz p1, :cond_7

    .line 134
    .line 135
    invoke-virtual {p1}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->getSubtitleSelectId()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    goto :goto_2

    .line 140
    :cond_7
    move-object p1, v6

    .line 141
    :goto_2
    invoke-virtual {v1, p1}, Lcom/transsion/baselib/db/download/DownloadBean;->setSubtitleSelectId(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    :goto_3
    move-object p1, v3

    .line 145
    goto :goto_6

    .line 146
    :cond_8
    iget-object v1, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper$loadFromDB$1;->$bean:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 147
    .line 148
    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectId()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    if-eqz v1, :cond_b

    .line 153
    .line 154
    iget-object v4, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper$loadFromDB$1;->$bean:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 155
    .line 156
    iget-object v5, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper$loadFromDB$1;->this$0:Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;

    .line 157
    .line 158
    invoke-static {v5}, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->D(Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;)Lcom/transsion/baselib/db/video/VideoDetailPlayDao;

    .line 159
    .line 160
    .line 161
    move-result-object v5

    .line 162
    iput-object p1, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper$loadFromDB$1;->L$0:Ljava/lang/Object;

    .line 163
    .line 164
    iput-object v4, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper$loadFromDB$1;->L$1:Ljava/lang/Object;

    .line 165
    .line 166
    iput v3, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper$loadFromDB$1;->label:I

    .line 167
    .line 168
    invoke-interface {v5, v1, p0}, Lcom/transsion/baselib/db/video/VideoDetailPlayDao;->c(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    if-ne v1, v0, :cond_9

    .line 173
    .line 174
    return-object v0

    .line 175
    :cond_9
    move-object v3, p1

    .line 176
    move-object p1, v1

    .line 177
    move-object v1, v4

    .line 178
    :goto_4
    check-cast p1, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;

    .line 179
    .line 180
    if-eqz p1, :cond_a

    .line 181
    .line 182
    invoke-virtual {p1}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getSubtitleSelectId()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object p1

    .line 186
    goto :goto_5

    .line 187
    :cond_a
    move-object p1, v6

    .line 188
    :goto_5
    invoke-virtual {v1, p1}, Lcom/transsion/baselib/db/download/DownloadBean;->setSubtitleSelectId(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    goto :goto_3

    .line 192
    :cond_b
    :goto_6
    iget-object v1, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper$loadFromDB$1;->this$0:Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;

    .line 193
    .line 194
    invoke-static {v1}, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->z(Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;)Lcom/transsion/player/longvideo/helper/w;

    .line 195
    .line 196
    .line 197
    move-result-object v1

    .line 198
    iget-object v3, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper$loadFromDB$1;->$bean:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 199
    .line 200
    invoke-virtual {v3}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubtitleSelectId()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v3

    .line 204
    invoke-interface {v1, v3}, Lcom/transsion/player/longvideo/helper/w;->f(Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    sget-object v7, Lwf/a;->a:Lwf/a$a;

    .line 208
    .line 209
    iget-object v1, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper$loadFromDB$1;->$bean:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 210
    .line 211
    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->isUGCVideo()Z

    .line 212
    .line 213
    .line 214
    move-result v1

    .line 215
    iget-object v3, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper$loadFromDB$1;->$bean:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 216
    .line 217
    invoke-virtual {v3}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubtitleSelectId()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v3

    .line 221
    iget-object v4, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper$loadFromDB$1;->$bean:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 222
    .line 223
    invoke-virtual {v4}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectId()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v4

    .line 227
    iget-object v5, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper$loadFromDB$1;->$bean:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 228
    .line 229
    invoke-virtual {v5}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubtitleResId()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v5

    .line 233
    if-eqz p1, :cond_c

    .line 234
    .line 235
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 236
    .line 237
    .line 238
    move-result v8

    .line 239
    invoke-static {v8}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    .line 240
    .line 241
    .line 242
    move-result-object v8

    .line 243
    goto :goto_7

    .line 244
    :cond_c
    move-object v8, v6

    .line 245
    :goto_7
    new-instance v9, Ljava/lang/StringBuilder;

    .line 246
    .line 247
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 248
    .line 249
    .line 250
    const-string v10, "loadFromDB ,isUGCVideo:"

    .line 251
    .line 252
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    const-string v1, ",subtitleSelectId:"

    .line 259
    .line 260
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    .line 262
    .line 263
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    .line 265
    .line 266
    const-string v1, ", subjectId:"

    .line 267
    .line 268
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    .line 273
    .line 274
    const-string v1, ", id:"

    .line 275
    .line 276
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    .line 278
    .line 279
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    .line 281
    .line 282
    const-string v1, ", size:"

    .line 283
    .line 284
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    .line 286
    .line 287
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 288
    .line 289
    .line 290
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object v9

    .line 294
    const/4 v11, 0x4

    .line 295
    const/4 v12, 0x0

    .line 296
    const-string v8, "LongVodPlayerView"

    .line 297
    .line 298
    const/4 v10, 0x0

    .line 299
    invoke-static/range {v7 .. v12}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 300
    .line 301
    .line 302
    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    .line 303
    .line 304
    .line 305
    move-result-object v1

    .line 306
    new-instance v3, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper$loadFromDB$1$3;

    .line 307
    .line 308
    iget-object v4, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper$loadFromDB$1;->this$0:Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;

    .line 309
    .line 310
    iget-object v5, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper$loadFromDB$1;->$bean:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 311
    .line 312
    invoke-direct {v3, p1, v4, v5, v6}, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper$loadFromDB$1$3;-><init>(Ljava/util/List;Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;Lcom/transsion/baselib/db/download/DownloadBean;Lkotlin/coroutines/Continuation;)V

    .line 313
    .line 314
    .line 315
    iput-object v6, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper$loadFromDB$1;->L$0:Ljava/lang/Object;

    .line 316
    .line 317
    iput-object v6, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper$loadFromDB$1;->L$1:Ljava/lang/Object;

    .line 318
    .line 319
    iput v2, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper$loadFromDB$1;->label:I

    .line 320
    .line 321
    invoke-static {v1, v3, p0}, Lkotlinx/coroutines/i;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 322
    .line 323
    .line 324
    move-result-object p1

    .line 325
    if-ne p1, v0, :cond_d

    .line 326
    .line 327
    return-object v0

    .line 328
    :cond_d
    :goto_8
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 329
    .line 330
    return-object p1
.end method
