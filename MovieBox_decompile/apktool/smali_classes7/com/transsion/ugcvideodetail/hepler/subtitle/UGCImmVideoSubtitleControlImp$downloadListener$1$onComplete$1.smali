.class final Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp$downloadListener$1$onComplete$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp$downloadListener$1;->onComplete(Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V
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
    c = "com.transsion.ugcvideodetail.hepler.subtitle.UGCImmVideoSubtitleControlImp$downloadListener$1$onComplete$1"
    f = "UGCImmVideoSubtitleControlImp.kt"
    l = {}
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field final synthetic $stDownloadTable:Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

.field label:I

.field final synthetic this$0:Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;


# direct methods
.method constructor <init>(Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;",
            "Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp$downloadListener$1$onComplete$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp$downloadListener$1$onComplete$1;->this$0:Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp$downloadListener$1$onComplete$1;->$stDownloadTable:Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

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
    new-instance p1, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp$downloadListener$1$onComplete$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp$downloadListener$1$onComplete$1;->this$0:Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp$downloadListener$1$onComplete$1;->$stDownloadTable:Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp$downloadListener$1$onComplete$1;-><init>(Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;Lkotlin/coroutines/Continuation;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp$downloadListener$1$onComplete$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp$downloadListener$1$onComplete$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp$downloadListener$1$onComplete$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp$downloadListener$1$onComplete$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp$downloadListener$1$onComplete$1;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_11

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp$downloadListener$1$onComplete$1;->this$0:Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;->u()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp$downloadListener$1$onComplete$1;->$stDownloadTable:Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getResourceId()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-nez p1, :cond_0

    .line 28
    .line 29
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 30
    .line 31
    iget-object p1, p0, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp$downloadListener$1$onComplete$1;->this$0:Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;

    .line 32
    .line 33
    invoke-static {p1}, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;->q(Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    const/4 v4, 0x4

    .line 38
    const/4 v5, 0x0

    .line 39
    const-string v2, " onComplete() --> \u5b57\u5e55\u4e0b\u8f7d\u6210\u529f\uff0c\u4e0d\u662f\u5f53\u524d\u89c6\u9891\uff0c\u4e0d\u505a\u5904\u7406"

    .line 40
    .line 41
    const/4 v3, 0x0

    .line 42
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 46
    .line 47
    return-object p1

    .line 48
    :cond_0
    iget-object p1, p0, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp$downloadListener$1$onComplete$1;->this$0:Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;

    .line 49
    .line 50
    invoke-static {p1}, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;->s(Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;)Lcom/transsion/ugcvideodetail/hepler/subtitle/a;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    if-eqz p1, :cond_1

    .line 55
    .line 56
    invoke-virtual {p1}, Lcom/transsion/ugcvideodetail/hepler/subtitle/a;->d()Landroidx/lifecycle/b0;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    if-eqz p1, :cond_1

    .line 61
    .line 62
    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    check-cast p1, Ljava/util/List;

    .line 67
    .line 68
    if-nez p1, :cond_2

    .line 69
    .line 70
    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    .line 71
    .line 72
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 73
    .line 74
    .line 75
    :cond_2
    move-object v0, p1

    .line 76
    check-cast v0, Ljava/lang/Iterable;

    .line 77
    .line 78
    iget-object v1, p0, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp$downloadListener$1$onComplete$1;->$stDownloadTable:Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 79
    .line 80
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 85
    .line 86
    .line 87
    move-result v3

    .line 88
    const/4 v4, 0x0

    .line 89
    if-eqz v3, :cond_4

    .line 90
    .line 91
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    move-object v5, v3

    .line 96
    check-cast v5, Lht/a;

    .line 97
    .line 98
    invoke-virtual {v5}, Lht/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 99
    .line 100
    .line 101
    move-result-object v6

    .line 102
    invoke-virtual {v6}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getId()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v6

    .line 106
    invoke-virtual {v1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getId()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v7

    .line 110
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result v6

    .line 114
    if-eqz v6, :cond_3

    .line 115
    .line 116
    invoke-virtual {v5}, Lht/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 117
    .line 118
    .line 119
    move-result-object v5

    .line 120
    invoke-virtual {v5}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getResourceStreamType()I

    .line 121
    .line 122
    .line 123
    move-result v5

    .line 124
    invoke-virtual {v1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getResourceStreamType()I

    .line 125
    .line 126
    .line 127
    move-result v6

    .line 128
    if-ne v5, v6, :cond_3

    .line 129
    .line 130
    goto :goto_0

    .line 131
    :cond_4
    move-object v3, v4

    .line 132
    :goto_0
    iget-object v1, p0, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp$downloadListener$1$onComplete$1;->$stDownloadTable:Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 133
    .line 134
    iget-object v2, p0, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp$downloadListener$1$onComplete$1;->this$0:Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;

    .line 135
    .line 136
    check-cast v3, Lht/a;

    .line 137
    .line 138
    if-eqz v3, :cond_5

    .line 139
    .line 140
    invoke-virtual {v3, v1}, Lht/a;->h(Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V

    .line 141
    .line 142
    .line 143
    goto :goto_1

    .line 144
    :cond_5
    new-instance v3, Lht/a;

    .line 145
    .line 146
    invoke-direct {v3, v1}, Lht/a;-><init>(Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V

    .line 147
    .line 148
    .line 149
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    invoke-static {v2}, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;->s(Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;)Lcom/transsion/ugcvideodetail/hepler/subtitle/a;

    .line 153
    .line 154
    .line 155
    move-result-object v5

    .line 156
    if-eqz v5, :cond_6

    .line 157
    .line 158
    invoke-virtual {v5}, Lcom/transsion/ugcvideodetail/hepler/subtitle/a;->d()Landroidx/lifecycle/b0;

    .line 159
    .line 160
    .line 161
    move-result-object v5

    .line 162
    if-eqz v5, :cond_6

    .line 163
    .line 164
    invoke-virtual {v5, p1}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 165
    .line 166
    .line 167
    :cond_6
    invoke-static {v2}, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;->p(Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;)Lcom/avery/subtitle/widget/SimpleSubtitleView;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    invoke-virtual {v1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getPath()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v1

    .line 175
    invoke-static {v3}, Lcom/transsion/subtitle/helper/c;->b(Lht/a;)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v2

    .line 179
    invoke-virtual {p1, v1, v2}, Lcom/avery/subtitle/widget/SimpleSubtitleView;->setSubtitlePath(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    :goto_1
    iget-object p1, p0, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp$downloadListener$1$onComplete$1;->$stDownloadTable:Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 183
    .line 184
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    :cond_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 189
    .line 190
    .line 191
    move-result v2

    .line 192
    if-eqz v2, :cond_8

    .line 193
    .line 194
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object v2

    .line 198
    move-object v3, v2

    .line 199
    check-cast v3, Lht/a;

    .line 200
    .line 201
    invoke-virtual {v3}, Lht/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 202
    .line 203
    .line 204
    move-result-object v3

    .line 205
    invoke-virtual {v3}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getId()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v3

    .line 209
    invoke-virtual {p1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getId()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v5

    .line 213
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 214
    .line 215
    .line 216
    move-result v3

    .line 217
    if-eqz v3, :cond_7

    .line 218
    .line 219
    goto :goto_2

    .line 220
    :cond_8
    move-object v2, v4

    .line 221
    :goto_2
    check-cast v2, Lht/a;

    .line 222
    .line 223
    if-nez v2, :cond_9

    .line 224
    .line 225
    new-instance v2, Lht/a;

    .line 226
    .line 227
    iget-object p1, p0, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp$downloadListener$1$onComplete$1;->$stDownloadTable:Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 228
    .line 229
    invoke-direct {v2, p1}, Lht/a;-><init>(Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V

    .line 230
    .line 231
    .line 232
    :cond_9
    iget-object p1, p0, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp$downloadListener$1$onComplete$1;->$stDownloadTable:Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 233
    .line 234
    invoke-virtual {p1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->isAutoDownload()Z

    .line 235
    .line 236
    .line 237
    move-result p1

    .line 238
    const/4 v1, 0x1

    .line 239
    if-eqz p1, :cond_e

    .line 240
    .line 241
    sget-object p1, Lcom/transsion/subtitle_download/utils/d;->a:Lcom/transsion/subtitle_download/utils/d;

    .line 242
    .line 243
    invoke-virtual {p1}, Lcom/transsion/subtitle_download/utils/d;->b()Lcom/tencent/mmkv/MMKV;

    .line 244
    .line 245
    .line 246
    move-result-object p1

    .line 247
    const-string v3, "k_subtitle_select_lan"

    .line 248
    .line 249
    invoke-virtual {p1, v3, v4}, Lcom/tencent/mmkv/MMKV;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object p1

    .line 253
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 254
    .line 255
    .line 256
    move-result-object v0

    .line 257
    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 258
    .line 259
    .line 260
    move-result v3

    .line 261
    if-eqz v3, :cond_b

    .line 262
    .line 263
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 264
    .line 265
    .line 266
    move-result-object v3

    .line 267
    move-object v5, v3

    .line 268
    check-cast v5, Lht/a;

    .line 269
    .line 270
    invoke-virtual {v5}, Lht/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 271
    .line 272
    .line 273
    move-result-object v5

    .line 274
    invoke-virtual {v5}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getLan()Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v5

    .line 278
    invoke-static {v5, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 279
    .line 280
    .line 281
    move-result v5

    .line 282
    if-eqz v5, :cond_a

    .line 283
    .line 284
    move-object v4, v3

    .line 285
    :cond_b
    check-cast v4, Lht/a;

    .line 286
    .line 287
    if-eqz v4, :cond_d

    .line 288
    .line 289
    if-eqz p1, :cond_d

    .line 290
    .line 291
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 292
    .line 293
    .line 294
    move-result v0

    .line 295
    if-nez v0, :cond_c

    .line 296
    .line 297
    goto :goto_3

    .line 298
    :cond_c
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp$downloadListener$1$onComplete$1;->$stDownloadTable:Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 299
    .line 300
    invoke-virtual {v0}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getLan()Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object v0

    .line 304
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 305
    .line 306
    .line 307
    move-result p1

    .line 308
    if-eqz p1, :cond_f

    .line 309
    .line 310
    :cond_d
    :goto_3
    invoke-virtual {v2, v1}, Lht/a;->l(Z)V

    .line 311
    .line 312
    .line 313
    goto :goto_4

    .line 314
    :cond_e
    invoke-virtual {v2, v1}, Lht/a;->l(Z)V

    .line 315
    .line 316
    .line 317
    :cond_f
    :goto_4
    sget-object v3, Lwf/a;->a:Lwf/a$a;

    .line 318
    .line 319
    iget-object p1, p0, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp$downloadListener$1$onComplete$1;->this$0:Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;

    .line 320
    .line 321
    invoke-static {p1}, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;->q(Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;)Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object v4

    .line 325
    iget-object p1, p0, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp$downloadListener$1$onComplete$1;->$stDownloadTable:Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 326
    .line 327
    invoke-virtual {p1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getName()Ljava/lang/String;

    .line 328
    .line 329
    .line 330
    move-result-object p1

    .line 331
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp$downloadListener$1$onComplete$1;->$stDownloadTable:Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 332
    .line 333
    invoke-virtual {v0}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getLanName()Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object v0

    .line 337
    invoke-virtual {v2}, Lht/a;->f()Z

    .line 338
    .line 339
    .line 340
    move-result v1

    .line 341
    new-instance v5, Ljava/lang/StringBuilder;

    .line 342
    .line 343
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 344
    .line 345
    .line 346
    const-string v6, " onComplete() --> \u5b57\u5e55\u4e0b\u8f7d\u6210\u529f\uff1a"

    .line 347
    .line 348
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    .line 350
    .line 351
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    .line 353
    .line 354
    const-string p1, ","

    .line 355
    .line 356
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    .line 358
    .line 359
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    .line 361
    .line 362
    const-string p1, ", isSelect:"

    .line 363
    .line 364
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    .line 366
    .line 367
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 368
    .line 369
    .line 370
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 371
    .line 372
    .line 373
    move-result-object p1

    .line 374
    filled-new-array {p1}, [Ljava/lang/String;

    .line 375
    .line 376
    .line 377
    move-result-object v5

    .line 378
    const/4 v7, 0x4

    .line 379
    const/4 v8, 0x0

    .line 380
    const/4 v6, 0x0

    .line 381
    invoke-static/range {v3 .. v8}, Lwf/a$a;->r(Lwf/a$a;Ljava/lang/String;[Ljava/lang/String;ZILjava/lang/Object;)V

    .line 382
    .line 383
    .line 384
    iget-object p1, p0, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp$downloadListener$1$onComplete$1;->this$0:Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;

    .line 385
    .line 386
    invoke-static {p1}, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;->p(Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;)Lcom/avery/subtitle/widget/SimpleSubtitleView;

    .line 387
    .line 388
    .line 389
    move-result-object p1

    .line 390
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp$downloadListener$1$onComplete$1;->$stDownloadTable:Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 391
    .line 392
    invoke-virtual {v0}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getPath()Ljava/lang/String;

    .line 393
    .line 394
    .line 395
    move-result-object v0

    .line 396
    invoke-static {v2}, Lcom/transsion/subtitle/helper/c;->b(Lht/a;)Ljava/lang/String;

    .line 397
    .line 398
    .line 399
    move-result-object v1

    .line 400
    invoke-virtual {p1, v0, v1}, Lcom/avery/subtitle/widget/SimpleSubtitleView;->setSubtitlePath(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    .line 402
    .line 403
    invoke-virtual {v2}, Lht/a;->f()Z

    .line 404
    .line 405
    .line 406
    move-result p1

    .line 407
    if-eqz p1, :cond_10

    .line 408
    .line 409
    iget-object p1, p0, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp$downloadListener$1$onComplete$1;->this$0:Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;

    .line 410
    .line 411
    invoke-virtual {p1, v2}, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;->f(Lht/a;)V

    .line 412
    .line 413
    .line 414
    :cond_10
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 415
    .line 416
    return-object p1

    .line 417
    :cond_11
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 418
    .line 419
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 420
    .line 421
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 422
    .line 423
    .line 424
    throw p1
.end method
