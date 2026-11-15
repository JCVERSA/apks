.class final Lcom/transsion/videodetail/music/ui/MusicDetailFragment$saveDownloadHistory$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/videodetail/music/ui/MusicDetailFragment;->l2()V
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
    c = "com.transsion.videodetail.music.ui.MusicDetailFragment$saveDownloadHistory$1"
    f = "MusicDetailFragment.kt"
    l = {
        0x71d
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field final synthetic $progress:J

.field J$0:J

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/transsion/videodetail/music/ui/MusicDetailFragment;


# direct methods
.method constructor <init>(Lcom/transsion/videodetail/music/ui/MusicDetailFragment;JLkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/videodetail/music/ui/MusicDetailFragment;",
            "J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/videodetail/music/ui/MusicDetailFragment$saveDownloadHistory$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/videodetail/music/ui/MusicDetailFragment$saveDownloadHistory$1;->this$0:Lcom/transsion/videodetail/music/ui/MusicDetailFragment;

    .line 2
    .line 3
    iput-wide p2, p0, Lcom/transsion/videodetail/music/ui/MusicDetailFragment$saveDownloadHistory$1;->$progress:J

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 7
    .line 8
    .line 9
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
    new-instance p1, Lcom/transsion/videodetail/music/ui/MusicDetailFragment$saveDownloadHistory$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsion/videodetail/music/ui/MusicDetailFragment$saveDownloadHistory$1;->this$0:Lcom/transsion/videodetail/music/ui/MusicDetailFragment;

    .line 4
    .line 5
    iget-wide v1, p0, Lcom/transsion/videodetail/music/ui/MusicDetailFragment$saveDownloadHistory$1;->$progress:J

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, v2, p2}, Lcom/transsion/videodetail/music/ui/MusicDetailFragment$saveDownloadHistory$1;-><init>(Lcom/transsion/videodetail/music/ui/MusicDetailFragment;JLkotlin/coroutines/Continuation;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/videodetail/music/ui/MusicDetailFragment$saveDownloadHistory$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/videodetail/music/ui/MusicDetailFragment$saveDownloadHistory$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/videodetail/music/ui/MusicDetailFragment$saveDownloadHistory$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/videodetail/music/ui/MusicDetailFragment$saveDownloadHistory$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

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
    iget v2, v0, Lcom/transsion/videodetail/music/ui/MusicDetailFragment$saveDownloadHistory$1;->label:I

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    if-eqz v2, :cond_1

    .line 11
    .line 12
    if-ne v2, v3, :cond_0

    .line 13
    .line 14
    iget-wide v1, v0, Lcom/transsion/videodetail/music/ui/MusicDetailFragment$saveDownloadHistory$1;->J$0:J

    .line 15
    .line 16
    iget-object v4, v0, Lcom/transsion/videodetail/music/ui/MusicDetailFragment$saveDownloadHistory$1;->L$1:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v4, Ljava/lang/String;

    .line 19
    .line 20
    iget-object v5, v0, Lcom/transsion/videodetail/music/ui/MusicDetailFragment$saveDownloadHistory$1;->L$0:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v5, Lcom/transsion/videodetail/music/ui/MusicDetailFragment;

    .line 23
    .line 24
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    move-wide v10, v1

    .line 28
    move-object v9, v4

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 31
    .line 32
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 33
    .line 34
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw v1

    .line 38
    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    iget-object v2, v0, Lcom/transsion/videodetail/music/ui/MusicDetailFragment$saveDownloadHistory$1;->this$0:Lcom/transsion/videodetail/music/ui/MusicDetailFragment;

    .line 42
    .line 43
    invoke-static {v2}, Lcom/transsion/videodetail/music/ui/MusicDetailFragment;->P0(Lcom/transsion/videodetail/music/ui/MusicDetailFragment;)Lcom/transsion/baselib/db/download/DownloadBean;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    if-eqz v2, :cond_5

    .line 48
    .line 49
    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    if-eqz v4, :cond_5

    .line 54
    .line 55
    iget-wide v5, v0, Lcom/transsion/videodetail/music/ui/MusicDetailFragment$saveDownloadHistory$1;->$progress:J

    .line 56
    .line 57
    iget-object v2, v0, Lcom/transsion/videodetail/music/ui/MusicDetailFragment$saveDownloadHistory$1;->this$0:Lcom/transsion/videodetail/music/ui/MusicDetailFragment;

    .line 58
    .line 59
    sget-object v7, Lcom/transsnet/downloader/manager/DownloadEsHelper;->m:Lcom/transsnet/downloader/manager/DownloadEsHelper$a;

    .line 60
    .line 61
    invoke-virtual {v7}, Lcom/transsnet/downloader/manager/DownloadEsHelper$a;->a()Lcom/transsnet/downloader/manager/DownloadEsHelper;

    .line 62
    .line 63
    .line 64
    move-result-object v7

    .line 65
    iput-object v2, v0, Lcom/transsion/videodetail/music/ui/MusicDetailFragment$saveDownloadHistory$1;->L$0:Ljava/lang/Object;

    .line 66
    .line 67
    iput-object v4, v0, Lcom/transsion/videodetail/music/ui/MusicDetailFragment$saveDownloadHistory$1;->L$1:Ljava/lang/Object;

    .line 68
    .line 69
    iput-wide v5, v0, Lcom/transsion/videodetail/music/ui/MusicDetailFragment$saveDownloadHistory$1;->J$0:J

    .line 70
    .line 71
    iput v3, v0, Lcom/transsion/videodetail/music/ui/MusicDetailFragment$saveDownloadHistory$1;->label:I

    .line 72
    .line 73
    invoke-virtual {v7, v4, v5, v6, v0}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->e0(Ljava/lang/String;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v7

    .line 77
    if-ne v7, v1, :cond_2

    .line 78
    .line 79
    return-object v1

    .line 80
    :cond_2
    move-object v9, v4

    .line 81
    move-wide v10, v5

    .line 82
    move-object v5, v2

    .line 83
    :goto_0
    new-instance v1, Lcom/transsnet/flow/event/sync/event/LocalVideoEvent;

    .line 84
    .line 85
    invoke-static {v5}, Lcom/transsion/videodetail/music/ui/MusicDetailFragment;->P0(Lcom/transsion/videodetail/music/ui/MusicDetailFragment;)Lcom/transsion/baselib/db/download/DownloadBean;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    const-wide/16 v6, 0x0

    .line 90
    .line 91
    if-eqz v2, :cond_3

    .line 92
    .line 93
    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadBean;->getDuration()Ljava/lang/Long;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    if-eqz v2, :cond_3

    .line 98
    .line 99
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 100
    .line 101
    .line 102
    move-result-wide v12

    .line 103
    goto :goto_1

    .line 104
    :cond_3
    move-wide v12, v6

    .line 105
    :goto_1
    const/16 v16, 0x10

    .line 106
    .line 107
    const/16 v17, 0x0

    .line 108
    .line 109
    const/4 v14, 0x0

    .line 110
    const/4 v15, 0x0

    .line 111
    move-object v8, v1

    .line 112
    invoke-direct/range {v8 .. v17}, Lcom/transsnet/flow/event/sync/event/LocalVideoEvent;-><init>(Ljava/lang/String;JJZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 113
    .line 114
    .line 115
    sget-object v2, Lcom/transsnet/flow/event/AppScopeVMlProvider;->INSTANCE:Lcom/transsnet/flow/event/AppScopeVMlProvider;

    .line 116
    .line 117
    const-class v4, Lcom/transsnet/flow/event/FlowEventBus;

    .line 118
    .line 119
    invoke-virtual {v2, v4}, Lcom/transsnet/flow/event/AppScopeVMlProvider;->getApplicationScopeViewModel(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    .line 120
    .line 121
    .line 122
    move-result-object v8

    .line 123
    check-cast v8, Lcom/transsnet/flow/event/FlowEventBus;

    .line 124
    .line 125
    const-class v9, Lcom/transsnet/flow/event/sync/event/LocalVideoEvent;

    .line 126
    .line 127
    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v9

    .line 131
    const-string v10, "getName(...)"

    .line 132
    .line 133
    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v8, v9, v1, v6, v7}, Lcom/transsnet/flow/event/FlowEventBus;->postEvent(Ljava/lang/String;Ljava/lang/Object;J)V

    .line 137
    .line 138
    .line 139
    new-instance v1, Lyw/e;

    .line 140
    .line 141
    invoke-static {v5}, Lcom/transsion/videodetail/music/ui/MusicDetailFragment;->P0(Lcom/transsion/videodetail/music/ui/MusicDetailFragment;)Lcom/transsion/baselib/db/download/DownloadBean;

    .line 142
    .line 143
    .line 144
    move-result-object v5

    .line 145
    const/4 v8, 0x0

    .line 146
    if-eqz v5, :cond_4

    .line 147
    .line 148
    invoke-virtual {v5}, Lcom/transsion/baselib/db/download/DownloadBean;->isOutside()Z

    .line 149
    .line 150
    .line 151
    move-result v5

    .line 152
    if-ne v5, v3, :cond_4

    .line 153
    .line 154
    move v8, v3

    .line 155
    :cond_4
    invoke-direct {v1, v3, v8}, Lyw/e;-><init>(ZZ)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v2, v4}, Lcom/transsnet/flow/event/AppScopeVMlProvider;->getApplicationScopeViewModel(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    .line 159
    .line 160
    .line 161
    move-result-object v2

    .line 162
    check-cast v2, Lcom/transsnet/flow/event/FlowEventBus;

    .line 163
    .line 164
    const-class v3, Lyw/e;

    .line 165
    .line 166
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v3

    .line 170
    invoke-static {v3, v10}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v2, v3, v1, v6, v7}, Lcom/transsnet/flow/event/FlowEventBus;->postEvent(Ljava/lang/String;Ljava/lang/Object;J)V

    .line 174
    .line 175
    .line 176
    :cond_5
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 177
    .line 178
    return-object v1
.end method
