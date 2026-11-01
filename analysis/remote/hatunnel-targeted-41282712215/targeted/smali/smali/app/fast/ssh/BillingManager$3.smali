.class Lapp/fast/ssh/BillingManager$3;
.super Ljava/lang/Object;
.source "BillingManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lapp/fast/ssh/BillingManager;->launch(Landroid/app/Activity;Lcom/android/billingclient/api/ProductDetails;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lapp/fast/ssh/BillingManager;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$flow:Lcom/android/billingclient/api/BillingFlowParams;


# direct methods
.method constructor <init>(Lapp/fast/ssh/BillingManager;Landroid/app/Activity;Lcom/android/billingclient/api/BillingFlowParams;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lapp/fast/ssh/BillingManager$3;->this$0:Lapp/fast/ssh/BillingManager;

    iput-object p2, p0, Lapp/fast/ssh/BillingManager$3;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lapp/fast/ssh/BillingManager$3;->val$flow:Lcom/android/billingclient/api/BillingFlowParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    iget-object v0, p0, Lapp/fast/ssh/BillingManager$3;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    const-string/jumbo v1, "\u2dfc"

    invoke-static {v1}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v0, :cond_2

    iget-object v0, p0, Lapp/fast/ssh/BillingManager$3;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lapp/fast/ssh/BillingManager$3;->this$0:Lapp/fast/ssh/BillingManager;

    invoke-static {v0}, Lapp/fast/ssh/BillingManager;->access$000(Lapp/fast/ssh/BillingManager;)Lcom/android/billingclient/api/BillingClient;

    move-result-object v0

    iget-object v2, p0, Lapp/fast/ssh/BillingManager$3;->val$activity:Landroid/app/Activity;

    iget-object v3, p0, Lapp/fast/ssh/BillingManager$3;->val$flow:Lcom/android/billingclient/api/BillingFlowParams;

    invoke-virtual {v0, v2, v3}, Lcom/android/billingclient/api/BillingClient;->launchBillingFlow(Landroid/app/Activity;Lcom/android/billingclient/api/BillingFlowParams;)Lcom/android/billingclient/api/BillingResult;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u2dfd"

    invoke-static {v3}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u2dfe"

    invoke-static {v3}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    nop

    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lapp/fast/ssh/BillingManager$3;->this$0:Lapp/fast/ssh/BillingManager;

    sget-object v2, Lapp/fast/ssh/BillingManager$State;->FAILED:Lapp/fast/ssh/BillingManager$State;

    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    invoke-static {v0}, Lapp/fast/ssh/BillingManager;->access$100(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lapp/fast/ssh/BillingManager;->access$200(Lapp/fast/ssh/BillingManager;Lapp/fast/ssh/BillingManager$State;Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    const-string/jumbo v0, "\u2dff"

    invoke-static {v0}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    return-void
.end method
