.class public Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager$TranThubGestureCallback;
.super Lcom/transsion/hubsdk/view/ITranGestureListener$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TranThubGestureCallback"
.end annotation


# instance fields
.field private mCallback:Lcom/transsion/hubsdk/api/view/ITranGestureCallback;

.field final synthetic this$0:Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;


# direct methods
.method public constructor <init>(Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;Lcom/transsion/hubsdk/api/view/ITranGestureCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager$TranThubGestureCallback;->this$0:Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;

    invoke-direct {p0}, Lcom/transsion/hubsdk/view/ITranGestureListener$Stub;-><init>()V

    iput-object p2, p0, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager$TranThubGestureCallback;->mCallback:Lcom/transsion/hubsdk/api/view/ITranGestureCallback;

    return-void
.end method


# virtual methods
.method public onNotifyGestureDetected(Landroid/view/MotionEvent;I)V
    .locals 2

    const-string v0, "onNotifyGestureDetected: "

    iget-object v1, p0, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager$TranThubGestureCallback;->mCallback:Lcom/transsion/hubsdk/api/view/ITranGestureCallback;

    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {}, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;->access$200()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager$TranThubGestureCallback;->mCallback:Lcom/transsion/hubsdk/api/view/ITranGestureCallback;

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/api/view/ITranGestureCallback;->onNotifyGestureDetected(Landroid/view/MotionEvent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {}, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;->access$200()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public onTranGestureEvent(Landroid/view/MotionEvent;)V
    .locals 2

    iget-object p0, p0, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager$TranThubGestureCallback;->mCallback:Lcom/transsion/hubsdk/api/view/ITranGestureCallback;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/api/view/ITranGestureCallback;->onTranGestureEvent(Landroid/view/MotionEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {}, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;->access$200()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTranGestureEvent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method
