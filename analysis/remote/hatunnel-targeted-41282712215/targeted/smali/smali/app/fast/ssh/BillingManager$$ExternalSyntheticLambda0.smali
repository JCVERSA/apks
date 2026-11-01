.class public final synthetic Lapp/fast/ssh/BillingManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/billingclient/api/PurchasesResponseListener;


# instance fields
.field public final synthetic f$0:Lapp/fast/ssh/BillingManager;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lapp/fast/ssh/BillingManager;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lapp/fast/ssh/BillingManager$$ExternalSyntheticLambda0;->f$0:Lapp/fast/ssh/BillingManager;

    iput-boolean p2, p0, Lapp/fast/ssh/BillingManager$$ExternalSyntheticLambda0;->f$1:Z

    return-void
.end method


# virtual methods
.method public final onQueryPurchasesResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 2

    iget-object v0, p0, Lapp/fast/ssh/BillingManager$$ExternalSyntheticLambda0;->f$0:Lapp/fast/ssh/BillingManager;

    iget-boolean v1, p0, Lapp/fast/ssh/BillingManager$$ExternalSyntheticLambda0;->f$1:Z

    invoke-virtual {v0, v1, p1, p2}, Lapp/fast/ssh/BillingManager;->lambda$restore$2$app-fast-ssh-BillingManager(ZLcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-void
.end method
