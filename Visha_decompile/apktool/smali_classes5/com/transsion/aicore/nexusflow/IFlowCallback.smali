.class public interface abstract Lcom/transsion/aicore/nexusflow/IFlowCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/aicore/nexusflow/IFlowCallback$a;,
        Lcom/transsion/aicore/nexusflow/IFlowCallback$Stub;,
        Lcom/transsion/aicore/nexusflow/IFlowCallback$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.transsion.aicore.nexusflow.IFlowCallback"


# virtual methods
.method public abstract onResult(Landroid/os/Bundle;)V
.end method

.method public abstract onStreamResult(Landroid/os/Bundle;Landroid/os/ParcelFileDescriptor;)V
.end method
