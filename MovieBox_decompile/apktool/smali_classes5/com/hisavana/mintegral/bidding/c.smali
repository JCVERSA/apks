.class public final synthetic Lcom/hisavana/mintegral/bidding/c;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/hisavana/mintegral/bidding/MintegralBidding$BidWithNotify;


# direct methods
.method public synthetic constructor <init>(Lcom/hisavana/mintegral/bidding/MintegralBidding$BidWithNotify;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/hisavana/mintegral/bidding/c;->a:Lcom/hisavana/mintegral/bidding/MintegralBidding$BidWithNotify;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hisavana/mintegral/bidding/c;->a:Lcom/hisavana/mintegral/bidding/MintegralBidding$BidWithNotify;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hisavana/mintegral/bidding/MintegralBidding$BidWithNotify;->b(Lcom/hisavana/mintegral/bidding/MintegralBidding$BidWithNotify;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
