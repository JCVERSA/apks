.class final Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView$AutoScrollRunnable;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AutoScrollRunnable"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\u0008\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0008\u0010\u0008\u001a\u00020\tH\u0016R\u0014\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView$AutoScrollRunnable;",
        "Ljava/lang/Runnable;",
        "nativeCardPageView",
        "Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;",
        "<init>",
        "(Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;)V",
        "nativeCardPageViewRef",
        "Ljava/lang/ref/WeakReference;",
        "run",
        "",
        "wrapperad_psRelease"
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
.field private final nativeCardPageViewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;)V
    .locals 1

    .line 1
    const-string v0, "nativeCardPageView"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView$AutoScrollRunnable;->nativeCardPageViewRef:Ljava/lang/ref/WeakReference;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView$AutoScrollRunnable;->nativeCardPageViewRef:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;

    .line 8
    .line 9
    if-eqz v0, :cond_3

    .line 10
    .line 11
    invoke-static {v0}, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->access$isAutoScrolling$p(Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_3

    .line 20
    .line 21
    invoke-static {v0}, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->access$getViewPager2$p(Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;)Landroidx/viewpager2/widget/ViewPager2;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const/4 v2, 0x0

    .line 26
    const-string v3, "viewPager2"

    .line 27
    .line 28
    if-nez v1, :cond_0

    .line 29
    .line 30
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    move-object v1, v2

    .line 34
    :cond_0
    invoke-virtual {v1}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    const/4 v4, 0x1

    .line 39
    add-int/2addr v1, v4

    .line 40
    invoke-static {v0}, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->access$getViewPager2$p(Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;)Landroidx/viewpager2/widget/ViewPager2;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    if-nez v5, :cond_1

    .line 45
    .line 46
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    move-object v5, v2

    .line 50
    :cond_1
    invoke-virtual {v5, v1, v4}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    .line 51
    .line 52
    .line 53
    invoke-static {v0}, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->access$getViewPager2$p(Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;)Landroidx/viewpager2/widget/ViewPager2;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    if-nez v1, :cond_2

    .line 58
    .line 59
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_2
    move-object v2, v1

    .line 64
    :goto_0
    invoke-static {v0}, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->access$getScrollInterval$p(Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;)J

    .line 65
    .line 66
    .line 67
    move-result-wide v0

    .line 68
    invoke-virtual {v2, p0, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 69
    .line 70
    .line 71
    :cond_3
    return-void
.end method
