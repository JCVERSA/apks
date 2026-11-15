.class public final Lcom/transsion/rewardscenter/task/ad/w;
.super Lcom/transsion/ad/bidding/base/u;
.source "source.java"


# instance fields
.field private final b:Lyo/k;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Lcom/transsion/ad/bidding/base/u;-><init>(Landroid/content/Context;)V

    .line 7
    .line 8
    .line 9
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const/4 v0, 0x0

    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-static {p1, v0, v1}, Lyo/k;->c(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lyo/k;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const-string v0, "inflate(...)"

    .line 20
    .line 21
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Lcom/transsion/rewardscenter/task/ad/w;->b:Lyo/k;

    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public a()Lcom/cloud/hisavana/sdk/api/view/AdChoicesView;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public b()Lcom/cloud/hisavana/sdk/api/view/AdCloseView;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public c()Landroid/widget/TextView;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public e()Landroid/widget/TextView;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public f()Landroid/widget/ImageView;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/rewardscenter/task/ad/w;->b:Lyo/k;

    .line 2
    .line 3
    iget-object v0, v0, Lyo/k;->b:Landroid/widget/ImageView;

    .line 4
    .line 5
    const-string v1, "adIcon"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public g()Lcom/cloud/hisavana/sdk/api/view/MediaView;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public h()Lcom/cloud/hisavana/sdk/api/view/StoreMarkView;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public i()Landroid/view/View;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/rewardscenter/task/ad/w;->b:Lyo/k;

    .line 2
    .line 3
    invoke-virtual {v0}, Lyo/k;->b()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "getRoot(...)"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public j()Landroid/widget/TextView;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/rewardscenter/task/ad/w;->b:Lyo/k;

    .line 2
    .line 3
    iget-object v0, v0, Lyo/k;->c:Landroidx/appcompat/widget/AppCompatTextView;

    .line 4
    .line 5
    const-string v1, "adTitle"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method
