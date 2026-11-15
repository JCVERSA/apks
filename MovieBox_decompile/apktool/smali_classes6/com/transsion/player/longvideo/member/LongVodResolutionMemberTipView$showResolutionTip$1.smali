.class final Lcom/transsion/player/longvideo/member/LongVodResolutionMemberTipView$showResolutionTip$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/player/longvideo/member/LongVodResolutionMemberTipView;->showResolutionTip(ZLln/a;Ljava/lang/String;Lcom/transsion/player/longvideo/ui/LongVodPlayerView;Ljava/lang/Integer;)V
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
    c = "com.transsion.player.longvideo.member.LongVodResolutionMemberTipView$showResolutionTip$1"
    f = "LongVodResolutionMemberTipView.kt"
    l = {
        0x90
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $curBean:Lln/a;

.field final synthetic $hasAtLeast720P:Z

.field final synthetic $target:Ljava/lang/Integer;

.field label:I

.field final synthetic this$0:Lcom/transsion/player/longvideo/member/LongVodResolutionMemberTipView;


# direct methods
.method constructor <init>(Lln/a;Lcom/transsion/player/longvideo/member/LongVodResolutionMemberTipView;ZLjava/lang/Integer;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lln/a;",
            "Lcom/transsion/player/longvideo/member/LongVodResolutionMemberTipView;",
            "Z",
            "Ljava/lang/Integer;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/player/longvideo/member/LongVodResolutionMemberTipView$showResolutionTip$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/player/longvideo/member/LongVodResolutionMemberTipView$showResolutionTip$1;->$curBean:Lln/a;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/player/longvideo/member/LongVodResolutionMemberTipView$showResolutionTip$1;->this$0:Lcom/transsion/player/longvideo/member/LongVodResolutionMemberTipView;

    .line 4
    .line 5
    iput-boolean p3, p0, Lcom/transsion/player/longvideo/member/LongVodResolutionMemberTipView$showResolutionTip$1;->$hasAtLeast720P:Z

    .line 6
    .line 7
    iput-object p4, p0, Lcom/transsion/player/longvideo/member/LongVodResolutionMemberTipView$showResolutionTip$1;->$target:Ljava/lang/Integer;

    .line 8
    .line 9
    const/4 p1, 0x2

    .line 10
    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6
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
    new-instance p1, Lcom/transsion/player/longvideo/member/LongVodResolutionMemberTipView$showResolutionTip$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/player/longvideo/member/LongVodResolutionMemberTipView$showResolutionTip$1;->$curBean:Lln/a;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsion/player/longvideo/member/LongVodResolutionMemberTipView$showResolutionTip$1;->this$0:Lcom/transsion/player/longvideo/member/LongVodResolutionMemberTipView;

    .line 6
    .line 7
    iget-boolean v3, p0, Lcom/transsion/player/longvideo/member/LongVodResolutionMemberTipView$showResolutionTip$1;->$hasAtLeast720P:Z

    .line 8
    .line 9
    iget-object v4, p0, Lcom/transsion/player/longvideo/member/LongVodResolutionMemberTipView$showResolutionTip$1;->$target:Ljava/lang/Integer;

    .line 10
    .line 11
    move-object v0, p1

    .line 12
    move-object v5, p2

    .line 13
    invoke-direct/range {v0 .. v5}, Lcom/transsion/player/longvideo/member/LongVodResolutionMemberTipView$showResolutionTip$1;-><init>(Lln/a;Lcom/transsion/player/longvideo/member/LongVodResolutionMemberTipView;ZLjava/lang/Integer;Lkotlin/coroutines/Continuation;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/player/longvideo/member/LongVodResolutionMemberTipView$showResolutionTip$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/player/longvideo/member/LongVodResolutionMemberTipView$showResolutionTip$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/player/longvideo/member/LongVodResolutionMemberTipView$showResolutionTip$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/player/longvideo/member/LongVodResolutionMemberTipView$showResolutionTip$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/transsion/player/longvideo/member/LongVodResolutionMemberTipView$showResolutionTip$1;->label:I

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
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 17
    .line 18
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 19
    .line 20
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw p1

    .line 24
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    sget-object p1, Lcom/transsion/player/longvideo/member/ResolutionMemberManager;->a:Lcom/transsion/player/longvideo/member/ResolutionMemberManager;

    .line 28
    .line 29
    iget-object v1, p0, Lcom/transsion/player/longvideo/member/LongVodResolutionMemberTipView$showResolutionTip$1;->$curBean:Lln/a;

    .line 30
    .line 31
    iput v2, p0, Lcom/transsion/player/longvideo/member/LongVodResolutionMemberTipView$showResolutionTip$1;->label:I

    .line 32
    .line 33
    invoke-virtual {p1, v1, p0}, Lcom/transsion/player/longvideo/member/ResolutionMemberManager;->g(Lln/a;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    if-ne p1, v0, :cond_2

    .line 38
    .line 39
    return-object v0

    .line 40
    :cond_2
    :goto_0
    check-cast p1, Ljava/lang/Boolean;

    .line 41
    .line 42
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    if-eqz p1, :cond_3

    .line 47
    .line 48
    sget-object p1, Lwj/h;->a:Lwj/h;

    .line 49
    .line 50
    iget-object v0, p0, Lcom/transsion/player/longvideo/member/LongVodResolutionMemberTipView$showResolutionTip$1;->this$0:Lcom/transsion/player/longvideo/member/LongVodResolutionMemberTipView;

    .line 51
    .line 52
    invoke-static {v0}, Lcom/transsion/player/longvideo/member/LongVodResolutionMemberTipView;->access$getClassTag(Lcom/transsion/player/longvideo/member/LongVodResolutionMemberTipView;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    new-instance v1, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v0, " --> showResolutionTip() --> \u5df2\u51fa\u73b0\u8fc7\uff0c\u4e0d\u663e\u793a"

    .line 65
    .line 66
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-virtual {p1, v0}, Lwj/h;->a(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 77
    .line 78
    return-object p1

    .line 79
    :cond_3
    const-class p1, Lim/b;

    .line 80
    .line 81
    const/4 v0, 0x0

    .line 82
    new-array v1, v0, [Ljava/lang/Object;

    .line 83
    .line 84
    invoke-static {p1, v1}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    check-cast p1, Lim/b;

    .line 89
    .line 90
    if-eqz p1, :cond_4

    .line 91
    .line 92
    invoke-interface {p1}, Lim/b;->m()Z

    .line 93
    .line 94
    .line 95
    move-result p1

    .line 96
    goto :goto_1

    .line 97
    :cond_4
    move p1, v0

    .line 98
    :goto_1
    if-nez p1, :cond_5

    .line 99
    .line 100
    iget-boolean v1, p0, Lcom/transsion/player/longvideo/member/LongVodResolutionMemberTipView$showResolutionTip$1;->$hasAtLeast720P:Z

    .line 101
    .line 102
    if-eqz v1, :cond_5

    .line 103
    .line 104
    iget-object v1, p0, Lcom/transsion/player/longvideo/member/LongVodResolutionMemberTipView$showResolutionTip$1;->this$0:Lcom/transsion/player/longvideo/member/LongVodResolutionMemberTipView;

    .line 105
    .line 106
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 107
    .line 108
    .line 109
    iget-object v0, p0, Lcom/transsion/player/longvideo/member/LongVodResolutionMemberTipView$showResolutionTip$1;->this$0:Lcom/transsion/player/longvideo/member/LongVodResolutionMemberTipView;

    .line 110
    .line 111
    iget-object v1, p0, Lcom/transsion/player/longvideo/member/LongVodResolutionMemberTipView$showResolutionTip$1;->$curBean:Lln/a;

    .line 112
    .line 113
    invoke-static {v0, v1}, Lcom/transsion/player/longvideo/member/LongVodResolutionMemberTipView;->access$setCurBean$p(Lcom/transsion/player/longvideo/member/LongVodResolutionMemberTipView;Lln/a;)V

    .line 114
    .line 115
    .line 116
    sget-object v0, Lcom/transsion/ad/strategy/t;->a:Lcom/transsion/ad/strategy/t;

    .line 117
    .line 118
    iget-object v1, p0, Lcom/transsion/player/longvideo/member/LongVodResolutionMemberTipView$showResolutionTip$1;->this$0:Lcom/transsion/player/longvideo/member/LongVodResolutionMemberTipView;

    .line 119
    .line 120
    invoke-virtual {v0, v1}, Lcom/transsion/ad/strategy/t;->j(Lcom/transsion/ad/strategy/t$a;)V

    .line 121
    .line 122
    .line 123
    iget-object v0, p0, Lcom/transsion/player/longvideo/member/LongVodResolutionMemberTipView$showResolutionTip$1;->this$0:Lcom/transsion/player/longvideo/member/LongVodResolutionMemberTipView;

    .line 124
    .line 125
    invoke-static {v0}, Lcom/transsion/player/longvideo/member/LongVodResolutionMemberTipView;->access$startTimer(Lcom/transsion/player/longvideo/member/LongVodResolutionMemberTipView;)V

    .line 126
    .line 127
    .line 128
    sget-object v0, Lwj/h;->a:Lwj/h;

    .line 129
    .line 130
    iget-object v1, p0, Lcom/transsion/player/longvideo/member/LongVodResolutionMemberTipView$showResolutionTip$1;->this$0:Lcom/transsion/player/longvideo/member/LongVodResolutionMemberTipView;

    .line 131
    .line 132
    invoke-static {v1}, Lcom/transsion/player/longvideo/member/LongVodResolutionMemberTipView;->access$getClassTag(Lcom/transsion/player/longvideo/member/LongVodResolutionMemberTipView;)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    iget-object v2, p0, Lcom/transsion/player/longvideo/member/LongVodResolutionMemberTipView$showResolutionTip$1;->$target:Ljava/lang/Integer;

    .line 137
    .line 138
    new-instance v3, Ljava/lang/StringBuilder;

    .line 139
    .line 140
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    const-string v1, " --> showResolutionTip() --> isMember = "

    .line 147
    .line 148
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    const-string p1, " --> \u53f3\u4e0b\u89d2\u63d0\u793a --> target = "

    .line 155
    .line 156
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    invoke-virtual {v0, p1}, Lwj/h;->a(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    :cond_5
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 170
    .line 171
    return-object p1
.end method
