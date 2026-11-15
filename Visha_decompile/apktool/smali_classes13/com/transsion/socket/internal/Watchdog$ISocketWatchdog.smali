.class public interface abstract Lcom/transsion/socket/internal/Watchdog$ISocketWatchdog;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/socket/internal/Watchdog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ISocketWatchdog"
.end annotation


# virtual methods
.method public abstract isTimeOut()Z
.end method

.method public abstract onCallHeartBeat()V
.end method

.method public abstract onTimeOut()V
.end method
