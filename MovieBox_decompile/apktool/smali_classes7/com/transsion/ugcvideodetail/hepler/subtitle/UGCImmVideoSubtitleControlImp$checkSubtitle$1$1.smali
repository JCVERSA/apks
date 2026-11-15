.class final Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp$checkSubtitle$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp$checkSubtitle$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.transsion.ugcvideodetail.hepler.subtitle.UGCImmVideoSubtitleControlImp$checkSubtitle$1$1"
    f = "UGCImmVideoSubtitleControlImp.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $history:Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;

.field final synthetic $list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lht/a;",
            ">;"
        }
    .end annotation
.end field

.field label:I

.field final synthetic this$0:Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;


# direct methods
.method constructor <init>(Ljava/util/List;Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lht/a;",
            ">;",
            "Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;",
            "Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp$checkSubtitle$1$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp$checkSubtitle$1$1;->$list:Ljava/util/List;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp$checkSubtitle$1$1;->this$0:Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp$checkSubtitle$1$1;->$history:Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;

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
    new-instance p1, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp$checkSubtitle$1$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp$checkSubtitle$1$1;->$list:Ljava/util/List;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp$checkSubtitle$1$1;->this$0:Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp$checkSubtitle$1$1;->$history:Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;

    .line 8
    .line 9
    invoke-direct {p1, v0, v1, v2, p2}, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp$checkSubtitle$1$1;-><init>(Ljava/util/List;Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;Lkotlin/coroutines/Continuation;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp$checkSubtitle$1$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp$checkSubtitle$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp$checkSubtitle$1$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp$checkSubtitle$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 96

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    iget v1, v0, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp$checkSubtitle$1$1;->label:I

    .line 7
    .line 8
    if-nez v1, :cond_15

    .line 9
    .line 10
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    iget-object v1, v0, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp$checkSubtitle$1$1;->$list:Ljava/util/List;

    .line 14
    .line 15
    check-cast v1, Ljava/util/Collection;

    .line 16
    .line 17
    const/4 v2, 0x2

    .line 18
    const/4 v3, 0x0

    .line 19
    if-eqz v1, :cond_5

    .line 20
    .line 21
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_0
    iget-object v1, v0, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp$checkSubtitle$1$1;->this$0:Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;

    .line 29
    .line 30
    invoke-static {v1}, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;->s(Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;)Lcom/transsion/ugcvideodetail/hepler/subtitle/a;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    invoke-virtual {v1}, Lcom/transsion/ugcvideodetail/hepler/subtitle/a;->d()Landroidx/lifecycle/b0;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    if-eqz v1, :cond_1

    .line 41
    .line 42
    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    check-cast v1, Ljava/util/List;

    .line 47
    .line 48
    if-nez v1, :cond_2

    .line 49
    .line 50
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    .line 51
    .line 52
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 53
    .line 54
    .line 55
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 56
    .line 57
    .line 58
    iget-object v4, v0, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp$checkSubtitle$1$1;->$list:Ljava/util/List;

    .line 59
    .line 60
    check-cast v4, Ljava/util/Collection;

    .line 61
    .line 62
    invoke-interface {v1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 63
    .line 64
    .line 65
    sget-object v4, Lwf/a;->a:Lwf/a$a;

    .line 66
    .line 67
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 68
    .line 69
    .line 70
    move-result v5

    .line 71
    new-instance v6, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .line 75
    .line 76
    const-string v7, "checkSubtitle setList, size:"

    .line 77
    .line 78
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v5

    .line 88
    const/4 v6, 0x0

    .line 89
    invoke-static {v4, v5, v6, v2, v3}, Lwf/a$a;->g(Lwf/a$a;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    iget-object v4, v0, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp$checkSubtitle$1$1;->this$0:Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;

    .line 93
    .line 94
    invoke-static {v4}, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;->s(Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;)Lcom/transsion/ugcvideodetail/hepler/subtitle/a;

    .line 95
    .line 96
    .line 97
    move-result-object v4

    .line 98
    if-eqz v4, :cond_3

    .line 99
    .line 100
    invoke-virtual {v4}, Lcom/transsion/ugcvideodetail/hepler/subtitle/a;->d()Landroidx/lifecycle/b0;

    .line 101
    .line 102
    .line 103
    move-result-object v4

    .line 104
    if-eqz v4, :cond_3

    .line 105
    .line 106
    invoke-virtual {v4, v1}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    :cond_3
    iget-object v4, v0, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp$checkSubtitle$1$1;->this$0:Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;

    .line 110
    .line 111
    iget-object v5, v0, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp$checkSubtitle$1$1;->$history:Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;

    .line 112
    .line 113
    if-eqz v5, :cond_4

    .line 114
    .line 115
    invoke-virtual {v5}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->getSubtitleSelectId()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v5

    .line 119
    goto :goto_0

    .line 120
    :cond_4
    move-object v5, v3

    .line 121
    :goto_0
    invoke-static {v4, v1, v5}, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;->t(Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;Ljava/util/List;Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    :cond_5
    :goto_1
    sget-object v1, Lyg/l;->a:Lyg/l;

    .line 125
    .line 126
    invoke-virtual {v1}, Lyg/l;->e()Z

    .line 127
    .line 128
    .line 129
    move-result v1

    .line 130
    if-eqz v1, :cond_14

    .line 131
    .line 132
    iget-object v1, v0, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp$checkSubtitle$1$1;->this$0:Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;

    .line 133
    .line 134
    invoke-static {v1}, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;->o(Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;)Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayStream;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    if-eqz v1, :cond_7

    .line 139
    .line 140
    invoke-virtual {v1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayStream;->getUrl()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    if-nez v1, :cond_6

    .line 145
    .line 146
    goto :goto_3

    .line 147
    :cond_6
    :goto_2
    move-object v5, v1

    .line 148
    goto :goto_4

    .line 149
    :cond_7
    :goto_3
    const-string v1, ""

    .line 150
    .line 151
    goto :goto_2

    .line 152
    :goto_4
    iget-object v1, v0, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp$checkSubtitle$1$1;->this$0:Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;

    .line 153
    .line 154
    invoke-static {v1}, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;->o(Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;)Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayStream;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    if-eqz v1, :cond_8

    .line 159
    .line 160
    invoke-virtual {v1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayStream;->getId()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    move-object v6, v1

    .line 165
    goto :goto_5

    .line 166
    :cond_8
    move-object v6, v3

    .line 167
    :goto_5
    iget-object v1, v0, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp$checkSubtitle$1$1;->this$0:Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;

    .line 168
    .line 169
    invoke-static {v1}, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;->r(Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;)Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;

    .line 170
    .line 171
    .line 172
    move-result-object v1

    .line 173
    if-eqz v1, :cond_9

    .line 174
    .line 175
    invoke-virtual {v1}, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;->getUgcVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 176
    .line 177
    .line 178
    move-result-object v1

    .line 179
    if-eqz v1, :cond_9

    .line 180
    .line 181
    invoke-virtual {v1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getBelongToCollection()Lcom/transsion/ugcvideodetail/api/bean/UGCVideoBelongToCollection;

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    if-eqz v1, :cond_9

    .line 186
    .line 187
    invoke-virtual {v1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoBelongToCollection;->getCollectionName()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v1

    .line 191
    move-object v7, v1

    .line 192
    goto :goto_6

    .line 193
    :cond_9
    move-object v7, v3

    .line 194
    :goto_6
    iget-object v1, v0, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp$checkSubtitle$1$1;->this$0:Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;

    .line 195
    .line 196
    invoke-static {v1}, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;->o(Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;)Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayStream;

    .line 197
    .line 198
    .line 199
    move-result-object v1

    .line 200
    if-eqz v1, :cond_a

    .line 201
    .line 202
    invoke-virtual {v1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayStream;->getSize()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v1

    .line 206
    if-eqz v1, :cond_a

    .line 207
    .line 208
    invoke-static {v1}, Lkotlin/text/StringsKt;->x(Ljava/lang/String;)Ljava/lang/Long;

    .line 209
    .line 210
    .line 211
    move-result-object v1

    .line 212
    move-object v9, v1

    .line 213
    goto :goto_7

    .line 214
    :cond_a
    move-object v9, v3

    .line 215
    :goto_7
    iget-object v1, v0, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp$checkSubtitle$1$1;->this$0:Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;

    .line 216
    .line 217
    invoke-static {v1}, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;->r(Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;)Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;

    .line 218
    .line 219
    .line 220
    move-result-object v1

    .line 221
    if-eqz v1, :cond_b

    .line 222
    .line 223
    invoke-virtual {v1}, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;->getUgcVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 224
    .line 225
    .line 226
    move-result-object v1

    .line 227
    if-eqz v1, :cond_b

    .line 228
    .line 229
    invoke-virtual {v1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getBelongToCollection()Lcom/transsion/ugcvideodetail/api/bean/UGCVideoBelongToCollection;

    .line 230
    .line 231
    .line 232
    move-result-object v1

    .line 233
    if-eqz v1, :cond_b

    .line 234
    .line 235
    invoke-virtual {v1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoBelongToCollection;->getCollectionName()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v1

    .line 239
    move-object/from16 v38, v1

    .line 240
    .line 241
    goto :goto_8

    .line 242
    :cond_b
    move-object/from16 v38, v3

    .line 243
    .line 244
    :goto_8
    iget-object v1, v0, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp$checkSubtitle$1$1;->this$0:Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;

    .line 245
    .line 246
    invoke-static {v1}, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;->n(Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;)Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v36

    .line 250
    iget-object v1, v0, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp$checkSubtitle$1$1;->this$0:Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;

    .line 251
    .line 252
    invoke-static {v1}, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;->o(Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;)Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayStream;

    .line 253
    .line 254
    .line 255
    move-result-object v1

    .line 256
    if-eqz v1, :cond_c

    .line 257
    .line 258
    invoke-virtual {v1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayStream;->getIdType()Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v1

    .line 262
    move-object/from16 v74, v1

    .line 263
    .line 264
    goto :goto_9

    .line 265
    :cond_c
    move-object/from16 v74, v3

    .line 266
    .line 267
    :goto_9
    iget-object v1, v0, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp$checkSubtitle$1$1;->this$0:Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;

    .line 268
    .line 269
    invoke-static {v1}, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;->r(Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;)Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;

    .line 270
    .line 271
    .line 272
    move-result-object v1

    .line 273
    if-eqz v1, :cond_d

    .line 274
    .line 275
    invoke-virtual {v1}, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;->getUgcVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 276
    .line 277
    .line 278
    move-result-object v1

    .line 279
    if-eqz v1, :cond_d

    .line 280
    .line 281
    invoke-virtual {v1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getUgcVideoId()Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v1

    .line 285
    move-object/from16 v76, v1

    .line 286
    .line 287
    goto :goto_a

    .line 288
    :cond_d
    move-object/from16 v76, v3

    .line 289
    .line 290
    :goto_a
    iget-object v1, v0, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp$checkSubtitle$1$1;->this$0:Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;

    .line 291
    .line 292
    invoke-static {v1}, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;->r(Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;)Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;

    .line 293
    .line 294
    .line 295
    move-result-object v1

    .line 296
    if-eqz v1, :cond_e

    .line 297
    .line 298
    invoke-virtual {v1}, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;->getUgcVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 299
    .line 300
    .line 301
    move-result-object v1

    .line 302
    if-eqz v1, :cond_e

    .line 303
    .line 304
    invoke-virtual {v1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->videoUGCPosition()I

    .line 305
    .line 306
    .line 307
    move-result v1

    .line 308
    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    .line 309
    .line 310
    .line 311
    move-result-object v1

    .line 312
    move-object/from16 v79, v1

    .line 313
    .line 314
    goto :goto_b

    .line 315
    :cond_e
    move-object/from16 v79, v3

    .line 316
    .line 317
    :goto_b
    iget-object v1, v0, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp$checkSubtitle$1$1;->this$0:Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;

    .line 318
    .line 319
    invoke-static {v1}, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;->r(Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;)Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;

    .line 320
    .line 321
    .line 322
    move-result-object v1

    .line 323
    if-eqz v1, :cond_f

    .line 324
    .line 325
    invoke-virtual {v1}, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;->getUgcVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 326
    .line 327
    .line 328
    move-result-object v1

    .line 329
    if-eqz v1, :cond_f

    .line 330
    .line 331
    invoke-virtual {v1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getBelongToCollection()Lcom/transsion/ugcvideodetail/api/bean/UGCVideoBelongToCollection;

    .line 332
    .line 333
    .line 334
    move-result-object v1

    .line 335
    if-eqz v1, :cond_f

    .line 336
    .line 337
    invoke-virtual {v1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoBelongToCollection;->getCollectionId()Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object v1

    .line 341
    move-object/from16 v75, v1

    .line 342
    .line 343
    goto :goto_c

    .line 344
    :cond_f
    move-object/from16 v75, v3

    .line 345
    .line 346
    :goto_c
    iget-object v1, v0, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp$checkSubtitle$1$1;->this$0:Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;

    .line 347
    .line 348
    invoke-static {v1}, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;->r(Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;)Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;

    .line 349
    .line 350
    .line 351
    move-result-object v1

    .line 352
    if-eqz v1, :cond_10

    .line 353
    .line 354
    invoke-virtual {v1}, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;->getUgcVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 355
    .line 356
    .line 357
    move-result-object v1

    .line 358
    if-eqz v1, :cond_10

    .line 359
    .line 360
    invoke-virtual {v1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getTitle()Ljava/lang/String;

    .line 361
    .line 362
    .line 363
    move-result-object v1

    .line 364
    move-object/from16 v77, v1

    .line 365
    .line 366
    goto :goto_d

    .line 367
    :cond_10
    move-object/from16 v77, v3

    .line 368
    .line 369
    :goto_d
    iget-object v1, v0, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp$checkSubtitle$1$1;->this$0:Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;

    .line 370
    .line 371
    invoke-static {v1}, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;->r(Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;)Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;

    .line 372
    .line 373
    .line 374
    move-result-object v1

    .line 375
    if-eqz v1, :cond_11

    .line 376
    .line 377
    invoke-virtual {v1}, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;->getUgcVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 378
    .line 379
    .line 380
    move-result-object v1

    .line 381
    if-eqz v1, :cond_11

    .line 382
    .line 383
    invoke-virtual {v1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getBelongToCollection()Lcom/transsion/ugcvideodetail/api/bean/UGCVideoBelongToCollection;

    .line 384
    .line 385
    .line 386
    move-result-object v1

    .line 387
    if-eqz v1, :cond_11

    .line 388
    .line 389
    invoke-virtual {v1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoBelongToCollection;->getCollectionName()Ljava/lang/String;

    .line 390
    .line 391
    .line 392
    move-result-object v1

    .line 393
    move-object/from16 v78, v1

    .line 394
    .line 395
    goto :goto_e

    .line 396
    :cond_11
    move-object/from16 v78, v3

    .line 397
    .line 398
    :goto_e
    iget-object v1, v0, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp$checkSubtitle$1$1;->this$0:Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;

    .line 399
    .line 400
    invoke-static {v1}, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;->r(Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;)Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;

    .line 401
    .line 402
    .line 403
    move-result-object v1

    .line 404
    if-eqz v1, :cond_12

    .line 405
    .line 406
    invoke-virtual {v1}, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;->getUgcVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 407
    .line 408
    .line 409
    move-result-object v1

    .line 410
    if-eqz v1, :cond_12

    .line 411
    .line 412
    invoke-virtual {v1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getCategory()Ljava/lang/String;

    .line 413
    .line 414
    .line 415
    move-result-object v1

    .line 416
    move-object/from16 v80, v1

    .line 417
    .line 418
    goto :goto_f

    .line 419
    :cond_12
    move-object/from16 v80, v3

    .line 420
    .line 421
    :goto_f
    iget-object v1, v0, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp$checkSubtitle$1$1;->this$0:Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;

    .line 422
    .line 423
    invoke-static {v1}, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;->r(Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;)Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;

    .line 424
    .line 425
    .line 426
    move-result-object v1

    .line 427
    if-eqz v1, :cond_13

    .line 428
    .line 429
    invoke-virtual {v1}, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;->getUgcVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 430
    .line 431
    .line 432
    move-result-object v1

    .line 433
    if-eqz v1, :cond_13

    .line 434
    .line 435
    invoke-virtual {v1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getOps()Ljava/lang/String;

    .line 436
    .line 437
    .line 438
    move-result-object v1

    .line 439
    move-object/from16 v65, v1

    .line 440
    .line 441
    goto :goto_10

    .line 442
    :cond_13
    move-object/from16 v65, v3

    .line 443
    .line 444
    :goto_10
    new-instance v1, Lcom/transsion/baselib/db/download/DownloadBean;

    .line 445
    .line 446
    move-object v4, v1

    .line 447
    const v94, 0xffe0

    .line 448
    .line 449
    .line 450
    const/16 v95, 0x0

    .line 451
    .line 452
    const/4 v10, 0x0

    .line 453
    const/4 v11, 0x0

    .line 454
    const/4 v12, 0x0

    .line 455
    const/4 v13, 0x0

    .line 456
    const/4 v14, 0x0

    .line 457
    const-wide/16 v15, 0x0

    .line 458
    .line 459
    const/16 v17, 0x0

    .line 460
    .line 461
    const/16 v18, 0x0

    .line 462
    .line 463
    const/16 v19, 0x0

    .line 464
    .line 465
    const-wide/16 v20, 0x0

    .line 466
    .line 467
    const-wide/16 v22, 0x0

    .line 468
    .line 469
    const/16 v24, 0x0

    .line 470
    .line 471
    const/16 v25, 0x0

    .line 472
    .line 473
    const/16 v26, 0x0

    .line 474
    .line 475
    const/16 v27, 0x0

    .line 476
    .line 477
    const/16 v28, 0x0

    .line 478
    .line 479
    const/16 v29, 0x0

    .line 480
    .line 481
    const/16 v30, 0x0

    .line 482
    .line 483
    const/16 v31, 0x0

    .line 484
    .line 485
    const/16 v32, 0x0

    .line 486
    .line 487
    const/16 v33, 0x0

    .line 488
    .line 489
    const/16 v34, 0x0

    .line 490
    .line 491
    const/16 v37, 0x0

    .line 492
    .line 493
    const-wide/16 v39, 0x0

    .line 494
    .line 495
    const/16 v41, 0x0

    .line 496
    .line 497
    const/16 v42, 0x0

    .line 498
    .line 499
    const/16 v43, 0x0

    .line 500
    .line 501
    const/16 v44, 0x0

    .line 502
    .line 503
    const-wide/16 v45, 0x0

    .line 504
    .line 505
    const/16 v47, 0x0

    .line 506
    .line 507
    const/16 v48, 0x0

    .line 508
    .line 509
    const-wide/16 v49, 0x0

    .line 510
    .line 511
    const/16 v51, 0x0

    .line 512
    .line 513
    const-wide/16 v52, 0x0

    .line 514
    .line 515
    const/16 v54, 0x0

    .line 516
    .line 517
    const/16 v55, 0x0

    .line 518
    .line 519
    const/16 v56, 0x0

    .line 520
    .line 521
    const/16 v57, 0x0

    .line 522
    .line 523
    const/16 v58, 0x0

    .line 524
    .line 525
    const/16 v59, 0x0

    .line 526
    .line 527
    const/16 v60, 0x0

    .line 528
    .line 529
    const/16 v61, 0x0

    .line 530
    .line 531
    const/16 v62, 0x0

    .line 532
    .line 533
    const/16 v63, 0x0

    .line 534
    .line 535
    const/16 v64, 0x0

    .line 536
    .line 537
    const/16 v66, 0x0

    .line 538
    .line 539
    const/16 v67, 0x0

    .line 540
    .line 541
    const/16 v68, 0x0

    .line 542
    .line 543
    const/16 v69, 0x0

    .line 544
    .line 545
    const/16 v70, 0x0

    .line 546
    .line 547
    const/16 v71, 0x0

    .line 548
    .line 549
    const/16 v72, 0x0

    .line 550
    .line 551
    const/16 v73, 0x0

    .line 552
    .line 553
    const/16 v81, 0x0

    .line 554
    .line 555
    const/16 v82, 0x0

    .line 556
    .line 557
    const/16 v83, 0x0

    .line 558
    .line 559
    const/16 v84, 0x0

    .line 560
    .line 561
    const/16 v85, 0x0

    .line 562
    .line 563
    const/16 v86, 0x0

    .line 564
    .line 565
    const/16 v87, 0x0

    .line 566
    .line 567
    const/16 v88, 0x0

    .line 568
    .line 569
    const/16 v89, 0x0

    .line 570
    .line 571
    const/16 v90, 0x0

    .line 572
    .line 573
    const/16 v91, 0x0

    .line 574
    .line 575
    const v92, -0x580c0020

    .line 576
    .line 577
    .line 578
    const v93, 0x3fdfffff    # 1.7499999f

    .line 579
    .line 580
    .line 581
    const-string v8, ""

    .line 582
    .line 583
    const-string v35, ""

    .line 584
    .line 585
    invoke-direct/range {v4 .. v95}, Lcom/transsion/baselib/db/download/DownloadBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;JIIIJJIIIIIIIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIILjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JIJLjava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZILjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 586
    .line 587
    .line 588
    sget-object v4, Lcom/transsion/ugcvideodetail/hepler/subtitle/manager/b;->a:Lcom/transsion/ugcvideodetail/hepler/subtitle/manager/b$a;

    .line 589
    .line 590
    invoke-virtual {v4}, Lcom/transsion/ugcvideodetail/hepler/subtitle/manager/b$a;->b()Lcom/transsion/ugcvideodetail/hepler/subtitle/manager/b;

    .line 591
    .line 592
    .line 593
    move-result-object v4

    .line 594
    invoke-static {v4, v1, v3, v2, v3}, Lcom/transsion/ugcvideodetail/hepler/subtitle/manager/b$b;->a(Lcom/transsion/ugcvideodetail/hepler/subtitle/manager/b;Lcom/transsion/baselib/db/download/DownloadBean;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 595
    .line 596
    .line 597
    :cond_14
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 598
    .line 599
    return-object v1

    .line 600
    :cond_15
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 601
    .line 602
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 603
    .line 604
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 605
    .line 606
    .line 607
    throw v1
.end method
