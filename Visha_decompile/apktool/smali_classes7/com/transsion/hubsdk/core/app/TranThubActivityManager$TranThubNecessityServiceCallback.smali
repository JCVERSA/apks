.class public Lcom/transsion/hubsdk/core/app/TranThubActivityManager$TranThubNecessityServiceCallback;
.super Lcom/transsion/hubsdk/internal/app/ITranNecessityWindowService$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/hubsdk/core/app/TranThubActivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TranThubNecessityServiceCallback"
.end annotation


# instance fields
.field private mCallback:Lcom/transsion/hubsdk/api/app/ITranNecessityWindowService;

.field final synthetic this$0:Lcom/transsion/hubsdk/core/app/TranThubActivityManager;


# direct methods
.method public constructor <init>(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;Lcom/transsion/hubsdk/api/app/ITranNecessityWindowService;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$TranThubNecessityServiceCallback;->this$0:Lcom/transsion/hubsdk/core/app/TranThubActivityManager;

    invoke-direct {p0}, Lcom/transsion/hubsdk/internal/app/ITranNecessityWindowService$Stub;-><init>()V

    iput-object p2, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$TranThubNecessityServiceCallback;->mCallback:Lcom/transsion/hubsdk/api/app/ITranNecessityWindowService;

    return-void
.end method


# virtual methods
.method public interceptUnknowSourceWindow(Landroid/os/Bundle;)V
    .locals 2

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$TranThubNecessityServiceCallback;->mCallback:Lcom/transsion/hubsdk/api/app/ITranNecessityWindowService;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/api/app/ITranNecessityWindowService;->interceptUnknowSourceWindow(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {}, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "interceptUnknowSourceWindow: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public scanUnknowSourceIfNeedWindow(Landroid/os/Bundle;)V
    .locals 2

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$TranThubNecessityServiceCallback;->mCallback:Lcom/transsion/hubsdk/api/app/ITranNecessityWindowService;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/api/app/ITranNecessityWindowService;->scanUnknowSourceIfNeedWindow(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {}, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "scanUnknowSourceIfNeedWindow: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method
