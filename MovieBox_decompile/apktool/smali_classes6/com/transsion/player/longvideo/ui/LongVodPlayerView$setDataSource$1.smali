.class final Lcom/transsion/player/longvideo/ui/LongVodPlayerView$setDataSource$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->setDataSource(Lln/a;)V
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
    c = "com.transsion.player.longvideo.ui.LongVodPlayerView$setDataSource$1"
    f = "LongVodPlayerView.kt"
    l = {
        0x900
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $bean:Lln/a;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;


# direct methods
.method constructor <init>(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;Lln/a;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/player/longvideo/ui/LongVodPlayerView;",
            "Lln/a;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/player/longvideo/ui/LongVodPlayerView$setDataSource$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$setDataSource$1;->this$0:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$setDataSource$1;->$bean:Lln/a;

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
    new-instance v0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$setDataSource$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$setDataSource$1;->this$0:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$setDataSource$1;->$bean:Lln/a;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2, p2}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$setDataSource$1;-><init>(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;Lln/a;Lkotlin/coroutines/Continuation;)V

    .line 8
    .line 9
    .line 10
    iput-object p1, v0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$setDataSource$1;->L$0:Ljava/lang/Object;

    .line 11
    .line 12
    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$setDataSource$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$setDataSource$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$setDataSource$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$setDataSource$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$setDataSource$1;->label:I

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    if-ne v1, v2, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$setDataSource$1;->L$0:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v0, Lkotlinx/coroutines/n0;

    .line 15
    .line 16
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 21
    .line 22
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 23
    .line 24
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw p1

    .line 28
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$setDataSource$1;->L$0:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast p1, Lkotlinx/coroutines/n0;

    .line 34
    .line 35
    iget-object v1, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$setDataSource$1;->this$0:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 36
    .line 37
    invoke-static {v1}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getResolutionHelper$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Lcom/transsion/player/longvideo/helper/LongVodResolutionHelper;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    iget-object v3, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$setDataSource$1;->$bean:Lln/a;

    .line 42
    .line 43
    iput-object p1, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$setDataSource$1;->L$0:Ljava/lang/Object;

    .line 44
    .line 45
    iput v2, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$setDataSource$1;->label:I

    .line 46
    .line 47
    invoke-virtual {v1, v3, p0}, Lcom/transsion/player/longvideo/helper/LongVodResolutionHelper;->b(Lln/a;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    if-ne p1, v0, :cond_2

    .line 52
    .line 53
    return-object v0

    .line 54
    :cond_2
    :goto_0
    check-cast p1, Lln/c;

    .line 55
    .line 56
    const/4 v0, 0x0

    .line 57
    if-eqz p1, :cond_7

    .line 58
    .line 59
    iget-object v1, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$setDataSource$1;->this$0:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 60
    .line 61
    iget-object v3, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$setDataSource$1;->$bean:Lln/a;

    .line 62
    .line 63
    invoke-static {v1}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$isNewPlayer$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Z

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    invoke-static {v1, v4}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$showVideoLoading(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;Z)V

    .line 68
    .line 69
    .line 70
    invoke-static {v1}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getSubtitleHelper$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    if-eqz v4, :cond_3

    .line 75
    .line 76
    invoke-virtual {v4, v3, p1}, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->T(Lln/a;Lln/c;)V

    .line 77
    .line 78
    .line 79
    :cond_3
    invoke-virtual {v3}, Lln/a;->w()Z

    .line 80
    .line 81
    .line 82
    move-result v4

    .line 83
    if-eqz v4, :cond_4

    .line 84
    .line 85
    invoke-static {v1, v3, p1}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$initMp4Resolution(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;Lln/a;Lln/c;)V

    .line 86
    .line 87
    .line 88
    :cond_4
    invoke-static {v1, p1}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$setCurPlayStream$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;Lln/c;)V

    .line 89
    .line 90
    .line 91
    invoke-static {v1, v3, p1}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$reportSetData(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;Lln/a;Lln/c;)V

    .line 92
    .line 93
    .line 94
    invoke-static {v1}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$isNewPlayer$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Z

    .line 95
    .line 96
    .line 97
    move-result v3

    .line 98
    if-eqz v3, :cond_5

    .line 99
    .line 100
    invoke-static {v1, p1}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$setPlayerDataSourceAdPrepare(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;Lln/c;)V

    .line 101
    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_5
    invoke-static {v1, v2}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$setPauseViewStatus(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;Z)V

    .line 105
    .line 106
    .line 107
    invoke-static {v1}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getPlayerControl$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Lcom/transsion/player/ui/longvideo/a;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    invoke-interface {p1}, Lcom/transsion/player/orplayer/f;->play()V

    .line 112
    .line 113
    .line 114
    invoke-static {v1}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getSubtitleHelper$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    if-eqz p1, :cond_6

    .line 119
    .line 120
    invoke-virtual {p1, v2}, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->e0(Z)V

    .line 121
    .line 122
    .line 123
    :cond_6
    :goto_1
    const-string p1, "getDefaultPlayStream() --> \u83b7\u53d6\u5230\u53ef\u7528\u5206\u8fa8\u7387\uff0c\u9690\u85cf\u63d0\u793a"

    .line 124
    .line 125
    invoke-static {v1, v0, p1}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$showNoResolutionTip(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;ZLjava/lang/String;)V

    .line 126
    .line 127
    .line 128
    sget-object v3, Lwf/a;->a:Lwf/a$a;

    .line 129
    .line 130
    const/4 v7, 0x4

    .line 131
    const/4 v8, 0x0

    .line 132
    const-string v4, "LongVodPlayerView"

    .line 133
    .line 134
    const-string v5, "setDataSource, reset isNewPlayer"

    .line 135
    .line 136
    const/4 v6, 0x0

    .line 137
    invoke-static/range {v3 .. v8}, Lwf/a$a;->v(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 138
    .line 139
    .line 140
    invoke-static {v1, v2}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$setNewPlayer$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;Z)V

    .line 141
    .line 142
    .line 143
    goto :goto_2

    .line 144
    :cond_7
    iget-object p1, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$setDataSource$1;->this$0:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 145
    .line 146
    invoke-static {p1, v0}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$setCanNonSubscriberPlay$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;Z)V

    .line 147
    .line 148
    .line 149
    const-string v0, "getDefaultPlayStream() --> \u6ca1\u6709\u83b7\u53d6\u5230\u53ef\u7528\u5206\u8fa8\u7387\uff0c\u663e\u793a\u63d0\u793a"

    .line 150
    .line 151
    invoke-static {p1, v2, v0}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$showNoResolutionTip(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;ZLjava/lang/String;)V

    .line 152
    .line 153
    .line 154
    :goto_2
    sget-object p1, Lcom/transsion/baseui/music/MusicFloatManager;->h:Lcom/transsion/baseui/music/MusicFloatManager$a;

    .line 155
    .line 156
    invoke-virtual {p1}, Lcom/transsion/baseui/music/MusicFloatManager$a;->b()Lcom/transsion/baseui/music/MusicFloatManager;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    invoke-virtual {p1}, Lcom/transsion/baseui/music/MusicFloatManager;->q()Lcom/transsion/player/mediasession/MediaItem;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    if-eqz p1, :cond_8

    .line 165
    .line 166
    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$setDataSource$1;->this$0:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 167
    .line 168
    invoke-static {v0}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getPageName$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    invoke-virtual {p1, v0}, Lcom/transsion/player/mediasession/MediaItem;->setPageName(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    :cond_8
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 176
    .line 177
    return-object p1
.end method
