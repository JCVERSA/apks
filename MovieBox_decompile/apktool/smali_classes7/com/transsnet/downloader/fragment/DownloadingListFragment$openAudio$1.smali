.class final Lcom/transsnet/downloader/fragment/DownloadingListFragment$openAudio$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsnet/downloader/fragment/DownloadingListFragment;->h1(Lcom/transsion/baselib/db/download/DownloadBean;)V
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
    c = "com.transsnet.downloader.fragment.DownloadingListFragment$openAudio$1"
    f = "DownloadingListFragment.kt"
    l = {
        0x12b,
        0x12b
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $item:Lcom/transsion/baselib/db/download/DownloadBean;

.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/transsnet/downloader/fragment/DownloadingListFragment;


# direct methods
.method constructor <init>(Lcom/transsnet/downloader/fragment/DownloadingListFragment;Lcom/transsion/baselib/db/download/DownloadBean;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsnet/downloader/fragment/DownloadingListFragment;",
            "Lcom/transsion/baselib/db/download/DownloadBean;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsnet/downloader/fragment/DownloadingListFragment$openAudio$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsnet/downloader/fragment/DownloadingListFragment$openAudio$1;->this$0:Lcom/transsnet/downloader/fragment/DownloadingListFragment;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsnet/downloader/fragment/DownloadingListFragment$openAudio$1;->$item:Lcom/transsion/baselib/db/download/DownloadBean;

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
    new-instance p1, Lcom/transsnet/downloader/fragment/DownloadingListFragment$openAudio$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsnet/downloader/fragment/DownloadingListFragment$openAudio$1;->this$0:Lcom/transsnet/downloader/fragment/DownloadingListFragment;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/transsnet/downloader/fragment/DownloadingListFragment$openAudio$1;->$item:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lcom/transsnet/downloader/fragment/DownloadingListFragment$openAudio$1;-><init>(Lcom/transsnet/downloader/fragment/DownloadingListFragment;Lcom/transsion/baselib/db/download/DownloadBean;Lkotlin/coroutines/Continuation;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/transsnet/downloader/fragment/DownloadingListFragment$openAudio$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsnet/downloader/fragment/DownloadingListFragment$openAudio$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsnet/downloader/fragment/DownloadingListFragment$openAudio$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsnet/downloader/fragment/DownloadingListFragment$openAudio$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 29

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
    iget v2, v0, Lcom/transsnet/downloader/fragment/DownloadingListFragment$openAudio$1;->label:I

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    const/4 v4, 0x0

    .line 11
    const/4 v5, 0x2

    .line 12
    if-eqz v2, :cond_2

    .line 13
    .line 14
    if-eq v2, v3, :cond_1

    .line 15
    .line 16
    if-ne v2, v5, :cond_0

    .line 17
    .line 18
    iget-object v1, v0, Lcom/transsnet/downloader/fragment/DownloadingListFragment$openAudio$1;->L$0:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v1, Landroidx/appcompat/app/AppCompatActivity;

    .line 21
    .line 22
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    move-object/from16 v6, p1

    .line 26
    .line 27
    goto/16 :goto_3

    .line 28
    .line 29
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 30
    .line 31
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 32
    .line 33
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw v1

    .line 37
    :cond_1
    iget-object v2, v0, Lcom/transsnet/downloader/fragment/DownloadingListFragment$openAudio$1;->L$0:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast v2, Landroidx/appcompat/app/AppCompatActivity;

    .line 40
    .line 41
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    move-object/from16 v6, p1

    .line 45
    .line 46
    goto :goto_2

    .line 47
    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    iget-object v2, v0, Lcom/transsnet/downloader/fragment/DownloadingListFragment$openAudio$1;->this$0:Lcom/transsnet/downloader/fragment/DownloadingListFragment;

    .line 51
    .line 52
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    if-eqz v2, :cond_3

    .line 57
    .line 58
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    goto :goto_0

    .line 63
    :cond_3
    move-object v2, v4

    .line 64
    :goto_0
    instance-of v6, v2, Landroidx/appcompat/app/AppCompatActivity;

    .line 65
    .line 66
    if-eqz v6, :cond_4

    .line 67
    .line 68
    check-cast v2, Landroidx/appcompat/app/AppCompatActivity;

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_4
    move-object v2, v4

    .line 72
    :goto_1
    if-nez v2, :cond_5

    .line 73
    .line 74
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 75
    .line 76
    return-object v1

    .line 77
    :cond_5
    iget-object v6, v0, Lcom/transsnet/downloader/fragment/DownloadingListFragment$openAudio$1;->this$0:Lcom/transsnet/downloader/fragment/DownloadingListFragment;

    .line 78
    .line 79
    invoke-static {v6}, Lcom/transsnet/downloader/fragment/DownloadingListFragment;->O0(Lcom/transsnet/downloader/fragment/DownloadingListFragment;)Lcom/transsnet/downloader/manager/g;

    .line 80
    .line 81
    .line 82
    move-result-object v6

    .line 83
    iget-object v7, v0, Lcom/transsnet/downloader/fragment/DownloadingListFragment$openAudio$1;->$item:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 84
    .line 85
    invoke-interface {v6, v7}, Lcom/transsnet/downloader/manager/g;->l(Lcom/transsion/baselib/db/download/DownloadBean;)V

    .line 86
    .line 87
    .line 88
    iget-object v6, v0, Lcom/transsnet/downloader/fragment/DownloadingListFragment$openAudio$1;->this$0:Lcom/transsnet/downloader/fragment/DownloadingListFragment;

    .line 89
    .line 90
    invoke-static {v6}, Lcom/transsnet/downloader/fragment/DownloadingListFragment;->N0(Lcom/transsnet/downloader/fragment/DownloadingListFragment;)Lsi/a;

    .line 91
    .line 92
    .line 93
    move-result-object v6

    .line 94
    iget-object v7, v0, Lcom/transsnet/downloader/fragment/DownloadingListFragment$openAudio$1;->$item:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 95
    .line 96
    invoke-virtual {v7}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v7

    .line 100
    if-nez v7, :cond_6

    .line 101
    .line 102
    iget-object v7, v0, Lcom/transsnet/downloader/fragment/DownloadingListFragment$openAudio$1;->$item:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 103
    .line 104
    invoke-virtual {v7}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v7

    .line 108
    :cond_6
    iput-object v2, v0, Lcom/transsnet/downloader/fragment/DownloadingListFragment$openAudio$1;->L$0:Ljava/lang/Object;

    .line 109
    .line 110
    iput v3, v0, Lcom/transsnet/downloader/fragment/DownloadingListFragment$openAudio$1;->label:I

    .line 111
    .line 112
    invoke-interface {v6, v7, v0}, Lsi/a;->d(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v6

    .line 116
    if-ne v6, v1, :cond_7

    .line 117
    .line 118
    return-object v1

    .line 119
    :cond_7
    :goto_2
    check-cast v6, Lcom/transsion/baselib/db/audio/AudioBean;

    .line 120
    .line 121
    if-nez v6, :cond_9

    .line 122
    .line 123
    iget-object v6, v0, Lcom/transsnet/downloader/fragment/DownloadingListFragment$openAudio$1;->this$0:Lcom/transsnet/downloader/fragment/DownloadingListFragment;

    .line 124
    .line 125
    invoke-static {v6}, Lcom/transsnet/downloader/fragment/DownloadingListFragment;->N0(Lcom/transsnet/downloader/fragment/DownloadingListFragment;)Lsi/a;

    .line 126
    .line 127
    .line 128
    move-result-object v6

    .line 129
    iget-object v7, v0, Lcom/transsnet/downloader/fragment/DownloadingListFragment$openAudio$1;->$item:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 130
    .line 131
    invoke-virtual {v7}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v7

    .line 135
    iput-object v2, v0, Lcom/transsnet/downloader/fragment/DownloadingListFragment$openAudio$1;->L$0:Ljava/lang/Object;

    .line 136
    .line 137
    iput v5, v0, Lcom/transsnet/downloader/fragment/DownloadingListFragment$openAudio$1;->label:I

    .line 138
    .line 139
    invoke-interface {v6, v7, v0}, Lsi/a;->c(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v6

    .line 143
    if-ne v6, v1, :cond_8

    .line 144
    .line 145
    return-object v1

    .line 146
    :cond_8
    move-object v1, v2

    .line 147
    :goto_3
    check-cast v6, Lcom/transsion/baselib/db/audio/AudioBean;

    .line 148
    .line 149
    move-object v2, v1

    .line 150
    :cond_9
    if-nez v6, :cond_a

    .line 151
    .line 152
    iget-object v1, v0, Lcom/transsnet/downloader/fragment/DownloadingListFragment$openAudio$1;->$item:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 153
    .line 154
    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v7

    .line 158
    iget-object v1, v0, Lcom/transsnet/downloader/fragment/DownloadingListFragment$openAudio$1;->$item:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 159
    .line 160
    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getCover()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v8

    .line 164
    iget-object v1, v0, Lcom/transsnet/downloader/fragment/DownloadingListFragment$openAudio$1;->$item:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 165
    .line 166
    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSize()Ljava/lang/Long;

    .line 167
    .line 168
    .line 169
    move-result-object v10

    .line 170
    iget-object v1, v0, Lcom/transsnet/downloader/fragment/DownloadingListFragment$openAudio$1;->$item:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 171
    .line 172
    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v11

    .line 176
    iget-object v1, v0, Lcom/transsnet/downloader/fragment/DownloadingListFragment$openAudio$1;->$item:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 177
    .line 178
    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getName()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v12

    .line 182
    iget-object v1, v0, Lcom/transsnet/downloader/fragment/DownloadingListFragment$openAudio$1;->$item:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 183
    .line 184
    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectId()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v21

    .line 188
    iget-object v1, v0, Lcom/transsnet/downloader/fragment/DownloadingListFragment$openAudio$1;->$item:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 189
    .line 190
    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getPostId()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v20

    .line 194
    iget-object v1, v0, Lcom/transsnet/downloader/fragment/DownloadingListFragment$openAudio$1;->$item:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 195
    .line 196
    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSe()I

    .line 197
    .line 198
    .line 199
    move-result v25

    .line 200
    iget-object v1, v0, Lcom/transsnet/downloader/fragment/DownloadingListFragment$openAudio$1;->$item:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 201
    .line 202
    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getEp()I

    .line 203
    .line 204
    .line 205
    move-result v26

    .line 206
    iget-object v1, v0, Lcom/transsnet/downloader/fragment/DownloadingListFragment$openAudio$1;->$item:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 207
    .line 208
    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectName()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v24

    .line 212
    new-instance v1, Lcom/transsion/baselib/db/audio/AudioBean;

    .line 213
    .line 214
    move-object v6, v1

    .line 215
    const-wide/16 v13, 0x0

    .line 216
    .line 217
    invoke-static {v13, v14}, Lkotlin/coroutines/jvm/internal/Boxing;->e(J)Ljava/lang/Long;

    .line 218
    .line 219
    .line 220
    move-result-object v9

    .line 221
    const v27, 0x19fc0

    .line 222
    .line 223
    .line 224
    const/16 v28, 0x0

    .line 225
    .line 226
    const/4 v13, 0x0

    .line 227
    const/4 v14, 0x0

    .line 228
    const/4 v15, 0x0

    .line 229
    const/16 v16, 0x0

    .line 230
    .line 231
    const/16 v17, 0x0

    .line 232
    .line 233
    const/16 v18, 0x0

    .line 234
    .line 235
    const/16 v19, 0x0

    .line 236
    .line 237
    const/16 v22, 0x0

    .line 238
    .line 239
    const/16 v23, 0x0

    .line 240
    .line 241
    invoke-direct/range {v6 .. v28}, Lcom/transsion/baselib/db/audio/AudioBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 242
    .line 243
    .line 244
    iget-object v6, v0, Lcom/transsnet/downloader/fragment/DownloadingListFragment$openAudio$1;->$item:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 245
    .line 246
    invoke-virtual {v6}, Lcom/transsion/baselib/db/download/DownloadBean;->getPostId()Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v6

    .line 250
    invoke-virtual {v1, v6}, Lcom/transsion/baselib/db/audio/AudioBean;->setPostId(Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    iget-object v6, v0, Lcom/transsnet/downloader/fragment/DownloadingListFragment$openAudio$1;->$item:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 254
    .line 255
    invoke-virtual {v6}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v6

    .line 259
    invoke-virtual {v1, v6}, Lcom/transsion/baselib/db/audio/AudioBean;->setResourceId(Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    iget-object v6, v0, Lcom/transsnet/downloader/fragment/DownloadingListFragment$openAudio$1;->$item:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 263
    .line 264
    invoke-virtual {v6}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectId()Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v6

    .line 268
    invoke-virtual {v1, v6}, Lcom/transsion/baselib/db/audio/AudioBean;->setSubjectId(Ljava/lang/String;)V

    .line 269
    .line 270
    .line 271
    iget-object v6, v0, Lcom/transsnet/downloader/fragment/DownloadingListFragment$openAudio$1;->$item:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 272
    .line 273
    invoke-virtual {v6}, Lcom/transsion/baselib/db/download/DownloadBean;->getGroupId()Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v6

    .line 277
    invoke-virtual {v1, v6}, Lcom/transsion/baselib/db/audio/AudioBean;->setGroupId(Ljava/lang/String;)V

    .line 278
    .line 279
    .line 280
    move-object v6, v1

    .line 281
    :cond_a
    iget-object v1, v0, Lcom/transsnet/downloader/fragment/DownloadingListFragment$openAudio$1;->this$0:Lcom/transsnet/downloader/fragment/DownloadingListFragment;

    .line 282
    .line 283
    invoke-static {v1}, Lcom/transsnet/downloader/fragment/DownloadingListFragment;->P0(Lcom/transsnet/downloader/fragment/DownloadingListFragment;)Lep/a;

    .line 284
    .line 285
    .line 286
    move-result-object v1

    .line 287
    const/4 v7, 0x0

    .line 288
    if-eqz v1, :cond_d

    .line 289
    .line 290
    invoke-interface {v1}, Lep/a;->f()Z

    .line 291
    .line 292
    .line 293
    move-result v1

    .line 294
    if-ne v1, v3, :cond_d

    .line 295
    .line 296
    iget-object v1, v0, Lcom/transsnet/downloader/fragment/DownloadingListFragment$openAudio$1;->this$0:Lcom/transsnet/downloader/fragment/DownloadingListFragment;

    .line 297
    .line 298
    invoke-static {v1}, Lcom/transsnet/downloader/fragment/DownloadingListFragment;->P0(Lcom/transsnet/downloader/fragment/DownloadingListFragment;)Lep/a;

    .line 299
    .line 300
    .line 301
    move-result-object v1

    .line 302
    if-eqz v1, :cond_b

    .line 303
    .line 304
    invoke-interface {v1, v6}, Lep/a;->b(Lcom/transsion/baselib/db/audio/AudioBean;)Z

    .line 305
    .line 306
    .line 307
    move-result v1

    .line 308
    goto :goto_4

    .line 309
    :cond_b
    move v1, v7

    .line 310
    :goto_4
    if-eqz v1, :cond_c

    .line 311
    .line 312
    iget-object v1, v0, Lcom/transsnet/downloader/fragment/DownloadingListFragment$openAudio$1;->this$0:Lcom/transsnet/downloader/fragment/DownloadingListFragment;

    .line 313
    .line 314
    invoke-static {v1}, Lcom/transsnet/downloader/fragment/DownloadingListFragment;->P0(Lcom/transsnet/downloader/fragment/DownloadingListFragment;)Lep/a;

    .line 315
    .line 316
    .line 317
    move-result-object v1

    .line 318
    if-eqz v1, :cond_e

    .line 319
    .line 320
    invoke-interface {v1}, Lep/a;->pause()V

    .line 321
    .line 322
    .line 323
    goto :goto_5

    .line 324
    :cond_c
    iget-object v1, v0, Lcom/transsnet/downloader/fragment/DownloadingListFragment$openAudio$1;->this$0:Lcom/transsnet/downloader/fragment/DownloadingListFragment;

    .line 325
    .line 326
    invoke-static {v1}, Lcom/transsnet/downloader/fragment/DownloadingListFragment;->P0(Lcom/transsnet/downloader/fragment/DownloadingListFragment;)Lep/a;

    .line 327
    .line 328
    .line 329
    move-result-object v1

    .line 330
    if-eqz v1, :cond_e

    .line 331
    .line 332
    invoke-static {v1, v6, v7, v5, v4}, Lep/a$a;->a(Lep/a;Lcom/transsion/baselib/db/audio/AudioBean;ZILjava/lang/Object;)V

    .line 333
    .line 334
    .line 335
    goto :goto_5

    .line 336
    :cond_d
    iget-object v1, v0, Lcom/transsnet/downloader/fragment/DownloadingListFragment$openAudio$1;->this$0:Lcom/transsnet/downloader/fragment/DownloadingListFragment;

    .line 337
    .line 338
    invoke-static {v1}, Lcom/transsnet/downloader/fragment/DownloadingListFragment;->P0(Lcom/transsnet/downloader/fragment/DownloadingListFragment;)Lep/a;

    .line 339
    .line 340
    .line 341
    move-result-object v1

    .line 342
    if-eqz v1, :cond_e

    .line 343
    .line 344
    invoke-static {v1, v6, v7, v5, v4}, Lep/a$a;->a(Lep/a;Lcom/transsion/baselib/db/audio/AudioBean;ZILjava/lang/Object;)V

    .line 345
    .line 346
    .line 347
    :cond_e
    :goto_5
    iget-object v1, v0, Lcom/transsnet/downloader/fragment/DownloadingListFragment$openAudio$1;->this$0:Lcom/transsnet/downloader/fragment/DownloadingListFragment;

    .line 348
    .line 349
    invoke-static {v1}, Lcom/transsnet/downloader/fragment/DownloadingListFragment;->Q0(Lcom/transsnet/downloader/fragment/DownloadingListFragment;)Lep/b;

    .line 350
    .line 351
    .line 352
    move-result-object v1

    .line 353
    if-eqz v1, :cond_f

    .line 354
    .line 355
    new-instance v3, Ljava/lang/ref/WeakReference;

    .line 356
    .line 357
    invoke-direct {v3, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 358
    .line 359
    .line 360
    invoke-interface {v1, v3, v6}, Lep/b;->a(Ljava/lang/ref/WeakReference;Lcom/transsion/baselib/db/audio/AudioBean;)V

    .line 361
    .line 362
    .line 363
    :cond_f
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 364
    .line 365
    return-object v1
.end method
