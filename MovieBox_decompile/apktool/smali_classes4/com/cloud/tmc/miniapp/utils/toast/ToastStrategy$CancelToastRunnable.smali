.class public final Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy$CancelToastRunnable;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "CancelToastRunnable"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy$CancelToastRunnable;->this$0:Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy;

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
    .locals 3

    .line 1
    const-string v0, "ToastStrategy"

    .line 2
    .line 3
    :try_start_0
    const-string v1, "cancel toast run with start"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy$CancelToastRunnable;->this$0:Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy;

    .line 9
    .line 10
    invoke-static {v1}, Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy;->access$getMToastReference$p(Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy;)Ljava/lang/ref/WeakReference;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lcom/cloud/tmc/miniapp/utils/toast/config/IToast;

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception v1

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    const/4 v1, 0x0

    .line 26
    :goto_0
    if-eqz v1, :cond_1

    .line 27
    .line 28
    invoke-interface {v1}, Lcom/cloud/tmc/miniapp/utils/toast/config/IToast;->cancel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    .line 30
    .line 31
    goto :goto_2

    .line 32
    :goto_1
    const-string v2, "cancel toast failed!"

    .line 33
    .line 34
    invoke-static {v0, v2, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 35
    .line 36
    .line 37
    :cond_1
    :goto_2
    return-void
.end method
