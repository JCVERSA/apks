.class Lcom/hisavana/fblibrary/excuter/bidding/FanBidding$BidWithNotify$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hisavana/fblibrary/excuter/bidding/FanBidding$BidWithNotify;->notifyWin()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hisavana/fblibrary/excuter/bidding/FanBidding$BidWithNotify;


# direct methods
.method public constructor <init>(Lcom/hisavana/fblibrary/excuter/bidding/FanBidding$BidWithNotify;)V
    .locals 0

    iput-object p1, p0, Lcom/hisavana/fblibrary/excuter/bidding/FanBidding$BidWithNotify$1;->this$0:Lcom/hisavana/fblibrary/excuter/bidding/FanBidding$BidWithNotify;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/hisavana/fblibrary/excuter/bidding/FanBidding$BidWithNotify$1;->this$0:Lcom/hisavana/fblibrary/excuter/bidding/FanBidding$BidWithNotify;

    invoke-static {v0}, Lcom/hisavana/fblibrary/excuter/bidding/FanBidding$BidWithNotify;->a(Lcom/hisavana/fblibrary/excuter/bidding/FanBidding$BidWithNotify;)Lcom/facebook/biddingkit/gen/BidWithNotification;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hisavana/fblibrary/excuter/bidding/FanBidding$BidWithNotify$1;->this$0:Lcom/hisavana/fblibrary/excuter/bidding/FanBidding$BidWithNotify;

    invoke-static {v0}, Lcom/hisavana/fblibrary/excuter/bidding/FanBidding$BidWithNotify;->a(Lcom/hisavana/fblibrary/excuter/bidding/FanBidding$BidWithNotify;)Lcom/facebook/biddingkit/gen/BidWithNotification;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/biddingkit/gen/BidWithNotification;->notifyWin()V

    :cond_0
    iget-object p0, p0, Lcom/hisavana/fblibrary/excuter/bidding/FanBidding$BidWithNotify$1;->this$0:Lcom/hisavana/fblibrary/excuter/bidding/FanBidding$BidWithNotify;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/hisavana/fblibrary/excuter/bidding/FanBidding$BidWithNotify;->b(Lcom/hisavana/fblibrary/excuter/bidding/FanBidding$BidWithNotify;Z)Z

    return-void
.end method
