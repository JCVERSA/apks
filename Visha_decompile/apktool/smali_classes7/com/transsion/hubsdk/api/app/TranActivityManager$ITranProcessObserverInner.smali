.class public interface abstract Lcom/transsion/hubsdk/api/app/TranActivityManager$ITranProcessObserverInner;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/hubsdk/api/app/TranActivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ITranProcessObserverInner"
.end annotation


# virtual methods
.method public abstract onForegroundActivitiesChanged(IIZ)V
.end method

.method public abstract onForegroundServicesChanged(III)V
.end method

.method public abstract onProcessDied(II)V
.end method
