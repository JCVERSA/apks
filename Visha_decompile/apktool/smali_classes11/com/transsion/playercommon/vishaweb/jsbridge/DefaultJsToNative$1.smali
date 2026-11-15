.class Lcom/transsion/playercommon/vishaweb/jsbridge/DefaultJsToNative$1;
.super Lcom/blankj/utilcode/util/ThreadUtils$Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/playercommon/vishaweb/jsbridge/DefaultJsToNative;->onUbtUpload(Lcom/transsion/playercommon/vishaweb/jsdata/JsParam;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/blankj/utilcode/util/ThreadUtils$Task<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/playercommon/vishaweb/jsbridge/DefaultJsToNative;

.field final synthetic val$feedbackId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/transsion/playercommon/vishaweb/jsbridge/DefaultJsToNative;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/vishaweb/jsbridge/DefaultJsToNative$1;->this$0:Lcom/transsion/playercommon/vishaweb/jsbridge/DefaultJsToNative;

    iput-object p2, p0, Lcom/transsion/playercommon/vishaweb/jsbridge/DefaultJsToNative$1;->val$feedbackId:Ljava/lang/String;

    invoke-direct {p0}, Lcom/blankj/utilcode/util/ThreadUtils$Task;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/playercommon/vishaweb/jsbridge/DefaultJsToNative$1;Lcom/transsion/playercommon/vishaweb/VishaWebViewActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/playercommon/vishaweb/jsbridge/DefaultJsToNative$1;->lambda$onSuccess$0(Lcom/transsion/playercommon/vishaweb/VishaWebViewActivity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$onSuccess$0(Lcom/transsion/playercommon/vishaweb/VishaWebViewActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/vishaweb/jsbridge/DefaultJsToNative$1;->this$0:Lcom/transsion/playercommon/vishaweb/jsbridge/DefaultJsToNative;

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/playercommon/vishaweb/jsbridge/DefaultJsToNative;->d(Lcom/transsion/playercommon/vishaweb/jsbridge/DefaultJsToNative;Lcom/transsion/playercommon/vishaweb/VishaWebViewActivity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/transsion/playercommon/vishaweb/jsbridge/DefaultJsToNative$1;->doInBackground()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public doInBackground()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 2
    const-string p0, ""

    const-string v0, "visha_DefaultJsToNative"

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Lvdb;->i(Ljava/lang/Long;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {v1}, Lcom/transsion/playercommon/vishaweb/jsbridge/DefaultJsToNative;->calculateTotalFileSize(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception v1

    goto :goto_1

    .line 5
    :cond_1
    :goto_0
    const-string v1, "doInBackground isEmpty"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 6
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onUbtUpload doInBackground error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public onCancel()V
    .locals 0

    return-void
.end method

.method public onFail(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/vishaweb/jsbridge/DefaultJsToNative$1;->onSuccess(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 3

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/transsion/playercommon/vishaweb/jsbridge/DefaultJsToNative$1;->this$0:Lcom/transsion/playercommon/vishaweb/jsbridge/DefaultJsToNative;

    invoke-static {v0}, Lcom/transsion/playercommon/vishaweb/jsbridge/DefaultJsToNative;->c(Lcom/transsion/playercommon/vishaweb/jsbridge/DefaultJsToNative;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/transsion/playercommon/vishaweb/jsbridge/DefaultJsToNative$1;->this$0:Lcom/transsion/playercommon/vishaweb/jsbridge/DefaultJsToNative;

    invoke-static {v0}, Lcom/transsion/playercommon/vishaweb/jsbridge/DefaultJsToNative;->c(Lcom/transsion/playercommon/vishaweb/jsbridge/DefaultJsToNative;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/playercommon/vishaweb/VishaWebViewActivity;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    return-void

    .line 5
    :cond_2
    iget-object v1, p0, Lcom/transsion/playercommon/vishaweb/jsbridge/DefaultJsToNative$1;->val$feedbackId:Ljava/lang/String;

    new-instance v2, Lcom/transsion/playercommon/vishaweb/jsbridge/a;

    invoke-direct {v2, p0, v0, p1, v1}, Lcom/transsion/playercommon/vishaweb/jsbridge/a;-><init>(Lcom/transsion/playercommon/vishaweb/jsbridge/DefaultJsToNative$1;Lcom/transsion/playercommon/vishaweb/VishaWebViewActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/blankj/utilcode/util/ThreadUtils;->s(Ljava/lang/Runnable;)V

    return-void
.end method
