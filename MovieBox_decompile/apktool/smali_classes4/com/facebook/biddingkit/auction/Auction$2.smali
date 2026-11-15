.class Lcom/facebook/biddingkit/auction/Auction$2;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/facebook/biddingkit/auction/a;

.field final synthetic val$bidder:Lp8/b;

.field final synthetic val$listener:Lcom/facebook/biddingkit/auction/c;

.field final synthetic val$waterfall:Lr8/a;


# direct methods
.method constructor <init>(Lcom/facebook/biddingkit/auction/a;Lp8/b;Lr8/a;Lcom/facebook/biddingkit/auction/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-static {v0}, Lcom/facebook/biddingkit/auction/a;->a(Lcom/facebook/biddingkit/auction/a;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v0}, Lcom/facebook/biddingkit/auction/a;->c(Lcom/facebook/biddingkit/auction/a;)Lcom/facebook/biddingkit/auction/b;

    .line 10
    .line 11
    .line 12
    invoke-static {v1, v0, v0}, Lcom/facebook/biddingkit/auction/e;->a(Ljava/lang/String;Lp8/b;Lcom/facebook/biddingkit/auction/b;)Ljava/util/List;

    .line 13
    .line 14
    .line 15
    throw v0
.end method
