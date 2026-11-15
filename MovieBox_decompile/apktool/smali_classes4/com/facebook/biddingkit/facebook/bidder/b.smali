.class public abstract Lcom/facebook/biddingkit/facebook/bidder/b;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/biddingkit/facebook/bidder/b$a;
    }
.end annotation


# static fields
.field public static a:Ljava/lang/String; = "FACEBOOK_BIDDER"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public static a(Ljava/lang/String;)Ll8/b;
    .locals 3

    .line 1
    new-instance v0, Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;

    .line 2
    .line 3
    new-instance v1, Lcom/facebook/biddingkit/facebook/bidder/c;

    .line 4
    .line 5
    invoke-static {}, Lcom/facebook/biddingkit/bridge/a;->b()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-direct {v1, v2}, Lcom/facebook/biddingkit/facebook/bidder/c;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, p0, v1}, Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;-><init>(Ljava/lang/String;Lcom/facebook/biddingkit/facebook/bidder/c;)V

    .line 13
    .line 14
    .line 15
    return-object v0
.end method
