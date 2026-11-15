.class public final Lcom/transsion/shorttv_pugc/base/pager/PagerLayoutManager;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
.source "source.java"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000k\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0016\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004*\u0001?\u0018\u00002\u00020\u0001B\u0011\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005B+\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0006\u0010\n\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u0004\u0010\u000bJ\u0019\u0010\u000f\u001a\u00020\u000e2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000cH\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\'\u0010\u0013\u001a\u00020\u000e2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000c2\u000c\u0010\u0012\u001a\u0008\u0018\u00010\u0011R\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u000f\u0010\u0016\u001a\u0004\u0018\u00010\u0015\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J/\u0010\u001b\u001a\u00020\u00082\u0006\u0010\u0018\u001a\u00020\u00082\u000c\u0010\u0012\u001a\u0008\u0018\u00010\u0011R\u00020\u000c2\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0019H\u0016\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ/\u0010\u001e\u001a\u00020\u00082\u0006\u0010\u001d\u001a\u00020\u00082\u000c\u0010\u0012\u001a\u0008\u0018\u00010\u0011R\u00020\u000c2\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0019H\u0016\u00a2\u0006\u0004\u0008\u001e\u0010\u001cJ\u0017\u0010!\u001a\u00020\u000e2\u0008\u0010 \u001a\u0004\u0018\u00010\u001f\u00a2\u0006\u0004\u0008!\u0010\"J\'\u0010#\u001a\u00020\u000e2\u000c\u0010\u0012\u001a\u0008\u0018\u00010\u0011R\u00020\u000c2\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0019H\u0016\u00a2\u0006\u0004\u0008#\u0010$J\u000f\u0010&\u001a\u00020%H\u0016\u00a2\u0006\u0004\u0008&\u0010\'R\u001b\u0010-\u001a\u00020(8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008)\u0010*\u001a\u0004\u0008+\u0010,R\u0018\u00100\u001a\u0004\u0018\u00010\u001f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008.\u0010/R\u0016\u00103\u001a\u00020\u00088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00081\u00102R\"\u0010&\u001a\u00020%8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00084\u00105\u001a\u0004\u00086\u0010\'\"\u0004\u00087\u00108R\u0016\u0010:\u001a\u00020\u00088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00089\u00102R\u0016\u0010<\u001a\u00020\u00088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008;\u00102R\u0016\u0010>\u001a\u00020\u00088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008=\u00102R\u0014\u0010B\u001a\u00020?8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008@\u0010AR\u0014\u0010F\u001a\u00020C8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008D\u0010E\u00a8\u0006G"
    }
    d2 = {
        "Lcom/transsion/shorttv_pugc/base/pager/PagerLayoutManager;",
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
        "Landroidx/recyclerview/widget/RecyclerView;",
        "recyclerView",
        "",
        "onAttachedToWindow",
        "(Landroidx/recyclerview/widget/RecyclerView;)V",
        "Landroidx/recyclerview/widget/RecyclerView$t;",
        "recycler",
        "onDetachedFromWindow",
        "(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$t;)V",
        "Landroid/view/View;",
        "T",
        "()Landroid/view/View;",
        "dy",
        "Landroidx/recyclerview/widget/RecyclerView$x;",
        "state",
        "scrollVerticallyBy",
        "(ILandroidx/recyclerview/widget/RecyclerView$t;Landroidx/recyclerview/widget/RecyclerView$x;)I",
        "dx",
        "scrollHorizontallyBy",
        "Lks/a;",
        "listener",
        "X",
        "(Lks/a;)V",
        "onLayoutChildren",
        "(Landroidx/recyclerview/widget/RecyclerView$t;Landroidx/recyclerview/widget/RecyclerView$x;)V",
        "",
        "canScrollVertically",
        "()Z",
        "Landroidx/recyclerview/widget/n;",
        "a",
        "Lkotlin/Lazy;",
        "U",
        "()Landroidx/recyclerview/widget/n;",
        "pagerSnapHelper",
        "b",
        "Lks/a;",
        "onViewPagerListener",
        "c",
        "I",
        "direction",
        "d",
        "Z",
        "getCanScrollVertically",
        "W",
        "(Z)V",
        "e",
        "oldState",
        "f",
        "oldPosition",
        "g",
        "oldPositionIdle",
        "com/transsion/shorttv_pugc/base/pager/PagerLayoutManager$b",
        "h",
        "Lcom/transsion/shorttv_pugc/base/pager/PagerLayoutManager$b;",
        "rvScrollListener",
        "Landroidx/recyclerview/widget/RecyclerView$o;",
        "i",
        "Landroidx/recyclerview/widget/RecyclerView$o;",
        "childAttachStateChangeListener",
        "shortTvLib_release"
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

.field private b:Lks/a;

.field private c:I

.field private d:Z

.field private e:I

.field private f:I

.field private g:I

.field private final h:Lcom/transsion/shorttv_pugc/base/pager/PagerLayoutManager$b;

.field private final i:Landroidx/recyclerview/widget/RecyclerView$o;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Lks/b;

    invoke-direct {p1}, Lks/b;-><init>()V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/shorttv_pugc/base/pager/PagerLayoutManager;->a:Lkotlin/Lazy;

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/transsion/shorttv_pugc/base/pager/PagerLayoutManager;->d:Z

    const/4 p1, -0x1

    .line 4
    iput p1, p0, Lcom/transsion/shorttv_pugc/base/pager/PagerLayoutManager;->e:I

    .line 5
    iput p1, p0, Lcom/transsion/shorttv_pugc/base/pager/PagerLayoutManager;->f:I

    .line 6
    iput p1, p0, Lcom/transsion/shorttv_pugc/base/pager/PagerLayoutManager;->g:I

    .line 7
    new-instance p1, Lcom/transsion/shorttv_pugc/base/pager/PagerLayoutManager$b;

    invoke-direct {p1, p0}, Lcom/transsion/shorttv_pugc/base/pager/PagerLayoutManager$b;-><init>(Lcom/transsion/shorttv_pugc/base/pager/PagerLayoutManager;)V

    iput-object p1, p0, Lcom/transsion/shorttv_pugc/base/pager/PagerLayoutManager;->h:Lcom/transsion/shorttv_pugc/base/pager/PagerLayoutManager$b;

    .line 8
    new-instance p1, Lcom/transsion/shorttv_pugc/base/pager/PagerLayoutManager$a;

    invoke-direct {p1, p0}, Lcom/transsion/shorttv_pugc/base/pager/PagerLayoutManager$a;-><init>(Lcom/transsion/shorttv_pugc/base/pager/PagerLayoutManager;)V

    iput-object p1, p0, Lcom/transsion/shorttv_pugc/base/pager/PagerLayoutManager;->i:Landroidx/recyclerview/widget/RecyclerView$o;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 10
    new-instance p1, Lks/b;

    invoke-direct {p1}, Lks/b;-><init>()V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/shorttv_pugc/base/pager/PagerLayoutManager;->a:Lkotlin/Lazy;

    const/4 p1, 0x1

    .line 11
    iput-boolean p1, p0, Lcom/transsion/shorttv_pugc/base/pager/PagerLayoutManager;->d:Z

    const/4 p1, -0x1

    .line 12
    iput p1, p0, Lcom/transsion/shorttv_pugc/base/pager/PagerLayoutManager;->e:I

    .line 13
    iput p1, p0, Lcom/transsion/shorttv_pugc/base/pager/PagerLayoutManager;->f:I

    .line 14
    iput p1, p0, Lcom/transsion/shorttv_pugc/base/pager/PagerLayoutManager;->g:I

    .line 15
    new-instance p1, Lcom/transsion/shorttv_pugc/base/pager/PagerLayoutManager$b;

    invoke-direct {p1, p0}, Lcom/transsion/shorttv_pugc/base/pager/PagerLayoutManager$b;-><init>(Lcom/transsion/shorttv_pugc/base/pager/PagerLayoutManager;)V

    iput-object p1, p0, Lcom/transsion/shorttv_pugc/base/pager/PagerLayoutManager;->h:Lcom/transsion/shorttv_pugc/base/pager/PagerLayoutManager$b;

    .line 16
    new-instance p1, Lcom/transsion/shorttv_pugc/base/pager/PagerLayoutManager$a;

    invoke-direct {p1, p0}, Lcom/transsion/shorttv_pugc/base/pager/PagerLayoutManager$a;-><init>(Lcom/transsion/shorttv_pugc/base/pager/PagerLayoutManager;)V

    iput-object p1, p0, Lcom/transsion/shorttv_pugc/base/pager/PagerLayoutManager;->i:Landroidx/recyclerview/widget/RecyclerView$o;

    return-void
.end method

.method public static synthetic K()Landroidx/recyclerview/widget/n;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/shorttv_pugc/base/pager/PagerLayoutManager;->V()Landroidx/recyclerview/widget/n;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final synthetic L(Lcom/transsion/shorttv_pugc/base/pager/PagerLayoutManager;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/transsion/shorttv_pugc/base/pager/PagerLayoutManager;->c:I

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic M(Lcom/transsion/shorttv_pugc/base/pager/PagerLayoutManager;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/transsion/shorttv_pugc/base/pager/PagerLayoutManager;->f:I

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic N(Lcom/transsion/shorttv_pugc/base/pager/PagerLayoutManager;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/transsion/shorttv_pugc/base/pager/PagerLayoutManager;->e:I

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic O(Lcom/transsion/shorttv_pugc/base/pager/PagerLayoutManager;)Lks/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/shorttv_pugc/base/pager/PagerLayoutManager;->b:Lks/a;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic P(Lcom/transsion/shorttv_pugc/base/pager/PagerLayoutManager;)Landroidx/recyclerview/widget/n;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/shorttv_pugc/base/pager/PagerLayoutManager;->U()Landroidx/recyclerview/widget/n;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic Q(Lcom/transsion/shorttv_pugc/base/pager/PagerLayoutManager;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/transsion/shorttv_pugc/base/pager/PagerLayoutManager;->f:I

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic R(Lcom/transsion/shorttv_pugc/base/pager/PagerLayoutManager;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/transsion/shorttv_pugc/base/pager/PagerLayoutManager;->g:I

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic S(Lcom/transsion/shorttv_pugc/base/pager/PagerLayoutManager;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/transsion/shorttv_pugc/base/pager/PagerLayoutManager;->e:I

    .line 2
    .line 3
    return-void
.end method

.method private final U()Landroidx/recyclerview/widget/n;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/base/pager/PagerLayoutManager;->a:Lkotlin/Lazy;

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

.method private static final V()Landroidx/recyclerview/widget/n;
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
.method public final T()Landroid/view/View;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/transsion/shorttv_pugc/base/pager/PagerLayoutManager;->U()Landroidx/recyclerview/widget/n;

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

.method public final W(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/transsion/shorttv_pugc/base/pager/PagerLayoutManager;->d:Z

    .line 2
    .line 3
    return-void
.end method

.method public final X(Lks/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/shorttv_pugc/base/pager/PagerLayoutManager;->b:Lks/a;

    .line 2
    .line 3
    return-void
.end method

.method public canScrollVertically()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/transsion/shorttv_pugc/base/pager/PagerLayoutManager;->d:Z

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
    invoke-direct {p0}, Lcom/transsion/shorttv_pugc/base/pager/PagerLayoutManager;->U()Landroidx/recyclerview/widget/n;

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
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/base/pager/PagerLayoutManager;->i:Landroidx/recyclerview/widget/RecyclerView$o;

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
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/base/pager/PagerLayoutManager;->h:Lcom/transsion/shorttv_pugc/base/pager/PagerLayoutManager$b;

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
    iget-object p2, p0, Lcom/transsion/shorttv_pugc/base/pager/PagerLayoutManager;->i:Landroidx/recyclerview/widget/RecyclerView$o;

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
    iget-object p2, p0, Lcom/transsion/shorttv_pugc/base/pager/PagerLayoutManager;->h:Lcom/transsion/shorttv_pugc/base/pager/PagerLayoutManager$b;

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
    iput p1, p0, Lcom/transsion/shorttv_pugc/base/pager/PagerLayoutManager;->c:I

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
    iput p1, p0, Lcom/transsion/shorttv_pugc/base/pager/PagerLayoutManager;->c:I

    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollVerticallyBy(ILandroidx/recyclerview/widget/RecyclerView$t;Landroidx/recyclerview/widget/RecyclerView$x;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method
