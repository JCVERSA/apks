.class public Lcom/transsion/audio/view/FloatingMagnetView$MoveAnimator;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/audio/view/FloatingMagnetView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "MoveAnimator"
.end annotation


# instance fields
.field private destinationX:F

.field private destinationY:F

.field private final handler:Landroid/os/Handler;

.field private startingTime:J

.field final synthetic this$0:Lcom/transsion/audio/view/FloatingMagnetView;


# direct methods
.method protected constructor <init>(Lcom/transsion/audio/view/FloatingMagnetView;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/transsion/audio/view/FloatingMagnetView$MoveAnimator;->this$0:Lcom/transsion/audio/view/FloatingMagnetView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance p1, Landroid/os/Handler;

    .line 7
    .line 8
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Lcom/transsion/audio/view/FloatingMagnetView$MoveAnimator;->handler:Landroid/os/Handler;

    .line 16
    .line 17
    return-void
.end method

.method private stop()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/audio/view/FloatingMagnetView$MoveAnimator;->handler:Landroid/os/Handler;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/transsion/audio/view/FloatingMagnetView$MoveAnimator;->this$0:Lcom/transsion/audio/view/FloatingMagnetView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/transsion/audio/view/FloatingMagnetView$MoveAnimator;->this$0:Lcom/transsion/audio/view/FloatingMagnetView;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 23
    .line 24
    .line 25
    move-result-wide v0

    .line 26
    iget-wide v2, p0, Lcom/transsion/audio/view/FloatingMagnetView$MoveAnimator;->startingTime:J

    .line 27
    .line 28
    sub-long/2addr v0, v2

    .line 29
    long-to-float v0, v0

    .line 30
    const/high16 v1, 0x43c80000    # 400.0f

    .line 31
    .line 32
    div-float/2addr v0, v1

    .line 33
    const/high16 v1, 0x3f800000    # 1.0f

    .line 34
    .line 35
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    iget v2, p0, Lcom/transsion/audio/view/FloatingMagnetView$MoveAnimator;->destinationX:F

    .line 40
    .line 41
    iget-object v3, p0, Lcom/transsion/audio/view/FloatingMagnetView$MoveAnimator;->this$0:Lcom/transsion/audio/view/FloatingMagnetView;

    .line 42
    .line 43
    invoke-virtual {v3}, Landroid/view/View;->getX()F

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    sub-float/2addr v2, v3

    .line 48
    mul-float/2addr v2, v0

    .line 49
    iget v3, p0, Lcom/transsion/audio/view/FloatingMagnetView$MoveAnimator;->destinationY:F

    .line 50
    .line 51
    iget-object v4, p0, Lcom/transsion/audio/view/FloatingMagnetView$MoveAnimator;->this$0:Lcom/transsion/audio/view/FloatingMagnetView;

    .line 52
    .line 53
    invoke-virtual {v4}, Landroid/view/View;->getY()F

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    sub-float/2addr v3, v4

    .line 58
    mul-float/2addr v3, v0

    .line 59
    iget-object v4, p0, Lcom/transsion/audio/view/FloatingMagnetView$MoveAnimator;->this$0:Lcom/transsion/audio/view/FloatingMagnetView;

    .line 60
    .line 61
    invoke-static {v4, v2, v3}, Lcom/transsion/audio/view/FloatingMagnetView;->b(Lcom/transsion/audio/view/FloatingMagnetView;FF)V

    .line 62
    .line 63
    .line 64
    cmpg-float v0, v0, v1

    .line 65
    .line 66
    if-gez v0, :cond_1

    .line 67
    .line 68
    iget-object v0, p0, Lcom/transsion/audio/view/FloatingMagnetView$MoveAnimator;->handler:Landroid/os/Handler;

    .line 69
    .line 70
    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 71
    .line 72
    .line 73
    :cond_1
    :goto_0
    return-void
.end method

.method start(FF)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/transsion/audio/view/FloatingMagnetView$MoveAnimator;->destinationX:F

    .line 2
    .line 3
    iput p2, p0, Lcom/transsion/audio/view/FloatingMagnetView$MoveAnimator;->destinationY:F

    .line 4
    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 6
    .line 7
    .line 8
    move-result-wide p1

    .line 9
    iput-wide p1, p0, Lcom/transsion/audio/view/FloatingMagnetView$MoveAnimator;->startingTime:J

    .line 10
    .line 11
    iget-object p1, p0, Lcom/transsion/audio/view/FloatingMagnetView$MoveAnimator;->handler:Landroid/os/Handler;

    .line 12
    .line 13
    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 14
    .line 15
    .line 16
    return-void
.end method
