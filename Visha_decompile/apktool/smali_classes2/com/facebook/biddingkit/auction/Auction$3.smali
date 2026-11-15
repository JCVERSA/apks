.class Lcom/facebook/biddingkit/auction/Auction$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/biddingkit/auction/Auction;->notifyDisplayWinner(Lcom/facebook/biddingkit/waterfall/WaterfallEntry;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/biddingkit/auction/Auction;

.field final synthetic val$displayWinnerEntry:Lcom/facebook/biddingkit/waterfall/WaterfallEntry;


# direct methods
.method public constructor <init>(Lcom/facebook/biddingkit/auction/Auction;Lcom/facebook/biddingkit/waterfall/WaterfallEntry;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/biddingkit/auction/Auction$3;->this$0:Lcom/facebook/biddingkit/auction/Auction;

    iput-object p2, p0, Lcom/facebook/biddingkit/auction/Auction$3;->val$displayWinnerEntry:Lcom/facebook/biddingkit/waterfall/WaterfallEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/facebook/biddingkit/auction/Auction$3;->this$0:Lcom/facebook/biddingkit/auction/Auction;

    invoke-static {v0}, Lcom/facebook/biddingkit/auction/Auction;->access$400(Lcom/facebook/biddingkit/auction/Auction;)Lcom/facebook/biddingkit/remote/RemoteBidder;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/biddingkit/auction/Auction$3;->this$0:Lcom/facebook/biddingkit/auction/Auction;

    iget-object p0, p0, Lcom/facebook/biddingkit/auction/Auction$3;->val$displayWinnerEntry:Lcom/facebook/biddingkit/waterfall/WaterfallEntry;

    invoke-static {v0, p0}, Lcom/facebook/biddingkit/auction/Auction;->access$500(Lcom/facebook/biddingkit/auction/Auction;Lcom/facebook/biddingkit/waterfall/WaterfallEntry;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/facebook/biddingkit/auction/Auction$3;->this$0:Lcom/facebook/biddingkit/auction/Auction;

    iget-object p0, p0, Lcom/facebook/biddingkit/auction/Auction$3;->val$displayWinnerEntry:Lcom/facebook/biddingkit/waterfall/WaterfallEntry;

    invoke-static {v0, p0}, Lcom/facebook/biddingkit/auction/Auction;->access$600(Lcom/facebook/biddingkit/auction/Auction;Lcom/facebook/biddingkit/waterfall/WaterfallEntry;)V

    :goto_0
    return-void
.end method
