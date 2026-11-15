.class Lcom/facebook/biddingkit/auction/Auction$1$1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/biddingkit/auction/Auction$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/facebook/biddingkit/auction/Auction$1;


# direct methods
.method constructor <init>(Lcom/facebook/biddingkit/auction/Auction$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/biddingkit/auction/Auction$1$1;->this$1:Lcom/facebook/biddingkit/auction/Auction$1;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/facebook/biddingkit/auction/Auction$1$1;->this$1:Lcom/facebook/biddingkit/auction/Auction$1;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-static {v0}, Lcom/facebook/biddingkit/auction/a;->b(Lcom/facebook/biddingkit/auction/a;)Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-static {v2}, Landroid/support/v4/media/session/c;->a(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    iget-object v1, p0, Lcom/facebook/biddingkit/auction/Auction$1$1;->this$1:Lcom/facebook/biddingkit/auction/Auction$1;

    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    invoke-static {v0}, Lcom/facebook/biddingkit/auction/a;->a(Lcom/facebook/biddingkit/auction/a;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-static {v1}, Lcom/facebook/biddingkit/facebook/bidder/b;->a(Ljava/lang/String;)Ll8/b;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    iget-object v2, p0, Lcom/facebook/biddingkit/auction/Auction$1$1;->this$1:Lcom/facebook/biddingkit/auction/Auction$1;

    .line 43
    .line 44
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    invoke-static {v0}, Lcom/facebook/biddingkit/auction/a;->d(Lcom/facebook/biddingkit/auction/a;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    iget-object v3, p0, Lcom/facebook/biddingkit/auction/Auction$1$1;->this$1:Lcom/facebook/biddingkit/auction/Auction$1;

    .line 52
    .line 53
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    invoke-interface {v1, v2, v0}, Ll8/b;->a(Ljava/lang/String;Lr8/a;)V

    .line 57
    .line 58
    .line 59
    return-void
.end method
