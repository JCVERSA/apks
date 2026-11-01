.class public final Lapp/fast/ssh/Subscription;
.super Ljava/lang/Object;
.source "Subscription.java"


# instance fields
.field private final store:Lapp/fast/ssh/BillingManager$SubscriptionStore;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lapp/fast/ssh/PrefsSubscriptionStore;

    invoke-direct {v0, p1}, Lapp/fast/ssh/PrefsSubscriptionStore;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lapp/fast/ssh/Subscription;->store:Lapp/fast/ssh/BillingManager$SubscriptionStore;

    return-void
.end method

.method public constructor <init>(Lapp/fast/ssh/BillingManager$SubscriptionStore;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lapp/fast/ssh/Subscription;->store:Lapp/fast/ssh/BillingManager$SubscriptionStore;

    return-void
.end method


# virtual methods
.method public isActive()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lapp/fast/ssh/Subscription;->store:Lapp/fast/ssh/BillingManager$SubscriptionStore;

    invoke-interface {v0}, Lapp/fast/ssh/BillingManager$SubscriptionStore;->getSubscriptionToken()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public shouldRequestAds()Z
    .locals 1

    invoke-virtual {p0}, Lapp/fast/ssh/Subscription;->isActive()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public shouldShowAddTime()Z
    .locals 1

    invoke-virtual {p0}, Lapp/fast/ssh/Subscription;->isActive()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public shouldShowTimer()Z
    .locals 1

    invoke-virtual {p0}, Lapp/fast/ssh/Subscription;->isActive()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public token()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lapp/fast/ssh/Subscription;->store:Lapp/fast/ssh/BillingManager$SubscriptionStore;

    invoke-interface {v0}, Lapp/fast/ssh/BillingManager$SubscriptionStore;->getSubscriptionToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
