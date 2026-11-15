.class final Lcom/facebook/biddingkit/bridge/BiddingKit$1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$configuration:Ljava/lang/String;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/biddingkit/bridge/BiddingKit$1;->val$context:Landroid/content/Context;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/facebook/biddingkit/bridge/BiddingKit$1;->val$configuration:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/facebook/biddingkit/bridge/BiddingKit$1;->val$context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lq8/b;->c(Landroid/content/Context;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v2, "0.5.1"

    .line 8
    .line 9
    iget-object v3, p0, Lcom/facebook/biddingkit/bridge/BiddingKit$1;->val$configuration:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {v0, v1, v2, v3}, Lcom/facebook/biddingkit/logging/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
