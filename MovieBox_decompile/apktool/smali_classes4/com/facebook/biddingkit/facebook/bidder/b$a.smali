.class public Lcom/facebook/biddingkit/facebook/bidder/b$a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/biddingkit/facebook/bidder/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Lcom/facebook/biddingkit/gen/FacebookAdBidFormat;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Lcom/facebook/biddingkit/gen/FBAdBidAuctionType;

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/biddingkit/gen/FacebookAdBidFormat;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/facebook/biddingkit/gen/FBAdBidAuctionType;->FIRST_PRICE:Lcom/facebook/biddingkit/gen/FBAdBidAuctionType;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/facebook/biddingkit/facebook/bidder/b$a;->f:Lcom/facebook/biddingkit/gen/FBAdBidAuctionType;

    .line 7
    .line 8
    iput-object p1, p0, Lcom/facebook/biddingkit/facebook/bidder/b$a;->a:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p2, p0, Lcom/facebook/biddingkit/facebook/bidder/b$a;->b:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p3, p0, Lcom/facebook/biddingkit/facebook/bidder/b$a;->c:Lcom/facebook/biddingkit/gen/FacebookAdBidFormat;

    .line 13
    .line 14
    iput-object p4, p0, Lcom/facebook/biddingkit/facebook/bidder/b$a;->e:Ljava/lang/String;

    .line 15
    .line 16
    iput-object p1, p0, Lcom/facebook/biddingkit/facebook/bidder/b$a;->g:Ljava/lang/String;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/biddingkit/facebook/bidder/b$a;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method protected b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/biddingkit/facebook/bidder/b$a;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method protected c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/biddingkit/facebook/bidder/b$a;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public d(Ljava/lang/String;)Lcom/facebook/biddingkit/facebook/bidder/b$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/biddingkit/facebook/bidder/b$a;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
