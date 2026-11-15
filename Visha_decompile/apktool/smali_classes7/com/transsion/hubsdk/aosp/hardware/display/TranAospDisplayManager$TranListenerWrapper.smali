.class public Lcom/transsion/hubsdk/aosp/hardware/display/TranAospDisplayManager$TranListenerWrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/hubsdk/aosp/hardware/display/TranAospDisplayManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TranListenerWrapper"
.end annotation


# instance fields
.field private final mListener:Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager$DualDisplayListener;


# direct methods
.method public constructor <init>(Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager$DualDisplayListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/aosp/hardware/display/TranAospDisplayManager$TranListenerWrapper;->mListener:Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager$DualDisplayListener;

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/transsion/hubsdk/aosp/hardware/display/TranAospDisplayManager;->access$000()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invoke, methodName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", args:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "onDisplayAdded"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/hardware/display/TranAospDisplayManager$TranListenerWrapper;->mListener:Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager$DualDisplayListener;

    aget-object p1, p3, v0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager$DualDisplayListener;->onDisplayAdded(I)V

    goto :goto_0

    :cond_0
    const-string p2, "onDisplayRemoved"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/hardware/display/TranAospDisplayManager$TranListenerWrapper;->mListener:Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager$DualDisplayListener;

    aget-object p1, p3, v0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager$DualDisplayListener;->onDisplayRemoved(I)V

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method
