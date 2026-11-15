.class public final Lcom/transsion/commercialization/task/n;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0011\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u001f\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0008\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u0002H\u0014\u00a2\u0006\u0004\u0008\u000b\u0010\u000cR\u0016\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\r\u0010\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/transsion/commercialization/task/n;",
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "Lcom/transsion/ad/bidding/icon/BiddingWrapperIconBean;",
        "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
        "Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;",
        "adManager",
        "<init>",
        "(Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;)V",
        "holder",
        "item",
        "",
        "B1",
        "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/ad/bidding/icon/BiddingWrapperIconBean;)V",
        "F",
        "Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;",
        "Commercialization_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final F:Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;


# direct methods
.method public constructor <init>(Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;)V
    .locals 3

    .line 1
    sget v0, Lcom/transsion/commercialization/R$layout;->item_app_download_ps_layout:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x2

    .line 5
    invoke-direct {p0, v0, v1, v2, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 6
    .line 7
    .line 8
    iput-object p1, p0, Lcom/transsion/commercialization/task/n;->F:Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method protected B1(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/ad/bidding/icon/BiddingWrapperIconBean;)V
    .locals 2

    .line 1
    const-string v0, "holder"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "item"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lcom/transsion/commercialization/task/m;

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-direct {v0, v1}, Lcom/transsion/commercialization/task/m;-><init>(Landroid/content/Context;)V

    .line 18
    .line 19
    .line 20
    sget v1, Lcom/transsion/commercialization/R$id;->wrapperIconView:I

    .line 21
    .line 22
    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    check-cast p1, Lcom/transsion/ad/bidding/icon/BiddingWrapperIconView;

    .line 27
    .line 28
    if-eqz p1, :cond_0

    .line 29
    .line 30
    iget-object v1, p0, Lcom/transsion/commercialization/task/n;->F:Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;

    .line 31
    .line 32
    invoke-virtual {p1, v1, p2, v0}, Lcom/transsion/ad/bidding/icon/BiddingWrapperIconView;->showData(Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;Lcom/transsion/ad/bidding/icon/BiddingWrapperIconBean;Lcom/transsion/ad/bidding/base/r;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    return-void
.end method

.method public bridge synthetic F(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/transsion/ad/bidding/icon/BiddingWrapperIconBean;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/transsion/commercialization/task/n;->B1(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/ad/bidding/icon/BiddingWrapperIconBean;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
