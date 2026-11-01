.class public Lapp/fast/ssh/BillingManager;
.super Ljava/lang/Object;
.source "BillingManager.java"

# interfaces
.implements Lcom/android/billingclient/api/PurchasesUpdatedListener;
.implements Lcom/android/billingclient/api/BillingClientStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lapp/fast/ssh/BillingManager$SessionControl;,
        Lapp/fast/ssh/BillingManager$SubscriptionStore;,
        Lapp/fast/ssh/BillingManager$State;,
        Lapp/fast/ssh/BillingManager$TokenExchange;,
        Lapp/fast/ssh/BillingManager$StateListener;
    }
.end annotation


# static fields
.field private static final FORCE_DEBOUNCE_MS:J = 0x7530L

.field private static final MIN_REDEEM_INTERVAL_MS:J = 0xea60L

.field public static final PRODUCT_ID:Ljava/lang/String;

.field private static final RECONNECT_BASE_MS:J = 0x3e8L

.field private static final RECONNECT_MAX_MS:J = 0xea60L

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private cachedProduct:Lcom/android/billingclient/api/ProductDetails;

.field private final client:Lcom/android/billingclient/api/BillingClient;

.field private final exchange:Lapp/fast/ssh/BillingManager$TokenExchange;

.field private final handler:Landroid/os/Handler;

.field private lastForcedAt:J

.field private lastRedeemAt:J

.field private reconnectDelayMs:J

.field private session:Lapp/fast/ssh/BillingManager$SessionControl;

.field private state:Lapp/fast/ssh/BillingManager$State;

.field private stateListener:Lapp/fast/ssh/BillingManager$StateListener;

.field private final store:Lapp/fast/ssh/BillingManager$SubscriptionStore;

.field private final userId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "\u2e16"

    invoke-static {v0}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lapp/fast/ssh/BillingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "\u2e20"

    invoke-static {v0}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lapp/fast/ssh/BillingManager;->PRODUCT_ID:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lapp/fast/ssh/BillingManager$TokenExchange;Lapp/fast/ssh/BillingManager$SubscriptionStore;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lapp/fast/ssh/BillingManager;->handler:Landroid/os/Handler;

    sget-object v0, Lapp/fast/ssh/BillingManager$State;->UNKNOWN:Lapp/fast/ssh/BillingManager$State;

    iput-object v0, p0, Lapp/fast/ssh/BillingManager;->state:Lapp/fast/ssh/BillingManager$State;

    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lapp/fast/ssh/BillingManager;->reconnectDelayMs:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lapp/fast/ssh/BillingManager;->lastRedeemAt:J

    iput-wide v0, p0, Lapp/fast/ssh/BillingManager;->lastForcedAt:J

    iput-object p2, p0, Lapp/fast/ssh/BillingManager;->exchange:Lapp/fast/ssh/BillingManager$TokenExchange;

    iput-object p3, p0, Lapp/fast/ssh/BillingManager;->store:Lapp/fast/ssh/BillingManager$SubscriptionStore;

    iput-object p4, p0, Lapp/fast/ssh/BillingManager;->userId:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/billingclient/api/BillingClient;->newBuilder(Landroid/content/Context;)Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/billingclient/api/BillingClient$Builder;->setListener(Lcom/android/billingclient/api/PurchasesUpdatedListener;)Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object p1

    invoke-static {}, Lcom/android/billingclient/api/PendingPurchasesParams;->newBuilder()Lcom/android/billingclient/api/PendingPurchasesParams$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/billingclient/api/PendingPurchasesParams$Builder;->enableOneTimeProducts()Lcom/android/billingclient/api/PendingPurchasesParams$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/billingclient/api/PendingPurchasesParams$Builder;->build()Lcom/android/billingclient/api/PendingPurchasesParams;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/billingclient/api/BillingClient$Builder;->enablePendingPurchases(Lcom/android/billingclient/api/PendingPurchasesParams;)Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingClient$Builder;->build()Lcom/android/billingclient/api/BillingClient;

    move-result-object p1

    iput-object p1, p0, Lapp/fast/ssh/BillingManager;->client:Lcom/android/billingclient/api/BillingClient;

    return-void
.end method

.method static synthetic access$000(Lapp/fast/ssh/BillingManager;)Lcom/android/billingclient/api/BillingClient;
    .locals 0

    iget-object p0, p0, Lapp/fast/ssh/BillingManager;->client:Lcom/android/billingclient/api/BillingClient;

    return-object p0
