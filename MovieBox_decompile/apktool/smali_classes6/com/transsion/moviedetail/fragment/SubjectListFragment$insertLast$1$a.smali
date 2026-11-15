.class public final Lcom/transsion/moviedetail/fragment/SubjectListFragment$insertLast$1$a;
.super Loh/a;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/moviedetail/fragment/SubjectListFragment$insertLast$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/transsion/moviedetail/fragment/SubjectListFragment;

.field final synthetic e:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/transsion/moviedetail/fragment/SubjectListFragment;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/moviedetail/fragment/SubjectListFragment$insertLast$1$a;->d:Lcom/transsion/moviedetail/fragment/SubjectListFragment;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/moviedetail/fragment/SubjectListFragment$insertLast$1$a;->e:Ljava/util/List;

    .line 4
    .line 5
    invoke-direct {p0}, Loh/a;-><init>()V

    .line 6
    .line 7
    .line 8
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
    return-void
.end method

.method public j(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Loh/a;->j(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/transsion/moviedetail/fragment/SubjectListFragment$insertLast$1$a;->d:Lcom/transsion/moviedetail/fragment/SubjectListFragment;

    .line 5
    .line 6
    invoke-static {p1}, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->access$getNativeManager$p(Lcom/transsion/moviedetail/fragment/SubjectListFragment;)Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    if-eqz p1, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Lcom/transsion/moviedetail/fragment/SubjectListFragment$insertLast$1$a;->d:Lcom/transsion/moviedetail/fragment/SubjectListFragment;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/transsion/moviedetail/fragment/SubjectListFragment$insertLast$1$a;->e:Ljava/util/List;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->access$getMiddleListManager$p(Lcom/transsion/moviedetail/fragment/SubjectListFragment;)Lcom/transsion/ad/bidding/nativead/BiddingListManager;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    invoke-virtual {v2}, Lcom/transsion/ad/bidding/nativead/BiddingListManager;->r()Lkotlin/jvm/functions/Function2;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    if-eqz v2, :cond_0

    .line 27
    .line 28
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-interface {v2, v1, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    check-cast p1, Lkotlin/Unit;

    .line 41
    .line 42
    :cond_0
    invoke-static {v0}, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->access$getMiddleListManager$p(Lcom/transsion/moviedetail/fragment/SubjectListFragment;)Lcom/transsion/ad/bidding/nativead/BiddingListManager;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    if-eqz p1, :cond_1

    .line 47
    .line 48
    const/4 v0, 0x0

    .line 49
    invoke-virtual {p1, v0}, Lcom/transsion/ad/bidding/nativead/BiddingListManager;->D(Lkotlin/jvm/functions/Function2;)V

    .line 50
    .line 51
    .line 52
    :cond_1
    return-void
.end method
