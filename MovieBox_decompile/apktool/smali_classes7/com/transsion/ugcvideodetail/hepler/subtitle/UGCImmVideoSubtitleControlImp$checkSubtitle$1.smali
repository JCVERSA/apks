.class final Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp$checkSubtitle$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;->e()V
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
    c = "com.transsion.ugcvideodetail.hepler.subtitle.UGCImmVideoSubtitleControlImp$checkSubtitle$1"
    f = "UGCImmVideoSubtitleControlImp.kt"
    l = {
        0xaa,
        0xab,
        0xac,
        0xb1,
        0xb6
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;


# direct methods
.method constructor <init>(Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp$checkSubtitle$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp$checkSubtitle$1;->this$0:Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;

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
    new-instance p1, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp$checkSubtitle$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp$checkSubtitle$1;->this$0:Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp$checkSubtitle$1;-><init>(Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;Lkotlin/coroutines/Continuation;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp$checkSubtitle$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp$checkSubtitle$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp$checkSubtitle$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp$checkSubtitle$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v1, p0, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp$checkSubtitle$1;->label:I

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
    const/4 v7, 0x0

    .line 13
    if-eqz v1, :cond_5

    .line 14
    .line 15
    if-eq v1, v6, :cond_4

    .line 16
    .line 17
    if-eq v1, v5, :cond_3

    .line 18
    .line 19
    if-eq v1, v4, :cond_2

    .line 20
    .line 21
    if-eq v1, v3, :cond_1

    .line 22
    .line 23
    if-ne v1, v2, :cond_0

    .line 24
    .line 25
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    goto/16 :goto_8

    .line 29
    .line 30
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 31
    .line 32
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 33
    .line 34
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw p1

    .line 38
    :cond_1
    iget-object v1, p0, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp$checkSubtitle$1;->L$0:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v1, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;

    .line 41
    .line 42
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    goto/16 :goto_5

    .line 46
    .line 47
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    goto/16 :goto_2

    .line 51
    .line 52
    :cond_3
    iget-object v1, p0, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp$checkSubtitle$1;->L$0:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast v1, Lcom/transsion/baselib/db/AppDatabase;

    .line 55
    .line 56
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_4
    iget-object v1, p0, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp$checkSubtitle$1;->L$1:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast v1, Ljava/lang/String;

    .line 63
    .line 64
    iget-object v8, p0, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp$checkSubtitle$1;->L$0:Ljava/lang/Object;

    .line 65
    .line 66
    check-cast v8, Lcom/transsion/baselib/db/AppDatabase;

    .line 67
    .line 68
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    move-object v10, v8

    .line 72
    move-object v8, v1

    .line 73
    move-object v1, v10

    .line 74
    goto :goto_0

    .line 75
    :cond_5
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    sget-object p1, Lcom/transsion/baselib/db/AppDatabase;->p:Lcom/transsion/baselib/db/AppDatabase$f1;

    .line 79
    .line 80
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    const-string v8, "getApp(...)"

    .line 85
    .line 86
    invoke-static {v1, v8}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1, v1}, Lcom/transsion/baselib/db/AppDatabase$f1;->b(Landroid/content/Context;)Lcom/transsion/baselib/db/AppDatabase;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    iget-object v1, p0, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp$checkSubtitle$1;->this$0:Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;

    .line 94
    .line 95
    invoke-static {v1}, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;->r(Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;)Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    if-eqz v1, :cond_b

    .line 100
    .line 101
    invoke-virtual {v1}, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;->getUgcVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    if-eqz v1, :cond_b

    .line 106
    .line 107
    invoke-virtual {v1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getUgcVideoId()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    if-eqz v1, :cond_b

    .line 112
    .line 113
    invoke-virtual {p1}, Lcom/transsion/baselib/db/AppDatabase;->B1()Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;

    .line 114
    .line 115
    .line 116
    move-result-object v8

    .line 117
    iput-object p1, p0, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp$checkSubtitle$1;->L$0:Ljava/lang/Object;

    .line 118
    .line 119
    iput-object v1, p0, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp$checkSubtitle$1;->L$1:Ljava/lang/Object;

    .line 120
    .line 121
    iput v6, p0, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp$checkSubtitle$1;->label:I

    .line 122
    .line 123
    invoke-interface {v8, v1, p0}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;->r(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v8

    .line 127
    if-ne v8, v0, :cond_6

    .line 128
    .line 129
    return-object v0

    .line 130
    :cond_6
    move-object v10, v1

    .line 131
    move-object v1, p1

    .line 132
    move-object p1, v8

    .line 133
    move-object v8, v10

    .line 134
    :goto_0
    check-cast p1, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;

    .line 135
    .line 136
    if-nez p1, :cond_a

    .line 137
    .line 138
    invoke-virtual {v1}, Lcom/transsion/baselib/db/AppDatabase;->A1()Lcom/transsion/baselib/db/video/UGCCollectionVideoGroupDao;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    iput-object v1, p0, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp$checkSubtitle$1;->L$0:Ljava/lang/Object;

    .line 143
    .line 144
    iput-object v7, p0, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp$checkSubtitle$1;->L$1:Ljava/lang/Object;

    .line 145
    .line 146
    iput v5, p0, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp$checkSubtitle$1;->label:I

    .line 147
    .line 148
    invoke-interface {p1, v8, p0}, Lcom/transsion/baselib/db/video/UGCCollectionVideoGroupDao;->c(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    if-ne p1, v0, :cond_7

    .line 153
    .line 154
    return-object v0

    .line 155
    :cond_7
    :goto_1
    check-cast p1, Ljava/lang/String;

    .line 156
    .line 157
    if-eqz p1, :cond_9

    .line 158
    .line 159
    invoke-virtual {v1}, Lcom/transsion/baselib/db/AppDatabase;->B1()Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    iput-object v7, p0, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp$checkSubtitle$1;->L$0:Ljava/lang/Object;

    .line 164
    .line 165
    iput v4, p0, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp$checkSubtitle$1;->label:I

    .line 166
    .line 167
    invoke-interface {v1, p1, p0}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;->c(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    if-ne p1, v0, :cond_8

    .line 172
    .line 173
    return-object v0

    .line 174
    :cond_8
    :goto_2
    check-cast p1, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;

    .line 175
    .line 176
    goto :goto_3

    .line 177
    :cond_9
    move-object p1, v7

    .line 178
    :cond_a
    :goto_3
    move-object v1, p1

    .line 179
    goto :goto_4

    .line 180
    :cond_b
    move-object v1, v7

    .line 181
    :goto_4
    sget-object p1, Lcom/transsion/ugcvideodetail/hepler/subtitle/manager/b;->a:Lcom/transsion/ugcvideodetail/hepler/subtitle/manager/b$a;

    .line 182
    .line 183
    invoke-virtual {p1}, Lcom/transsion/ugcvideodetail/hepler/subtitle/manager/b$a;->b()Lcom/transsion/ugcvideodetail/hepler/subtitle/manager/b;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    iget-object v4, p0, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp$checkSubtitle$1;->this$0:Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;

    .line 188
    .line 189
    invoke-virtual {v4}, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;->u()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v4

    .line 193
    iput-object v1, p0, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp$checkSubtitle$1;->L$0:Ljava/lang/Object;

    .line 194
    .line 195
    iput-object v7, p0, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp$checkSubtitle$1;->L$1:Ljava/lang/Object;

    .line 196
    .line 197
    iput v3, p0, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp$checkSubtitle$1;->label:I

    .line 198
    .line 199
    invoke-interface {p1, v4, p0}, Lcom/transsion/ugcvideodetail/hepler/subtitle/manager/b;->a(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    move-result-object p1

    .line 203
    if-ne p1, v0, :cond_c

    .line 204
    .line 205
    return-object v0

    .line 206
    :cond_c
    :goto_5
    check-cast p1, Ljava/util/List;

    .line 207
    .line 208
    move-object v3, p1

    .line 209
    check-cast v3, Ljava/util/Collection;

    .line 210
    .line 211
    if-eqz v3, :cond_e

    .line 212
    .line 213
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    .line 214
    .line 215
    .line 216
    move-result v3

    .line 217
    if-eqz v3, :cond_d

    .line 218
    .line 219
    goto :goto_6

    .line 220
    :cond_d
    iget-object v3, p0, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp$checkSubtitle$1;->this$0:Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;

    .line 221
    .line 222
    invoke-static {v3}, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;->j(Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;)Lkotlin/jvm/functions/Function1;

    .line 223
    .line 224
    .line 225
    move-result-object v3

    .line 226
    if-eqz v3, :cond_e

    .line 227
    .line 228
    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    .line 229
    .line 230
    .line 231
    move-result-object v4

    .line 232
    invoke-interface {v3, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    :cond_e
    :goto_6
    sget-object v3, Lwf/a;->a:Lwf/a$a;

    .line 236
    .line 237
    iget-object v4, p0, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp$checkSubtitle$1;->this$0:Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;

    .line 238
    .line 239
    invoke-virtual {v4}, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;->u()Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v4

    .line 243
    if-eqz p1, :cond_f

    .line 244
    .line 245
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 246
    .line 247
    .line 248
    move-result v6

    .line 249
    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    .line 250
    .line 251
    .line 252
    move-result-object v6

    .line 253
    goto :goto_7

    .line 254
    :cond_f
    move-object v6, v7

    .line 255
    :goto_7
    new-instance v8, Ljava/lang/StringBuilder;

    .line 256
    .line 257
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 258
    .line 259
    .line 260
    const-string v9, "checkSubtitle subtitleResId:"

    .line 261
    .line 262
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    .line 264
    .line 265
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    .line 267
    .line 268
    const-string v4, ",, size:"

    .line 269
    .line 270
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    .line 272
    .line 273
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 274
    .line 275
    .line 276
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v4

    .line 280
    const/4 v6, 0x0

    .line 281
    invoke-static {v3, v4, v6, v5, v7}, Lwf/a$a;->g(Lwf/a$a;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 282
    .line 283
    .line 284
    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    .line 285
    .line 286
    .line 287
    move-result-object v3

    .line 288
    new-instance v4, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp$checkSubtitle$1$1;

    .line 289
    .line 290
    iget-object v5, p0, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp$checkSubtitle$1;->this$0:Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;

    .line 291
    .line 292
    invoke-direct {v4, p1, v5, v1, v7}, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp$checkSubtitle$1$1;-><init>(Ljava/util/List;Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;Lkotlin/coroutines/Continuation;)V

    .line 293
    .line 294
    .line 295
    iput-object v7, p0, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp$checkSubtitle$1;->L$0:Ljava/lang/Object;

    .line 296
    .line 297
    iput v2, p0, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp$checkSubtitle$1;->label:I

    .line 298
    .line 299
    invoke-static {v3, v4, p0}, Lkotlinx/coroutines/i;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 300
    .line 301
    .line 302
    move-result-object p1

    .line 303
    if-ne p1, v0, :cond_10

    .line 304
    .line 305
    return-object v0

    .line 306
    :cond_10
    :goto_8
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 307
    .line 308
    return-object p1
.end method
