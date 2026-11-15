.class Lcom/to/aboomy/pager2banner/Banner$1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/to/aboomy/pager2banner/Banner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/to/aboomy/pager2banner/Banner;


# direct methods
.method constructor <init>(Lcom/to/aboomy/pager2banner/Banner;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/to/aboomy/pager2banner/Banner$1;->this$0:Lcom/to/aboomy/pager2banner/Banner;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/to/aboomy/pager2banner/Banner$1;->this$0:Lcom/to/aboomy/pager2banner/Banner;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/to/aboomy/pager2banner/Banner;->isAutoPlay()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/to/aboomy/pager2banner/Banner$1;->this$0:Lcom/to/aboomy/pager2banner/Banner;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/to/aboomy/pager2banner/Banner;->i(Lcom/to/aboomy/pager2banner/Banner;)I

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/to/aboomy/pager2banner/Banner$1;->this$0:Lcom/to/aboomy/pager2banner/Banner;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/to/aboomy/pager2banner/Banner;->g(Lcom/to/aboomy/pager2banner/Banner;)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    iget-object v1, p0, Lcom/to/aboomy/pager2banner/Banner$1;->this$0:Lcom/to/aboomy/pager2banner/Banner;

    .line 21
    .line 22
    invoke-static {v1}, Lcom/to/aboomy/pager2banner/Banner;->j(Lcom/to/aboomy/pager2banner/Banner;)I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    iget-object v2, p0, Lcom/to/aboomy/pager2banner/Banner$1;->this$0:Lcom/to/aboomy/pager2banner/Banner;

    .line 27
    .line 28
    invoke-static {v2}, Lcom/to/aboomy/pager2banner/Banner;->k(Lcom/to/aboomy/pager2banner/Banner;)I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    add-int/2addr v1, v2

    .line 33
    const/4 v2, 0x1

    .line 34
    add-int/2addr v1, v2

    .line 35
    if-ne v0, v1, :cond_0

    .line 36
    .line 37
    iget-object v0, p0, Lcom/to/aboomy/pager2banner/Banner$1;->this$0:Lcom/to/aboomy/pager2banner/Banner;

    .line 38
    .line 39
    const/4 v1, 0x0

    .line 40
    invoke-static {v0, v1}, Lcom/to/aboomy/pager2banner/Banner;->m(Lcom/to/aboomy/pager2banner/Banner;Z)Z

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lcom/to/aboomy/pager2banner/Banner$1;->this$0:Lcom/to/aboomy/pager2banner/Banner;

    .line 44
    .line 45
    invoke-static {v0}, Lcom/to/aboomy/pager2banner/Banner;->n(Lcom/to/aboomy/pager2banner/Banner;)Landroidx/viewpager2/widget/ViewPager2;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    iget-object v2, p0, Lcom/to/aboomy/pager2banner/Banner$1;->this$0:Lcom/to/aboomy/pager2banner/Banner;

    .line 50
    .line 51
    invoke-static {v2}, Lcom/to/aboomy/pager2banner/Banner;->k(Lcom/to/aboomy/pager2banner/Banner;)I

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    invoke-virtual {v0, v2, v1}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    .line 56
    .line 57
    .line 58
    iget-object v0, p0, Lcom/to/aboomy/pager2banner/Banner$1;->this$0:Lcom/to/aboomy/pager2banner/Banner;

    .line 59
    .line 60
    invoke-static {v0}, Lcom/to/aboomy/pager2banner/Banner;->o(Lcom/to/aboomy/pager2banner/Banner;)Ljava/lang/Runnable;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/to/aboomy/pager2banner/Banner$1;->this$0:Lcom/to/aboomy/pager2banner/Banner;

    .line 69
    .line 70
    invoke-static {v0, v2}, Lcom/to/aboomy/pager2banner/Banner;->m(Lcom/to/aboomy/pager2banner/Banner;Z)Z

    .line 71
    .line 72
    .line 73
    iget-object v0, p0, Lcom/to/aboomy/pager2banner/Banner$1;->this$0:Lcom/to/aboomy/pager2banner/Banner;

    .line 74
    .line 75
    invoke-static {v0}, Lcom/to/aboomy/pager2banner/Banner;->n(Lcom/to/aboomy/pager2banner/Banner;)Landroidx/viewpager2/widget/ViewPager2;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    iget-object v1, p0, Lcom/to/aboomy/pager2banner/Banner$1;->this$0:Lcom/to/aboomy/pager2banner/Banner;

    .line 80
    .line 81
    invoke-static {v1}, Lcom/to/aboomy/pager2banner/Banner;->g(Lcom/to/aboomy/pager2banner/Banner;)I

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(I)V

    .line 86
    .line 87
    .line 88
    iget-object v0, p0, Lcom/to/aboomy/pager2banner/Banner$1;->this$0:Lcom/to/aboomy/pager2banner/Banner;

    .line 89
    .line 90
    invoke-static {v0}, Lcom/to/aboomy/pager2banner/Banner;->o(Lcom/to/aboomy/pager2banner/Banner;)Ljava/lang/Runnable;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    iget-object v2, p0, Lcom/to/aboomy/pager2banner/Banner$1;->this$0:Lcom/to/aboomy/pager2banner/Banner;

    .line 95
    .line 96
    invoke-static {v2}, Lcom/to/aboomy/pager2banner/Banner;->p(Lcom/to/aboomy/pager2banner/Banner;)J

    .line 97
    .line 98
    .line 99
    move-result-wide v2

    .line 100
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 101
    .line 102
    .line 103
    :cond_1
    :goto_0
    return-void
.end method
