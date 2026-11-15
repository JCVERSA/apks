.class public final Lcom/transsion/home/fragment/tab/TrendingUGCFragment$e;
.super Landroidx/recyclerview/widget/GridLayoutManager$c;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/home/fragment/tab/TrendingUGCFragment;->f1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic e:Lcom/transsion/home/fragment/tab/TrendingUGCFragment;

.field final synthetic f:I


# direct methods
.method constructor <init>(Lcom/transsion/home/fragment/tab/TrendingUGCFragment;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/home/fragment/tab/TrendingUGCFragment$e;->e:Lcom/transsion/home/fragment/tab/TrendingUGCFragment;

    .line 2
    .line 3
    iput p2, p0, Lcom/transsion/home/fragment/tab/TrendingUGCFragment$e;->f:I

    .line 4
    .line 5
    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$c;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public f(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/home/fragment/tab/TrendingUGCFragment$e;->e:Lcom/transsion/home/fragment/tab/TrendingUGCFragment;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/transsion/home/fragment/tab/TrendingUGCFragment;->K0(Lcom/transsion/home/fragment/tab/TrendingUGCFragment;)Lcom/transsion/home/adapter/operateUGC/b;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-string v0, "mainAdapter"

    .line 10
    .line 11
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    :cond_0
    invoke-virtual {v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Lcom/transsion/home/bean/OperateItem;

    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/transsion/home/bean/OperateItem;->getType()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    sget-object v0, Lcom/transsion/moviedetailapi/bean/PostItemType;->PREFERENCES:Lcom/transsion/moviedetailapi/bean/PostItemType;

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/PostItemType;->getValue()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    iget p1, p0, Lcom/transsion/home/fragment/tab/TrendingUGCFragment$e;->f:I

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    sget-object v0, Lcom/transsion/moviedetailapi/bean/PostItemType;->TRENDING_FEES_GRID:Lcom/transsion/moviedetailapi/bean/PostItemType;

    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/PostItemType;->getValue()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    if-eqz p1, :cond_2

    .line 51
    .line 52
    const/4 p1, 0x1

    .line 53
    goto :goto_0

    .line 54
    :cond_2
    iget p1, p0, Lcom/transsion/home/fragment/tab/TrendingUGCFragment$e;->f:I

    .line 55
    .line 56
    :goto_0
    return p1
.end method
