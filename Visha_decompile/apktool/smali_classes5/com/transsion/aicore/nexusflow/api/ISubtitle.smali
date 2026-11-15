.class public interface abstract Lcom/transsion/aicore/nexusflow/api/ISubtitle;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# virtual methods
.method public abstract getState()Lcom/transsion/aicore/nexusflow/constant/State;
.end method

.method public abstract release()V
.end method

.method public abstract setCallback(Lcom/transsion/aicore/nexusflow/IAapCallback$Stub;)V
.end method

.method public abstract start(Lcom/transsion/aicore/nexusflow/bean/SubtitleBean;)V
.end method

.method public abstract stop()V
.end method

.method public abstract stop(I)V
.end method

.method public abstract translate(Ljava/lang/String;)V
.end method

.method public abstract update(Lcom/transsion/aicore/nexusflow/bean/SubtitleBean;)V
.end method
