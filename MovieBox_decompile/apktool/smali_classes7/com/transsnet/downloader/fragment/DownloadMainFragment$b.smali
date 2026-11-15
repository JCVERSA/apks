.class public final Lcom/transsnet/downloader/fragment/DownloadMainFragment$b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/transsion/ad/view/ScrollDetectFrameLayout$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsnet/downloader/fragment/DownloadMainFragment;->t0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsnet/downloader/fragment/DownloadMainFragment;


# direct methods
.method constructor <init>(Lcom/transsnet/downloader/fragment/DownloadMainFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsnet/downloader/fragment/DownloadMainFragment$b;->a:Lcom/transsnet/downloader/fragment/DownloadMainFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/fragment/DownloadMainFragment$b;->a:Lcom/transsnet/downloader/fragment/DownloadMainFragment;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lbx/w;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, v0, Lbx/w;->b:Lcom/transsion/wrapperad/view/BiddingFloatingIrregularAnimationView;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-virtual {v0, v1}, Lcom/transsion/wrapperad/view/BiddingFloatingIrregularAnimationView;->changeState(Z)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/fragment/DownloadMainFragment$b;->a:Lcom/transsnet/downloader/fragment/DownloadMainFragment;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lbx/w;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, v0, Lbx/w;->b:Lcom/transsion/wrapperad/view/BiddingFloatingIrregularAnimationView;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    invoke-virtual {v0, v1}, Lcom/transsion/wrapperad/view/BiddingFloatingIrregularAnimationView;->changeState(Z)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public c(FFLcom/transsion/ad/view/ScrollDetectFrameLayout$ScrollDirection;)V
    .locals 1

    .line 1
    const-string v0, "direction"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/transsnet/downloader/fragment/DownloadMainFragment$b;->a:Lcom/transsnet/downloader/fragment/DownloadMainFragment;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lbx/w;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object v0, v0, Lbx/w;->h:Lcom/transsion/wrapperad/view/DownloadTopIrregularView;

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-virtual {v0, p1, p2, p3}, Lcom/transsion/wrapperad/view/DownloadTopIrregularView;->onScroll(FFLcom/transsion/ad/view/ScrollDetectFrameLayout$ScrollDirection;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method
