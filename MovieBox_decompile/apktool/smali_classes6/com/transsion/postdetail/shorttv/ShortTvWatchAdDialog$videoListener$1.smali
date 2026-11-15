.class public final Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog$videoListener$1;
.super Loh/a;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field private d:Z

.field final synthetic e:Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog;


# direct methods
.method constructor <init>(Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog$videoListener$1;->e:Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog;

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
    .locals 0

    .line 1
    invoke-super {p0, p1}, Loh/a;->i(Lcom/hisavana/common/bean/TAdErrorCode;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog$videoListener$1;->e:Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog;

    .line 5
    .line 6
    invoke-static {p1}, Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog;->e0(Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public j(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 7

    .line 1
    invoke-super {p0, p1}, Loh/a;->j(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog$videoListener$1;->e:Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog;

    .line 5
    .line 6
    invoke-static {v0}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/u;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    new-instance v4, Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog$videoListener$1$onBiddingLoad$1;

    .line 11
    .line 12
    iget-object v0, p0, Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog$videoListener$1;->e:Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-direct {v4, v0, p1, v2}, Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog$videoListener$1$onBiddingLoad$1;-><init>(Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;Lkotlin/coroutines/Continuation;)V

    .line 16
    .line 17
    .line 18
    const/4 v5, 0x3

    .line 19
    const/4 v6, 0x0

    .line 20
    const/4 v3, 0x0

    .line 21
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public m(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Loh/a;->m(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    .line 2
    .line 3
    .line 4
    iget-boolean p1, p0, Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog$videoListener$1;->d:Z

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    iget-object p1, p0, Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog$videoListener$1;->e:Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog;

    .line 9
    .line 10
    invoke-static {p1}, Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog;->c0(Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog;)Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const-string v0, "ad_success"

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel;->i(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-object p1, p0, Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog$videoListener$1;->e:Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog;

    .line 21
    .line 22
    invoke-static {p1}, Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog;->c0(Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog;)Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const-string v0, "ad_cancel"

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel;->i(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    :goto_0
    iget-object p1, p0, Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog$videoListener$1;->e:Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog;

    .line 32
    .line 33
    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public o(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Loh/a;->o(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog$videoListener$1;->d:Z

    .line 6
    .line 7
    return-void
.end method

.method public p(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Loh/a;->p(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog$videoListener$1;->e:Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog;

    .line 5
    .line 6
    invoke-static {p1}, Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog;->e0(Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
