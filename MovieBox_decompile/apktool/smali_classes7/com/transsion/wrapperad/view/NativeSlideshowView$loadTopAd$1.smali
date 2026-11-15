.class public final Lcom/transsion/wrapperad/view/NativeSlideshowView$loadTopAd$1;
.super Loh/a;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/wrapperad/view/NativeSlideshowView;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/transsion/wrapperad/view/NativeSlideshowView;


# direct methods
.method constructor <init>(Lcom/transsion/wrapperad/view/NativeSlideshowView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/wrapperad/view/NativeSlideshowView$loadTopAd$1;->d:Lcom/transsion/wrapperad/view/NativeSlideshowView;

    .line 2
    .line 3
    invoke-direct {p0}, Loh/a;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic x(Lcom/transsion/wrapperad/view/NativeSlideshowView;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/wrapperad/view/NativeSlideshowView$loadTopAd$1;->y(Lcom/transsion/wrapperad/view/NativeSlideshowView;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final y(Lcom/transsion/wrapperad/view/NativeSlideshowView;)V
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/transsion/wrapperad/view/NativeSlideshowView;->access$getVTop$p(Lcom/transsion/wrapperad/view/NativeSlideshowView;)Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-static {p0}, Lcom/transsion/wrapperad/view/NativeSlideshowView;->access$getVBottom$p(Lcom/transsion/wrapperad/view/NativeSlideshowView;)Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    const/16 v1, 0x8

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 20
    .line 21
    .line 22
    :cond_1
    invoke-static {p0}, Lcom/transsion/wrapperad/view/NativeSlideshowView;->access$getBottomNative$p(Lcom/transsion/wrapperad/view/NativeSlideshowView;)Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;->U()V

    .line 29
    .line 30
    .line 31
    :cond_2
    const/4 v0, 0x0

    .line 32
    invoke-static {p0, v0}, Lcom/transsion/wrapperad/view/NativeSlideshowView;->access$setBottomNative$p(Lcom/transsion/wrapperad/view/NativeSlideshowView;Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;)V

    .line 33
    .line 34
    .line 35
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
    iget-object p1, p0, Lcom/transsion/wrapperad/view/NativeSlideshowView$loadTopAd$1;->d:Lcom/transsion/wrapperad/view/NativeSlideshowView;

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    invoke-static {p1, v0}, Lcom/transsion/wrapperad/view/NativeSlideshowView;->access$postDelayedLoadAd(Lcom/transsion/wrapperad/view/NativeSlideshowView;Z)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public j(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 10

    .line 1
    invoke-super {p0, p1}, Loh/a;->j(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/transsion/wrapperad/view/NativeSlideshowView$loadTopAd$1;->d:Lcom/transsion/wrapperad/view/NativeSlideshowView;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/4 v1, 0x0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget-object v2, p0, Lcom/transsion/wrapperad/view/NativeSlideshowView$loadTopAd$1;->d:Lcom/transsion/wrapperad/view/NativeSlideshowView;

    .line 14
    .line 15
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    instance-of v4, v3, Landroidx/appcompat/app/AppCompatActivity;

    .line 20
    .line 21
    if-eqz v4, :cond_0

    .line 22
    .line 23
    check-cast v3, Landroidx/appcompat/app/AppCompatActivity;

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move-object v3, v1

    .line 27
    :goto_0
    if-eqz v3, :cond_1

    .line 28
    .line 29
    invoke-static {v3}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/u;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    if-eqz v4, :cond_1

    .line 34
    .line 35
    new-instance v7, Lcom/transsion/wrapperad/view/NativeSlideshowView$loadTopAd$1$onBiddingLoad$1$1;

    .line 36
    .line 37
    invoke-direct {v7, v0, v2, p1, v1}, Lcom/transsion/wrapperad/view/NativeSlideshowView$loadTopAd$1$onBiddingLoad$1$1;-><init>(Landroid/content/Context;Lcom/transsion/wrapperad/view/NativeSlideshowView;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;Lkotlin/coroutines/Continuation;)V

    .line 38
    .line 39
    .line 40
    const/4 v8, 0x3

    .line 41
    const/4 v9, 0x0

    .line 42
    const/4 v5, 0x0

    .line 43
    const/4 v6, 0x0

    .line 44
    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 45
    .line 46
    .line 47
    :cond_1
    iget-object p1, p0, Lcom/transsion/wrapperad/view/NativeSlideshowView$loadTopAd$1;->d:Lcom/transsion/wrapperad/view/NativeSlideshowView;

    .line 48
    .line 49
    invoke-static {p1}, Lcom/transsion/wrapperad/view/NativeSlideshowView;->access$getMHandler$p(Lcom/transsion/wrapperad/view/NativeSlideshowView;)Landroid/os/Handler;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    iget-object v0, p0, Lcom/transsion/wrapperad/view/NativeSlideshowView$loadTopAd$1;->d:Lcom/transsion/wrapperad/view/NativeSlideshowView;

    .line 54
    .line 55
    new-instance v2, Lcom/transsion/wrapperad/view/n;

    .line 56
    .line 57
    invoke-direct {v2, v0}, Lcom/transsion/wrapperad/view/n;-><init>(Lcom/transsion/wrapperad/view/NativeSlideshowView;)V

    .line 58
    .line 59
    .line 60
    const-wide/16 v3, 0x12c

    .line 61
    .line 62
    invoke-virtual {p1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 63
    .line 64
    .line 65
    iget-object p1, p0, Lcom/transsion/wrapperad/view/NativeSlideshowView$loadTopAd$1;->d:Lcom/transsion/wrapperad/view/NativeSlideshowView;

    .line 66
    .line 67
    const/4 v0, 0x0

    .line 68
    const/4 v2, 0x1

    .line 69
    invoke-static {p1, v0, v2, v1}, Lcom/transsion/wrapperad/view/NativeSlideshowView;->j(Lcom/transsion/wrapperad/view/NativeSlideshowView;ZILjava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    return-void
.end method
