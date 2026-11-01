.class Lapp/fast/ssh/BillingManager$2;
.super Ljava/lang/Object;
.source "BillingManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lapp/fast/ssh/BillingManager;->scheduleReconnect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lapp/fast/ssh/BillingManager;


# direct methods
.method constructor <init>(Lapp/fast/ssh/BillingManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lapp/fast/ssh/BillingManager$2;->this$0:Lapp/fast/ssh/BillingManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    iget-object v0, p0, Lapp/fast/ssh/BillingManager$2;->this$0:Lapp/fast/ssh/BillingManager;

    invoke-static {v0}, Lapp/fast/ssh/BillingManager;->access$000(Lapp/fast/ssh/BillingManager;)Lcom/android/billingclient/api/BillingClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingClient;->isReady()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lapp/fast/ssh/BillingManager$2;->this$0:Lapp/fast/ssh/BillingManager;

    invoke-static {v0}, Lapp/fast/ssh/BillingManager;->access$000(Lapp/fast/ssh/BillingManager;)Lcom/android/billingclient/api/BillingClient;

    move-result-object v0

    iget-object v1, p0, Lapp/fast/ssh/BillingManager$2;->this$0:Lapp/fast/ssh/BillingManager;

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/BillingClient;->startConnection(Lcom/android/billingclient/api/BillingClientStateListener;)V

    :cond_0
    return-void
.end method
