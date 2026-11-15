.class public Lcom/hisavana/fblibrary/excuter/bidding/FanBidding$a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/cloud/sdk/commonutil/util/Preconditions$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hisavana/fblibrary/excuter/bidding/FanBidding$a;->handleBidResponseFailure(Ljava/lang/String;)V
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

    iput-object p1, p0, Lcom/hisavana/fblibrary/excuter/bidding/FanBidding$a$b;->a:Lcom/hisavana/fblibrary/excuter/bidding/FanBidding$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRun()V
    .locals 1

    iget-object v0, p0, Lcom/hisavana/fblibrary/excuter/bidding/FanBidding$a$b;->a:Lcom/hisavana/fblibrary/excuter/bidding/FanBidding$a;

    iget-object v0, v0, Lcom/hisavana/fblibrary/excuter/bidding/FanBidding$a;->c:Lcom/hisavana/fblibrary/excuter/bidding/FanBidding;

    invoke-static {v0}, Lcom/hisavana/fblibrary/excuter/bidding/FanBidding;->e(Lcom/hisavana/fblibrary/excuter/bidding/FanBidding;)Lcom/hisavana/common/interfacz/QueryPriceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/hisavana/fblibrary/excuter/bidding/FanBidding$a$b;->a:Lcom/hisavana/fblibrary/excuter/bidding/FanBidding$a;

    iget-object p0, p0, Lcom/hisavana/fblibrary/excuter/bidding/FanBidding$a;->c:Lcom/hisavana/fblibrary/excuter/bidding/FanBidding;

    invoke-static {p0}, Lcom/hisavana/fblibrary/excuter/bidding/FanBidding;->f(Lcom/hisavana/fblibrary/excuter/bidding/FanBidding;)Lcom/hisavana/common/interfacz/QueryPriceListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/hisavana/common/interfacz/QueryPriceListener;->onQueryPriceFailed()V

    :cond_0
    return-void
.end method
