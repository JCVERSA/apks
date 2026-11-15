.class public Lcom/transsion/hubsdk/core/app/TranThubActivityManager$TranAppRecoveryCallback;
.super Lcom/transsion/hubsdk/app/ITranAppRecoveryCallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/hubsdk/core/app/TranThubActivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TranAppRecoveryCallback"
.end annotation


# instance fields
.field private mBinder:Landroid/os/IBinder;

.field private mCallback:Lcom/transsion/hubsdk/api/app/TranActivityManager$ITranAppRecoveryCallback;

.field final synthetic this$0:Lcom/transsion/hubsdk/core/app/TranThubActivityManager;


# direct methods
.method public constructor <init>(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;Lcom/transsion/hubsdk/api/app/TranActivityManager$ITranAppRecoveryCallback;Landroid/os/IBinder;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$TranAppRecoveryCallback;->this$0:Lcom/transsion/hubsdk/core/app/TranThubActivityManager;

    invoke-direct {p0}, Lcom/transsion/hubsdk/app/ITranAppRecoveryCallback$Stub;-><init>()V

    iput-object p2, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$TranAppRecoveryCallback;->mCallback:Lcom/transsion/hubsdk/api/app/TranActivityManager$ITranAppRecoveryCallback;

    iput-object p3, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$TranAppRecoveryCallback;->mBinder:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public onSaveStateWhenError(Landroid/os/Bundle;)V
    .locals 6

    const-string v0, "setActivityState error: "

    iget-object v1, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$TranAppRecoveryCallback;->mCallback:Lcom/transsion/hubsdk/api/app/TranActivityManager$ITranAppRecoveryCallback;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$TranAppRecoveryCallback;->this$0:Lcom/transsion/hubsdk/core/app/TranThubActivityManager;

    invoke-static {v1}, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->access$100(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;)Lcom/transsion/hubsdk/app/ITranActivityManager;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_5

    :cond_0
    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object p1, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$TranAppRecoveryCallback;->mCallback:Lcom/transsion/hubsdk/api/app/TranActivityManager$ITranAppRecoveryCallback;

    invoke-interface {p1, v1}, Lcom/transsion/hubsdk/api/app/TranActivityManager$ITranAppRecoveryCallback;->onSaveStateWhenError(Landroid/os/Bundle;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object p1, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$TranAppRecoveryCallback;->this$0:Lcom/transsion/hubsdk/core/app/TranThubActivityManager;

    invoke-static {p1}, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->access$100(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;)Lcom/transsion/hubsdk/app/ITranActivityManager;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$TranAppRecoveryCallback;->mBinder:Landroid/os/IBinder;

    invoke-interface {p1, p0, v1}, Lcom/transsion/hubsdk/app/ITranActivityManager;->setActivityState(Landroid/os/IBinder;Landroid/os/Bundle;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    invoke-static {}, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception p1

    goto :goto_1

    :catchall_1
    move-exception v1

    move-object v5, v1

    move-object v1, p1

    move-object p1, v5

    goto :goto_3

    :goto_1
    const/4 v1, 0x0

    :try_start_3
    invoke-static {}, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSaveStateWhenError error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object p1, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$TranAppRecoveryCallback;->this$0:Lcom/transsion/hubsdk/core/app/TranThubActivityManager;

    invoke-static {p1}, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->access$100(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;)Lcom/transsion/hubsdk/app/ITranActivityManager;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$TranAppRecoveryCallback;->mBinder:Landroid/os/IBinder;

    invoke-interface {p1, p0, v1}, Lcom/transsion/hubsdk/app/ITranActivityManager;->setActivityState(Landroid/os/IBinder;Landroid/os/Bundle;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_2
    move-exception p0

    invoke-static {}, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0

    :goto_2
    return-void

    :goto_3
    :try_start_5
    iget-object v2, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$TranAppRecoveryCallback;->this$0:Lcom/transsion/hubsdk/core/app/TranThubActivityManager;

    invoke-static {v2}, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->access$100(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;)Lcom/transsion/hubsdk/app/ITranActivityManager;

    move-result-object v2

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$TranAppRecoveryCallback;->mBinder:Landroid/os/IBinder;

    invoke-interface {v2, p0, v1}, Lcom/transsion/hubsdk/app/ITranActivityManager;->setActivityState(Landroid/os/IBinder;Landroid/os/Bundle;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_4

    :catch_3
    move-exception p0

    invoke-static {}, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    throw p1

    :cond_1
    :goto_5
    return-void
.end method
