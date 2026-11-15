.class public final Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView$c;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field private a:F

.field private b:Z

.field final synthetic c:Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;


# direct methods
.method constructor <init>(Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView$c;->c:Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic d(Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView$c;->e(Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final e(Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;)V
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->access$getViewPager2$p(Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;)Landroidx/viewpager2/widget/ViewPager2;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string v0, "viewPager2"

    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    :cond_0
    invoke-static {p0}, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->access$getLastPosition$p(Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;)I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-virtual {v0, p0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    .line 19
    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public a(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)V
    .locals 1

    .line 1
    const-string v0, "rv"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "e"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-boolean v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView$c;->b:Z

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 16
    .line 17
    .line 18
    move-result p2

    .line 19
    const/4 v0, 0x1

    .line 20
    if-eq p2, v0, :cond_0

    .line 21
    .line 22
    const/4 v0, 0x3

    .line 23
    if-eq p2, v0, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-object p2, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView$c;->c:Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;

    .line 27
    .line 28
    new-instance v0, Lcom/transsion/wrapperad/view/cardpage/i;

    .line 29
    .line 30
    invoke-direct {v0, p2}, Lcom/transsion/wrapperad/view/cardpage/i;-><init>(Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 34
    .line 35
    .line 36
    :cond_1
    :goto_0
    return-void
.end method

.method public b(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    const-string v0, "rv"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "e"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView$c;->c:Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;

    .line 12
    .line 13
    invoke-static {p1}, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->access$getViewPager2$p(Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;)Landroidx/viewpager2/widget/ViewPager2;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    const-string p1, "viewPager2"

    .line 20
    .line 21
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const/4 p1, 0x0

    .line 25
    :cond_0
    invoke-virtual {p1}, Landroidx/viewpager2/widget/ViewPager2;->isUserInputEnabled()Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    const/4 v0, 0x0

    .line 30
    if-nez p1, :cond_1

    .line 31
    .line 32
    return v0

    .line 33
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-eqz p1, :cond_4

    .line 38
    .line 39
    const/4 v1, 0x1

    .line 40
    if-eq p1, v1, :cond_3

    .line 41
    .line 42
    const/4 v2, 0x2

    .line 43
    if-eq p1, v2, :cond_2

    .line 44
    .line 45
    const/4 p2, 0x3

    .line 46
    if-eq p1, p2, :cond_3

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    iget p2, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView$c;->a:F

    .line 54
    .line 55
    sub-float/2addr p1, p2

    .line 56
    iget-object p2, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView$c;->c:Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;

    .line 57
    .line 58
    invoke-static {p2}, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->access$getDisableRightSwipe$p(Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;)Z

    .line 59
    .line 60
    .line 61
    move-result p2

    .line 62
    if-eqz p2, :cond_5

    .line 63
    .line 64
    iget-object p2, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView$c;->c:Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;

    .line 65
    .line 66
    invoke-static {p2}, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->access$getDisableRightSwipeThreshold$p(Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;)F

    .line 67
    .line 68
    .line 69
    move-result p2

    .line 70
    cmpl-float p1, p1, p2

    .line 71
    .line 72
    if-lez p1, :cond_5

    .line 73
    .line 74
    iput-boolean v1, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView$c;->b:Z

    .line 75
    .line 76
    return v1

    .line 77
    :cond_3
    iget-object p1, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView$c;->c:Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;

    .line 78
    .line 79
    invoke-virtual {p1}, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->startAutoScroll()Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_4
    iget-object p1, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView$c;->c:Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;

    .line 84
    .line 85
    invoke-virtual {p1}, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->pauseAutoScroll()Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;

    .line 86
    .line 87
    .line 88
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    iput p1, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView$c;->a:F

    .line 93
    .line 94
    iput-boolean v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView$c;->b:Z

    .line 95
    .line 96
    :cond_5
    :goto_0
    return v0
.end method

.method public c(Z)V
    .locals 0

    .line 1
    return-void
.end method
