.class public interface abstract Lapp/fast/ssh/util/ResourceUpdater$UpdateListener;
.super Ljava/lang/Object;
.source "ResourceUpdater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lapp/fast/ssh/util/ResourceUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "UpdateListener"
.end annotation


# virtual methods
.method public abstract onErrorOccurred()V
.end method

.method public abstract onResponseReceived(Lorg/json/JSONObject;)V
.end method
