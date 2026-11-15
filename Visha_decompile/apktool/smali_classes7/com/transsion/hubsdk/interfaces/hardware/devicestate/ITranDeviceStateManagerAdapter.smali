.class public interface abstract Lcom/transsion/hubsdk/interfaces/hardware/devicestate/ITranDeviceStateManagerAdapter;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getCurrentState()I
.end method

.method public abstract registerCallback(Ljava/util/concurrent/Executor;Lcom/transsion/hubsdk/aosp/hardware/devicestate/TranAospDeviceStateManagerExt$ITranDeviceStateCallback;)V
.end method

.method public abstract unregisterCallback(Lcom/transsion/hubsdk/aosp/hardware/devicestate/TranAospDeviceStateManagerExt$ITranDeviceStateCallback;)V
.end method
