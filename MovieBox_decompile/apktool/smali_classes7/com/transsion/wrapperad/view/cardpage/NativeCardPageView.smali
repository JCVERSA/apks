.class public final Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;
.super Landroid/widget/FrameLayout;
.source "source.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ClickableViewAccessibility"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView$AutoScrollRunnable;,
        Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000x\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0007\n\u0002\u0008\n\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u001a\u0008\u0007\u0018\u0000 b2\u00020\u0001:\u00026cB\'\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u000f\u0010\u000e\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0017\u0010\u0011\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\'\u0010\u0016\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u0017\u0010\u0019\u001a\u00020\n2\u0006\u0010\u0018\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0019\u0010\u0012J\u000f\u0010\u001a\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\u001a\u0010\u000cJ\u000f\u0010\u001b\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\u001b\u0010\u000cJ\u0017\u0010\u001c\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u001b\u0010!\u001a\u00020\u00002\u000c\u0010 \u001a\u0008\u0012\u0004\u0012\u00020\u001f0\u001e\u00a2\u0006\u0004\u0008!\u0010\"J\r\u0010#\u001a\u00020\u0000\u00a2\u0006\u0004\u0008#\u0010$J\r\u0010%\u001a\u00020\u0000\u00a2\u0006\u0004\u0008%\u0010$J\u0015\u0010(\u001a\u00020\u00002\u0006\u0010\'\u001a\u00020&\u00a2\u0006\u0004\u0008(\u0010)J\u0015\u0010,\u001a\u00020\u00002\u0006\u0010+\u001a\u00020*\u00a2\u0006\u0004\u0008,\u0010-J\u0015\u00100\u001a\u00020\u00002\u0006\u0010/\u001a\u00020.\u00a2\u0006\u0004\u00080\u00101J\r\u00103\u001a\u000202\u00a2\u0006\u0004\u00083\u00104J\r\u00105\u001a\u00020\u0000\u00a2\u0006\u0004\u00085\u0010$R\"\u0010;\u001a\u00020\u00068\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00086\u00107\u001a\u0004\u00088\u00109\"\u0004\u0008:\u0010\u0012R\"\u0010?\u001a\u00020\u00068\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008<\u00107\u001a\u0004\u0008=\u00109\"\u0004\u0008>\u0010\u0012R\u0016\u0010A\u001a\u00020&8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010@R\u0016\u0010C\u001a\u0002028\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010BR\u0016\u0010F\u001a\u00020D8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010ER\u0018\u0010I\u001a\u0004\u0018\u00010G8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010HR\u0016\u0010L\u001a\u00020J8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010KR\u001c\u0010N\u001a\u0008\u0012\u0004\u0012\u00020\u001f0\u001e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010MR\u0018\u0010P\u001a\u0004\u0018\u00010.8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010OR\u0016\u0010Q\u001a\u00020.8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010OR\u0016\u0010T\u001a\u00020*8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008R\u0010SR\u0016\u0010W\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008U\u0010VR\u0016\u0010Y\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008X\u00107R\u0016\u0010[\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008Z\u00107R\u0016\u0010]\u001a\u00020*8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\\\u0010SR\u0016\u0010_\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008^\u0010VR\u0016\u0010a\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008`\u0010V\u00a8\u0006d"
    }
    d2 = {
        "Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;",
        "Landroid/widget/FrameLayout;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "",
        "defStyleAttr",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "",
        "d",
        "()V",
        "Landroidx/viewpager2/widget/CompositePageTransformer;",
        "j",
        "()Landroidx/viewpager2/widget/CompositePageTransformer;",
        "position",
        "g",
        "(I)V",
        "",
        "positionOffset",
        "positionOffsetPixels",
        "f",
        "(IFI)V",
        "state",
        "e",
        "i",
        "h",
        "c",
        "(I)I",
        "",
        "Lcom/transsion/wrapperad/view/cardpage/f;",
        "data",
        "setPageData",
        "(Ljava/util/List;)Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;",
        "startAutoScroll",
        "()Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;",
        "pauseAutoScroll",
        "",
        "interval",
        "setScrollInterval",
        "(J)Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;",
        "",
        "disable",
        "setDisableRightSwipe",
        "(Z)Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;",
        "Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;",
        "listener",
        "setOnPageChangeListener",
        "(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;",
        "Landroidx/viewpager2/widget/ViewPager2;",
        "getViewPager",
        "()Landroidx/viewpager2/widget/ViewPager2;",
        "destroy",
        "a",
        "I",
        "getContentWidth",
        "()I",
        "setContentWidth",
        "contentWidth",
        "b",
        "getStackOffset",
        "setStackOffset",
        "stackOffset",
        "J",
        "scrollInterval",
        "Landroidx/viewpager2/widget/ViewPager2;",
        "viewPager2",
        "Lcom/transsion/wrapperad/view/cardpage/e;",
        "Lcom/transsion/wrapperad/view/cardpage/e;",
        "pageAdapter",
        "Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView$AutoScrollRunnable;",
        "Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView$AutoScrollRunnable;",
        "autoScrollRunnable",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "isAutoScrolling",
        "Ljava/util/List;",
        "pageDataList",
        "Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;",
        "onPageChangeListener",
        "pageChangeCallback",
        "k",
        "Z",
        "isScrolling",
        "l",
        "F",
        "stackPageScale",
        "m",
        "lastOffsetX",
        "n",
        "lastPosition",
        "o",
        "disableRightSwipe",
        "p",
        "disableRightSwipeThreshold",
        "q",
        "switchPagePercent",
        "Companion",
        "AutoScrollRunnable",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# static fields
.field public static final Companion:Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView$a;

.field public static final STACK_OFFSET:F = 12.0f


# instance fields
.field private a:I

.field private b:I

.field private c:J

.field private d:Landroidx/viewpager2/widget/ViewPager2;

.field private e:Lcom/transsion/wrapperad/view/cardpage/e;

.field private f:Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView$AutoScrollRunnable;

.field private g:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private h:Ljava/util/List;

.field private i:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

.field private j:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

.field private k:Z

.field private l:F

.field private m:I

.field private n:I

.field private o:Z

.field private p:F

.field private q:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->Companion:Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 2
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p1, 0x41400000    # 12.0f

    .line 5
    invoke-static {p1}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result p1

    iput p1, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->b:I

    const-wide/16 p1, 0x7530

    .line 6
    iput-wide p1, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->c:J

    .line 7
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 8
    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->h:Ljava/util/List;

    const p1, 0x3dcccccd    # 0.1f

    .line 9
    iput p1, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->l:F

    const/4 p1, 0x1

    .line 10
    iput-boolean p1, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->o:Z

    const/high16 p1, 0x41200000    # 10.0f

    .line 11
    iput p1, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->p:F

    const p1, 0x3d4ccccd    # 0.05f

    .line 12
    iput p1, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->q:F

    .line 13
    invoke-direct {p0}, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->d()V

    .line 14
    invoke-direct {p0}, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->i()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 3
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;Landroid/view/View;F)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->k(Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;Landroid/view/View;F)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$getDisableRightSwipe$p(Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->o:Z

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic access$getDisableRightSwipeThreshold$p(Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->p:F

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic access$getLastPosition$p(Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->n:I

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic access$getScrollInterval$p(Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->c:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static final synthetic access$getViewPager2$p(Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;)Landroidx/viewpager2/widget/ViewPager2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->d:Landroidx/viewpager2/widget/ViewPager2;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$isAutoScrolling$p(Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$pageScrollStateChanged(Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->e(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$pageScrolled(Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;IFI)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->f(IFI)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$pageSelected(Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->g(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->setupTouchEventListener$lambda$5(Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final c(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->h:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    return p1

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->h:Ljava/util/List;

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    rem-int/2addr p1, v0

    .line 18
    return p1
.end method

.method private final d()V
    .locals 5

    .line 1
    new-instance v0, Landroidx/viewpager2/widget/ViewPager2;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->d:Landroidx/viewpager2/widget/ViewPager2;

    .line 11
    .line 12
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 13
    .line 14
    invoke-static {}, Lcom/blankj/utilcode/util/y;->e()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    const/high16 v3, 0x41c00000    # 24.0f

    .line 19
    .line 20
    invoke-static {v3}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    sub-int/2addr v2, v3

    .line 25
    const/4 v3, -0x2

    .line 26
    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->d:Landroidx/viewpager2/widget/ViewPager2;

    .line 33
    .line 34
    const-string v1, "viewPager2"

    .line 35
    .line 36
    const/4 v2, 0x0

    .line 37
    if-nez v0, :cond_0

    .line 38
    .line 39
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    move-object v0, v2

    .line 43
    :cond_0
    const/4 v3, 0x0

    .line 44
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->d:Landroidx/viewpager2/widget/ViewPager2;

    .line 48
    .line 49
    if-nez v0, :cond_1

    .line 50
    .line 51
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    move-object v0, v2

    .line 55
    :cond_1
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 56
    .line 57
    .line 58
    iget-object v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->d:Landroidx/viewpager2/widget/ViewPager2;

    .line 59
    .line 60
    if-nez v0, :cond_2

    .line 61
    .line 62
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    move-object v0, v2

    .line 66
    :cond_2
    const/4 v4, 0x2

    .line 67
    invoke-virtual {v0, v4}, Landroid/view/View;->setOverScrollMode(I)V

    .line 68
    .line 69
    .line 70
    iget-object v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->d:Landroidx/viewpager2/widget/ViewPager2;

    .line 71
    .line 72
    if-nez v0, :cond_3

    .line 73
    .line 74
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    move-object v0, v2

    .line 78
    :cond_3
    invoke-virtual {v0, v3}, Landroidx/viewpager2/widget/ViewPager2;->setOrientation(I)V

    .line 79
    .line 80
    .line 81
    iget-object v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->d:Landroidx/viewpager2/widget/ViewPager2;

    .line 82
    .line 83
    if-nez v0, :cond_4

    .line 84
    .line 85
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    move-object v0, v2

    .line 89
    :cond_4
    invoke-virtual {v0, v3}, Landroidx/viewpager2/widget/ViewPager2;->setUserInputEnabled(Z)V

    .line 90
    .line 91
    .line 92
    iget-object v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->d:Landroidx/viewpager2/widget/ViewPager2;

    .line 93
    .line 94
    if-nez v0, :cond_5

    .line 95
    .line 96
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    move-object v0, v2

    .line 100
    :cond_5
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 101
    .line 102
    .line 103
    new-instance v0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView$b;

    .line 104
    .line 105
    invoke-direct {v0, p0}, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView$b;-><init>(Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;)V

    .line 106
    .line 107
    .line 108
    iput-object v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->j:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    .line 109
    .line 110
    iget-object v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->d:Landroidx/viewpager2/widget/ViewPager2;

    .line 111
    .line 112
    if-nez v0, :cond_6

    .line 113
    .line 114
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    move-object v0, v2

    .line 118
    :cond_6
    iget-object v1, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->j:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    .line 119
    .line 120
    if-nez v1, :cond_7

    .line 121
    .line 122
    const-string v1, "pageChangeCallback"

    .line 123
    .line 124
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    goto :goto_0

    .line 128
    :cond_7
    move-object v2, v1

    .line 129
    :goto_0
    invoke-virtual {v0, v2}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    .line 130
    .line 131
    .line 132
    return-void
.end method

.method private final e(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->i:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageScrollStateChanged(I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    if-eqz p1, :cond_2

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    if-eq p1, v0, :cond_1

    .line 12
    .line 13
    goto :goto_2

    .line 14
    :cond_1
    iput-boolean v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->k:Z

    .line 15
    .line 16
    goto :goto_2

    .line 17
    :cond_2
    const/4 p1, 0x0

    .line 18
    iput p1, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->m:I

    .line 19
    .line 20
    iget-boolean v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->k:Z

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    const-string v2, "viewPager2"

    .line 24
    .line 25
    if-eqz v0, :cond_7

    .line 26
    .line 27
    iget-object v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->d:Landroidx/viewpager2/widget/ViewPager2;

    .line 28
    .line 29
    if-nez v0, :cond_3

    .line 30
    .line 31
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    move-object v0, v1

    .line 35
    :cond_3
    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    iget v3, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->n:I

    .line 40
    .line 41
    if-ne v0, v3, :cond_4

    .line 42
    .line 43
    invoke-direct {p0}, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->h()V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_4
    iget-boolean v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->o:Z

    .line 48
    .line 49
    if-eqz v0, :cond_7

    .line 50
    .line 51
    iget-object v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->d:Landroidx/viewpager2/widget/ViewPager2;

    .line 52
    .line 53
    if-nez v0, :cond_5

    .line 54
    .line 55
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    move-object v0, v1

    .line 59
    :cond_5
    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    iget v3, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->n:I

    .line 64
    .line 65
    if-ge v0, v3, :cond_7

    .line 66
    .line 67
    iget-object v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->d:Landroidx/viewpager2/widget/ViewPager2;

    .line 68
    .line 69
    if-nez v0, :cond_6

    .line 70
    .line 71
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    move-object v0, v1

    .line 75
    :cond_6
    iget v3, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->n:I

    .line 76
    .line 77
    invoke-virtual {v0, v3, p1}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    .line 78
    .line 79
    .line 80
    invoke-direct {p0}, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->h()V

    .line 81
    .line 82
    .line 83
    :cond_7
    :goto_0
    iget-object v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->d:Landroidx/viewpager2/widget/ViewPager2;

    .line 84
    .line 85
    if-nez v0, :cond_8

    .line 86
    .line 87
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_8
    move-object v1, v0

    .line 92
    :goto_1
    invoke-virtual {v1}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    iput v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->n:I

    .line 97
    .line 98
    iput-boolean p1, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->k:Z

    .line 99
    .line 100
    :goto_2
    return-void
.end method

.method private final f(IFI)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->i:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2, p3}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageScrolled(IFI)V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->d:Landroidx/viewpager2/widget/ViewPager2;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    const-string v0, "viewPager2"

    .line 14
    .line 15
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    move-object v0, v1

    .line 19
    :cond_1
    const/4 v2, 0x0

    .line 20
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    instance-of v2, v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 25
    .line 26
    if-eqz v2, :cond_2

    .line 27
    .line 28
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    move-object v0, v1

    .line 32
    :goto_0
    if-eqz v0, :cond_5

    .line 33
    .line 34
    iget v2, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->q:F

    .line 35
    .line 36
    cmpl-float p2, p2, v2

    .line 37
    .line 38
    if-lez p2, :cond_5

    .line 39
    .line 40
    iget p2, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->m:I

    .line 41
    .line 42
    if-nez p2, :cond_5

    .line 43
    .line 44
    add-int/lit8 p1, p1, 0x1

    .line 45
    .line 46
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$a0;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    instance-of v0, p2, Lcom/transsion/wrapperad/view/cardpage/e$a;

    .line 51
    .line 52
    if-eqz v0, :cond_3

    .line 53
    .line 54
    move-object v1, p2

    .line 55
    check-cast v1, Lcom/transsion/wrapperad/view/cardpage/e$a;

    .line 56
    .line 57
    :cond_3
    if-eqz v1, :cond_4

    .line 58
    .line 59
    invoke-direct {p0, p1}, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->c(I)I

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    iget-object p2, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->h:Ljava/util/List;

    .line 64
    .line 65
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    check-cast p1, Lcom/transsion/wrapperad/view/cardpage/f;

    .line 70
    .line 71
    invoke-virtual {v1, p1}, Lcom/transsion/wrapperad/view/cardpage/e$a;->f(Lcom/transsion/wrapperad/view/cardpage/f;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-static {p1}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    .line 76
    .line 77
    .line 78
    :cond_4
    iput p3, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->m:I

    .line 79
    .line 80
    :cond_5
    return-void
.end method

.method private final g(I)V
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->c(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->i:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v1, v0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageSelected(I)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object v1, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->d:Landroidx/viewpager2/widget/ViewPager2;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    if-nez v1, :cond_1

    .line 16
    .line 17
    const-string v1, "viewPager2"

    .line 18
    .line 19
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    move-object v1, v2

    .line 23
    :cond_1
    const/4 v3, 0x0

    .line 24
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    instance-of v3, v1, Landroidx/recyclerview/widget/RecyclerView;

    .line 29
    .line 30
    if-eqz v3, :cond_2

    .line 31
    .line 32
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_2
    move-object v1, v2

    .line 36
    :goto_0
    if-eqz v1, :cond_4

    .line 37
    .line 38
    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$a0;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    instance-of v1, p1, Lcom/transsion/wrapperad/view/cardpage/e$a;

    .line 43
    .line 44
    if-eqz v1, :cond_3

    .line 45
    .line 46
    move-object v2, p1

    .line 47
    check-cast v2, Lcom/transsion/wrapperad/view/cardpage/e$a;

    .line 48
    .line 49
    :cond_3
    if-eqz v2, :cond_4

    .line 50
    .line 51
    invoke-virtual {v2}, Lcom/transsion/wrapperad/view/cardpage/e$a;->g()Landroid/widget/FrameLayout;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    if-gtz p1, :cond_4

    .line 60
    .line 61
    iget-object p1, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->h:Ljava/util/List;

    .line 62
    .line 63
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    check-cast p1, Lcom/transsion/wrapperad/view/cardpage/f;

    .line 68
    .line 69
    invoke-virtual {v2, p1}, Lcom/transsion/wrapperad/view/cardpage/e$a;->f(Lcom/transsion/wrapperad/view/cardpage/f;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    :cond_4
    return-void
.end method

.method private final h()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->d:Landroidx/viewpager2/widget/ViewPager2;

    .line 2
    .line 3
    const-string v1, "viewPager2"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    move-object v0, v2

    .line 12
    :cond_0
    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    add-int/lit8 v0, v0, 0x1

    .line 17
    .line 18
    iget-object v3, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->d:Landroidx/viewpager2/widget/ViewPager2;

    .line 19
    .line 20
    if-nez v3, :cond_1

    .line 21
    .line 22
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    move-object v3, v2

    .line 26
    :cond_1
    const/4 v1, 0x0

    .line 27
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    instance-of v3, v1, Landroidx/recyclerview/widget/RecyclerView;

    .line 32
    .line 33
    if-eqz v3, :cond_2

    .line 34
    .line 35
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    move-object v1, v2

    .line 39
    :goto_0
    if-eqz v1, :cond_4

    .line 40
    .line 41
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$a0;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    instance-of v1, v0, Lcom/transsion/wrapperad/view/cardpage/e$a;

    .line 46
    .line 47
    if-eqz v1, :cond_3

    .line 48
    .line 49
    move-object v2, v0

    .line 50
    check-cast v2, Lcom/transsion/wrapperad/view/cardpage/e$a;

    .line 51
    .line 52
    :cond_3
    if-eqz v2, :cond_4

    .line 53
    .line 54
    invoke-virtual {v2}, Lcom/transsion/wrapperad/view/cardpage/e$a;->g()Landroid/widget/FrameLayout;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    if-eqz v0, :cond_4

    .line 59
    .line 60
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 61
    .line 62
    .line 63
    :cond_4
    return-void
.end method

.method private final i()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->d:Landroidx/viewpager2/widget/ViewPager2;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "viewPager2"

    .line 6
    .line 7
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    :cond_0
    new-instance v1, Lcom/transsion/wrapperad/view/cardpage/h;

    .line 12
    .line 13
    invoke-direct {v1, p0}, Lcom/transsion/wrapperad/view/cardpage/h;-><init>(Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method private final j()Landroidx/viewpager2/widget/CompositePageTransformer;
    .locals 3

    .line 1
    new-instance v0, Landroidx/viewpager2/widget/CompositePageTransformer;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/viewpager2/widget/CompositePageTransformer;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Landroidx/viewpager2/widget/MarginPageTransformer;

    .line 7
    .line 8
    const/16 v2, 0xa

    .line 9
    .line 10
    invoke-direct {v1, v2}, Landroidx/viewpager2/widget/MarginPageTransformer;-><init>(I)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/CompositePageTransformer;->addTransformer(Landroidx/viewpager2/widget/ViewPager2$PageTransformer;)V

    .line 14
    .line 15
    .line 16
    new-instance v1, Lcom/transsion/wrapperad/view/cardpage/g;

    .line 17
    .line 18
    invoke-direct {v1, p0}, Lcom/transsion/wrapperad/view/cardpage/g;-><init>(Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/CompositePageTransformer;->addTransformer(Landroidx/viewpager2/widget/ViewPager2$PageTransformer;)V

    .line 22
    .line 23
    .line 24
    return-object v0
.end method

.method private static final k(Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;Landroid/view/View;F)V
    .locals 3

    .line 1
    const-string v0, "page"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    cmpl-float v1, p2, v0

    .line 8
    .line 9
    if-lez v1, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    int-to-float v0, v0

    .line 13
    iget v1, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->l:F

    .line 14
    .line 15
    mul-float/2addr v1, p2

    .line 16
    sub-float v1, v0, v1

    .line 17
    .line 18
    iget v2, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->a:I

    .line 19
    .line 20
    int-to-float v2, v2

    .line 21
    sub-float/2addr v0, v1

    .line 22
    mul-float/2addr v2, v0

    .line 23
    const/4 v0, 0x2

    .line 24
    int-to-float v0, v0

    .line 25
    div-float/2addr v2, v0

    .line 26
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    neg-int v0, v0

    .line 31
    int-to-float v0, v0

    .line 32
    mul-float/2addr v0, p2

    .line 33
    add-float/2addr v0, v2

    .line 34
    iget p0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->b:I

    .line 35
    .line 36
    int-to-float p0, p0

    .line 37
    mul-float/2addr p0, p2

    .line 38
    add-float/2addr v0, p0

    .line 39
    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleX(F)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleY(F)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 46
    .line 47
    .line 48
    neg-float p0, p2

    .line 49
    invoke-virtual {p1, p0}, Landroid/view/View;->setTranslationZ(F)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    const/high16 p0, 0x3f800000    # 1.0f

    .line 54
    .line 55
    invoke-virtual {p1, p0}, Landroid/view/View;->setScaleX(F)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, p0}, Landroid/view/View;->setScaleY(F)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationZ(F)V

    .line 65
    .line 66
    .line 67
    :goto_0
    return-void
.end method

.method private static final setupTouchEventListener$lambda$5(Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView$c;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView$c;-><init>(Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->d:Landroidx/viewpager2/widget/ViewPager2;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    if-nez p0, :cond_0

    .line 10
    .line 11
    const-string p0, "viewPager2"

    .line 12
    .line 13
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    move-object p0, v1

    .line 17
    :cond_0
    const/4 v2, 0x0

    .line 18
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    instance-of v2, p0, Landroidx/recyclerview/widget/RecyclerView;

    .line 23
    .line 24
    if-eqz v2, :cond_1

    .line 25
    .line 26
    move-object v1, p0

    .line 27
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    .line 28
    .line 29
    :cond_1
    if-eqz v1, :cond_2

    .line 30
    .line 31
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->removeOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$q;)V

    .line 32
    .line 33
    .line 34
    :cond_2
    if-eqz v1, :cond_3

    .line 35
    .line 36
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$q;)V

    .line 37
    .line 38
    .line 39
    :cond_3
    return-void
.end method


# virtual methods
.method public final destroy()Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->pauseAutoScroll()Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->d:Landroidx/viewpager2/widget/ViewPager2;

    .line 5
    .line 6
    const-string v1, "viewPager2"

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    move-object v0, v2

    .line 15
    :cond_0
    iget-object v3, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->j:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    .line 16
    .line 17
    if-nez v3, :cond_1

    .line 18
    .line 19
    const-string v3, "pageChangeCallback"

    .line 20
    .line 21
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    move-object v3, v2

    .line 25
    :cond_1
    invoke-virtual {v0, v3}, Landroidx/viewpager2/widget/ViewPager2;->unregisterOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->d:Landroidx/viewpager2/widget/ViewPager2;

    .line 29
    .line 30
    if-nez v0, :cond_2

    .line 31
    .line 32
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    move-object v0, v2

    .line 36
    :cond_2
    invoke-virtual {v0, v2}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 37
    .line 38
    .line 39
    iput-object v2, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->i:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    .line 40
    .line 41
    iget-object v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->h:Ljava/util/List;

    .line 42
    .line 43
    check-cast v0, Ljava/lang/Iterable;

    .line 44
    .line 45
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-eqz v1, :cond_5

    .line 54
    .line 55
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    check-cast v1, Lcom/transsion/wrapperad/view/cardpage/f;

    .line 60
    .line 61
    invoke-virtual {v1}, Lcom/transsion/wrapperad/view/cardpage/f;->d()Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    instance-of v4, v3, Landroid/view/ViewGroup;

    .line 70
    .line 71
    if-eqz v4, :cond_3

    .line 72
    .line 73
    check-cast v3, Landroid/view/ViewGroup;

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_3
    move-object v3, v2

    .line 77
    :goto_1
    if-eqz v3, :cond_4

    .line 78
    .line 79
    invoke-virtual {v1}, Lcom/transsion/wrapperad/view/cardpage/f;->d()Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 84
    .line 85
    .line 86
    :cond_4
    invoke-virtual {v1, v2}, Lcom/transsion/wrapperad/view/cardpage/f;->g(Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;)V

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_5
    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    iput-object v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->h:Ljava/util/List;

    .line 95
    .line 96
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 97
    .line 98
    .line 99
    return-object p0
.end method

.method public final getContentWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->a:I

    .line 2
    .line 3
    return v0
.end method

.method public final getStackOffset()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->b:I

    .line 2
    .line 3
    return v0
.end method

.method public final getViewPager()Landroidx/viewpager2/widget/ViewPager2;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->d:Landroidx/viewpager2/widget/ViewPager2;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "viewPager2"

    .line 6
    .line 7
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    :cond_0
    return-object v0
.end method

.method public final pauseAutoScroll()Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->f:Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView$AutoScrollRunnable;

    .line 17
    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    iget-object v1, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->d:Landroidx/viewpager2/widget/ViewPager2;

    .line 21
    .line 22
    if-nez v1, :cond_1

    .line 23
    .line 24
    const-string v1, "viewPager2"

    .line 25
    .line 26
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const/4 v1, 0x0

    .line 30
    :cond_1
    invoke-virtual {v1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 31
    .line 32
    .line 33
    :cond_2
    return-object p0
.end method

.method public final setContentWidth(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->a:I

    .line 2
    .line 3
    return-void
.end method

.method public final setDisableRightSwipe(Z)Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->o:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public final setOnPageChangeListener(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;
    .locals 1

    .line 1
    const-string v0, "listener"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->i:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    .line 7
    .line 8
    return-object p0
.end method

.method public final setPageData(Ljava/util/List;)Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/wrapperad/view/cardpage/f;",
            ">;)",
            "Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;"
        }
    .end annotation

    .line 1
    const-string v0, "data"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->h:Ljava/util/List;

    .line 7
    .line 8
    iget-object v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->d:Landroidx/viewpager2/widget/ViewPager2;

    .line 9
    .line 10
    const-string v1, "viewPager2"

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    move-object v0, v2

    .line 19
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    iget v3, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->b:I

    .line 24
    .line 25
    add-int/lit8 v3, v3, 0x5

    .line 26
    .line 27
    iget-object v4, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->h:Ljava/util/List;

    .line 28
    .line 29
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    const/4 v5, 0x1

    .line 34
    sub-int/2addr v4, v5

    .line 35
    mul-int/2addr v3, v4

    .line 36
    sub-int/2addr v0, v3

    .line 37
    iput v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->a:I

    .line 38
    .line 39
    iget-object v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->d:Landroidx/viewpager2/widget/ViewPager2;

    .line 40
    .line 41
    if-nez v0, :cond_1

    .line 42
    .line 43
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    move-object v0, v2

    .line 47
    :cond_1
    invoke-direct {p0}, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->j()Landroidx/viewpager2/widget/CompositePageTransformer;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    invoke-virtual {v0, v3}, Landroidx/viewpager2/widget/ViewPager2;->setPageTransformer(Landroidx/viewpager2/widget/ViewPager2$PageTransformer;)V

    .line 52
    .line 53
    .line 54
    new-instance v0, Lcom/transsion/wrapperad/view/cardpage/e;

    .line 55
    .line 56
    iget-object v3, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->h:Ljava/util/List;

    .line 57
    .line 58
    iget v4, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->a:I

    .line 59
    .line 60
    invoke-direct {v0, v3, v4}, Lcom/transsion/wrapperad/view/cardpage/e;-><init>(Ljava/util/List;I)V

    .line 61
    .line 62
    .line 63
    iput-object v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->e:Lcom/transsion/wrapperad/view/cardpage/e;

    .line 64
    .line 65
    iget-object v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->d:Landroidx/viewpager2/widget/ViewPager2;

    .line 66
    .line 67
    if-nez v0, :cond_2

    .line 68
    .line 69
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    move-object v0, v2

    .line 73
    :cond_2
    iget-object v3, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->e:Lcom/transsion/wrapperad/view/cardpage/e;

    .line 74
    .line 75
    if-nez v3, :cond_3

    .line 76
    .line 77
    const-string v3, "pageAdapter"

    .line 78
    .line 79
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    move-object v3, v2

    .line 83
    :cond_3
    invoke-virtual {v0, v3}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 84
    .line 85
    .line 86
    iget-object v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->d:Landroidx/viewpager2/widget/ViewPager2;

    .line 87
    .line 88
    if-nez v0, :cond_4

    .line 89
    .line 90
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    move-object v0, v2

    .line 94
    :cond_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 95
    .line 96
    .line 97
    move-result v3

    .line 98
    if-le v3, v5, :cond_5

    .line 99
    .line 100
    move v3, v5

    .line 101
    goto :goto_0

    .line 102
    :cond_5
    const/4 v3, 0x0

    .line 103
    :goto_0
    invoke-virtual {v0, v3}, Landroidx/viewpager2/widget/ViewPager2;->setUserInputEnabled(Z)V

    .line 104
    .line 105
    .line 106
    iget-object v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->d:Landroidx/viewpager2/widget/ViewPager2;

    .line 107
    .line 108
    if-nez v0, :cond_6

    .line 109
    .line 110
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    move-object v0, v2

    .line 114
    :cond_6
    iget-object v3, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->d:Landroidx/viewpager2/widget/ViewPager2;

    .line 115
    .line 116
    if-nez v3, :cond_7

    .line 117
    .line 118
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    goto :goto_1

    .line 122
    :cond_7
    move-object v2, v3

    .line 123
    :goto_1
    invoke-virtual {v2}, Landroidx/viewpager2/widget/ViewPager2;->isUserInputEnabled()Z

    .line 124
    .line 125
    .line 126
    move-result v1

    .line 127
    if-eqz v1, :cond_8

    .line 128
    .line 129
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 130
    .line 131
    .line 132
    move-result p1

    .line 133
    sub-int/2addr p1, v5

    .line 134
    const/4 v1, 0x2

    .line 135
    invoke-static {p1, v1}, Lkotlin/ranges/RangesKt;->h(II)I

    .line 136
    .line 137
    .line 138
    move-result p1

    .line 139
    goto :goto_2

    .line 140
    :cond_8
    const/4 p1, -0x1

    .line 141
    :goto_2
    invoke-virtual {v0, p1}, Landroidx/viewpager2/widget/ViewPager2;->setOffscreenPageLimit(I)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {p0}, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->startAutoScroll()Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;

    .line 145
    .line 146
    .line 147
    return-object p0
.end method

.method public final setScrollInterval(J)Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->c:J

    .line 2
    .line 3
    iget-object p1, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->pauseAutoScroll()Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->startAutoScroll()Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;

    .line 15
    .line 16
    .line 17
    :cond_0
    return-object p0
.end method

.method public final setStackOffset(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->b:I

    .line 2
    .line 3
    return-void
.end method

.method public final startAutoScroll()Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->d:Landroidx/viewpager2/widget/ViewPager2;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "viewPager2"

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    move-object v0, v1

    .line 12
    :cond_0
    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->isUserInputEnabled()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_3

    .line 17
    .line 18
    iget-object v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_1
    iget-object v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 28
    .line 29
    const/4 v3, 0x1

    .line 30
    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 31
    .line 32
    .line 33
    new-instance v0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView$AutoScrollRunnable;

    .line 34
    .line 35
    invoke-direct {v0, p0}, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView$AutoScrollRunnable;-><init>(Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;)V

    .line 36
    .line 37
    .line 38
    iput-object v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->f:Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView$AutoScrollRunnable;

    .line 39
    .line 40
    iget-object v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->d:Landroidx/viewpager2/widget/ViewPager2;

    .line 41
    .line 42
    if-nez v0, :cond_2

    .line 43
    .line 44
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    move-object v1, v0

    .line 49
    :goto_0
    iget-object v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->f:Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView$AutoScrollRunnable;

    .line 50
    .line 51
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    iget-wide v2, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->c:J

    .line 55
    .line 56
    invoke-virtual {v1, v0, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 57
    .line 58
    .line 59
    :cond_3
    :goto_1
    return-object p0
.end method
