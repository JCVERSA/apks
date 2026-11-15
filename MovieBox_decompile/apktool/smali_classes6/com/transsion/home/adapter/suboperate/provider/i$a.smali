.class public final Lcom/transsion/home/adapter/suboperate/provider/i$a;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/home/adapter/suboperate/provider/i;->O(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/home/bean/OperateItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/home/bean/OperateItem;

.field final synthetic b:Lcom/transsion/home/adapter/suboperate/provider/i;


# direct methods
.method constructor <init>(Lcom/transsion/home/bean/OperateItem;Lcom/transsion/home/adapter/suboperate/provider/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/home/adapter/suboperate/provider/i$a;->a:Lcom/transsion/home/bean/OperateItem;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/home/adapter/suboperate/provider/i$a;->b:Lcom/transsion/home/adapter/suboperate/provider/i;

    .line 4
    .line 5
    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/i$a;->a:Lcom/transsion/home/bean/OperateItem;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsion/home/bean/OperateItem;->getBanner()Lcom/transsion/home/bean/BannerBean;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/transsion/home/bean/BannerBean;->getAutoPlay()Ljava/lang/Boolean;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 15
    .line 16
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move v0, v1

    .line 22
    :goto_0
    if-eqz v0, :cond_2

    .line 23
    .line 24
    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/i$a;->b:Lcom/transsion/home/adapter/suboperate/provider/i;

    .line 25
    .line 26
    invoke-static {v0}, Lcom/transsion/home/adapter/suboperate/provider/i;->G(Lcom/transsion/home/adapter/suboperate/provider/i;)Landroid/os/Handler;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    iget-object v2, p0, Lcom/transsion/home/adapter/suboperate/provider/i$a;->b:Lcom/transsion/home/adapter/suboperate/provider/i;

    .line 33
    .line 34
    invoke-static {v2}, Lcom/transsion/home/adapter/suboperate/provider/i;->H(Lcom/transsion/home/adapter/suboperate/provider/i;)Ljava/lang/Runnable;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 39
    .line 40
    .line 41
    :cond_1
    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/i$a;->b:Lcom/transsion/home/adapter/suboperate/provider/i;

    .line 42
    .line 43
    invoke-static {v0}, Lcom/transsion/home/adapter/suboperate/provider/i;->G(Lcom/transsion/home/adapter/suboperate/provider/i;)Landroid/os/Handler;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    if-eqz v0, :cond_2

    .line 48
    .line 49
    iget-object v2, p0, Lcom/transsion/home/adapter/suboperate/provider/i$a;->b:Lcom/transsion/home/adapter/suboperate/provider/i;

    .line 50
    .line 51
    invoke-static {v2}, Lcom/transsion/home/adapter/suboperate/provider/i;->H(Lcom/transsion/home/adapter/suboperate/provider/i;)Ljava/lang/Runnable;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    iget-object v3, p0, Lcom/transsion/home/adapter/suboperate/provider/i$a;->b:Lcom/transsion/home/adapter/suboperate/provider/i;

    .line 56
    .line 57
    invoke-static {v3}, Lcom/transsion/home/adapter/suboperate/provider/i;->D(Lcom/transsion/home/adapter/suboperate/provider/i;)J

    .line 58
    .line 59
    .line 60
    move-result-wide v3

    .line 61
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 62
    .line 63
    .line 64
    :cond_2
    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/i$a;->b:Lcom/transsion/home/adapter/suboperate/provider/i;

    .line 65
    .line 66
    invoke-static {v0}, Lcom/transsion/home/adapter/suboperate/provider/i;->F(Lcom/transsion/home/adapter/suboperate/provider/i;)I

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    const/4 v2, -0x1

    .line 71
    if-eq v0, v2, :cond_3

    .line 72
    .line 73
    const/4 v1, 0x1

    .line 74
    :cond_3
    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/i$a;->b:Lcom/transsion/home/adapter/suboperate/provider/i;

    .line 75
    .line 76
    invoke-static {v0, p1}, Lcom/transsion/home/adapter/suboperate/provider/i;->K(Lcom/transsion/home/adapter/suboperate/provider/i;I)V

    .line 77
    .line 78
    .line 79
    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/i$a;->b:Lcom/transsion/home/adapter/suboperate/provider/i;

    .line 80
    .line 81
    invoke-static {v0, p1, v1}, Lcom/transsion/home/adapter/suboperate/provider/i;->J(Lcom/transsion/home/adapter/suboperate/provider/i;IZ)V

    .line 82
    .line 83
    .line 84
    return-void
.end method
