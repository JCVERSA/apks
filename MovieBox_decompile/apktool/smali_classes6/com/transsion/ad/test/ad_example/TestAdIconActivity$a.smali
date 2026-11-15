.class public final Lcom/transsion/ad/test/ad_example/TestAdIconActivity$a;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/ad/test/ad_example/TestAdIconActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u000f\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u001f\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0008\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u0002H\u0014\u00a2\u0006\u0004\u0008\u000b\u0010\u000cR\u0017\u0010\u0005\u001a\u00020\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000f\u0010\u0010R\u0014\u0010\u0014\u001a\u00020\u00118\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/transsion/ad/test/ad_example/TestAdIconActivity$a;",
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
        "C1",
        "()Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;",
        "",
        "G",
        "I",
        "designW",
        "lib_ad_gpRelease"
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

.field private final G:I


# direct methods
.method public constructor <init>(Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;)V
    .locals 3

    .line 1
    const-string v0, "adManager"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget v0, Lcom/transsion/ad/R$layout;->item_test_ad_icon_layout:I

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    const/4 v2, 0x2

    .line 10
    invoke-direct {p0, v0, v1, v2, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lcom/transsion/ad/test/ad_example/TestAdIconActivity$a;->F:Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;

    .line 14
    .line 15
    const/high16 p1, 0x43200000    # 160.0f

    .line 16
    .line 17
    invoke-static {p1}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    iput p1, p0, Lcom/transsion/ad/test/ad_example/TestAdIconActivity$a;->G:I

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method protected B1(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/ad/bidding/icon/BiddingWrapperIconBean;)V
    .locals 3

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
    sget v0, Lcom/transsion/ad/R$id;->wrapperIconView:I

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Lcom/transsion/ad/bidding/icon/BiddingWrapperIconView;

    .line 18
    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iget v1, p0, Lcom/transsion/ad/test/ad_example/TestAdIconActivity$a;->G:I

    .line 26
    .line 27
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 p1, 0x0

    .line 31
    :goto_0
    if-eqz p1, :cond_1

    .line 32
    .line 33
    iget-object v0, p0, Lcom/transsion/ad/test/ad_example/TestAdIconActivity$a;->F:Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;

    .line 34
    .line 35
    new-instance v1, Lcom/transsion/ad/test/ad_example/v;

    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-direct {v1, v2}, Lcom/transsion/ad/test/ad_example/v;-><init>(Landroid/content/Context;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, v0, p2, v1}, Lcom/transsion/ad/bidding/icon/BiddingWrapperIconView;->showData(Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;Lcom/transsion/ad/bidding/icon/BiddingWrapperIconBean;Lcom/transsion/ad/bidding/base/r;)V

    .line 45
    .line 46
    .line 47
    :cond_1
    return-void
.end method

.method public final C1()Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/test/ad_example/TestAdIconActivity$a;->F:Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;

    .line 2
    .line 3
    return-object v0
.end method

.method public bridge synthetic F(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/transsion/ad/bidding/icon/BiddingWrapperIconBean;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/transsion/ad/test/ad_example/TestAdIconActivity$a;->B1(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/ad/bidding/icon/BiddingWrapperIconBean;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
