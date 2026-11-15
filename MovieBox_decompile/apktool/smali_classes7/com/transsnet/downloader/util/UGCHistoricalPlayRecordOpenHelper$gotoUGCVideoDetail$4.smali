.class final Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper$gotoUGCVideoDetail$4;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper;->d(Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;Lcom/transsion/baselib/db/video/VideoDetailPlayBean;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    c = "com.transsnet.downloader.util.UGCHistoricalPlayRecordOpenHelper$gotoUGCVideoDetail$4"
    f = "UGCHistoricalPlayRecordOpenHelper.kt"
    l = {
        0x84
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $logTag:Ljava/lang/String;

.field final synthetic $streamVideo:Lcom/transsion/baselib/db/video/VideoDetailPlayBean;

.field final synthetic $ugcVideo:Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;

.field label:I


# direct methods
.method constructor <init>(Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;Lcom/transsion/baselib/db/video/VideoDetailPlayBean;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;",
            "Lcom/transsion/baselib/db/video/VideoDetailPlayBean;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper$gotoUGCVideoDetail$4;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper$gotoUGCVideoDetail$4;->$ugcVideo:Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper$gotoUGCVideoDetail$4;->$streamVideo:Lcom/transsion/baselib/db/video/VideoDetailPlayBean;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper$gotoUGCVideoDetail$4;->$logTag:Ljava/lang/String;

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
    new-instance p1, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper$gotoUGCVideoDetail$4;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper$gotoUGCVideoDetail$4;->$ugcVideo:Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper$gotoUGCVideoDetail$4;->$streamVideo:Lcom/transsion/baselib/db/video/VideoDetailPlayBean;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper$gotoUGCVideoDetail$4;->$logTag:Ljava/lang/String;

    .line 8
    .line 9
    invoke-direct {p1, v0, v1, v2, p2}, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper$gotoUGCVideoDetail$4;-><init>(Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;Lcom/transsion/baselib/db/video/VideoDetailPlayBean;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper$gotoUGCVideoDetail$4;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper$gotoUGCVideoDetail$4;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper$gotoUGCVideoDetail$4;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper$gotoUGCVideoDetail$4;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v0, v11, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper$gotoUGCVideoDetail$4;->label:I

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
    iget-object v0, v11, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper$gotoUGCVideoDetail$4;->$ugcVideo:Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;

    .line 31
    .line 32
    if-eqz v0, :cond_3

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->getCollectionId()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    const/4 v2, 0x0

    .line 39
    const/4 v3, 0x2

    .line 40
    const-string v4, "SINGLE_"

    .line 41
    .line 42
    const/4 v5, 0x0

    .line 43
    invoke-static {v0, v4, v2, v3, v5}, Lkotlin/text/StringsKt;->W(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_2

    .line 48
    .line 49
    :goto_0
    move-object/from16 v18, v5

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_2
    iget-object v0, v11, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper$gotoUGCVideoDetail$4;->$ugcVideo:Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;

    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->getCollectionId()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    goto :goto_0

    .line 59
    :goto_1
    new-instance v0, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper$a;

    .line 60
    .line 61
    iget-object v2, v11, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper$gotoUGCVideoDetail$4;->$ugcVideo:Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;

    .line 62
    .line 63
    invoke-virtual {v2}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->getUgcVideoId()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v16

    .line 67
    iget-object v2, v11, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper$gotoUGCVideoDetail$4;->$ugcVideo:Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;

    .line 68
    .line 69
    invoke-virtual {v2}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->getUgcVideoId()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v17

    .line 73
    iget-object v2, v11, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper$gotoUGCVideoDetail$4;->$ugcVideo:Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;

    .line 74
    .line 75
    invoke-virtual {v2}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->getType()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v19

    .line 79
    iget-object v2, v11, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper$gotoUGCVideoDetail$4;->$ugcVideo:Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;

    .line 80
    .line 81
    invoke-virtual {v2}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->getOps()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v20

    .line 85
    iget-object v2, v11, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper$gotoUGCVideoDetail$4;->$ugcVideo:Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;

    .line 86
    .line 87
    invoke-virtual {v2}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->getVideoStyle()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v21

    .line 91
    const/4 v14, 0x0

    .line 92
    const/4 v15, 0x0

    .line 93
    move-object v13, v0

    .line 94
    invoke-direct/range {v13 .. v21}, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper$a;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    goto :goto_2

    .line 98
    :cond_3
    iget-object v0, v11, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper$gotoUGCVideoDetail$4;->$streamVideo:Lcom/transsion/baselib/db/video/VideoDetailPlayBean;

    .line 99
    .line 100
    if-eqz v0, :cond_5

    .line 101
    .line 102
    new-instance v13, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper$a;

    .line 103
    .line 104
    invoke-virtual {v0}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getSubjectId()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    iget-object v0, v11, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper$gotoUGCVideoDetail$4;->$streamVideo:Lcom/transsion/baselib/db/video/VideoDetailPlayBean;

    .line 109
    .line 110
    invoke-virtual {v0}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getSubjectType()Ljava/lang/Integer;

    .line 111
    .line 112
    .line 113
    move-result-object v4

    .line 114
    iget-object v0, v11, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper$gotoUGCVideoDetail$4;->$streamVideo:Lcom/transsion/baselib/db/video/VideoDetailPlayBean;

    .line 115
    .line 116
    invoke-virtual {v0}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getId()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v5

    .line 120
    iget-object v0, v11, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper$gotoUGCVideoDetail$4;->$streamVideo:Lcom/transsion/baselib/db/video/VideoDetailPlayBean;

    .line 121
    .line 122
    invoke-virtual {v0}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getOps()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v9

    .line 126
    const/4 v10, 0x0

    .line 127
    const/4 v6, 0x0

    .line 128
    const/4 v7, 0x0

    .line 129
    const/4 v8, 0x0

    .line 130
    move-object v2, v13

    .line 131
    invoke-direct/range {v2 .. v10}, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper$a;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    move-object v0, v13

    .line 135
    :goto_2
    invoke-virtual {v0}, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper$a;->a()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    invoke-virtual {v0}, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper$a;->b()Ljava/lang/Integer;

    .line 140
    .line 141
    .line 142
    move-result-object v3

    .line 143
    invoke-virtual {v0}, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper$a;->c()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v4

    .line 147
    invoke-virtual {v0}, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper$a;->d()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v5

    .line 151
    invoke-virtual {v0}, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper$a;->e()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v6

    .line 155
    invoke-virtual {v0}, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper$a;->f()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v7

    .line 159
    invoke-virtual {v0}, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper$a;->g()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v8

    .line 163
    invoke-virtual {v0}, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper$a;->h()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v9

    .line 167
    sget-object v0, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper;->a:Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper;

    .line 168
    .line 169
    iget-object v10, v11, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper$gotoUGCVideoDetail$4;->$logTag:Ljava/lang/String;

    .line 170
    .line 171
    iput v1, v11, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper$gotoUGCVideoDetail$4;->label:I

    .line 172
    .line 173
    move-object v1, v2

    .line 174
    move-object v2, v3

    .line 175
    move-object v3, v4

    .line 176
    move-object v4, v5

    .line 177
    move-object v5, v6

    .line 178
    move-object v6, v7

    .line 179
    move-object v7, v8

    .line 180
    move-object v8, v9

    .line 181
    move-object v9, v10

    .line 182
    move-object/from16 v10, p0

    .line 183
    .line 184
    invoke-static/range {v0 .. v10}, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper;->a(Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    if-ne v0, v12, :cond_4

    .line 189
    .line 190
    return-object v12

    .line 191
    :cond_4
    :goto_3
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 192
    .line 193
    return-object v0

    .line 194
    :cond_5
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 195
    .line 196
    return-object v0
.end method
