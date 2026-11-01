.class public final synthetic Lapp/fast/ssh/BillingManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/billingclient/api/ProductDetailsResponseListener;


# instance fields
.field public final synthetic f$0:Lapp/fast/ssh/BillingManager;

.field public final synthetic f$1:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Lapp/fast/ssh/BillingManager;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lapp/fast/ssh/BillingManager$$ExternalSyntheticLambda1;->f$0:Lapp/fast/ssh/BillingManager;

    iput-object p2, p0, Lapp/fast/ssh/BillingManager$$ExternalSyntheticLambda1;->f$1:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final onProductDetailsResponse(Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/QueryProductDetailsResult;)V
    .locals 2

    iget-object v0, p0, Lapp/fast/ssh/BillingManager$$ExternalSyntheticLambda1;->f$0:Lapp/fast/ssh/BillingManager;

    iget-object v1, p0, Lapp/fast/ssh/BillingManager$$ExternalSyntheticLambda1;->f$1:Landroid/app/Activity;

    invoke-virtual {v0, v1, p1, p2}, Lapp/fast/ssh/BillingManager;->lambda$purchase$1$app-fast-ssh-BillingManager(Landroid/app/Activity;Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/QueryProductDetailsResult;)V

    return-void
.end method
