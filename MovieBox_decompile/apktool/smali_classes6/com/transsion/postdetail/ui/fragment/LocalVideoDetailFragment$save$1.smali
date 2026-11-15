.class final Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$save$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->r3(Lcom/transsion/baselib/db/download/DownloadBean;JZ)V
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
    c = "com.transsion.postdetail.ui.fragment.LocalVideoDetailFragment$save$1"
    f = "LocalVideoDetailFragment.kt"
    l = {
        0x609,
        0x60a
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field final synthetic $completed:Z

.field final synthetic $cvideoBean:Lcom/transsion/baselib/db/download/DownloadBean;

.field final synthetic $playProgress:J

.field J$0:J

.field label:I

.field final synthetic this$0:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;


# direct methods
.method constructor <init>(ZLcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;JLcom/transsion/baselib/db/download/DownloadBean;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;",
            "J",
            "Lcom/transsion/baselib/db/download/DownloadBean;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$save$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$save$1;->$completed:Z

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$save$1;->this$0:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    .line 4
    .line 5
    iput-wide p3, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$save$1;->$playProgress:J

    .line 6
    .line 7
    iput-object p5, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$save$1;->$cvideoBean:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 8
    .line 9
    const/4 p1, 0x2

    .line 10
    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7
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
    new-instance p1, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$save$1;

    .line 2
    .line 3
    iget-boolean v1, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$save$1;->$completed:Z

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$save$1;->this$0:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    .line 6
    .line 7
    iget-wide v3, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$save$1;->$playProgress:J

    .line 8
    .line 9
    iget-object v5, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$save$1;->$cvideoBean:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 10
    .line 11
    move-object v0, p1

    .line 12
    move-object v6, p2

    .line 13
    invoke-direct/range {v0 .. v6}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$save$1;-><init>(ZLcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;JLcom/transsion/baselib/db/download/DownloadBean;Lkotlin/coroutines/Continuation;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$save$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$save$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$save$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$save$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget v2, v0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$save$1;->label:I

    .line 8
    .line 9
    const/4 v3, 0x2

    .line 10
    const-wide/16 v4, 0x0

    .line 11
    .line 12
    const/4 v6, 0x1

    .line 13
    if-eqz v2, :cond_2

    .line 14
    .line 15
    if-eq v2, v6, :cond_1

    .line 16
    .line 17
    if-ne v2, v3, :cond_0

    .line 18
    .line 19
    iget-wide v1, v0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$save$1;->J$0:J

    .line 20
    .line 21
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    goto/16 :goto_3

    .line 25
    .line 26
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 27
    .line 28
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 29
    .line 30
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw v1

    .line 34
    :cond_1
    iget-wide v7, v0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$save$1;->J$0:J

    .line 35
    .line 36
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    goto/16 :goto_2

    .line 40
    .line 41
    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    iget-boolean v2, v0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$save$1;->$completed:Z

    .line 45
    .line 46
    if-eqz v2, :cond_3

    .line 47
    .line 48
    iget-object v2, v0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$save$1;->this$0:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    .line 49
    .line 50
    invoke-static {v2}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->Q0(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)J

    .line 51
    .line 52
    .line 53
    move-result-wide v7

    .line 54
    cmp-long v2, v7, v4

    .line 55
    .line 56
    if-lez v2, :cond_3

    .line 57
    .line 58
    iget-object v2, v0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$save$1;->this$0:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    .line 59
    .line 60
    invoke-static {v2}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->Q0(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)J

    .line 61
    .line 62
    .line 63
    move-result-wide v7

    .line 64
    goto :goto_0

    .line 65
    :cond_3
    iget-wide v7, v0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$save$1;->$playProgress:J

    .line 66
    .line 67
    :goto_0
    sget-object v9, Lwf/a;->a:Lwf/a$a;

    .line 68
    .line 69
    iget-object v2, v0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$save$1;->this$0:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    .line 70
    .line 71
    invoke-static {v2}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->c1(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    iget-boolean v10, v0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$save$1;->$completed:Z

    .line 76
    .line 77
    iget-object v11, v0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$save$1;->this$0:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    .line 78
    .line 79
    invoke-static {v11}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->Q0(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)J

    .line 80
    .line 81
    .line 82
    move-result-wide v11

    .line 83
    iget-wide v13, v0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$save$1;->$playProgress:J

    .line 84
    .line 85
    iget-object v15, v0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$save$1;->$cvideoBean:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 86
    .line 87
    if-eqz v15, :cond_4

    .line 88
    .line 89
    invoke-virtual {v15}, Lcom/transsion/baselib/db/download/DownloadBean;->getEpse()I

    .line 90
    .line 91
    .line 92
    move-result v15

    .line 93
    invoke-static {v15}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    .line 94
    .line 95
    .line 96
    move-result-object v15

    .line 97
    goto :goto_1

    .line 98
    :cond_4
    const/4 v15, 0x0

    .line 99
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    .line 103
    .line 104
    const-string v4, "save completed = "

    .line 105
    .line 106
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    const-string v4, ", duration = "

    .line 113
    .line 114
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v3, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    const-string v4, ", playProgress= "

    .line 121
    .line 122
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v3, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    const-string v4, ", cur epse = "

    .line 129
    .line 130
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    const-string v4, " "

    .line 137
    .line 138
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v3

    .line 145
    invoke-virtual {v9, v2, v3, v6}, Lwf/a$a;->u(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 146
    .line 147
    .line 148
    iget-object v2, v0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$save$1;->$cvideoBean:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 149
    .line 150
    if-eqz v2, :cond_5

    .line 151
    .line 152
    invoke-virtual {v2, v7, v8}, Lcom/transsion/baselib/db/download/DownloadBean;->setReadProgress(J)V

    .line 153
    .line 154
    .line 155
    :cond_5
    iget-object v2, v0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$save$1;->this$0:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    .line 156
    .line 157
    invoke-static {v2}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->Q0(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)J

    .line 158
    .line 159
    .line 160
    move-result-wide v2

    .line 161
    const-wide/16 v4, 0x0

    .line 162
    .line 163
    cmp-long v2, v2, v4

    .line 164
    .line 165
    if-lez v2, :cond_6

    .line 166
    .line 167
    iget-object v2, v0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$save$1;->$cvideoBean:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 168
    .line 169
    if-eqz v2, :cond_6

    .line 170
    .line 171
    iget-object v3, v0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$save$1;->this$0:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    .line 172
    .line 173
    invoke-static {v3}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->Q0(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)J

    .line 174
    .line 175
    .line 176
    move-result-wide v3

    .line 177
    invoke-static {v3, v4}, Lkotlin/coroutines/jvm/internal/Boxing;->e(J)Ljava/lang/Long;

    .line 178
    .line 179
    .line 180
    move-result-object v3

    .line 181
    invoke-virtual {v2, v3}, Lcom/transsion/baselib/db/download/DownloadBean;->setDuration(Ljava/lang/Long;)V

    .line 182
    .line 183
    .line 184
    :cond_6
    iget-object v2, v0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$save$1;->this$0:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    .line 185
    .line 186
    invoke-static {v2}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->d1(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)I

    .line 187
    .line 188
    .line 189
    move-result v2

    .line 190
    if-lez v2, :cond_8

    .line 191
    .line 192
    iget-object v2, v0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$save$1;->this$0:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    .line 193
    .line 194
    invoke-static {v2}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->e1(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)I

    .line 195
    .line 196
    .line 197
    move-result v2

    .line 198
    if-lez v2, :cond_8

    .line 199
    .line 200
    iget-object v2, v0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$save$1;->$cvideoBean:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 201
    .line 202
    if-eqz v2, :cond_7

    .line 203
    .line 204
    iget-object v3, v0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$save$1;->this$0:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    .line 205
    .line 206
    invoke-static {v3}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->e1(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)I

    .line 207
    .line 208
    .line 209
    move-result v3

    .line 210
    invoke-virtual {v2, v3}, Lcom/transsion/baselib/db/download/DownloadBean;->setVideoWidth(I)V

    .line 211
    .line 212
    .line 213
    :cond_7
    iget-object v2, v0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$save$1;->$cvideoBean:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 214
    .line 215
    if-eqz v2, :cond_8

    .line 216
    .line 217
    iget-object v3, v0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$save$1;->this$0:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    .line 218
    .line 219
    invoke-static {v3}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->d1(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)I

    .line 220
    .line 221
    .line 222
    move-result v3

    .line 223
    invoke-virtual {v2, v3}, Lcom/transsion/baselib/db/download/DownloadBean;->setVideoHeight(I)V

    .line 224
    .line 225
    .line 226
    :cond_8
    iget-object v2, v0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$save$1;->$cvideoBean:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 227
    .line 228
    if-eqz v2, :cond_9

    .line 229
    .line 230
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 231
    .line 232
    .line 233
    move-result-wide v3

    .line 234
    invoke-virtual {v2, v3, v4}, Lcom/transsion/baselib/db/download/DownloadBean;->setLastPlayTimeStamp(J)V

    .line 235
    .line 236
    .line 237
    :cond_9
    iget-object v2, v0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$save$1;->$cvideoBean:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 238
    .line 239
    if-eqz v2, :cond_c

    .line 240
    .line 241
    iget-object v2, v0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$save$1;->this$0:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    .line 242
    .line 243
    invoke-static {v2}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->c1(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v10

    .line 247
    iget-object v2, v0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$save$1;->$cvideoBean:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 248
    .line 249
    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadBean;->getName()Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v2

    .line 253
    new-instance v3, Ljava/lang/StringBuilder;

    .line 254
    .line 255
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 256
    .line 257
    .line 258
    const-string v4, "---------update name = "

    .line 259
    .line 260
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    .line 262
    .line 263
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    .line 265
    .line 266
    const-string v2, " , playProgress = "

    .line 267
    .line 268
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 272
    .line 273
    .line 274
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v11

    .line 278
    const/4 v13, 0x4

    .line 279
    const/4 v14, 0x0

    .line 280
    const/4 v12, 0x0

    .line 281
    invoke-static/range {v9 .. v14}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 282
    .line 283
    .line 284
    sget-object v2, Lcom/transsnet/downloader/manager/DownloadEsHelper;->m:Lcom/transsnet/downloader/manager/DownloadEsHelper$a;

    .line 285
    .line 286
    invoke-virtual {v2}, Lcom/transsnet/downloader/manager/DownloadEsHelper$a;->a()Lcom/transsnet/downloader/manager/DownloadEsHelper;

    .line 287
    .line 288
    .line 289
    move-result-object v2

    .line 290
    iget-object v3, v0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$save$1;->$cvideoBean:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 291
    .line 292
    iput-wide v7, v0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$save$1;->J$0:J

    .line 293
    .line 294
    iput v6, v0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$save$1;->label:I

    .line 295
    .line 296
    invoke-virtual {v2, v3, v0}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->b0(Lcom/transsion/baselib/db/download/DownloadBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 297
    .line 298
    .line 299
    move-result-object v2

    .line 300
    if-ne v2, v1, :cond_a

    .line 301
    .line 302
    return-object v1

    .line 303
    :cond_a
    :goto_2
    iget-object v2, v0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$save$1;->this$0:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    .line 304
    .line 305
    iget-object v3, v0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$save$1;->$cvideoBean:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 306
    .line 307
    iput-wide v7, v0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$save$1;->J$0:J

    .line 308
    .line 309
    const/4 v4, 0x2

    .line 310
    iput v4, v0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$save$1;->label:I

    .line 311
    .line 312
    invoke-static {v2, v3, v0}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->t1(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;Lcom/transsion/baselib/db/download/DownloadBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 313
    .line 314
    .line 315
    move-result-object v2

    .line 316
    if-ne v2, v1, :cond_b

    .line 317
    .line 318
    return-object v1

    .line 319
    :cond_b
    move-wide v1, v7

    .line 320
    :goto_3
    move-wide v9, v1

    .line 321
    goto :goto_4

    .line 322
    :cond_c
    move-wide v9, v7

    .line 323
    :goto_4
    new-instance v1, Lcom/transsnet/flow/event/sync/event/LocalVideoEvent;

    .line 324
    .line 325
    iget-object v2, v0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$save$1;->$cvideoBean:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 326
    .line 327
    if-eqz v2, :cond_e

    .line 328
    .line 329
    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object v2

    .line 333
    if-nez v2, :cond_d

    .line 334
    .line 335
    goto :goto_6

    .line 336
    :cond_d
    :goto_5
    move-object v8, v2

    .line 337
    goto :goto_7

    .line 338
    :cond_e
    :goto_6
    const-string v2, ""

    .line 339
    .line 340
    goto :goto_5

    .line 341
    :goto_7
    iget-object v2, v0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$save$1;->this$0:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    .line 342
    .line 343
    invoke-static {v2}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->Q0(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)J

    .line 344
    .line 345
    .line 346
    move-result-wide v11

    .line 347
    iget-object v2, v0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$save$1;->this$0:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    .line 348
    .line 349
    invoke-static {v2}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->m1(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Z

    .line 350
    .line 351
    .line 352
    move-result v13

    .line 353
    const/16 v15, 0x10

    .line 354
    .line 355
    const/16 v16, 0x0

    .line 356
    .line 357
    const/4 v14, 0x0

    .line 358
    move-object v7, v1

    .line 359
    invoke-direct/range {v7 .. v16}, Lcom/transsnet/flow/event/sync/event/LocalVideoEvent;-><init>(Ljava/lang/String;JJZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 360
    .line 361
    .line 362
    sget-object v2, Lcom/transsnet/flow/event/AppScopeVMlProvider;->INSTANCE:Lcom/transsnet/flow/event/AppScopeVMlProvider;

    .line 363
    .line 364
    const-class v3, Lcom/transsnet/flow/event/FlowEventBus;

    .line 365
    .line 366
    invoke-virtual {v2, v3}, Lcom/transsnet/flow/event/AppScopeVMlProvider;->getApplicationScopeViewModel(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    .line 367
    .line 368
    .line 369
    move-result-object v4

    .line 370
    check-cast v4, Lcom/transsnet/flow/event/FlowEventBus;

    .line 371
    .line 372
    const-class v5, Lcom/transsnet/flow/event/sync/event/LocalVideoEvent;

    .line 373
    .line 374
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 375
    .line 376
    .line 377
    move-result-object v5

    .line 378
    const-string v7, "getName(...)"

    .line 379
    .line 380
    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 381
    .line 382
    .line 383
    const-wide/16 v8, 0x0

    .line 384
    .line 385
    invoke-virtual {v4, v5, v1, v8, v9}, Lcom/transsnet/flow/event/FlowEventBus;->postEvent(Ljava/lang/String;Ljava/lang/Object;J)V

    .line 386
    .line 387
    .line 388
    new-instance v1, Lyw/e;

    .line 389
    .line 390
    iget-object v4, v0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$save$1;->$cvideoBean:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 391
    .line 392
    const/4 v5, 0x0

    .line 393
    if-eqz v4, :cond_f

    .line 394
    .line 395
    invoke-virtual {v4}, Lcom/transsion/baselib/db/download/DownloadBean;->isOutside()Z

    .line 396
    .line 397
    .line 398
    move-result v4

    .line 399
    if-ne v4, v6, :cond_f

    .line 400
    .line 401
    move v5, v6

    .line 402
    :cond_f
    invoke-direct {v1, v6, v5}, Lyw/e;-><init>(ZZ)V

    .line 403
    .line 404
    .line 405
    invoke-virtual {v2, v3}, Lcom/transsnet/flow/event/AppScopeVMlProvider;->getApplicationScopeViewModel(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    .line 406
    .line 407
    .line 408
    move-result-object v2

    .line 409
    check-cast v2, Lcom/transsnet/flow/event/FlowEventBus;

    .line 410
    .line 411
    const-class v3, Lyw/e;

    .line 412
    .line 413
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 414
    .line 415
    .line 416
    move-result-object v3

    .line 417
    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 418
    .line 419
    .line 420
    const-wide/16 v4, 0x0

    .line 421
    .line 422
    invoke-virtual {v2, v3, v1, v4, v5}, Lcom/transsnet/flow/event/FlowEventBus;->postEvent(Ljava/lang/String;Ljava/lang/Object;J)V

    .line 423
    .line 424
    .line 425
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 426
    .line 427
    return-object v1
.end method
