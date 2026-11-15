.class public Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager$TranThubInputEventCallback;
.super Lcom/transsion/hubsdk/view/ITranInputEventListener$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TranThubInputEventCallback"
.end annotation


# instance fields
.field private mCallback:Lcom/transsion/hubsdk/api/view/ITranInputEventCallback;

.field final synthetic this$0:Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;


# direct methods
.method public constructor <init>(Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;Lcom/transsion/hubsdk/api/view/ITranInputEventCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager$TranThubInputEventCallback;->this$0:Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;

    invoke-direct {p0}, Lcom/transsion/hubsdk/view/ITranInputEventListener$Stub;-><init>()V

    iput-object p2, p0, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager$TranThubInputEventCallback;->mCallback:Lcom/transsion/hubsdk/api/view/ITranInputEventCallback;

    return-void
.end method


# virtual methods
.method public handleInputEvent(Landroid/view/InputEvent;)V
    .locals 3

    invoke-static {}, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TranThubInputEventCallback.handleInputEvent: event="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager$TranThubInputEventCallback;->mCallback:Lcom/transsion/hubsdk/api/view/ITranInputEventCallback;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/api/view/ITranInputEventCallback;->handleInputEvent(Landroid/view/InputEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {}, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;->access$200()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleInputEvent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method
