.class public interface abstract Lcom/transsion/aicore/nexusflow/IAapService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/aicore/nexusflow/IAapService$a;,
        Lcom/transsion/aicore/nexusflow/IAapService$Stub;,
        Lcom/transsion/aicore/nexusflow/IAapService$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.transsion.aicore.nexusflow.IAapService"


# virtual methods
.method public abstract release()V
.end method

.method public abstract sendCommand(Landroid/os/Bundle;)V
.end method

.method public abstract setCallback(Lcom/transsion/aicore/nexusflow/IAapCallback;)V
.end method
