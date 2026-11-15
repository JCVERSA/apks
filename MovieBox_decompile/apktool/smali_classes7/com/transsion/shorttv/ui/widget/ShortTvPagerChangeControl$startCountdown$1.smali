.class public final Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl$startCountdown$1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl;->a(I)V
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
        "com/transsion/shorttv/ui/widget/ShortTvPagerChangeControl$startCountdown$1",
        "Ljava/lang/Runnable;",
        "run",
        "",
        "shortTvLib_release"
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
.field final synthetic $remaining:Lkotlin/jvm/internal/Ref$IntRef;

.field final synthetic this$0:Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl;


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/Ref$IntRef;Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl$startCountdown$1;->$remaining:Lkotlin/jvm/internal/Ref$IntRef;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl$startCountdown$1;->this$0:Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl$startCountdown$1;->$remaining:Lkotlin/jvm/internal/Ref$IntRef;

    .line 2
    .line 3
    iget v1, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 4
    .line 5
    add-int/lit8 v1, v1, -0x1

    .line 6
    .line 7
    iput v1, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 8
    .line 9
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl$startCountdown$1;->this$0:Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl;->h(Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl;)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    instance-of v1, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    check-cast v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    :goto_0
    iget-object v1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl$startCountdown$1;->$remaining:Lkotlin/jvm/internal/Ref$IntRef;

    .line 24
    .line 25
    iget v1, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 26
    .line 27
    if-lez v1, :cond_2

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v0, v1}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->updateUnlockCountdownText$shortTvLib_release(Ljava/lang/Integer;)V

    .line 36
    .line 37
    .line 38
    :cond_1
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl$startCountdown$1;->this$0:Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl;

    .line 39
    .line 40
    invoke-static {v0}, Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl;->g(Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl;)Landroid/os/Handler;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    const-wide/16 v1, 0x3e8

    .line 45
    .line 46
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 47
    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_2
    iget-object v1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl$startCountdown$1;->this$0:Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl;

    .line 51
    .line 52
    invoke-virtual {v1}, Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl;->b()V

    .line 53
    .line 54
    .line 55
    if-eqz v0, :cond_3

    .line 56
    .line 57
    const/4 v1, 0x1

    .line 58
    invoke-virtual {v0, v1}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->watchAdToUnlock$shortTvLib_release(Z)V

    .line 59
    .line 60
    .line 61
    :cond_3
    :goto_1
    return-void
.end method
