.class final Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper$gotoUGCVideoDetail$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper;->e(Ljava/lang/Object;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    c = "com.transsnet.downloader.util.UGCHistoricalPlayRecordOpenHelper$gotoUGCVideoDetail$2"
    f = "UGCHistoricalPlayRecordOpenHelper.kt"
    l = {
        0x4a
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $data:Ljava/lang/Object;

.field final synthetic $logTag:Ljava/lang/String;

.field label:I


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper$gotoUGCVideoDetail$2;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper$gotoUGCVideoDetail$2;->$data:Ljava/lang/Object;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper$gotoUGCVideoDetail$2;->$logTag:Ljava/lang/String;

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
    new-instance p1, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper$gotoUGCVideoDetail$2;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper$gotoUGCVideoDetail$2;->$data:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper$gotoUGCVideoDetail$2;->$logTag:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper$gotoUGCVideoDetail$2;-><init>(Ljava/lang/Object;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper$gotoUGCVideoDetail$2;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper$gotoUGCVideoDetail$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper$gotoUGCVideoDetail$2;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper$gotoUGCVideoDetail$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 22

    .line 1
    move-object/from16 v11, p0

    .line 2
    .line 3
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v12

    .line 7
    iget v0, v11, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper$gotoUGCVideoDetail$2;->label:I

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    if-ne v0, v1, :cond_0

    .line 13
    .line 14
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    goto/16 :goto_3

    .line 18
    .line 19
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 20
    .line 21
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 22
    .line 23
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw v0

    .line 27
    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    iget-object v0, v11, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper$gotoUGCVideoDetail$2;->$data:Ljava/lang/Object;

    .line 31
    .line 32
    instance-of v2, v0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;

    .line 33
    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    new-instance v2, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper$a;

    .line 37
    .line 38
    check-cast v0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;

    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getSubjectId()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v14

    .line 44
    iget-object v0, v11, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper$gotoUGCVideoDetail$2;->$data:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast v0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;

    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getSubjectType()Ljava/lang/Integer;

    .line 49
    .line 50
    .line 51
    move-result-object v15

    .line 52
    iget-object v0, v11, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper$gotoUGCVideoDetail$2;->$data:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast v0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;

    .line 55
    .line 56
    invoke-virtual {v0}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getId()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v16

    .line 60
    iget-object v0, v11, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper$gotoUGCVideoDetail$2;->$data:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast v0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;

    .line 63
    .line 64
    invoke-virtual {v0}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getOps()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v20

    .line 68
    const/16 v21, 0x0

    .line 69
    .line 70
    const/16 v17, 0x0

    .line 71
    .line 72
    const/16 v18, 0x0

    .line 73
    .line 74
    const/16 v19, 0x0

    .line 75
    .line 76
    move-object v13, v2

    .line 77
    invoke-direct/range {v13 .. v21}, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper$a;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    goto :goto_2

    .line 81
    :cond_2
    instance-of v2, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;

    .line 82
    .line 83
    if-eqz v2, :cond_5

    .line 84
    .line 85
    check-cast v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;

    .line 86
    .line 87
    invoke-virtual {v0}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->getCollectionId()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    const/4 v2, 0x0

    .line 92
    const/4 v3, 0x2

    .line 93
    const-string v4, "SINGLE_"

    .line 94
    .line 95
    const/4 v5, 0x0

    .line 96
    invoke-static {v0, v4, v2, v3, v5}, Lkotlin/text/StringsKt;->W(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    if-eqz v0, :cond_3

    .line 101
    .line 102
    :goto_0
    move-object/from16 v18, v5

    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_3
    iget-object v0, v11, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper$gotoUGCVideoDetail$2;->$data:Ljava/lang/Object;

    .line 106
    .line 107
    check-cast v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;

    .line 108
    .line 109
    invoke-virtual {v0}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->getCollectionId()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v5

    .line 113
    goto :goto_0

    .line 114
    :goto_1
    new-instance v2, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper$a;

    .line 115
    .line 116
    iget-object v0, v11, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper$gotoUGCVideoDetail$2;->$data:Ljava/lang/Object;

    .line 117
    .line 118
    check-cast v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;

    .line 119
    .line 120
    invoke-virtual {v0}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->getUgcVideoId()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v16

    .line 124
    iget-object v0, v11, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper$gotoUGCVideoDetail$2;->$data:Ljava/lang/Object;

    .line 125
    .line 126
    check-cast v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;

    .line 127
    .line 128
    invoke-virtual {v0}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->getUgcVideoId()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v17

    .line 132
    iget-object v0, v11, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper$gotoUGCVideoDetail$2;->$data:Ljava/lang/Object;

    .line 133
    .line 134
    check-cast v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;

    .line 135
    .line 136
    invoke-virtual {v0}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->getType()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v19

    .line 140
    iget-object v0, v11, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper$gotoUGCVideoDetail$2;->$data:Ljava/lang/Object;

    .line 141
    .line 142
    check-cast v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;

    .line 143
    .line 144
    invoke-virtual {v0}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->getOps()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v20

    .line 148
    iget-object v0, v11, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper$gotoUGCVideoDetail$2;->$data:Ljava/lang/Object;

    .line 149
    .line 150
    check-cast v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;

    .line 151
    .line 152
    invoke-virtual {v0}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->getVideoStyle()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v21

    .line 156
    const/4 v14, 0x0

    .line 157
    const/4 v15, 0x0

    .line 158
    move-object v13, v2

    .line 159
    invoke-direct/range {v13 .. v21}, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper$a;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    :goto_2
    invoke-virtual {v2}, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper$a;->a()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v3

    .line 166
    invoke-virtual {v2}, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper$a;->b()Ljava/lang/Integer;

    .line 167
    .line 168
    .line 169
    move-result-object v4

    .line 170
    invoke-virtual {v2}, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper$a;->c()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v5

    .line 174
    invoke-virtual {v2}, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper$a;->d()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v6

    .line 178
    invoke-virtual {v2}, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper$a;->e()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v7

    .line 182
    invoke-virtual {v2}, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper$a;->f()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v8

    .line 186
    invoke-virtual {v2}, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper$a;->g()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v9

    .line 190
    invoke-virtual {v2}, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper$a;->h()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v10

    .line 194
    sget-object v0, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper;->a:Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper;

    .line 195
    .line 196
    iget-object v13, v11, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper$gotoUGCVideoDetail$2;->$logTag:Ljava/lang/String;

    .line 197
    .line 198
    iput v1, v11, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper$gotoUGCVideoDetail$2;->label:I

    .line 199
    .line 200
    move-object v1, v3

    .line 201
    move-object v2, v4

    .line 202
    move-object v3, v5

    .line 203
    move-object v4, v6

    .line 204
    move-object v5, v7

    .line 205
    move-object v6, v8

    .line 206
    move-object v7, v9

    .line 207
    move-object v8, v10

    .line 208
    move-object v9, v13

    .line 209
    move-object/from16 v10, p0

    .line 210
    .line 211
    invoke-static/range {v0 .. v10}, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper;->a(Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    if-ne v0, v12, :cond_4

    .line 216
    .line 217
    return-object v12

    .line 218
    :cond_4
    :goto_3
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 219
    .line 220
    return-object v0

    .line 221
    :cond_5
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 222
    .line 223
    return-object v0
.end method
