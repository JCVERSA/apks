.class public final synthetic Ln2b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;


# instance fields
.field public final synthetic a:Lcom/transsion/hubsdk/core/hardware/devicestate/TranThubDeviceStateManager;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/hubsdk/core/hardware/devicestate/TranThubDeviceStateManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln2b;->a:Lcom/transsion/hubsdk/core/hardware/devicestate/TranThubDeviceStateManager;

    return-void
.end method


# virtual methods
.method public final run()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Ln2b;->a:Lcom/transsion/hubsdk/core/hardware/devicestate/TranThubDeviceStateManager;

    invoke-static {p0}, Lcom/transsion/hubsdk/core/hardware/devicestate/TranThubDeviceStateManager;->a(Lcom/transsion/hubsdk/core/hardware/devicestate/TranThubDeviceStateManager;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
