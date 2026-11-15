.class public final Lcom/tn/lib/pager/PagerLayoutManager;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
.source "source.java"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000m\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0019\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004*\u0001D\u0018\u00002\u00020\u0001B\u0011\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005B+\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0006\u0010\n\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u0004\u0010\u000bJ\u000f\u0010\r\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0019\u0010\u0011\u001a\u00020\u000c2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\'\u0010\u0015\u001a\u00020\u000c2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\u000c\u0010\u0014\u001a\u0008\u0018\u00010\u0013R\u00020\u000fH\u0016\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u000f\u0010\u0018\u001a\u0004\u0018\u00010\u0017\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J/\u0010\u001d\u001a\u00020\u00082\u0006\u0010\u001a\u001a\u00020\u00082\u000c\u0010\u0014\u001a\u0008\u0018\u00010\u0013R\u00020\u000f2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001bH\u0016\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ/\u0010 \u001a\u00020\u00082\u0006\u0010\u001f\u001a\u00020\u00082\u000c\u0010\u0014\u001a\u0008\u0018\u00010\u0013R\u00020\u000f2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001bH\u0016\u00a2\u0006\u0004\u0008 \u0010\u001eJ\u0017\u0010#\u001a\u00020\u000c2\u0008\u0010\"\u001a\u0004\u0018\u00010!\u00a2\u0006\u0004\u0008#\u0010$J\'\u0010%\u001a\u00020\u000c2\u000c\u0010\u0014\u001a\u0008\u0018\u00010\u0013R\u00020\u000f2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001bH\u0016\u00a2\u0006\u0004\u0008%\u0010&J\u000f\u0010(\u001a\u00020\'H\u0016\u00a2\u0006\u0004\u0008(\u0010)R\u001b\u0010/\u001a\u00020*8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008+\u0010,\u001a\u0004\u0008-\u0010.R\u0018\u00102\u001a\u0004\u0018\u00010!8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00080\u00101R\u0016\u00105\u001a\u00020\u00088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00083\u00104R\"\u0010(\u001a\u00020\'8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00086\u0010#\u001a\u0004\u00087\u0010)\"\u0004\u00088\u00109R\"\u0010=\u001a\u00020\'8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008:\u0010#\u001a\u0004\u0008;\u0010)\"\u0004\u0008<\u00109R\u0016\u0010?\u001a\u00020\u00088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008>\u00104R\u0016\u0010A\u001a\u00020\u00088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008@\u00104R\u0016\u0010C\u001a\u00020\u00088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008B\u00104R\u0014\u0010G\u001a\u00020D8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008E\u0010FR\u0014\u0010K\u001a\u00020H8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008I\u0010J\u00a8\u0006L"
    }
    d2 = {
        "Lcom/tn/lib/pager/PagerLayoutManager;",
        "Landroidx/recyclerview/widget/LinearLayoutManager;",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;)V",
        "Landroid/util/AttributeSet;",
        "attrs",
        "",
        "defStyleAttr",
        "defStyleRes",
        "(Landroid/content/Context;Landroid/util/AttributeSet;II)V",
        "",
        "T",
        "()V",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "recyclerView",
        "onAttachedToWindow",
        "(Landroidx/recyclerview/widget/RecyclerView;)V",
        "Landroidx/recyclerview/widget/RecyclerView$t;",
        "recycler",
        "onDetachedFromWindow",
        "(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$t;)V",
        "Landroid/view/View;",
        "U",
        "()Landroid/view/View;",
        "dy",
        "Landroidx/recyclerview/widget/RecyclerView$x;",
        "state",
        "scrollVerticallyBy",
        "(ILandroidx/recyclerview/widget/RecyclerView$t;Landroidx/recyclerview/widget/RecyclerView$x;)I",
        "dx",
        "scrollHorizontallyBy",
        "Lng/a;",
        "listener",
        "Z",
        "(Lng/a;)V",
        "onLayoutChildren",
        "(Landroidx/recyclerview/widget/RecyclerView$t;Landroidx/recyclerview/widget/RecyclerView$x;)V",
        "",
        "canScrollVertically",
        "()Z",
        "Landroidx/recyclerview/widget/n;",
        "a",
        "Lkotlin/Lazy;",
        "V",
        "()Landroidx/recyclerview/widget/n;",
        "pagerSnapHelper",
        "b",
        "Lng/a;",
        "onViewPagerListener",
        "c",
        "I",
        "direction",
        "d",
        "getCanScrollVertically",
        "X",
        "(Z)V",
        "e",
        "getEnableFadeEffect",
        "Y",
        "enableFadeEffect",
        "f",
        "oldState",
        "g",
        "oldPosition",
        "h",
        "oldPositionIdle",
        "com/tn/lib/pager/PagerLayoutManager$b",
        "i",
        "Lcom/tn/lib/pager/PagerLayoutManager$b;",
        "rvScrollListener",
        "Landroidx/recyclerview/widget/RecyclerView$o;",
        "j",
        "Landroidx/recyclerview/widget/RecyclerView$o;",
        "childAttachStateChangeListener",
        "UI_psRelease"
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
.field private final a:Lkotlin/Lazy;

