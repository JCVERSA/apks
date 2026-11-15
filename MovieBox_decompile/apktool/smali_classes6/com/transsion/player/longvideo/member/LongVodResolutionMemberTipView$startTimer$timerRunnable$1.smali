.class public final Lcom/transsion/player/longvideo/member/LongVodResolutionMemberTipView$startTimer$timerRunnable$1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/player/longvideo/member/LongVodResolutionMemberTipView;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004"
    }
    d2 = {
        "com/transsion/player/longvideo/member/LongVodResolutionMemberTipView$startTimer$timerRunnable$1",
        "Ljava/lang/Runnable;",
        "run",
        "",
        "LongVideo_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/player/longvideo/member/LongVodResolutionMemberTipView;


# direct methods
.method constructor <init>(Lcom/transsion/player/longvideo/member/LongVodResolutionMemberTipView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/player/longvideo/member/LongVodResolutionMemberTipView$startTimer$timerRunnable$1;->this$0:Lcom/transsion/player/longvideo/member/LongVodResolutionMemberTipView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/transsion/player/longvideo/member/LongVodResolutionMemberTipView$startTimer$timerRunnable$1;->this$0:Lcom/transsion/player/longvideo/member/LongVodResolutionMemberTipView;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/transsion/player/longvideo/member/LongVodResolutionMemberTipView;->access$isShowing$p(Lcom/transsion/player/longvideo/member/LongVodResolutionMemberTipView;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/transsion/player/longvideo/member/LongVodResolutionMemberTipView$startTimer$timerRunnable$1;->this$0:Lcom/transsion/player/longvideo/member/LongVodResolutionMemberTipView;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/transsion/player/longvideo/member/LongVodResolutionMemberTipView;->access$getCurrentTimestep$p(Lcom/transsion/player/longvideo/member/LongVodResolutionMemberTipView;)J

    .line 12
    .line 13
    .line 14
    move-result-wide v1

    .line 15
    const/16 v3, 0x64

    .line 16
    .line 17
    int-to-long v3, v3

    .line 18
    add-long/2addr v1, v3

    .line 19
    invoke-static {v0, v1, v2}, Lcom/transsion/player/longvideo/member/LongVodResolutionMemberTipView;->access$setCurrentTimestep$p(Lcom/transsion/player/longvideo/member/LongVodResolutionMemberTipView;J)V

    .line 20
    .line 21
    .line 22
    :cond_0
    iget-object v0, p0, Lcom/transsion/player/longvideo/member/LongVodResolutionMemberTipView$startTimer$timerRunnable$1;->this$0:Lcom/transsion/player/longvideo/member/LongVodResolutionMemberTipView;

    .line 23
    .line 24
    invoke-static {v0}, Lcom/transsion/player/longvideo/member/LongVodResolutionMemberTipView;->access$getCurrentTimestep$p(Lcom/transsion/player/longvideo/member/LongVodResolutionMemberTipView;)J

    .line 25
    .line 26
    .line 27
    move-result-wide v0

    .line 28
    const-wide/16 v2, 0x1388

    .line 29
    .line 30
    cmp-long v0, v0, v2

    .line 31
    .line 32
    if-ltz v0, :cond_2

    .line 33
    .line 34
    iget-object v0, p0, Lcom/transsion/player/longvideo/member/LongVodResolutionMemberTipView$startTimer$timerRunnable$1;->this$0:Lcom/transsion/player/longvideo/member/LongVodResolutionMemberTipView;

    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/transsion/player/longvideo/member/LongVodResolutionMemberTipView;->destroy()V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/transsion/player/longvideo/member/LongVodResolutionMemberTipView$startTimer$timerRunnable$1;->this$0:Lcom/transsion/player/longvideo/member/LongVodResolutionMemberTipView;

    .line 40
    .line 41
    const/16 v1, 0x8

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/transsion/player/longvideo/member/LongVodResolutionMemberTipView$startTimer$timerRunnable$1;->this$0:Lcom/transsion/player/longvideo/member/LongVodResolutionMemberTipView;

    .line 47
    .line 48
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    instance-of v1, v0, Landroidx/appcompat/app/AppCompatActivity;

    .line 53
    .line 54
    const/4 v2, 0x0

    .line 55
    if-eqz v1, :cond_1

    .line 56
    .line 57
    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    move-object v0, v2

    .line 61
    :goto_0
    if-eqz v0, :cond_3

    .line 62
    .line 63
    invoke-static {v0}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/u;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    if-eqz v3, :cond_3

    .line 68
    .line 69
    new-instance v6, Lcom/transsion/player/longvideo/member/LongVodResolutionMemberTipView$startTimer$timerRunnable$1$run$1;

    .line 70
    .line 71
    iget-object v0, p0, Lcom/transsion/player/longvideo/member/LongVodResolutionMemberTipView$startTimer$timerRunnable$1;->this$0:Lcom/transsion/player/longvideo/member/LongVodResolutionMemberTipView;

    .line 72
    .line 73
    invoke-direct {v6, v0, v2}, Lcom/transsion/player/longvideo/member/LongVodResolutionMemberTipView$startTimer$timerRunnable$1$run$1;-><init>(Lcom/transsion/player/longvideo/member/LongVodResolutionMemberTipView;Lkotlin/coroutines/Continuation;)V

    .line 74
    .line 75
    .line 76
    const/4 v7, 0x3

    .line 77
    const/4 v8, 0x0

    .line 78
    const/4 v4, 0x0

    .line 79
    const/4 v5, 0x0

    .line 80
    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 81
    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_2
    iget-object v0, p0, Lcom/transsion/player/longvideo/member/LongVodResolutionMemberTipView$startTimer$timerRunnable$1;->this$0:Lcom/transsion/player/longvideo/member/LongVodResolutionMemberTipView;

    .line 85
    .line 86
    invoke-static {v0}, Lcom/transsion/player/longvideo/member/LongVodResolutionMemberTipView;->access$getHandler$p(Lcom/transsion/player/longvideo/member/LongVodResolutionMemberTipView;)Landroid/os/Handler;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    const-wide/16 v1, 0x64

    .line 91
    .line 92
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 93
    .line 94
    .line 95
    :cond_3
    :goto_1
    return-void
.end method
