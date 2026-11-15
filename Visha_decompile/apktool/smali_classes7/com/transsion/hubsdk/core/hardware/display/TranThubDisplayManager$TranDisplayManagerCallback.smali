.class final Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager$TranDisplayManagerCallback;
.super Lcom/transsion/hubsdk/hardware/display/ITranDisplayManagerCallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "TranDisplayManagerCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;


# direct methods
.method private constructor <init>(Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager$TranDisplayManagerCallback;->this$0:Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;

    invoke-direct {p0}, Lcom/transsion/hubsdk/hardware/display/ITranDisplayManagerCallback$Stub;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager$TranDisplayManagerCallback;-><init>(Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;)V

    return-void
.end method


# virtual methods
.method public onDisplayEvent(II)V
    .locals 3

    invoke-static {}, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDualDisplayEvent: displayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", event="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager$TranDisplayManagerCallback;->this$0:Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->handleDualDisplayEvent(II)V

    return-void
.end method
