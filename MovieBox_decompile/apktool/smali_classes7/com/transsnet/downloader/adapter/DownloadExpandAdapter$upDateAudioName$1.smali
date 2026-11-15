.class final Lcom/transsnet/downloader/adapter/DownloadExpandAdapter$upDateAudioName$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsnet/downloader/adapter/DownloadExpandAdapter;->Z1(I)V
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
    c = "com.transsnet.downloader.adapter.DownloadExpandAdapter$upDateAudioName$1"
    f = "DownloadExpandAdapter.kt"
    l = {
        0xe2,
        0xed
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $item:Lp6/a;

.field label:I

.field final synthetic this$0:Lcom/transsnet/downloader/adapter/DownloadExpandAdapter;


# direct methods
.method constructor <init>(Lp6/a;Lcom/transsnet/downloader/adapter/DownloadExpandAdapter;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lp6/a;",
            "Lcom/transsnet/downloader/adapter/DownloadExpandAdapter;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsnet/downloader/adapter/DownloadExpandAdapter$upDateAudioName$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsnet/downloader/adapter/DownloadExpandAdapter$upDateAudioName$1;->$item:Lp6/a;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsnet/downloader/adapter/DownloadExpandAdapter$upDateAudioName$1;->this$0:Lcom/transsnet/downloader/adapter/DownloadExpandAdapter;

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
    new-instance p1, Lcom/transsnet/downloader/adapter/DownloadExpandAdapter$upDateAudioName$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsnet/downloader/adapter/DownloadExpandAdapter$upDateAudioName$1;->$item:Lp6/a;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/transsnet/downloader/adapter/DownloadExpandAdapter$upDateAudioName$1;->this$0:Lcom/transsnet/downloader/adapter/DownloadExpandAdapter;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lcom/transsnet/downloader/adapter/DownloadExpandAdapter$upDateAudioName$1;-><init>(Lp6/a;Lcom/transsnet/downloader/adapter/DownloadExpandAdapter;Lkotlin/coroutines/Continuation;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/transsnet/downloader/adapter/DownloadExpandAdapter$upDateAudioName$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsnet/downloader/adapter/DownloadExpandAdapter$upDateAudioName$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsnet/downloader/adapter/DownloadExpandAdapter$upDateAudioName$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsnet/downloader/adapter/DownloadExpandAdapter$upDateAudioName$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 27

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
    iget v2, v0, Lcom/transsnet/downloader/adapter/DownloadExpandAdapter$upDateAudioName$1;->label:I

    .line 8
    .line 9
    const/4 v3, 0x2

    .line 10
    const/4 v4, 0x1

    .line 11
    if-eqz v2, :cond_2

    .line 12
    .line 13
    if-eq v2, v4, :cond_1

    .line 14
    .line 15
    if-ne v2, v3, :cond_0

    .line 16
    .line 17
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    goto/16 :goto_2

    .line 21
    .line 22
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 23
    .line 24
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 25
    .line 26
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw v1

    .line 30
    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    move-object/from16 v2, p1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    iget-object v2, v0, Lcom/transsnet/downloader/adapter/DownloadExpandAdapter$upDateAudioName$1;->$item:Lp6/a;

    .line 40
    .line 41
    check-cast v2, Lcom/transsion/baselib/db/download/DownloadBean;

    .line 42
    .line 43
    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 48
    .line 49
    .line 50
    move-result v5

    .line 51
    if-nez v5, :cond_6

    .line 52
    .line 53
    iget-object v5, v0, Lcom/transsnet/downloader/adapter/DownloadExpandAdapter$upDateAudioName$1;->this$0:Lcom/transsnet/downloader/adapter/DownloadExpandAdapter;

    .line 54
    .line 55
    invoke-static {v5}, Lcom/transsnet/downloader/adapter/DownloadExpandAdapter;->G1(Lcom/transsnet/downloader/adapter/DownloadExpandAdapter;)Lsi/a;

    .line 56
    .line 57
    .line 58
    move-result-object v5

    .line 59
    if-eqz v5, :cond_4

    .line 60
    .line 61
    iput v4, v0, Lcom/transsnet/downloader/adapter/DownloadExpandAdapter$upDateAudioName$1;->label:I

    .line 62
    .line 63
    invoke-interface {v5, v2, v0}, Lsi/a;->c(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    if-ne v2, v1, :cond_3

    .line 68
    .line 69
    return-object v1

    .line 70
    :cond_3
    :goto_0
    check-cast v2, Lcom/transsion/baselib/db/audio/AudioBean;

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_4
    const/4 v2, 0x0

    .line 74
    :goto_1
    if-nez v2, :cond_5

    .line 75
    .line 76
    new-instance v2, Lcom/transsion/baselib/db/audio/AudioBean;

    .line 77
    .line 78
    move-object v4, v2

    .line 79
    iget-object v5, v0, Lcom/transsnet/downloader/adapter/DownloadExpandAdapter$upDateAudioName$1;->$item:Lp6/a;

    .line 80
    .line 81
    check-cast v5, Lcom/transsion/baselib/db/download/DownloadBean;

    .line 82
    .line 83
    invoke-virtual {v5}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v5

    .line 87
    iget-object v6, v0, Lcom/transsnet/downloader/adapter/DownloadExpandAdapter$upDateAudioName$1;->$item:Lp6/a;

    .line 88
    .line 89
    check-cast v6, Lcom/transsion/baselib/db/download/DownloadBean;

    .line 90
    .line 91
    invoke-virtual {v6}, Lcom/transsion/baselib/db/download/DownloadBean;->getCover()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v6

    .line 95
    const-wide/16 v7, 0x0

    .line 96
    .line 97
    invoke-static {v7, v8}, Lkotlin/coroutines/jvm/internal/Boxing;->e(J)Ljava/lang/Long;

    .line 98
    .line 99
    .line 100
    move-result-object v7

    .line 101
    iget-object v8, v0, Lcom/transsnet/downloader/adapter/DownloadExpandAdapter$upDateAudioName$1;->$item:Lp6/a;

    .line 102
    .line 103
    check-cast v8, Lcom/transsion/baselib/db/download/DownloadBean;

    .line 104
    .line 105
    invoke-virtual {v8}, Lcom/transsion/baselib/db/download/DownloadBean;->getSize()Ljava/lang/Long;

    .line 106
    .line 107
    .line 108
    move-result-object v8

    .line 109
    iget-object v9, v0, Lcom/transsnet/downloader/adapter/DownloadExpandAdapter$upDateAudioName$1;->$item:Lp6/a;

    .line 110
    .line 111
    check-cast v9, Lcom/transsion/baselib/db/download/DownloadBean;

    .line 112
    .line 113
    invoke-virtual {v9}, Lcom/transsion/baselib/db/download/DownloadBean;->getPath()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v9

    .line 117
    iget-object v10, v0, Lcom/transsnet/downloader/adapter/DownloadExpandAdapter$upDateAudioName$1;->$item:Lp6/a;

    .line 118
    .line 119
    check-cast v10, Lcom/transsion/baselib/db/download/DownloadBean;

    .line 120
    .line 121
    invoke-virtual {v10}, Lcom/transsion/baselib/db/download/DownloadBean;->getName()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v10

    .line 125
    const v25, 0xfffc0

    .line 126
    .line 127
    .line 128
    const/16 v26, 0x0

    .line 129
    .line 130
    const/4 v11, 0x0

    .line 131
    const/4 v12, 0x0

    .line 132
    const/4 v13, 0x0

    .line 133
    const/4 v14, 0x0

    .line 134
    const/4 v15, 0x0

    .line 135
    const/16 v16, 0x0

    .line 136
    .line 137
    const/16 v17, 0x0

    .line 138
    .line 139
    const/16 v18, 0x0

    .line 140
    .line 141
    const/16 v19, 0x0

    .line 142
    .line 143
    const/16 v20, 0x0

    .line 144
    .line 145
    const/16 v21, 0x0

    .line 146
    .line 147
    const/16 v22, 0x0

    .line 148
    .line 149
    const/16 v23, 0x0

    .line 150
    .line 151
    const/16 v24, 0x0

    .line 152
    .line 153
    invoke-direct/range {v4 .. v26}, Lcom/transsion/baselib/db/audio/AudioBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 154
    .line 155
    .line 156
    iget-object v4, v0, Lcom/transsnet/downloader/adapter/DownloadExpandAdapter$upDateAudioName$1;->$item:Lp6/a;

    .line 157
    .line 158
    check-cast v4, Lcom/transsion/baselib/db/download/DownloadBean;

    .line 159
    .line 160
    invoke-virtual {v4}, Lcom/transsion/baselib/db/download/DownloadBean;->getPostId()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v4

    .line 164
    invoke-virtual {v2, v4}, Lcom/transsion/baselib/db/audio/AudioBean;->setPostId(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    iget-object v4, v0, Lcom/transsnet/downloader/adapter/DownloadExpandAdapter$upDateAudioName$1;->$item:Lp6/a;

    .line 168
    .line 169
    check-cast v4, Lcom/transsion/baselib/db/download/DownloadBean;

    .line 170
    .line 171
    invoke-virtual {v4}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v4

    .line 175
    invoke-virtual {v2, v4}, Lcom/transsion/baselib/db/audio/AudioBean;->setResourceId(Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    iget-object v4, v0, Lcom/transsnet/downloader/adapter/DownloadExpandAdapter$upDateAudioName$1;->$item:Lp6/a;

    .line 179
    .line 180
    check-cast v4, Lcom/transsion/baselib/db/download/DownloadBean;

    .line 181
    .line 182
    invoke-virtual {v4}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectId()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v4

    .line 186
    invoke-virtual {v2, v4}, Lcom/transsion/baselib/db/audio/AudioBean;->setSubjectId(Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    iget-object v4, v0, Lcom/transsnet/downloader/adapter/DownloadExpandAdapter$upDateAudioName$1;->$item:Lp6/a;

    .line 190
    .line 191
    check-cast v4, Lcom/transsion/baselib/db/download/DownloadBean;

    .line 192
    .line 193
    invoke-virtual {v4}, Lcom/transsion/baselib/db/download/DownloadBean;->getGroupId()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v4

    .line 197
    invoke-virtual {v2, v4}, Lcom/transsion/baselib/db/audio/AudioBean;->setGroupId(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    :cond_5
    iget-object v4, v0, Lcom/transsnet/downloader/adapter/DownloadExpandAdapter$upDateAudioName$1;->$item:Lp6/a;

    .line 201
    .line 202
    check-cast v4, Lcom/transsion/baselib/db/download/DownloadBean;

    .line 203
    .line 204
    invoke-virtual {v4}, Lcom/transsion/baselib/db/download/DownloadBean;->getName()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v4

    .line 208
    invoke-virtual {v2, v4}, Lcom/transsion/baselib/db/audio/AudioBean;->setTitle(Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    iget-object v4, v0, Lcom/transsnet/downloader/adapter/DownloadExpandAdapter$upDateAudioName$1;->this$0:Lcom/transsnet/downloader/adapter/DownloadExpandAdapter;

    .line 212
    .line 213
    invoke-static {v4}, Lcom/transsnet/downloader/adapter/DownloadExpandAdapter;->G1(Lcom/transsnet/downloader/adapter/DownloadExpandAdapter;)Lsi/a;

    .line 214
    .line 215
    .line 216
    move-result-object v4

    .line 217
    if-eqz v4, :cond_6

    .line 218
    .line 219
    iput v3, v0, Lcom/transsnet/downloader/adapter/DownloadExpandAdapter$upDateAudioName$1;->label:I

    .line 220
    .line 221
    invoke-interface {v4, v2, v0}, Lsi/a;->f(Lcom/transsion/baselib/db/audio/AudioBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    move-result-object v2

    .line 225
    if-ne v2, v1, :cond_6

    .line 226
    .line 227
    return-object v1

    .line 228
    :cond_6
    :goto_2
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 229
    .line 230
    return-object v1
.end method
