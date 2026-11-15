.class public final synthetic Lcom/transsion/ad/bidding/base/h;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/transsion/ad/bidding/base/AbsAdBidding;

.field public final synthetic b:Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

.field public final synthetic c:J


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/ad/bidding/base/AbsAdBidding;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsion/ad/bidding/base/h;->a:Lcom/transsion/ad/bidding/base/AbsAdBidding;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/transsion/ad/bidding/base/h;->b:Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    .line 7
    .line 8
    iput-wide p3, p0, Lcom/transsion/ad/bidding/base/h;->c:J

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/bidding/base/h;->a:Lcom/transsion/ad/bidding/base/AbsAdBidding;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/ad/bidding/base/h;->b:Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    .line 4
    .line 5
    iget-wide v2, p0, Lcom/transsion/ad/bidding/base/h;->c:J

    .line 6
    .line 7
    invoke-static {v0, v1, v2, v3}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->y(Lcom/transsion/ad/bidding/base/AbsAdBidding;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;J)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
