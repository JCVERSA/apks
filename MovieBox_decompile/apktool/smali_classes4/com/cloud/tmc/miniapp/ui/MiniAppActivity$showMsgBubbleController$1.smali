.class public final Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$showMsgBubbleController$1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/integration/utils/PopWindowManager$IPopWindowManagerController;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$showMsgBubbleController$1;->this$0:Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onRefresh(Lcom/cloud/tmc/integration/utils/PopWindowManager$PopWindowData;)V
    .locals 7

    .line 1
    const-string v0, "bean"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$showMsgBubbleController$1;->this$0:Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    .line 11
    .line 12
    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getMiniappStartTime()J

    .line 13
    .line 14
    .line 15
    move-result-wide v2

    .line 16
    sub-long/2addr v0, v2

    .line 17
    new-instance v2, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string v3, "onRefresh:"

    .line 23
    .line 24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const-string v1, "MiniAppActivity"

    .line 35
    .line 36
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$showMsgBubbleController$1;->this$0:Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    .line 40
    .line 41
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/utils/PopWindowManager$PopWindowData;->getDelayTime()J

    .line 42
    .line 43
    .line 44
    move-result-wide v1

    .line 45
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 46
    .line 47
    .line 48
    move-result-wide v3

    .line 49
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$showMsgBubbleController$1;->this$0:Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    .line 50
    .line 51
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getMiniappStartTime()J

    .line 52
    .line 53
    .line 54
    move-result-wide v5

    .line 55
    sub-long/2addr v3, v5

    .line 56
    sub-long/2addr v1, v3

    .line 57
    invoke-virtual {v0, v1, v2}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->showPopUpWindowRunnable(J)V

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method public show(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "appId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "msgBubbleToast"

    .line 7
    .line 8
    const-string v0, "MiniAppActivity"

    .line 9
    .line 10
    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    :try_start_0
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$showMsgBubbleController$1;->this$0:Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getResumed()Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$showMsgBubbleController$1;->this$0:Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->showMsgBubbleToast()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception p1

    .line 28
    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    :goto_0
    return-void
.end method
