.class Lapp/fast/ssh/HttpTokenExchange$1;
.super Ljava/lang/Object;
.source "HttpTokenExchange.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lapp/fast/ssh/HttpTokenExchange;->redeem(Ljava/lang/String;Ljava/lang/String;Lapp/fast/ssh/BillingManager$TokenExchange$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lapp/fast/ssh/HttpTokenExchange;

.field final synthetic val$callback:Lapp/fast/ssh/BillingManager$TokenExchange$Callback;

.field final synthetic val$purchaseToken:Ljava/lang/String;

.field final synthetic val$userId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lapp/fast/ssh/HttpTokenExchange;Ljava/lang/String;Ljava/lang/String;Lapp/fast/ssh/BillingManager$TokenExchange$Callback;)V
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

    iput-object p1, p0, Lapp/fast/ssh/HttpTokenExchange$1;->this$0:Lapp/fast/ssh/HttpTokenExchange;

    iput-object p2, p0, Lapp/fast/ssh/HttpTokenExchange$1;->val$purchaseToken:Ljava/lang/String;

    iput-object p3, p0, Lapp/fast/ssh/HttpTokenExchange$1;->val$userId:Ljava/lang/String;

    iput-object p4, p0, Lapp/fast/ssh/HttpTokenExchange$1;->val$callback:Lapp/fast/ssh/BillingManager$TokenExchange$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lapp/fast/ssh/HttpTokenExchange$1;->this$0:Lapp/fast/ssh/HttpTokenExchange;

    iget-object v1, p0, Lapp/fast/ssh/HttpTokenExchange$1;->val$purchaseToken:Ljava/lang/String;

    iget-object v2, p0, Lapp/fast/ssh/HttpTokenExchange$1;->val$userId:Ljava/lang/String;

    iget-object v3, p0, Lapp/fast/ssh/HttpTokenExchange$1;->val$callback:Lapp/fast/ssh/BillingManager$TokenExchange$Callback;

    invoke-static {v0, v1, v2, v3}, Lapp/fast/ssh/HttpTokenExchange;->access$000(Lapp/fast/ssh/HttpTokenExchange;Ljava/lang/String;Ljava/lang/String;Lapp/fast/ssh/BillingManager$TokenExchange$Callback;)V

    return-void
.end method
