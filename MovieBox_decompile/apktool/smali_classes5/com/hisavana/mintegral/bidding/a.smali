.class public final synthetic Lcom/hisavana/mintegral/bidding/a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/sdk/commonutil/util/Preconditions$a;


# instance fields
.field public final synthetic a:Lcom/hisavana/mintegral/bidding/MintegralBidding$2;

.field public final synthetic b:Lcom/hisavana/common/bean/Network;


# direct methods
.method public synthetic constructor <init>(Lcom/hisavana/mintegral/bidding/MintegralBidding$2;Lcom/hisavana/common/bean/Network;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/hisavana/mintegral/bidding/a;->a:Lcom/hisavana/mintegral/bidding/MintegralBidding$2;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/hisavana/mintegral/bidding/a;->b:Lcom/hisavana/common/bean/Network;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onRun()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hisavana/mintegral/bidding/a;->a:Lcom/hisavana/mintegral/bidding/MintegralBidding$2;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/hisavana/mintegral/bidding/a;->b:Lcom/hisavana/common/bean/Network;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/hisavana/mintegral/bidding/MintegralBidding$2;->b(Lcom/hisavana/mintegral/bidding/MintegralBidding$2;Lcom/hisavana/common/bean/Network;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
