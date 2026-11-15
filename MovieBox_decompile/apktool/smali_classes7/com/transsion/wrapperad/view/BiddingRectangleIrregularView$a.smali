.class public final Lcom/transsion/wrapperad/view/BiddingRectangleIrregularView$a;
.super Loh/a;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/wrapperad/view/BiddingRectangleIrregularView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/transsion/wrapperad/view/BiddingRectangleIrregularView;


# direct methods
.method constructor <init>(Lcom/transsion/wrapperad/view/BiddingRectangleIrregularView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/wrapperad/view/BiddingRectangleIrregularView$a;->d:Lcom/transsion/wrapperad/view/BiddingRectangleIrregularView;

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
    .locals 2

    .line 1
    invoke-super {p0, p1}, Loh/a;->i(Lcom/hisavana/common/bean/TAdErrorCode;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/transsion/wrapperad/view/BiddingRectangleIrregularView$a;->d:Lcom/transsion/wrapperad/view/BiddingRectangleIrregularView;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-static {v0, v1}, Lcom/transsion/wrapperad/view/BiddingRectangleIrregularView;->access$setMMaxEcpmObject$p(Lcom/transsion/wrapperad/view/BiddingRectangleIrregularView;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/transsion/wrapperad/view/BiddingRectangleIrregularView$a;->d:Lcom/transsion/wrapperad/view/BiddingRectangleIrregularView;

    .line 11
    .line 12
    const/16 v1, 0x8

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/transsion/wrapperad/view/BiddingRectangleIrregularView$a;->d:Lcom/transsion/wrapperad/view/BiddingRectangleIrregularView;

    .line 18
    .line 19
    invoke-static {v0}, Lcom/transsion/wrapperad/view/BiddingRectangleIrregularView;->access$getMIrregularAdListener$p(Lcom/transsion/wrapperad/view/BiddingRectangleIrregularView;)Loh/a;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    invoke-virtual {v0, p1}, Loh/a;->i(Lcom/hisavana/common/bean/TAdErrorCode;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method

.method public j(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Loh/a;->j(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/transsion/wrapperad/view/BiddingRectangleIrregularView$a;->d:Lcom/transsion/wrapperad/view/BiddingRectangleIrregularView;

    .line 5
    .line 6
    invoke-static {v0, p1}, Lcom/transsion/wrapperad/view/BiddingRectangleIrregularView;->access$setMMaxEcpmObject$p(Lcom/transsion/wrapperad/view/BiddingRectangleIrregularView;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lcom/transsion/wrapperad/view/BiddingRectangleIrregularView$a;->d:Lcom/transsion/wrapperad/view/BiddingRectangleIrregularView;

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/transsion/wrapperad/view/BiddingRectangleIrregularView;->showAd()V

    .line 12
    .line 13
    .line 14
    return-void
.end method
