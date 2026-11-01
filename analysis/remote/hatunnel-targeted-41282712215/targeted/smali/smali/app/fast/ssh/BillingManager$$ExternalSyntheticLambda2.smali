.class public final synthetic Lapp/fast/ssh/BillingManager$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/billingclient/api/ProductDetailsResponseListener;


# instance fields
.field public final synthetic f$0:Lapp/fast/ssh/BillingManager;


# direct methods
.method public synthetic constructor <init>(Lapp/fast/ssh/BillingManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lapp/fast/ssh/BillingManager$$ExternalSyntheticLambda2;->f$0:Lapp/fast/ssh/BillingManager;

    return-void
.end method


# virtual methods
.method public final onProductDetailsResponse(Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/QueryProductDetailsResult;)V
    .locals 1

    iget-object v0, p0, Lapp/fast/ssh/BillingManager$$ExternalSyntheticLambda2;->f$0:Lapp/fast/ssh/BillingManager;

    invoke-virtual {v0, p1, p2}, Lapp/fast/ssh/BillingManager;->lambda$warmProduct$0$app-fast-ssh-BillingManager(Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/QueryProductDetailsResult;)V

    return-void
.end method