.field private b:Lng/a;

.field private c:I

.field private d:Z

.field private e:Z

.field private f:I

.field private g:I

.field private h:I

.field private final i:Lcom/tn/lib/pager/PagerLayoutManager$b;

.field private final j:Landroidx/recyclerview/widget/RecyclerView$o;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Lng/b;

    invoke-direct {p1}, Lng/b;-><init>()V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/tn/lib/pager/PagerLayoutManager;->a:Lkotlin/Lazy;

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/tn/lib/pager/PagerLayoutManager;->d:Z

    const/4 p1, -0x1

    .line 4
    iput p1, p0, Lcom/tn/lib/pager/PagerLayoutManager;->f:I

    .line 5
    iput p1, p0, Lcom/tn/lib/pager/PagerLayoutManager;->g:I

    .line 6
    iput p1, p0, Lcom/tn/lib/pager/PagerLayoutManager;->h:I

    .line 7
    new-instance p1, Lcom/tn/lib/pager/PagerLayoutManager$b;

    invoke-direct {p1, p0}, Lcom/tn/lib/pager/PagerLayoutManager$b;-><init>(Lcom/tn/lib/pager/PagerLayoutManager;)V

    iput-object p1, p0, Lcom/tn/lib/pager/PagerLayoutManager;->i:Lcom/tn/lib/pager/PagerLayoutManager$b;

    .line 8
    new-instance p1, Lcom/tn/lib/pager/PagerLayoutManager$a;

    invoke-direct {p1, p0}, Lcom/tn/lib/pager/PagerLayoutManager$a;-><init>(Lcom/tn/lib/pager/PagerLayoutManager;)V

    iput-object p1, p0, Lcom/tn/lib/pager/PagerLayoutManager;->j:Landroidx/recyclerview/widget/RecyclerView$o;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 10
    new-instance p1, Lng/b;

    invoke-direct {p1}, Lng/b;-><init>()V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/tn/lib/pager/PagerLayoutManager;->a:Lkotlin/Lazy;

    const/4 p1, 0x1

    .line 11
    iput-boolean p1, p0, Lcom/tn/lib/pager/PagerLayoutManager;->d:Z

    const/4 p1, -0x1

    .line 12
    iput p1, p0, Lcom/tn/lib/pager/PagerLayoutManager;->f:I

    .line 13
    iput p1, p0, Lcom/tn/lib/pager/PagerLayoutManager;->g:I

    .line 14
    iput p1, p0, Lcom/tn/lib/pager/PagerLayoutManager;->h:I

    .line 15
    new-instance p1, Lcom/tn/lib/pager/PagerLayoutManager$b;

    invoke-direct {p1, p0}, Lcom/tn/lib/pager/PagerLayoutManager$b;-><init>(Lcom/tn/lib/pager/PagerLayoutManager;)V

    iput-object p1, p0, Lcom/tn/lib/pager/PagerLayoutManager;->i:Lcom/tn/lib/pager/PagerLayoutManager$b;

    .line 16
    new-instance p1, Lcom/tn/lib/pager/PagerLayoutManager$a;

    invoke-direct {p1, p0}, Lcom/tn/lib/pager/PagerLayoutManager$a;-><init>(Lcom/tn/lib/pager/PagerLayoutManager;)V

    iput-object p1, p0, Lcom/tn/lib/pager/PagerLayoutManager;->j:Landroidx/recyclerview/widget/RecyclerView$o;

    return-void
