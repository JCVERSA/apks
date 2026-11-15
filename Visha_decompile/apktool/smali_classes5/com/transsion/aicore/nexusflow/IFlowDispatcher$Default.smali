.class public Lcom/transsion/aicore/nexusflow/IFlowDispatcher$Default;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/aicore/nexusflow/IFlowDispatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/aicore/nexusflow/IFlowDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getConfigJson(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getConfigVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public launchAiTask(Landroid/os/Bundle;Lcom/transsion/aicore/nexusflow/IFlowCallback;)V
    .locals 0

    return-void
.end method

.method public registerDisconnectCallback(Lcom/transsion/aicore/nexusflow/IDisconnectCallback;)V
    .locals 0

    return-void
.end method

.method public stopFlow(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public transportStream(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V
    .locals 0

    return-void
.end method

.method public unregisterDisconnectCallback(Lcom/transsion/aicore/nexusflow/IDisconnectCallback;)V
    .locals 0

    return-void
.end method
