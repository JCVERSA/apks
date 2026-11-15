.class public final Lcom/transsion/home/fragment/tab/TrendingFragment$g;
.super Landroidx/recyclerview/widget/GridLayoutManager$c;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/home/fragment/tab/TrendingFragment;->L1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic e:Lcom/transsion/home/fragment/tab/TrendingFragment;

.field final synthetic f:I


# direct methods
.method constructor <init>(Lcom/transsion/home/fragment/tab/TrendingFragment;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/home/fragment/tab/TrendingFragment$g;->e:Lcom/transsion/home/fragment/tab/TrendingFragment;

    .line 2
    .line 3
    iput p2, p0, Lcom/transsion/home/fragment/tab/TrendingFragment$g;->f:I

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
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/home/fragment/tab/TrendingFragment$g;->e:Lcom/transsion/home/fragment/tab/TrendingFragment;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/transsion/home/fragment/tab/TrendingFragment;->V0(Lcom/transsion/home/fragment/tab/TrendingFragment;)Lcom/transsion/home/adapter/trending/b;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const-string v2, "mAdapter"

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    move-object v0, v1

    .line 16
    :cond_0
    invoke-virtual {v0}, Lcom/transsion/home/adapter/trending/b;->T1()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    iget p1, p0, Lcom/transsion/home/fragment/tab/TrendingFragment$g;->f:I

    .line 23
    .line 24
    return p1

    .line 25
    :cond_1
    iget-object v0, p0, Lcom/transsion/home/fragment/tab/TrendingFragment$g;->e:Lcom/transsion/home/fragment/tab/TrendingFragment;

    .line 26
    .line 27
    invoke-static {v0}, Lcom/transsion/home/fragment/tab/TrendingFragment;->V0(Lcom/transsion/home/fragment/tab/TrendingFragment;)Lcom/transsion/home/adapter/trending/b;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    if-nez v0, :cond_2

    .line 32
    .line 33
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    move-object v1, v0

    .line 38
    :goto_0
    invoke-virtual {v1, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    check-cast p1, Lcom/transsion/home/bean/OperateItem;

    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/transsion/home/bean/OperateItem;->getType()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    sget-object v0, Lcom/transsion/moviedetailapi/bean/PostItemType;->SUBJECT:Lcom/transsion/moviedetailapi/bean/PostItemType;

    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/PostItemType;->getValue()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    if-eqz p1, :cond_3

    .line 59
    .line 60
    const/4 p1, 0x1

    .line 61
    goto :goto_1

    .line 62
    :cond_3
    iget p1, p0, Lcom/transsion/home/fragment/tab/TrendingFragment$g;->f:I

    .line 63
    .line 64
    :goto_1
    return p1
.end method