.end method

.method static synthetic access$100(I)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lapp/fast/ssh/BillingManager;->describe(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lapp/fast/ssh/BillingManager;Lapp/fast/ssh/BillingManager$State;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lapp/fast/ssh/BillingManager;->setState(Lapp/fast/ssh/BillingManager$State;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lapp/fast/ssh/BillingManager;)Lapp/fast/ssh/BillingManager$SubscriptionStore;
    .locals 0

    iget-object p0, p0, Lapp/fast/ssh/BillingManager;->store:Lapp/fast/ssh/BillingManager$SubscriptionStore;

    return-object p0
.end method

.method static synthetic access$400(Lapp/fast/ssh/BillingManager;)Lapp/fast/ssh/BillingManager$SessionControl;
    .locals 0

    iget-object p0, p0, Lapp/fast/ssh/BillingManager;->session:Lapp/fast/ssh/BillingManager$SessionControl;

    return-object p0
.end method

.method private static describe(I)Ljava/lang/String;
    .locals 2

    .prologue
    const/16 v0, 0xc

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\u2e09"

    invoke-static {v1}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string/jumbo p0, "\u2e0a"

    invoke-static {p0}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1
    const-string/jumbo p0, "\u2e0b"

    invoke-static {p0}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_2
    const-string/jumbo p0, "\u2e0c"

    invoke-static {p0}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_3
    const-string/jumbo p0, "\u2e0d"

    invoke-static {p0}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_4
    const-string/jumbo p0, "\u2e0e"

    invoke-static {p0}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_5
    const-string/jumbo p0, "\u2e0f"

    invoke-static {p0}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_6
    const-string/jumbo p0, "\u2e10"

    invoke-static {p0}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_7
    const-string/jumbo p0, "\u2e11"

    invoke-static {p0}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_8
    const-string/jumbo p0, "\u2e12"

    invoke-static {p0}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_9
    const-string/jumbo p0, "\u2e13"

    invoke-static {p0}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_a
    const-string/jumbo p0, "\u2e14"

    invoke-static {p0}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string/jumbo p0, "\u2e15"

    invoke-static {p0}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private launch(Landroid/app/Activity;Lcom/android/billingclient/api/ProductDetails;)V
    .locals 6

    .prologue
    invoke-virtual {p2}, Lcom/android/billingclient/api/ProductDetails;->getSubscriptionOfferDetails()Ljava/util/List;

    move-result-object v0

    const-string/jumbo v1, "\u2e16"

    invoke-static {v1}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_0

    :cond_0
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "\u2e17"

    invoke-static {v5}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;->getBasePlanId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "\u2e18"

    invoke-static {v5}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;->getOfferId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "\u2e19"

    invoke-static {v5}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    invoke-virtual {v3}, Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;->getPricingPhases()Lcom/android/billingclient/api/ProductDetails$PricingPhases;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/billingclient/api/ProductDetails$PricingPhases;->getPricingPhaseList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/billingclient/api/ProductDetails$PricingPhase;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u2e1a"

    invoke-static {v4}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/billingclient/api/ProductDetails$PricingPhase;->getFormattedPrice()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u2e1b"

    invoke-static {v4}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/billingclient/api/ProductDetails$PricingPhase;->getPriceCurrencyCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u2e1c"

    invoke-static {v4}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/billingclient/api/ProductDetails$PricingPhase;->getBillingPeriod()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    :cond_1
    invoke-static {}, Lcom/android/billingclient/api/BillingFlowParams;->newBuilder()Lcom/android/billingclient/api/BillingFlowParams$Builder;

    move-result-object v0

    invoke-static {}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;->newBuilder()Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;->setProductDetails(Lcom/android/billingclient/api/ProductDetails;)Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;

    move-result-object p2

    invoke-virtual {v3}, Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;->getOfferToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;->setOfferToken(Ljava/lang/String;)Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;->build()Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->setProductDetailsParamsList(Ljava/util/List;)Lcom/android/billingclient/api/BillingFlowParams$Builder;

    move-result-object p2

    iget-object v0, p0, Lapp/fast/ssh/BillingManager;->userId:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->setObfuscatedAccountId(Ljava/lang/String;)Lcom/android/billingclient/api/BillingFlowParams$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->build()Lcom/android/billingclient/api/BillingFlowParams;

    move-result-object p2

    iget-object v0, p0, Lapp/fast/ssh/BillingManager;->handler:Landroid/os/Handler;

    new-instance v1, Lapp/fast/ssh/BillingManager$3;

    invoke-direct {v1, p0, p1, p2}, Lapp/fast/ssh/BillingManager$3;-><init>(Lapp/fast/ssh/BillingManager;Landroid/app/Activity;Lcom/android/billingclient/api/BillingFlowParams;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_2
    :goto_0
    const-string/jumbo p1, "\u2e1d"

    invoke-static {p1}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    nop

    sget-object p1, Lapp/fast/ssh/BillingManager$State;->FAILED:Lapp/fast/ssh/BillingManager$State;

    const-string/jumbo p2, "\u2e1e"

    invoke-static {p2}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lapp/fast/ssh/BillingManager;->setState(Lapp/fast/ssh/BillingManager$State;Ljava/lang/String;)V

    return-void
.end method

.method private redeem(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lapp/fast/ssh/BillingManager;->redeem(Ljava/lang/String;Z)V

    return-void
.end method

.method private redeem(Ljava/lang/String;Z)V
    .locals 6

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    if-nez p2, :cond_0

    iget-wide v2, p0, Lapp/fast/ssh/BillingManager;->lastRedeemAt:J

    sub-long v2, v0, v2

    const-wide/32 v4, 0xea60

    cmp-long p2, v2, v4

    if-gez p2, :cond_0

    const-string/jumbo p1, "\u2e16"

    invoke-static {p1}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "\u2e1f"

    invoke-static {p2}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    nop

    return-void

    :cond_0
    iput-wide v0, p0, Lapp/fast/ssh/BillingManager;->lastRedeemAt:J

    iget-object p2, p0, Lapp/fast/ssh/BillingManager;->exchange:Lapp/fast/ssh/BillingManager$TokenExchange;

    iget-object v0, p0, Lapp/fast/ssh/BillingManager;->userId:Ljava/lang/String;

    new-instance v1, Lapp/fast/ssh/BillingManager$4;

    invoke-direct {v1, p0}, Lapp/fast/ssh/BillingManager$4;-><init>(Lapp/fast/ssh/BillingManager;)V

    invoke-interface {p2, p1, v0, v1}, Lapp/fast/ssh/BillingManager$TokenExchange;->redeem(Ljava/lang/String;Ljava/lang/String;Lapp/fast/ssh/BillingManager$TokenExchange$Callback;)V

    return-void
.end method

.method private scheduleReconnect()V
    .locals 6

    iget-wide v0, p0, Lapp/fast/ssh/BillingManager;->reconnectDelayMs:J

    const-wide/16 v2, 0x2

    mul-long/2addr v2, v0

    const-wide/32 v4, 0xea60

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lapp/fast/ssh/BillingManager;->reconnectDelayMs:J

    iget-object v2, p0, Lapp/fast/ssh/BillingManager;->handler:Landroid/os/Handler;

    new-instance v3, Lapp/fast/ssh/BillingManager$2;

    invoke-direct {v3, p0}, Lapp/fast/ssh/BillingManager$2;-><init>(Lapp/fast/ssh/BillingManager;)V

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private setState(Lapp/fast/ssh/BillingManager$State;Ljava/lang/String;)V
    .locals 3

    .prologue
    iput-object p1, p0, Lapp/fast/ssh/BillingManager;->state:Lapp/fast/ssh/BillingManager$State;

    iget-object v0, p0, Lapp/fast/ssh/BillingManager;->stateListener:Lapp/fast/ssh/BillingManager$StateListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lapp/fast/ssh/BillingManager;->handler:Landroid/os/Handler;

    new-instance v2, Lapp/fast/ssh/BillingManager$1;

    invoke-direct {v2, p0, v0, p1, p2}, Lapp/fast/ssh/BillingManager$1;-><init>(Lapp/fast/ssh/BillingManager;Lapp/fast/ssh/BillingManager$StateListener;Lapp/fast/ssh/BillingManager$State;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private warmProduct()V
    .locals 3

    invoke-static {}, Lcom/android/billingclient/api/QueryProductDetailsParams;->newBuilder()Lcom/android/billingclient/api/QueryProductDetailsParams$Builder;

    move-result-object v0

    invoke-static {}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product;->newBuilder()Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;

    move-result-object v1

    const-string/jumbo v2, "\u2e20"

    invoke-static {v2}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;->setProductId(Ljava/lang/String;)Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;

    move-result-object v1

    const-string/jumbo v2, "\u2e21"

    invoke-static {v2}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;->setProductType(Ljava/lang/String;)Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;->build()Lcom/android/billingclient/api/QueryProductDetailsParams$Product;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/QueryProductDetailsParams$Builder;->setProductList(Ljava/util/List;)Lcom/android/billingclient/api/QueryProductDetailsParams$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/billingclient/api/QueryProductDetailsParams$Builder;->build()Lcom/android/billingclient/api/QueryProductDetailsParams;

    move-result-object v0

    iget-object v1, p0, Lapp/fast/ssh/BillingManager;->client:Lcom/android/billingclient/api/BillingClient;

    new-instance v2, Lapp/fast/ssh/BillingManager$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lapp/fast/ssh/BillingManager$$ExternalSyntheticLambda2;-><init>(Lapp/fast/ssh/BillingManager;)V

    invoke-virtual {v1, v0, v2}, Lcom/android/billingclient/api/BillingClient;->queryProductDetailsAsync(Lcom/android/billingclient/api/QueryProductDetailsParams;Lcom/android/billingclient/api/ProductDetailsResponseListener;)V

    return-void
.end method


# virtual methods
.method public getState()Lapp/fast/ssh/BillingManager$State;
    .locals 1

    iget-object v0, p0, Lapp/fast/ssh/BillingManager;->state:Lapp/fast/ssh/BillingManager$State;

    return-object v0
.end method

.method synthetic lambda$purchase$1$app-fast-ssh-BillingManager(Landroid/app/Activity;Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/QueryProductDetailsResult;)V
    .locals 4

    .prologue
    invoke-virtual {p2}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    invoke-virtual {p3}, Lcom/android/billingclient/api/QueryProductDetailsResult;->getProductDetailsList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u2e22"

    invoke-static {v3}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u2e23"

    invoke-static {v3}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p2, "\u2e24"

    invoke-static {p2}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v1, "\u2e16"

    invoke-static {v1}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    nop

    if-eqz v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "\u2e25"

    invoke-static {p2}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lapp/fast/ssh/BillingManager;->describe(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    nop

    sget-object p1, Lapp/fast/ssh/BillingManager$State;->FAILED:Lapp/fast/ssh/BillingManager$State;

    invoke-static {v0}, Lapp/fast/ssh/BillingManager;->describe(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lapp/fast/ssh/BillingManager;->setState(Lapp/fast/ssh/BillingManager$State;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p3}, Lcom/android/billingclient/api/QueryProductDetailsResult;->getProductDetailsList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    const-string/jumbo p1, "\u2e26"

    invoke-static {p1}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    nop

    sget-object p1, Lapp/fast/ssh/BillingManager$State;->FAILED:Lapp/fast/ssh/BillingManager$State;

    const-string/jumbo p2, "\u2e27"

    invoke-static {p2}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lapp/fast/ssh/BillingManager;->setState(Lapp/fast/ssh/BillingManager$State;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {p3}, Lcom/android/billingclient/api/QueryProductDetailsResult;->getProductDetailsList()Ljava/util/List;

    move-result-object p2

    const/4 p3, 0x0

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/billingclient/api/ProductDetails;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "\u2e28"

    invoke-static {v0}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/android/billingclient/api/ProductDetails;->getProductId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "\u2e29"

    invoke-static {v0}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/billingclient/api/ProductDetails;->getProductType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "\u2e2a"

    invoke-static {v0}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/billingclient/api/ProductDetails;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    nop

    iput-object p2, p0, Lapp/fast/ssh/BillingManager;->cachedProduct:Lcom/android/billingclient/api/ProductDetails;

    invoke-direct {p0, p1, p2}, Lapp/fast/ssh/BillingManager;->launch(Landroid/app/Activity;Lcom/android/billingclient/api/ProductDetails;)V

    return-void
.end method

.method synthetic lambda$restore$2$app-fast-ssh-BillingManager(ZLcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 3

    .prologue
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/billingclient/api/Purchase;

    invoke-virtual {p3}, Lcom/android/billingclient/api/Purchase;->getPurchaseState()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_1
    move-object p3, v0

    :goto_0
    if-eqz p3, :cond_2

    iget-object p2, p0, Lapp/fast/ssh/BillingManager;->store:Lapp/fast/ssh/BillingManager$SubscriptionStore;

    invoke-virtual {p3}, Lcom/android/billingclient/api/Purchase;->getPurchaseToken()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lapp/fast/ssh/BillingManager$SubscriptionStore;->savePurchaseToken(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/android/billingclient/api/Purchase;->getPurchaseToken()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lapp/fast/ssh/BillingManager;->redeem(Ljava/lang/String;Z)V

    return-void

    :cond_2
    iget-object p2, p0, Lapp/fast/ssh/BillingManager;->store:Lapp/fast/ssh/BillingManager$SubscriptionStore;

    invoke-interface {p2}, Lapp/fast/ssh/BillingManager$SubscriptionStore;->getPurchaseToken()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_3

    const-string/jumbo p3, "\u2e16"

    invoke-static {p3}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string/jumbo v0, "\u2e2b"

    invoke-static {v0}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    invoke-direct {p0, p2, p1}, Lapp/fast/ssh/BillingManager;->redeem(Ljava/lang/String;Z)V

    return-void

    :cond_3
    iget-object p1, p0, Lapp/fast/ssh/BillingManager;->store:Lapp/fast/ssh/BillingManager$SubscriptionStore;

    invoke-interface {p1}, Lapp/fast/ssh/BillingManager$SubscriptionStore;->getSubscriptionToken()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_4

    sget-object p1, Lapp/fast/ssh/BillingManager$State;->NOT_SUBSCRIBED:Lapp/fast/ssh/BillingManager$State;

    invoke-direct {p0, p1, v0}, Lapp/fast/ssh/BillingManager;->setState(Lapp/fast/ssh/BillingManager$State;Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method synthetic lambda$warmProduct$0$app-fast-ssh-BillingManager(Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/QueryProductDetailsResult;)V
    .locals 2

    .prologue
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    const-string/jumbo v1, "\u2e16"

    invoke-static {v1}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lcom/android/billingclient/api/QueryProductDetailsResult;->getProductDetailsList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lcom/android/billingclient/api/QueryProductDetailsResult;->getProductDetailsList()Ljava/util/List;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/billingclient/api/ProductDetails;

    iput-object p1, p0, Lapp/fast/ssh/BillingManager;->cachedProduct:Lcom/android/billingclient/api/ProductDetails;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "\u2e2c"

    invoke-static {p2}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lapp/fast/ssh/BillingManager;->cachedProduct:Lcom/android/billingclient/api/ProductDetails;

    invoke-virtual {p2}, Lcom/android/billingclient/api/ProductDetails;->getProductId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    nop

    return-void

    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "\u2e2d"

    invoke-static {v0}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "\u2e1b"

    invoke-static {v0}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p1

    invoke-static {p1}, Lapp/fast/ssh/BillingManager;->describe(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "\u2e2e"

    invoke-static {p1}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    nop

    return-void
.end method

.method public onBillingServiceDisconnected()V
    .locals 0

    invoke-direct {p0}, Lapp/fast/ssh/BillingManager;->scheduleReconnect()V

    return-void
.end method

.method public onBillingSetupFinished(Lcom/android/billingclient/api/BillingResult;)V
    .locals 2

    .prologue
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lapp/fast/ssh/BillingManager;->scheduleReconnect()V

    return-void

    :cond_0
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lapp/fast/ssh/BillingManager;->reconnectDelayMs:J

    invoke-virtual {p0}, Lapp/fast/ssh/BillingManager;->restore()V

    invoke-direct {p0}, Lapp/fast/ssh/BillingManager;->warmProduct()V

    return-void
.end method

.method public onPurchasesUpdated(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/BillingResult;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/Purchase;",
            ">;)V"
        }
    .end annotation

    .prologue
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-eq v0, v1, :cond_2

    const/4 p2, 0x7

    if-eq v0, p2, :cond_0

    sget-object p2, Lapp/fast/ssh/BillingManager$State;->FAILED:Lapp/fast/ssh/BillingManager$State;

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p1

    invoke-static {p1}, Lapp/fast/ssh/BillingManager;->describe(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lapp/fast/ssh/BillingManager;->setState(Lapp/fast/ssh/BillingManager$State;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lapp/fast/ssh/BillingManager;->restore()V

    return-void

    :cond_1
    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/billingclient/api/Purchase;

    iget-object v0, p0, Lapp/fast/ssh/BillingManager;->store:Lapp/fast/ssh/BillingManager$SubscriptionStore;

    invoke-virtual {p2}, Lcom/android/billingclient/api/Purchase;->getPurchaseToken()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lapp/fast/ssh/BillingManager$SubscriptionStore;->savePurchaseToken(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/android/billingclient/api/Purchase;->getPurchaseToken()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2, v1}, Lapp/fast/ssh/BillingManager;->redeem(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onServerRequestedRefresh()V
    .locals 6

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lapp/fast/ssh/BillingManager;->lastForcedAt:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x7530

    cmp-long v2, v2, v4

    const-string/jumbo v3, "\u2e16"

    invoke-static {v3}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-gez v2, :cond_0

    const-string/jumbo v0, "\u2e2f"

    invoke-static {v0}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    return-void

    :cond_0
    iput-wide v0, p0, Lapp/fast/ssh/BillingManager;->lastForcedAt:J

    const-string/jumbo v0, "\u2e30"

    invoke-static {v0}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lapp/fast/ssh/BillingManager;->restore(Z)V

    return-void
.end method

.method public purchase(Landroid/app/Activity;)V
    .locals 3

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\u2e31"

    invoke-static {v1}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lapp/fast/ssh/BillingManager;->client:Lcom/android/billingclient/api/BillingClient;

    invoke-virtual {v1}, Lcom/android/billingclient/api/BillingClient;->isReady()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\u2e32"

    invoke-static {v1}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lapp/fast/ssh/BillingManager;->cachedProduct:Lcom/android/billingclient/api/ProductDetails;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\u2e33"

    invoke-static {v1}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "\u2e16"

    invoke-static {v1}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    nop

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lapp/fast/ssh/BillingManager;->client:Lcom/android/billingclient/api/BillingClient;

    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingClient;->isReady()Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo p1, "\u2e34"

    invoke-static {p1}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    nop

    sget-object p1, Lapp/fast/ssh/BillingManager$State;->FAILED:Lapp/fast/ssh/BillingManager$State;

    const-string/jumbo v0, "\u2e35"

    invoke-static {v0}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lapp/fast/ssh/BillingManager;->setState(Lapp/fast/ssh/BillingManager$State;Ljava/lang/String;)V

    iget-object p1, p0, Lapp/fast/ssh/BillingManager;->client:Lcom/android/billingclient/api/BillingClient;

    invoke-virtual {p1, p0}, Lcom/android/billingclient/api/BillingClient;->startConnection(Lcom/android/billingclient/api/BillingClientStateListener;)V

    return-void

    :cond_2
    iget-object v0, p0, Lapp/fast/ssh/BillingManager;->cachedProduct:Lcom/android/billingclient/api/ProductDetails;

    if-eqz v0, :cond_3

    invoke-direct {p0, p1, v0}, Lapp/fast/ssh/BillingManager;->launch(Landroid/app/Activity;Lcom/android/billingclient/api/ProductDetails;)V

    return-void

    :cond_3
    invoke-static {}, Lcom/android/billingclient/api/QueryProductDetailsParams;->newBuilder()Lcom/android/billingclient/api/QueryProductDetailsParams$Builder;

    move-result-object v0

    invoke-static {}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product;->newBuilder()Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;

    move-result-object v1

    const-string/jumbo v2, "\u2e20"

    invoke-static {v2}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;->setProductId(Ljava/lang/String;)Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;

    move-result-object v1

    const-string/jumbo v2, "\u2e21"

    invoke-static {v2}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;->setProductType(Ljava/lang/String;)Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;->build()Lcom/android/billingclient/api/QueryProductDetailsParams$Product;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/QueryProductDetailsParams$Builder;->setProductList(Ljava/util/List;)Lcom/android/billingclient/api/QueryProductDetailsParams$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/billingclient/api/QueryProductDetailsParams$Builder;->build()Lcom/android/billingclient/api/QueryProductDetailsParams;

    move-result-object v0

    iget-object v1, p0, Lapp/fast/ssh/BillingManager;->client:Lcom/android/billingclient/api/BillingClient;

    new-instance v2, Lapp/fast/ssh/BillingManager$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1}, Lapp/fast/ssh/BillingManager$$ExternalSyntheticLambda1;-><init>(Lapp/fast/ssh/BillingManager;Landroid/app/Activity;)V

    invoke-virtual {v1, v0, v2}, Lcom/android/billingclient/api/BillingClient;->queryProductDetailsAsync(Lcom/android/billingclient/api/QueryProductDetailsParams;Lcom/android/billingclient/api/ProductDetailsResponseListener;)V

    return-void

    :cond_4
    :goto_1
    const-string/jumbo p1, "\u2e36"

    invoke-static {p1}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    nop

    sget-object p1, Lapp/fast/ssh/BillingManager$State;->FAILED:Lapp/fast/ssh/BillingManager$State;

    const-string/jumbo v0, "\u2e37"

    invoke-static {v0}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lapp/fast/ssh/BillingManager;->setState(Lapp/fast/ssh/BillingManager$State;Ljava/lang/String;)V

    return-void
.end method

.method public refreshIfNeeded()V
    .locals 6

    .prologue
    iget-object v0, p0, Lapp/fast/ssh/BillingManager;->store:Lapp/fast/ssh/BillingManager$SubscriptionStore;

    invoke-interface {v0}, Lapp/fast/ssh/BillingManager$SubscriptionStore;->getSubscriptionToken()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lapp/fast/ssh/BillingManager;->store:Lapp/fast/ssh/BillingManager$SubscriptionStore;

    invoke-interface {v2}, Lapp/fast/ssh/BillingManager$SubscriptionStore;->getTokenExpiresAtMillis()J

    move-result-wide v2

    iget-object v4, p0, Lapp/fast/ssh/BillingManager;->store:Lapp/fast/ssh/BillingManager$SubscriptionStore;

    invoke-interface {v4}, Lapp/fast/ssh/BillingManager$SubscriptionStore;->getRefreshWindowMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lapp/fast/ssh/BillingManager;->restore()V

    :cond_2
    :goto_0
    return-void
.end method

.method public restore()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lapp/fast/ssh/BillingManager;->restore(Z)V

    return-void
.end method

.method public restore(Z)V
    .locals 3

    invoke-static {}, Lcom/android/billingclient/api/QueryPurchasesParams;->newBuilder()Lcom/android/billingclient/api/QueryPurchasesParams$Builder;

    move-result-object v0

    const-string/jumbo v1, "\u2e21"

    invoke-static {v1}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/QueryPurchasesParams$Builder;->setProductType(Ljava/lang/String;)Lcom/android/billingclient/api/QueryPurchasesParams$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/billingclient/api/QueryPurchasesParams$Builder;->build()Lcom/android/billingclient/api/QueryPurchasesParams;

    move-result-object v0

    iget-object v1, p0, Lapp/fast/ssh/BillingManager;->client:Lcom/android/billingclient/api/BillingClient;

    new-instance v2, Lapp/fast/ssh/BillingManager$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1}, Lapp/fast/ssh/BillingManager$$ExternalSyntheticLambda0;-><init>(Lapp/fast/ssh/BillingManager;Z)V

    invoke-virtual {v1, v0, v2}, Lcom/android/billingclient/api/BillingClient;->queryPurchasesAsync(Lcom/android/billingclient/api/QueryPurchasesParams;Lcom/android/billingclient/api/PurchasesResponseListener;)V

    return-void
.end method

.method public setSessionControl(Lapp/fast/ssh/BillingManager$SessionControl;)V
    .locals 0

    iput-object p1, p0, Lapp/fast/ssh/BillingManager;->session:Lapp/fast/ssh/BillingManager$SessionControl;

    return-void
.end method

.method public setStateListener(Lapp/fast/ssh/BillingManager$StateListener;)V
    .locals 0

    iput-object p1, p0, Lapp/fast/ssh/BillingManager;->stateListener:Lapp/fast/ssh/BillingManager$StateListener;

    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    iget-object v0, p0, Lapp/fast/ssh/BillingManager;->client:Lcom/android/billingclient/api/BillingClient;

    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingClient;->isReady()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lapp/fast/ssh/BillingManager;->client:Lcom/android/billingclient/api/BillingClient;

    invoke-virtual {v0, p0}, Lcom/android/billingclient/api/BillingClient;->startConnection(Lcom/android/billingclient/api/BillingClientStateListener;)V

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 2

    iget-object v0, p0, Lapp/fast/ssh/BillingManager;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lapp/fast/ssh/BillingManager;->client:Lcom/android/billingclient/api/BillingClient;

    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingClient;->endConnection()V

    return-void
.end method
