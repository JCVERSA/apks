.class public final synthetic Lbp3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hisavana/fblibrary/excuter/check/ExistsCheck$a;


# instance fields
.field public final synthetic a:Lcom/hisavana/fblibrary/excuter/bidding/FanBidding;

.field public final synthetic b:Lcom/hisavana/common/bean/Network;

.field public final synthetic c:Lcom/facebook/biddingkit/gen/FacebookAdBidFormat;


# direct methods
.method public synthetic constructor <init>(Lcom/hisavana/fblibrary/excuter/bidding/FanBidding;Lcom/hisavana/common/bean/Network;Lcom/facebook/biddingkit/gen/FacebookAdBidFormat;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbp3;->a:Lcom/hisavana/fblibrary/excuter/bidding/FanBidding;

    iput-object p2, p0, Lbp3;->b:Lcom/hisavana/common/bean/Network;

    iput-object p3, p0, Lbp3;->c:Lcom/facebook/biddingkit/gen/FacebookAdBidFormat;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lbp3;->a:Lcom/hisavana/fblibrary/excuter/bidding/FanBidding;

    iget-object v1, p0, Lbp3;->b:Lcom/hisavana/common/bean/Network;

    iget-object p0, p0, Lbp3;->c:Lcom/facebook/biddingkit/gen/FacebookAdBidFormat;

    invoke-virtual {v0, v1, p0}, Lcom/hisavana/fblibrary/excuter/bidding/FanBidding;->c(Lcom/hisavana/common/bean/Network;Lcom/facebook/biddingkit/gen/FacebookAdBidFormat;)V

    return-void
.end method
