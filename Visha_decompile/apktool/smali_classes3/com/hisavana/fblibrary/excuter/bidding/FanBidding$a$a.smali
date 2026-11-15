.class public Lcom/hisavana/fblibrary/excuter/bidding/FanBidding$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/cloud/sdk/commonutil/util/Preconditions$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hisavana/fblibrary/excuter/bidding/FanBidding$a;->handleBidResponse(Lcom/facebook/biddingkit/gen/BidWithNotification;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/hisavana/fblibrary/excuter/bidding/FanBidding$a;


# direct methods
.method public constructor <init>(Lcom/hisavana/fblibrary/excuter/bidding/FanBidding$a;)V
    .locals 0

    iput-object p1, p0, Lcom/hisavana/fblibrary/excuter/bidding/FanBidding$a$a;->a:Lcom/hisavana/fblibrary/excuter/bidding/FanBidding$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRun()V
    .locals 2

    iget-object v0, p0, Lcom/hisavana/fblibrary/excuter/bidding/FanBidding$a$a;->a:Lcom/hisavana/fblibrary/excuter/bidding/FanBidding$a;

    iget-object v0, v0, Lcom/hisavana/fblibrary/excuter/bidding/FanBidding$a;->c:Lcom/hisavana/fblibrary/excuter/bidding/FanBidding;

    invoke-static {v0}, Lcom/hisavana/fblibrary/excuter/bidding/FanBidding;->b(Lcom/hisavana/fblibrary/excuter/bidding/FanBidding;)Lcom/hisavana/common/interfacz/QueryPriceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/hisavana/fblibrary/excuter/bidding/FanBidding$a$a;->a:Lcom/hisavana/fblibrary/excuter/bidding/FanBidding$a;

    iget-object v1, v1, Lcom/hisavana/fblibrary/excuter/bidding/FanBidding$a;->a:Lcom/hisavana/common/bean/Network;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/hisavana/fblibrary/excuter/bidding/FanBidding$a$a;->a:Lcom/hisavana/fblibrary/excuter/bidding/FanBidding$a;

    iget-object p0, p0, Lcom/hisavana/fblibrary/excuter/bidding/FanBidding$a;->c:Lcom/hisavana/fblibrary/excuter/bidding/FanBidding;

    invoke-static {p0}, Lcom/hisavana/fblibrary/excuter/bidding/FanBidding;->d(Lcom/hisavana/fblibrary/excuter/bidding/FanBidding;)Lcom/hisavana/common/interfacz/QueryPriceListener;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/hisavana/common/interfacz/QueryPriceListener;->onQueryPriceSuccess(Ljava/util/List;)V

    :cond_0
    return-void
.end method
