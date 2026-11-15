.class public interface abstract Lcom/transsion/aicore/nexusflow/SmartAnswer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/aicore/nexusflow/SmartAnswer$Stub;
    }
.end annotation


# virtual methods
.method public abstract sendCommand(Landroid/os/Bundle;)V
.end method

.method public abstract setCallback(Lcom/transsion/aicore/nexusflow/SmartAnswerCallback;)V
.end method

.method public abstract stopSmartAnswer(Landroid/os/Bundle;)V
.end method
