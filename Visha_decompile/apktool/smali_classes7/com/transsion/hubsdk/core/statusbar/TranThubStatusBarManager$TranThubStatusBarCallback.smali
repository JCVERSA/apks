.class public Lcom/transsion/hubsdk/core/statusbar/TranThubStatusBarManager$TranThubStatusBarCallback;
.super Lcom/transsion/hubsdk/internal/statusbar/ITranStatusBar$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/hubsdk/core/statusbar/TranThubStatusBarManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TranThubStatusBarCallback"
.end annotation


# instance fields
.field private mCallback:Lcom/transsion/hubsdk/api/app/ITranStatusBar;

.field final synthetic this$0:Lcom/transsion/hubsdk/core/statusbar/TranThubStatusBarManager;


# direct methods
.method public constructor <init>(Lcom/transsion/hubsdk/core/statusbar/TranThubStatusBarManager;Lcom/transsion/hubsdk/api/app/ITranStatusBar;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/hubsdk/core/statusbar/TranThubStatusBarManager$TranThubStatusBarCallback;->this$0:Lcom/transsion/hubsdk/core/statusbar/TranThubStatusBarManager;

    invoke-direct {p0}, Lcom/transsion/hubsdk/internal/statusbar/ITranStatusBar$Stub;-><init>()V

    iput-object p2, p0, Lcom/transsion/hubsdk/core/statusbar/TranThubStatusBarManager$TranThubStatusBarCallback;->mCallback:Lcom/transsion/hubsdk/api/app/ITranStatusBar;

    return-void
.end method


# virtual methods
.method public autoStartFullIntent(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/core/statusbar/TranThubStatusBarManager$TranThubStatusBarCallback;->mCallback:Lcom/transsion/hubsdk/api/app/ITranStatusBar;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/api/app/ITranStatusBar;->autoStartFullIntent(Ljava/lang/String;ZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {}, Lcom/transsion/hubsdk/core/statusbar/TranThubStatusBarManager;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "autoStartFullIntent: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public customGesturesEnable(Ljava/lang/String;Z)V
    .locals 1

    iget-object p0, p0, Lcom/transsion/hubsdk/core/statusbar/TranThubStatusBarManager$TranThubStatusBarCallback;->mCallback:Lcom/transsion/hubsdk/api/app/ITranStatusBar;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/api/app/ITranStatusBar;->customGesturesEnable(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {}, Lcom/transsion/hubsdk/core/statusbar/TranThubStatusBarManager;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "customGesturesEnable: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public customHeadsUp(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/core/statusbar/TranThubStatusBarManager$TranThubStatusBarCallback;->mCallback:Lcom/transsion/hubsdk/api/app/ITranStatusBar;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/api/app/ITranStatusBar;->customHeadsUp(Ljava/lang/String;ZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {}, Lcom/transsion/hubsdk/core/statusbar/TranThubStatusBarManager;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "customHeadsUp: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public customNotificationStyle(Ljava/lang/String;Z)V
    .locals 1

    iget-object p0, p0, Lcom/transsion/hubsdk/core/statusbar/TranThubStatusBarManager$TranThubStatusBarCallback;->mCallback:Lcom/transsion/hubsdk/api/app/ITranStatusBar;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/api/app/ITranStatusBar;->customNotificationStyle(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {}, Lcom/transsion/hubsdk/core/statusbar/TranThubStatusBarManager;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "customNotificationStyle: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public customPanelEnable(Ljava/lang/String;Z)V
    .locals 1

    iget-object p0, p0, Lcom/transsion/hubsdk/core/statusbar/TranThubStatusBarManager$TranThubStatusBarCallback;->mCallback:Lcom/transsion/hubsdk/api/app/ITranStatusBar;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/api/app/ITranStatusBar;->customPanelEnable(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {}, Lcom/transsion/hubsdk/core/statusbar/TranThubStatusBarManager;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "customPanelEnable: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public enableAction(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/core/statusbar/TranThubStatusBarManager$TranThubStatusBarCallback;->mCallback:Lcom/transsion/hubsdk/api/app/ITranStatusBar;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/api/app/ITranStatusBar;->enableAction(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {}, Lcom/transsion/hubsdk/core/statusbar/TranThubStatusBarManager;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "enableAction: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public enableActionWithUrl(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/core/statusbar/TranThubStatusBarManager$TranThubStatusBarCallback;->mCallback:Lcom/transsion/hubsdk/api/app/ITranStatusBar;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/transsion/hubsdk/api/app/ITranStatusBar;->enableActionWithUrl(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {}, Lcom/transsion/hubsdk/core/statusbar/TranThubStatusBarManager;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "enableActionWithUrl: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public onDestoryCallback(Ljava/lang/String;)V
    .locals 2

    iget-object p0, p0, Lcom/transsion/hubsdk/core/statusbar/TranThubStatusBarManager$TranThubStatusBarCallback;->mCallback:Lcom/transsion/hubsdk/api/app/ITranStatusBar;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/api/app/ITranStatusBar;->onDestoryCallback(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {}, Lcom/transsion/hubsdk/core/statusbar/TranThubStatusBarManager;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDestoryCallback: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public updateCloseHeadsUp(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/core/statusbar/TranThubStatusBarManager$TranThubStatusBarCallback;->mCallback:Lcom/transsion/hubsdk/api/app/ITranStatusBar;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/api/app/ITranStatusBar;->updateCloseHeadsUp(Ljava/lang/String;ZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {}, Lcom/transsion/hubsdk/core/statusbar/TranThubStatusBarManager;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "updateCloseHeadsUp: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method
