.class public final Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager$TranDisplayListenerDelegate;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TranDisplayListenerDelegate"
.end annotation


# instance fields
.field public mEventsMask:J

.field public final mListener:Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager$DualDisplayListener;


# direct methods
.method public constructor <init>(Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager$DualDisplayListener;Landroid/os/Looper;J)V
    .locals 0

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager$TranDisplayListenerDelegate;->mListener:Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager$DualDisplayListener;

    iput-wide p3, p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager$TranDisplayListenerDelegate;->mEventsMask:J

    return-void
.end method


# virtual methods
.method public clearEvents()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public declared-synchronized handleMessage(Landroid/os/Message;)V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager$TranDisplayListenerDelegate;->mEventsMask:J

    const-wide/16 v4, 0x2

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager$TranDisplayListenerDelegate;->mListener:Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager$DualDisplayListener;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, p1}, Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager$DualDisplayListener;->onDisplayRemoved(I)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    iget-wide v0, p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager$TranDisplayListenerDelegate;->mEventsMask:J

    const-wide/16 v4, 0x1

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager$TranDisplayListenerDelegate;->mListener:Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager$DualDisplayListener;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, p1}, Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager$DualDisplayListener;->onDisplayAdded(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public sendDualDisplayEvent(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p2, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public declared-synchronized setEventsMask(J)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-wide p1, p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager$TranDisplayListenerDelegate;->mEventsMask:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
