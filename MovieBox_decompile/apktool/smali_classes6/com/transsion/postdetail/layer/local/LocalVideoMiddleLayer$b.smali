.class public final Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer$b;
.super Loh/a;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;-><init>(Landroidx/fragment/app/Fragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;


# direct methods
.method constructor <init>(Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer$b;->d:Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;

    .line 2
    .line 3
    invoke-direct {p0}, Loh/a;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic x(Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer$b;->y(Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final y(Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x0

    .line 4
    invoke-static {p0, v2, v0, v1}, Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;->F3(Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;ZILjava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public i(Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Loh/a;->i(Lcom/hisavana/common/bean/TAdErrorCode;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer$b;->d:Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-static {p1, v2, v0, v1}, Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;->F3(Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;ZILjava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public j(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 7

    .line 1
    invoke-super {p0, p1}, Loh/a;->j(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer$b;->d:Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;->z3()Landroidx/fragment/app/Fragment;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer$b;->d:Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;

    .line 17
    .line 18
    invoke-static {v0}, Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;->v3(Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;)Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    const/4 v5, 0x4

    .line 25
    const/4 v6, 0x0

    .line 26
    const/4 v4, 0x0

    .line 27
    move-object v3, p1

    .line 28
    invoke-static/range {v1 .. v6}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->O0(Lcom/transsion/ad/bidding/base/AbsAdBidding;Landroid/app/Activity;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;ZILjava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    return-void
.end method

.method public m(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Loh/a;->m(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    .line 2
    .line 3
    .line 4
    sget-object p1, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const-string v0, "show_LocalVideoBackInterstitialV2Scene_timestamp"

    .line 11
    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 13
    .line 14
    .line 15
    move-result-wide v1

    .line 16
    invoke-virtual {p1, v0, v1, v2}, Lcom/tencent/mmkv/MMKV;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer$b;->d:Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;

    .line 20
    .line 21
    invoke-static {p1}, Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;->v3(Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;)Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    if-eqz p1, :cond_0

    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->U()V

    .line 28
    .line 29
    .line 30
    :cond_0
    iget-object p1, p0, Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer$b;->d:Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;

    .line 31
    .line 32
    invoke-static {p1}, Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;->t3(Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;)Lwn/w;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    if-eqz p1, :cond_1

    .line 37
    .line 38
    invoke-virtual {p1}, Lwn/w;->b()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    if-eqz p1, :cond_1

    .line 43
    .line 44
    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer$b;->d:Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;

    .line 45
    .line 46
    new-instance v1, Lcom/transsion/postdetail/layer/local/c1;

    .line 47
    .line 48
    invoke-direct {v1, v0}, Lcom/transsion/postdetail/layer/local/c1;-><init>(Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;)V

    .line 49
    .line 50
    .line 51
    const-wide/16 v2, 0xc8

    .line 52
    .line 53
    invoke-virtual {p1, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 54
    .line 55
    .line 56
    :cond_1
    return-void
.end method

.method public p(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Loh/a;->p(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer$b;->d:Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-static {p1, v2, v0, v1}, Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;->F3(Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;ZILjava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
