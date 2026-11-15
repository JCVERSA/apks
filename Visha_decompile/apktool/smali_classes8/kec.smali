.class public abstract Lkec;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static synthetic a(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lkec;->d(Landroid/content/Context;)V

    return-void
.end method

.method public static b()Lcom/transsion/push/TPushListener;
    .locals 1

    new-instance v0, Lkec$a;

    invoke-direct {v0}, Lkec$a;-><init>()V

    return-object v0
.end method

.method public static c(Landroid/content/Context;)V
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    new-instance v0, Ljec;

    invoke-direct {v0, p0}, Ljec;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/transsion/arch/threads/TaskExecutor;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic d(Landroid/content/Context;)V
    .locals 5

    const-string v0, "Visha_tpush"

    :try_start_0
    invoke-static {p0}, Llec;->c(Landroid/content/Context;)Llec;

    move-result-object v1

    invoke-virtual {v1}, Llec;->d()Z

    move-result v2

    invoke-static {}, Lcom/transsion/push/PushManager;->getInstance()Lcom/transsion/push/PushManager;

    move-result-object v3

    invoke-static {}, Lkec;->b()Lcom/transsion/push/TPushListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/transsion/push/PushManager;->registerPushListener(Lcom/transsion/push/TPushListener;)V

    const-string v4, "listener registered"

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Llec;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Llec;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, p0, v4, v1, v2}, Lcom/transsion/push/PushManager;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PushManager.init called, sdkInitFinished="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/transsion/push/PushManager;->getIsSdkInitFinished()Z

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    const-string v1, "init failed"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
