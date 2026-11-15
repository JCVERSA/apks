.class public final Lcom/transsion/commercialization/task/treasure/TreasureAdView$a;
.super Loh/a;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/commercialization/task/treasure/TreasureAdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/transsion/commercialization/task/treasure/TreasureAdView;


# direct methods
.method constructor <init>(Lcom/transsion/commercialization/task/treasure/TreasureAdView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/commercialization/task/treasure/TreasureAdView$a;->d:Lcom/transsion/commercialization/task/treasure/TreasureAdView;

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
    iget-object p1, p0, Lcom/transsion/commercialization/task/treasure/TreasureAdView$a;->d:Lcom/transsion/commercialization/task/treasure/TreasureAdView;

    .line 5
    .line 6
    invoke-static {p1}, Lcom/transsion/commercialization/task/treasure/TreasureAdView;->access$isLoading$p(Lcom/transsion/commercialization/task/treasure/TreasureAdView;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const/4 v0, 0x0

    .line 11
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lcom/transsion/commercialization/task/treasure/TreasureAdView$a;->d:Lcom/transsion/commercialization/task/treasure/TreasureAdView;

    .line 15
    .line 16
    invoke-static {p1}, Lcom/transsion/commercialization/task/treasure/TreasureAdView;->access$getAdCallback$p(Lcom/transsion/commercialization/task/treasure/TreasureAdView;)Lkotlin/jvm/functions/Function1;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 23
    .line 24
    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    :cond_0
    iget-object p1, p0, Lcom/transsion/commercialization/task/treasure/TreasureAdView$a;->d:Lcom/transsion/commercialization/task/treasure/TreasureAdView;

    .line 28
    .line 29
    invoke-static {p1}, Lcom/transsion/commercialization/task/treasure/TreasureAdView;->access$stopRefreshAnimation(Lcom/transsion/commercialization/task/treasure/TreasureAdView;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public j(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Loh/a;->j(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/transsion/commercialization/task/treasure/TreasureAdView$a;->d:Lcom/transsion/commercialization/task/treasure/TreasureAdView;

    .line 5
    .line 6
    invoke-static {v0, p1}, Lcom/transsion/commercialization/task/treasure/TreasureAdView;->access$setMaxEcpmObject$p(Lcom/transsion/commercialization/task/treasure/TreasureAdView;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/transsion/commercialization/task/treasure/TreasureAdView$a;->d:Lcom/transsion/commercialization/task/treasure/TreasureAdView;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/transsion/commercialization/task/treasure/TreasureAdView;->access$getBinding$p(Lcom/transsion/commercialization/task/treasure/TreasureAdView;)Lsj/k;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v0, v0, Lsj/k;->d:Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/transsion/commercialization/task/treasure/TreasureAdView$a;->d:Lcom/transsion/commercialization/task/treasure/TreasureAdView;

    .line 18
    .line 19
    invoke-static {v1}, Lcom/transsion/commercialization/task/treasure/TreasureAdView;->access$getNativeManager$p(Lcom/transsion/commercialization/task/treasure/TreasureAdView;)Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    iget-object v2, p0, Lcom/transsion/commercialization/task/treasure/TreasureAdView$a;->d:Lcom/transsion/commercialization/task/treasure/TreasureAdView;

    .line 24
    .line 25
    invoke-static {v2}, Lcom/transsion/commercialization/task/treasure/TreasureAdView;->access$getViewBinder$p(Lcom/transsion/commercialization/task/treasure/TreasureAdView;)Lcom/transsion/commercialization/task/treasure/d;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v0, v1, v2, p1}, Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;->bindNativeView(Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;Lcom/transsion/ad/bidding/base/r;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    .line 30
    .line 31
    .line 32
    iget-object p1, p0, Lcom/transsion/commercialization/task/treasure/TreasureAdView$a;->d:Lcom/transsion/commercialization/task/treasure/TreasureAdView;

    .line 33
    .line 34
    invoke-static {p1}, Lcom/transsion/commercialization/task/treasure/TreasureAdView;->access$isLoading$p(Lcom/transsion/commercialization/task/treasure/TreasureAdView;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    const/4 v0, 0x0

    .line 39
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 40
    .line 41
    .line 42
    iget-object p1, p0, Lcom/transsion/commercialization/task/treasure/TreasureAdView$a;->d:Lcom/transsion/commercialization/task/treasure/TreasureAdView;

    .line 43
    .line 44
    invoke-static {p1}, Lcom/transsion/commercialization/task/treasure/TreasureAdView;->access$stopRefreshAnimation(Lcom/transsion/commercialization/task/treasure/TreasureAdView;)V

    .line 45
    .line 46
    .line 47
    iget-object p1, p0, Lcom/transsion/commercialization/task/treasure/TreasureAdView$a;->d:Lcom/transsion/commercialization/task/treasure/TreasureAdView;

    .line 48
    .line 49
    invoke-static {p1}, Lcom/transsion/commercialization/task/treasure/TreasureAdView;->access$getAdCallback$p(Lcom/transsion/commercialization/task/treasure/TreasureAdView;)Lkotlin/jvm/functions/Function1;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    if-eqz p1, :cond_0

    .line 54
    .line 55
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 56
    .line 57
    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    :cond_0
    return-void
.end method

.method public l(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Loh/a;->l(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/transsion/commercialization/task/treasure/TreasureAdView$a;->d:Lcom/transsion/commercialization/task/treasure/TreasureAdView;

    .line 5
    .line 6
    invoke-static {p1}, Lcom/transsion/commercialization/task/treasure/TreasureAdView;->access$getListener$p(Lcom/transsion/commercialization/task/treasure/TreasureAdView;)Lcom/transsion/commercialization/task/treasure/c;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    invoke-interface {p1}, Lcom/transsion/commercialization/task/treasure/c;->a()V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method
