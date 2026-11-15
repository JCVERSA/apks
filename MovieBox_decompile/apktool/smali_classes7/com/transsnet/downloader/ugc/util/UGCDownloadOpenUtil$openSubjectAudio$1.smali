.class final Lcom/transsnet/downloader/ugc/util/UGCDownloadOpenUtil$openSubjectAudio$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsnet/downloader/ugc/util/UGCDownloadOpenUtil;->q(Landroidx/appcompat/app/AppCompatActivity;Lcom/transsion/baselib/db/download/DownloadBean;)V
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
    c = "com.transsnet.downloader.ugc.util.UGCDownloadOpenUtil$openSubjectAudio$1"
    f = "UGCDownloadOpenUtil.kt"
    l = {
        0x4e,
        0x4e
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $activity:Landroidx/appcompat/app/AppCompatActivity;

.field final synthetic $item:Lcom/transsion/baselib/db/download/DownloadBean;

.field label:I


# direct methods
.method constructor <init>(Lcom/transsion/baselib/db/download/DownloadBean;Landroidx/appcompat/app/AppCompatActivity;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/baselib/db/download/DownloadBean;",
            "Landroidx/appcompat/app/AppCompatActivity;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsnet/downloader/ugc/util/UGCDownloadOpenUtil$openSubjectAudio$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsnet/downloader/ugc/util/UGCDownloadOpenUtil$openSubjectAudio$1;->$item:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsnet/downloader/ugc/util/UGCDownloadOpenUtil$openSubjectAudio$1;->$activity:Landroidx/appcompat/app/AppCompatActivity;

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
    new-instance p1, Lcom/transsnet/downloader/ugc/util/UGCDownloadOpenUtil$openSubjectAudio$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsnet/downloader/ugc/util/UGCDownloadOpenUtil$openSubjectAudio$1;->$item:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/transsnet/downloader/ugc/util/UGCDownloadOpenUtil$openSubjectAudio$1;->$activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lcom/transsnet/downloader/ugc/util/UGCDownloadOpenUtil$openSubjectAudio$1;-><init>(Lcom/transsion/baselib/db/download/DownloadBean;Landroidx/appcompat/app/AppCompatActivity;Lkotlin/coroutines/Continuation;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/transsnet/downloader/ugc/util/UGCDownloadOpenUtil$openSubjectAudio$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsnet/downloader/ugc/util/UGCDownloadOpenUtil$openSubjectAudio$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsnet/downloader/ugc/util/UGCDownloadOpenUtil$openSubjectAudio$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsnet/downloader/ugc/util/UGCDownloadOpenUtil$openSubjectAudio$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 28

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
    iget v2, v0, Lcom/transsnet/downloader/ugc/util/UGCDownloadOpenUtil$openSubjectAudio$1;->label:I

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    const/4 v4, 0x2

    .line 11
    if-eqz v2, :cond_2

    .line 12
    .line 13
    if-eq v2, v3, :cond_1

    .line 14
    .line 15
    if-ne v2, v4, :cond_0

    .line 16
    .line 17
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    move-object/from16 v2, p1

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 24
    .line 25
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 26
    .line 27
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw v1

    .line 31
    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    move-object/from16 v2, p1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    sget-object v2, Lcom/transsnet/downloader/ugc/util/UGCDownloadOpenUtil;->a:Lcom/transsnet/downloader/ugc/util/UGCDownloadOpenUtil;

    .line 41
    .line 42
    invoke-static {v2}, Lcom/transsnet/downloader/ugc/util/UGCDownloadOpenUtil;->f(Lcom/transsnet/downloader/ugc/util/UGCDownloadOpenUtil;)Lcom/transsnet/downloader/manager/g;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    iget-object v6, v0, Lcom/transsnet/downloader/ugc/util/UGCDownloadOpenUtil$openSubjectAudio$1;->$item:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 47
    .line 48
    invoke-interface {v5, v6}, Lcom/transsnet/downloader/manager/g;->l(Lcom/transsion/baselib/db/download/DownloadBean;)V

    .line 49
    .line 50
    .line 51
    invoke-static {v2}, Lcom/transsnet/downloader/ugc/util/UGCDownloadOpenUtil;->e(Lcom/transsnet/downloader/ugc/util/UGCDownloadOpenUtil;)Lsi/a;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    iget-object v5, v0, Lcom/transsnet/downloader/ugc/util/UGCDownloadOpenUtil$openSubjectAudio$1;->$item:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 56
    .line 57
    invoke-virtual {v5}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    if-nez v5, :cond_3

    .line 62
    .line 63
    iget-object v5, v0, Lcom/transsnet/downloader/ugc/util/UGCDownloadOpenUtil$openSubjectAudio$1;->$item:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 64
    .line 65
    invoke-virtual {v5}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    :cond_3
    iput v3, v0, Lcom/transsnet/downloader/ugc/util/UGCDownloadOpenUtil$openSubjectAudio$1;->label:I

    .line 70
    .line 71
    invoke-interface {v2, v5, v0}, Lsi/a;->d(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    if-ne v2, v1, :cond_4

    .line 76
    .line 77
    return-object v1

    .line 78
    :cond_4
    :goto_0
    check-cast v2, Lcom/transsion/baselib/db/audio/AudioBean;

    .line 79
    .line 80
    if-nez v2, :cond_6

    .line 81
    .line 82
    sget-object v2, Lcom/transsnet/downloader/ugc/util/UGCDownloadOpenUtil;->a:Lcom/transsnet/downloader/ugc/util/UGCDownloadOpenUtil;

    .line 83
    .line 84
    invoke-static {v2}, Lcom/transsnet/downloader/ugc/util/UGCDownloadOpenUtil;->e(Lcom/transsnet/downloader/ugc/util/UGCDownloadOpenUtil;)Lsi/a;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    iget-object v5, v0, Lcom/transsnet/downloader/ugc/util/UGCDownloadOpenUtil$openSubjectAudio$1;->$item:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 89
    .line 90
    invoke-virtual {v5}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v5

    .line 94
    iput v4, v0, Lcom/transsnet/downloader/ugc/util/UGCDownloadOpenUtil$openSubjectAudio$1;->label:I

    .line 95
    .line 96
    invoke-interface {v2, v5, v0}, Lsi/a;->c(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    if-ne v2, v1, :cond_5

    .line 101
    .line 102
    return-object v1

    .line 103
    :cond_5
    :goto_1
    check-cast v2, Lcom/transsion/baselib/db/audio/AudioBean;

    .line 104
    .line 105
    :cond_6
    if-nez v2, :cond_7

    .line 106
    .line 107
    iget-object v1, v0, Lcom/transsnet/downloader/ugc/util/UGCDownloadOpenUtil$openSubjectAudio$1;->$item:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 108
    .line 109
    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v6

    .line 113
    iget-object v1, v0, Lcom/transsnet/downloader/ugc/util/UGCDownloadOpenUtil$openSubjectAudio$1;->$item:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 114
    .line 115
    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getCover()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v7

    .line 119
    iget-object v1, v0, Lcom/transsnet/downloader/ugc/util/UGCDownloadOpenUtil$openSubjectAudio$1;->$item:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 120
    .line 121
    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSize()Ljava/lang/Long;

    .line 122
    .line 123
    .line 124
    move-result-object v9

    .line 125
    iget-object v1, v0, Lcom/transsnet/downloader/ugc/util/UGCDownloadOpenUtil$openSubjectAudio$1;->$item:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 126
    .line 127
    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v10

    .line 131
    iget-object v1, v0, Lcom/transsnet/downloader/ugc/util/UGCDownloadOpenUtil$openSubjectAudio$1;->$item:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 132
    .line 133
    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getName()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v11

    .line 137
    iget-object v1, v0, Lcom/transsnet/downloader/ugc/util/UGCDownloadOpenUtil$openSubjectAudio$1;->$item:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 138
    .line 139
    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectId()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v20

    .line 143
    iget-object v1, v0, Lcom/transsnet/downloader/ugc/util/UGCDownloadOpenUtil$openSubjectAudio$1;->$item:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 144
    .line 145
    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getPostId()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v19

    .line 149
    iget-object v1, v0, Lcom/transsnet/downloader/ugc/util/UGCDownloadOpenUtil$openSubjectAudio$1;->$item:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 150
    .line 151
    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSe()I

    .line 152
    .line 153
    .line 154
    move-result v24

    .line 155
    iget-object v1, v0, Lcom/transsnet/downloader/ugc/util/UGCDownloadOpenUtil$openSubjectAudio$1;->$item:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 156
    .line 157
    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getEp()I

    .line 158
    .line 159
    .line 160
    move-result v25

    .line 161
    iget-object v1, v0, Lcom/transsnet/downloader/ugc/util/UGCDownloadOpenUtil$openSubjectAudio$1;->$item:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 162
    .line 163
    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectName()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v23

    .line 167
    new-instance v2, Lcom/transsion/baselib/db/audio/AudioBean;

    .line 168
    .line 169
    move-object v5, v2

    .line 170
    const-wide/16 v12, 0x0

    .line 171
    .line 172
    invoke-static {v12, v13}, Lkotlin/coroutines/jvm/internal/Boxing;->e(J)Ljava/lang/Long;

    .line 173
    .line 174
    .line 175
    move-result-object v8

    .line 176
    const v26, 0x19fc0

    .line 177
    .line 178
    .line 179
    const/16 v27, 0x0

    .line 180
    .line 181
    const/4 v12, 0x0

    .line 182
    const/4 v13, 0x0

    .line 183
    const/4 v14, 0x0

    .line 184
    const/4 v15, 0x0

    .line 185
    const/16 v16, 0x0

    .line 186
    .line 187
    const/16 v17, 0x0

    .line 188
    .line 189
    const/16 v18, 0x0

    .line 190
    .line 191
    const/16 v21, 0x0

    .line 192
    .line 193
    const/16 v22, 0x0

    .line 194
    .line 195
    invoke-direct/range {v5 .. v27}, Lcom/transsion/baselib/db/audio/AudioBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 196
    .line 197
    .line 198
    iget-object v1, v0, Lcom/transsnet/downloader/ugc/util/UGCDownloadOpenUtil$openSubjectAudio$1;->$item:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 199
    .line 200
    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getPostId()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v1

    .line 204
    invoke-virtual {v2, v1}, Lcom/transsion/baselib/db/audio/AudioBean;->setPostId(Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    iget-object v1, v0, Lcom/transsnet/downloader/ugc/util/UGCDownloadOpenUtil$openSubjectAudio$1;->$item:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 208
    .line 209
    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v1

    .line 213
    invoke-virtual {v2, v1}, Lcom/transsion/baselib/db/audio/AudioBean;->setResourceId(Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    iget-object v1, v0, Lcom/transsnet/downloader/ugc/util/UGCDownloadOpenUtil$openSubjectAudio$1;->$item:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 217
    .line 218
    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectId()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v1

    .line 222
    invoke-virtual {v2, v1}, Lcom/transsion/baselib/db/audio/AudioBean;->setSubjectId(Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    iget-object v1, v0, Lcom/transsnet/downloader/ugc/util/UGCDownloadOpenUtil$openSubjectAudio$1;->$item:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 226
    .line 227
    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getGroupId()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v1

    .line 231
    invoke-virtual {v2, v1}, Lcom/transsion/baselib/db/audio/AudioBean;->setGroupId(Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    :cond_7
    sget-object v1, Lcom/transsnet/downloader/ugc/util/UGCDownloadOpenUtil;->a:Lcom/transsnet/downloader/ugc/util/UGCDownloadOpenUtil;

    .line 235
    .line 236
    invoke-static {v1}, Lcom/transsnet/downloader/ugc/util/UGCDownloadOpenUtil;->g(Lcom/transsnet/downloader/ugc/util/UGCDownloadOpenUtil;)Lep/a;

    .line 237
    .line 238
    .line 239
    move-result-object v5

    .line 240
    const/4 v6, 0x0

    .line 241
    const/4 v7, 0x0

    .line 242
    if-eqz v5, :cond_a

    .line 243
    .line 244
    invoke-interface {v5}, Lep/a;->f()Z

    .line 245
    .line 246
    .line 247
    move-result v5

    .line 248
    if-ne v5, v3, :cond_a

    .line 249
    .line 250
    invoke-static {v1}, Lcom/transsnet/downloader/ugc/util/UGCDownloadOpenUtil;->g(Lcom/transsnet/downloader/ugc/util/UGCDownloadOpenUtil;)Lep/a;

    .line 251
    .line 252
    .line 253
    move-result-object v3

    .line 254
    if-eqz v3, :cond_8

    .line 255
    .line 256
    invoke-interface {v3, v2}, Lep/a;->b(Lcom/transsion/baselib/db/audio/AudioBean;)Z

    .line 257
    .line 258
    .line 259
    move-result v3

    .line 260
    goto :goto_2

    .line 261
    :cond_8
    move v3, v7

    .line 262
    :goto_2
    if-eqz v3, :cond_9

    .line 263
    .line 264
    invoke-static {v1}, Lcom/transsnet/downloader/ugc/util/UGCDownloadOpenUtil;->g(Lcom/transsnet/downloader/ugc/util/UGCDownloadOpenUtil;)Lep/a;

    .line 265
    .line 266
    .line 267
    move-result-object v3

    .line 268
    if-eqz v3, :cond_b

    .line 269
    .line 270
    invoke-interface {v3}, Lep/a;->pause()V

    .line 271
    .line 272
    .line 273
    goto :goto_3

    .line 274
    :cond_9
    invoke-static {v1}, Lcom/transsnet/downloader/ugc/util/UGCDownloadOpenUtil;->g(Lcom/transsnet/downloader/ugc/util/UGCDownloadOpenUtil;)Lep/a;

    .line 275
    .line 276
    .line 277
    move-result-object v3

    .line 278
    if-eqz v3, :cond_b

    .line 279
    .line 280
    invoke-static {v3, v2, v7, v4, v6}, Lep/a$a;->a(Lep/a;Lcom/transsion/baselib/db/audio/AudioBean;ZILjava/lang/Object;)V

    .line 281
    .line 282
    .line 283
    goto :goto_3

    .line 284
    :cond_a
    invoke-static {v1}, Lcom/transsnet/downloader/ugc/util/UGCDownloadOpenUtil;->g(Lcom/transsnet/downloader/ugc/util/UGCDownloadOpenUtil;)Lep/a;

    .line 285
    .line 286
    .line 287
    move-result-object v3

    .line 288
    if-eqz v3, :cond_b

    .line 289
    .line 290
    invoke-static {v3, v2, v7, v4, v6}, Lep/a$a;->a(Lep/a;Lcom/transsion/baselib/db/audio/AudioBean;ZILjava/lang/Object;)V

    .line 291
    .line 292
    .line 293
    :cond_b
    :goto_3
    invoke-static {v1}, Lcom/transsnet/downloader/ugc/util/UGCDownloadOpenUtil;->h(Lcom/transsnet/downloader/ugc/util/UGCDownloadOpenUtil;)Lep/b;

    .line 294
    .line 295
    .line 296
    move-result-object v1

    .line 297
    if-eqz v1, :cond_c

    .line 298
    .line 299
    new-instance v3, Ljava/lang/ref/WeakReference;

    .line 300
    .line 301
    iget-object v4, v0, Lcom/transsnet/downloader/ugc/util/UGCDownloadOpenUtil$openSubjectAudio$1;->$activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 302
    .line 303
    invoke-direct {v3, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 304
    .line 305
    .line 306
    invoke-interface {v1, v3, v2}, Lep/b;->a(Ljava/lang/ref/WeakReference;Lcom/transsion/baselib/db/audio/AudioBean;)V

    .line 307
    .line 308
    .line 309
    :cond_c
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 310
    .line 311
    return-object v1
.end method
