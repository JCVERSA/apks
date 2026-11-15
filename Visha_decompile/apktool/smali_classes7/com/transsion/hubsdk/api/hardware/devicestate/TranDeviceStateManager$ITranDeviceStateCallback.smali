.class public interface abstract Lcom/transsion/hubsdk/api/hardware/devicestate/TranDeviceStateManager$ITranDeviceStateCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/hubsdk/api/hardware/devicestate/TranDeviceStateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ITranDeviceStateCallback"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# virtual methods
.method public abstract onBaseStateChanged(I)V
.end method

.method public abstract onStateChanged(I)V
.end method

.method public abstract onSupportedStatesChanged([I)V
.end method
