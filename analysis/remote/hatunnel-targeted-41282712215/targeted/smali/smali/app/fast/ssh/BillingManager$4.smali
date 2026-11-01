.class Lapp/fast/ssh/BillingManager$4;
.super Ljava/lang/Object;
.source "BillingManager.java"

# interfaces
.implements Lapp/fast/ssh/BillingManager$TokenExchange$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lapp/fast/ssh/BillingManager;->redeem(Ljava/lang/String;Z)V
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

    iput-object p1, p0, Lapp/fast/ssh/BillingManager$4;->this$0:Lapp/fast/ssh/BillingManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInvalid()V
    .locals 4

    .prologue
    const-string/jumbo v0, "\u2e00"

    invoke-static {v0}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "\u2e01"

    invoke-static {v1}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    nop

    iget-object v0, p0, Lapp/fast/ssh/BillingManager$4;->this$0:Lapp/fast/ssh/BillingManager;

    invoke-static {v0}, Lapp/fast/ssh/BillingManager;->access$300(Lapp/fast/ssh/BillingManager;)Lapp/fast/ssh/BillingManager$SubscriptionStore;

    move-result-object v0

    invoke-interface {v0}, Lapp/fast/ssh/BillingManager$SubscriptionStore;->clear()V

    iget-object v0, p0, Lapp/fast/ssh/BillingManager$4;->this$0:Lapp/fast/ssh/BillingManager;

    sget-object v2, Lapp/fast/ssh/BillingManager$State;->NOT_SUBSCRIBED:Lapp/fast/ssh/BillingManager$State;

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lapp/fast/ssh/BillingManager;->access$200(Lapp/fast/ssh/BillingManager;Lapp/fast/ssh/BillingManager$State;Ljava/lang/String;)V

    iget-object v0, p0, Lapp/fast/ssh/BillingManager$4;->this$0:Lapp/fast/ssh/BillingManager;

    invoke-static {v0}, Lapp/fast/ssh/BillingManager;->access$400(Lapp/fast/ssh/BillingManager;)Lapp/fast/ssh/BillingManager$SessionControl;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lapp/fast/ssh/BillingManager$SessionControl;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "\u2e02"

    invoke-static {v2}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    nop

    invoke-interface {v0, v3}, Lapp/fast/ssh/BillingManager$SessionControl;->sendSubToken(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onUnreachable()V
    .locals 3

    .prologue
    iget-object v0, p0, Lapp/fast/ssh/BillingManager$4;->this$0:Lapp/fast/ssh/BillingManager;

    invoke-static {v0}, Lapp/fast/ssh/BillingManager;->access$300(Lapp/fast/ssh/BillingManager;)Lapp/fast/ssh/BillingManager$SubscriptionStore;

    move-result-object v0

    invoke-interface {v0}, Lapp/fast/ssh/BillingManager$SubscriptionStore;->getSubscriptionToken()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lapp/fast/ssh/BillingManager$4;->this$0:Lapp/fast/ssh/BillingManager;

    sget-object v1, Lapp/fast/ssh/BillingManager$State;->UNKNOWN:Lapp/fast/ssh/BillingManager$State;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lapp/fast/ssh/BillingManager;->access$200(Lapp/fast/ssh/BillingManager;Lapp/fast/ssh/BillingManager$State;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onValid(Ljava/lang/String;J)V
    .locals 1

    .prologue
    iget-object v0, p0, Lapp/fast/ssh/BillingManager$4;->this$0:Lapp/fast/ssh/BillingManager;

    invoke-static {v0}, Lapp/fast/ssh/BillingManager;->access$300(Lapp/fast/ssh/BillingManager;)Lapp/fast/ssh/BillingManager$SubscriptionStore;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lapp/fast/ssh/BillingManager$SubscriptionStore;->save(Ljava/lang/String;J)V

    iget-object p2, p0, Lapp/fast/ssh/BillingManager$4;->this$0:Lapp/fast/ssh/BillingManager;

    sget-object p3, Lapp/fast/ssh/BillingManager$State;->SUBSCRIBED:Lapp/fast/ssh/BillingManager$State;

    const/4 v0, 0x0

    invoke-static {p2, p3, v0}, Lapp/fast/ssh/BillingManager;->access$200(Lapp/fast/ssh/BillingManager;Lapp/fast/ssh/BillingManager$State;Ljava/lang/String;)V

    iget-object p2, p0, Lapp/fast/ssh/BillingManager$4;->this$0:Lapp/fast/ssh/BillingManager;

    invoke-static {p2}, Lapp/fast/ssh/BillingManager;->access$400(Lapp/fast/ssh/BillingManager;)Lapp/fast/ssh/BillingManager$SessionControl;

    move-result-object p2

    const-string/jumbo p3, "\u2e01"

    invoke-static {p3}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-eqz p2, :cond_0

    invoke-interface {p2}, Lapp/fast/ssh/BillingManager$SessionControl;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "\u2e03"

    invoke-static {v0}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    invoke-interface {p2, p1}, Lapp/fast/ssh/BillingManager$SessionControl;->sendSubToken(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string/jumbo p1, "\u2e04"

    invoke-static {p1}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    nop

    return-void
.end method
