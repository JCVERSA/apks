.class public interface abstract Lcom/transsion/aicore/nexusflow/IFlowDispatcher;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/aicore/nexusflow/IFlowDispatcher$a;,
        Lcom/transsion/aicore/nexusflow/IFlowDispatcher$Stub;,
        Lcom/transsion/aicore/nexusflow/IFlowDispatcher$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.transsion.aicore.nexusflow.IFlowDispatcher"


# virtual methods
.method public abstract getConfigJson(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getConfigVersion(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract launchAiTask(Landroid/os/Bundle;Lcom/transsion/aicore/nexusflow/IFlowCallback;)V
.end method

.method public abstract registerDisconnectCallback(Lcom/transsion/aicore/nexusflow/IDisconnectCallback;)V
.end method

.method public abstract stopFlow(Ljava/lang/String;)V
.end method

.method public abstract transportStream(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V
.end method

.method public abstract unregisterDisconnectCallback(Lcom/transsion/aicore/nexusflow/IDisconnectCallback;)V
.end method
