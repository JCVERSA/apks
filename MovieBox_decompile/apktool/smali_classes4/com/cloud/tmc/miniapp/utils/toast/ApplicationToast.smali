.class public final Lcom/cloud/tmc/miniapp/utils/toast/ApplicationToast;
.super Lcom/cloud/tmc/miniapp/utils/toast/CustomToast;
.source "source.java"


# instance fields
.field private final application:Landroid/app/Application;

.field private mToastDialog:Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 1

    .line 1
    const-string v0, "application"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/utils/toast/CustomToast;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/utils/toast/ApplicationToast;->application:Landroid/app/Application;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/utils/toast/ApplicationToast;->mToastDialog:Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;->cancel()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public isShow()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/utils/toast/ApplicationToast;->mToastDialog:Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;->isShow()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return v0
.end method

.method public show()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/utils/toast/ApplicationToast;->mToastDialog:Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/utils/toast/ApplicationToast;->application:Landroid/app/Application;

    .line 8
    .line 9
    invoke-direct {v0, v1, p0}, Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;-><init>(Landroid/app/Application;Lcom/cloud/tmc/miniapp/utils/toast/CustomToast;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/utils/toast/ApplicationToast;->mToastDialog:Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catchall_0
    move-exception v0

    .line 16
    goto :goto_1

    .line 17
    :cond_0
    :goto_0
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    .line 20
    goto :goto_2

    .line 21
    :goto_1
    const-string v1, "ApplicationToast"

    .line 22
    .line 23
    const-string v2, "show"

    .line 24
    .line 25
    invoke-static {v1, v2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 26
    .line 27
    .line 28
    :goto_2
    return-void
.end method
