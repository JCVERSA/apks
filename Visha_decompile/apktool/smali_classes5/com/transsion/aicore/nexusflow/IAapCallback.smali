.class public interface abstract Lcom/transsion/aicore/nexusflow/IAapCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/aicore/nexusflow/IAapCallback$a;,
        Lcom/transsion/aicore/nexusflow/IAapCallback$Stub;,
        Lcom/transsion/aicore/nexusflow/IAapCallback$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.transsion.aicore.nexusflow.IAapCallback"


# virtual methods
.method public abstract onData(Landroid/os/Bundle;)V
.end method

.method public abstract onError(ILjava/lang/String;)V
.end method

.method public abstract onEvent(I)V
.end method
