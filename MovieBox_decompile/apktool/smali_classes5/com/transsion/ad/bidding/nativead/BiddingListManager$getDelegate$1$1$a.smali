.class public final Lcom/transsion/ad/bidding/nativead/BiddingListManager$getDelegate$1$1$a;
.super Loh/a;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/ad/bidding/nativead/BiddingListManager$getDelegate$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/transsion/ad/bidding/nativead/BiddingListManager;


# direct methods
.method constructor <init>(Lcom/transsion/ad/bidding/nativead/BiddingListManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/ad/bidding/nativead/BiddingListManager$getDelegate$1$1$a;->d:Lcom/transsion/ad/bidding/nativead/BiddingListManager;

    .line 2
    .line 3
    invoke-direct {p0}, Loh/a;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public i(Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Loh/a;->i(Lcom/hisavana/common/bean/TAdErrorCode;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/transsion/ad/bidding/nativead/BiddingListManager$getDelegate$1$1$a;->d:Lcom/transsion/ad/bidding/nativead/BiddingListManager;

    .line 5
    .line 6
    invoke-static {p1}, Lcom/transsion/ad/bidding/nativead/BiddingListManager;->b(Lcom/transsion/ad/bidding/nativead/BiddingListManager;)Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;->U()V

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object p1, p0, Lcom/transsion/ad/bidding/nativead/BiddingListManager$getDelegate$1$1$a;->d:Lcom/transsion/ad/bidding/nativead/BiddingListManager;

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    invoke-static {p1, v0}, Lcom/transsion/ad/bidding/nativead/BiddingListManager;->l(Lcom/transsion/ad/bidding/nativead/BiddingListManager;Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public j(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Loh/a;->j(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/transsion/ad/bidding/nativead/BiddingListManager$getDelegate$1$1$a;->d:Lcom/transsion/ad/bidding/nativead/BiddingListManager;

    .line 5
    .line 6
    invoke-static {p1}, Lcom/transsion/ad/bidding/nativead/BiddingListManager;->j(Lcom/transsion/ad/bidding/nativead/BiddingListManager;)Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    iget-object p1, p0, Lcom/transsion/ad/bidding/nativead/BiddingListManager$getDelegate$1$1$a;->d:Lcom/transsion/ad/bidding/nativead/BiddingListManager;

    .line 13
    .line 14
    invoke-static {p1}, Lcom/transsion/ad/bidding/nativead/BiddingListManager;->h(Lcom/transsion/ad/bidding/nativead/BiddingListManager;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method
