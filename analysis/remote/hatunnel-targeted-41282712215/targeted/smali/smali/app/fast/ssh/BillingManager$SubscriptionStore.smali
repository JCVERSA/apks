.class public interface abstract Lapp/fast/ssh/BillingManager$SubscriptionStore;
.super Ljava/lang/Object;
.source "BillingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lapp/fast/ssh/BillingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SubscriptionStore"
.end annotation


# virtual methods
.method public abstract clear()V
.end method

.method public abstract getPurchaseToken()Ljava/lang/String;
.end method

.method public abstract getRefreshWindowMillis()J
.end method

.method public abstract getSubscriptionToken()Ljava/lang/String;
.end method

.method public abstract getTokenExpiresAtMillis()J
.end method

.method public abstract save(Ljava/lang/String;J)V
.end method

.method public abstract savePurchaseToken(Ljava/lang/String;)V
.end method
