.class public interface abstract Lapp/fast/ssh/BillingManager$TokenExchange$Callback;
.super Ljava/lang/Object;
.source "BillingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lapp/fast/ssh/BillingManager$TokenExchange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onInvalid()V
.end method

.method public abstract onUnreachable()V
.end method

.method public abstract onValid(Ljava/lang/String;J)V
.end method