.end method

.method public static synthetic K()Landroidx/recyclerview/widget/n;
    .locals 1

    .line 1
    invoke-static {}, Lcom/tn/lib/pager/PagerLayoutManager;->W()Landroidx/recyclerview/widget/n;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final synthetic L(Lcom/tn/lib/pager/PagerLayoutManager;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/tn/lib/pager/PagerLayoutManager;->c:I

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic M(Lcom/tn/lib/pager/PagerLayoutManager;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/tn/lib/pager/PagerLayoutManager;->g:I

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic N(Lcom/tn/lib/pager/PagerLayoutManager;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/tn/lib/pager/PagerLayoutManager;->f:I

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic O(Lcom/tn/lib/pager/PagerLayoutManager;)Lng/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tn/lib/pager/PagerLayoutManager;->b:Lng/a;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic P(Lcom/tn/lib/pager/PagerLayoutManager;)Landroidx/recyclerview/widget/n;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/tn/lib/pager/PagerLayoutManager;->V()Landroidx/recyclerview/widget/n;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic Q(Lcom/tn/lib/pager/PagerLayoutManager;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/tn/lib/pager/PagerLayoutManager;->g:I

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic R(Lcom/tn/lib/pager/PagerLayoutManager;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/tn/lib/pager/PagerLayoutManager;->h:I

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic S(Lcom/tn/lib/pager/PagerLayoutManager;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/tn/lib/pager/PagerLayoutManager;->f:I

    .line 2
    .line 3
    return-void
.end method

.method private final T()V
    .locals 9

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$m;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$m;->getHeight()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    int-to-float v0, v0

    .line 13
    const/high16 v1, 0x40000000    # 2.0f

    .line 14
    .line 15
    div-float/2addr v0, v1

    .line 16
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$m;->getHeight()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    int-to-float v2, v2

    .line 21
    div-float/2addr v2, v1

    .line 22
    :try_start_0
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 23
    .line 24
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$m;->getChildCount()I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    const/4 v4, 0x0

    .line 29
    :goto_0
    if-ge v4, v3, :cond_2

    .line 30
    .line 31
    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/RecyclerView$m;->getChildAt(I)Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    if-nez v5, :cond_1

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    invoke-virtual {p0, v5}, Landroidx/recyclerview/widget/RecyclerView$m;->getDecoratedTop(Landroid/view/View;)I

    .line 39
    .line 40
    .line 41
    move-result v6

    .line 42
    invoke-virtual {p0, v5}, Landroidx/recyclerview/widget/RecyclerView$m;->getDecoratedBottom(Landroid/view/View;)I

    .line 43
    .line 44
    .line 45
    move-result v7

    .line 46
    add-int/2addr v6, v7

    .line 47
    int-to-float v6, v6

    .line 48
    div-float/2addr v6, v1

    .line 49
    sub-float v6, v0, v6

    .line 50
    .line 51
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    .line 52
    .line 53
    .line 54
    move-result v6

    .line 55
    div-float/2addr v6, v2

    .line 56
    const/high16 v7, 0x3f800000    # 1.0f

    .line 57
    .line 58
    sub-float v6, v7, v6

    .line 59
    .line 60
    const v8, 0x3e99999a    # 0.3f

    .line 61
    .line 62
    .line 63
    invoke-static {v6, v8, v7}, Lkotlin/ranges/RangesKt;->k(FFF)F

    .line 64
    .line 65
    .line 66
    move-result v6

    .line 67
    invoke-virtual {v5, v6}, Landroid/view/View;->setAlpha(F)V

    .line 68
    .line 69
    .line 70
    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :catchall_0
    move-exception v0

    .line 74
    goto :goto_2

    .line 75
    :cond_2
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 76
    .line 77
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    .line 79
    .line 80
    goto :goto_3

    .line 81
    :goto_2
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 82
    .line 83
    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    :goto_3
    return-void
.end method

.method private final V()Landroidx/recyclerview/widget/n;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tn/lib/pager/PagerLayoutManager;->a:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/recyclerview/widget/n;

    .line 8
    .line 9
    return-object v0
.end method

.method private static final W()Landroidx/recyclerview/widget/n;
    .locals 1

    .line 1
    new-instance v0, Landroidx/recyclerview/widget/n;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/recyclerview/widget/n;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public final U()Landroid/view/View;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/tn/lib/pager/PagerLayoutManager;->V()Landroidx/recyclerview/widget/n;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/n;->findSnapView(Landroidx/recyclerview/widget/RecyclerView$m;)Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public final X(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/tn/lib/pager/PagerLayoutManager;->d:Z

    .line 2
    .line 3
    return-void
.end method

.method public final Y(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/tn/lib/pager/PagerLayoutManager;->e:Z

    .line 2
    .line 3
    return-void
.end method

.method public final Z(Lng/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tn/lib/pager/PagerLayoutManager;->b:Lng/a;

    .line 2
    .line 3
    return-void
.end method

.method public canScrollVertically()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/tn/lib/pager/PagerLayoutManager;->d:Z

    .line 2
    .line 3
    invoke-super {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->canScrollVertically()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    and-int/2addr v0, v1

    .line 8
    return v0
.end method

.method public onAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$m;->onAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getOnFlingListener()Landroidx/recyclerview/widget/RecyclerView$p;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    if-nez v0, :cond_1

    .line 13
    .line 14
    invoke-direct {p0}, Lcom/tn/lib/pager/PagerLayoutManager;->V()Landroidx/recyclerview/widget/n;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/r;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 19
    .line 20
    .line 21
    :cond_1
    if-eqz p1, :cond_2

    .line 22
    .line 23
    iget-object v0, p0, Lcom/tn/lib/pager/PagerLayoutManager;->j:Landroidx/recyclerview/widget/RecyclerView$o;

    .line 24
    .line 25
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnChildAttachStateChangeListener(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 26
    .line 27
    .line 28
    :cond_2
    if-eqz p1, :cond_3

    .line 29
    .line 30
    iget-object v0, p0, Lcom/tn/lib/pager/PagerLayoutManager;->i:Lcom/tn/lib/pager/PagerLayoutManager$b;

    .line 31
    .line 32
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$r;)V

    .line 33
    .line 34
    .line 35
    :cond_3
    return-void
.end method

.method public onDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$t;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->onDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$t;)V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    iget-object p2, p0, Lcom/tn/lib/pager/PagerLayoutManager;->j:Landroidx/recyclerview/widget/RecyclerView$o;

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->removeOnChildAttachStateChangeListener(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 9
    .line 10
    .line 11
    :cond_0
    if-eqz p1, :cond_1

    .line 12
    .line 13
    iget-object p2, p0, Lcom/tn/lib/pager/PagerLayoutManager;->i:Lcom/tn/lib/pager/PagerLayoutManager$b;

    .line 14
    .line 15
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$r;)V

    .line 16
    .line 17
    .line 18
    :cond_1
    return-void
.end method

.method public onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$t;Landroidx/recyclerview/widget/RecyclerView$x;)V
    .locals 0

    .line 1
    :try_start_0
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$t;Landroidx/recyclerview/widget/RecyclerView$x;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    .line 3
    .line 4
    :catch_0
    return-void
.end method

.method public scrollHorizontallyBy(ILandroidx/recyclerview/widget/RecyclerView$t;Landroidx/recyclerview/widget/RecyclerView$x;)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/tn/lib/pager/PagerLayoutManager;->c:I

    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollHorizontallyBy(ILandroidx/recyclerview/widget/RecyclerView$t;Landroidx/recyclerview/widget/RecyclerView$x;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public scrollVerticallyBy(ILandroidx/recyclerview/widget/RecyclerView$t;Landroidx/recyclerview/widget/RecyclerView$x;)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/tn/lib/pager/PagerLayoutManager;->c:I

    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollVerticallyBy(ILandroidx/recyclerview/widget/RecyclerView$t;Landroidx/recyclerview/widget/RecyclerView$x;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    iget-boolean p2, p0, Lcom/tn/lib/pager/PagerLayoutManager;->e:Z

    .line 8
    .line 9
    if-eqz p2, :cond_0

    .line 10
    .line 11
    invoke-direct {p0}, Lcom/tn/lib/pager/PagerLayoutManager;->T()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return p1
.end method
