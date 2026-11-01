.class Lapp/fast/ssh/BillingManager$1;
.super Ljava/lang/Object;
.source "BillingManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lapp/fast/ssh/BillingManager;->setState(Lapp/fast/ssh/BillingManager$State;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lapp/fast/ssh/BillingManager;

.field final synthetic val$l:Lapp/fast/ssh/BillingManager$StateListener;

.field final synthetic val$message:Ljava/lang/String;

.field final synthetic val$next:Lapp/fast/ssh/BillingManager$State;


# direct methods
.method constructor <init>(Lapp/fast/ssh/BillingManager;Lapp/fast/ssh/BillingManager$StateListener;Lapp/fast/ssh/BillingManager$State;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
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

    iput-object p1, p0, Lapp/fast/ssh/BillingManager$1;->this$0:Lapp/fast/ssh/BillingManager;

    iput-object p2, p0, Lapp/fast/ssh/BillingManager$1;->val$l:Lapp/fast/ssh/BillingManager$StateListener;

    iput-object p3, p0, Lapp/fast/ssh/BillingManager$1;->val$next:Lapp/fast/ssh/BillingManager$State;

    iput-object p4, p0, Lapp/fast/ssh/BillingManager$1;->val$message:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lapp/fast/ssh/BillingManager$1;->val$l:Lapp/fast/ssh/BillingManager$StateListener;

    iget-object v1, p0, Lapp/fast/ssh/BillingManager$1;->val$next:Lapp/fast/ssh/BillingManager$State;

    iget-object v2, p0, Lapp/fast/ssh/BillingManager$1;->val$message:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lapp/fast/ssh/BillingManager$StateListener;->onBillingState(Lapp/fast/ssh/BillingManager$State;Ljava/lang/String;)V

    return-void
.end method
