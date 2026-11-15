.class public Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;
.super Lcom/yandex/div/core/widget/ViewPager2Wrapper;
.source "SourceFile"

# interfaces
.implements Lmk2;
.implements Lve7;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div/core/view2/divs/widgets/DivPagerView$OffScreenPagesUpdateCallback;,
        Lcom/yandex/div/core/view2/divs/widgets/DivPagerView$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yandex/div/core/widget/ViewPager2Wrapper;",
        "Lmk2;",
        "Lve7;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00a9\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0010!\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0008#*\u0001w\u0008\u0010\u0018\u00002\u00020\u00012\u0008\u0012\u0004\u0012\u00020\u00030\u00022\u00020\u0004:\u0004\u0097\u0001\u0098\u0001B\'\u0008\u0007\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\t\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0019\u0010\u000f\u001a\u0004\u0018\u00010\t2\u0006\u0010\u000e\u001a\u00020\rH\u0012\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u001a\u0010\u0014\u001a\u00020\u00132\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0011H\u0096\u0001\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u0010\u0010\u0016\u001a\u00020\u0013H\u0096\u0001\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u0012\u0010\u0019\u001a\u0004\u0018\u00010\u0018H\u0096\u0001\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u0010\u0010\u001b\u001a\u00020\u0013H\u0096\u0001\u00a2\u0006\u0004\u0008\u001b\u0010\u0017J \u0010\u001e\u001a\u00020\u00132\u0006\u0010\u001c\u001a\u00020\t2\u0006\u0010\u001d\u001a\u00020\tH\u0096\u0001\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ\u0010\u0010 \u001a\u00020\u0013H\u0096\u0001\u00a2\u0006\u0004\u0008 \u0010\u0017J\u0010\u0010!\u001a\u00020\u0013H\u0096\u0001\u00a2\u0006\u0004\u0008!\u0010\u0017J*\u0010\'\u001a\u00020\u00132\u0006\u0010#\u001a\u00020\"2\u0008\u0010%\u001a\u0004\u0018\u00010$2\u0006\u0010&\u001a\u00020\rH\u0096\u0001\u00a2\u0006\u0004\u0008\'\u0010(J\u0018\u0010)\u001a\u00020\u00132\u0006\u0010&\u001a\u00020\rH\u0096\u0001\u00a2\u0006\u0004\u0008)\u0010*J\u0018\u0010+\u001a\u00020\u00132\u0006\u0010&\u001a\u00020\rH\u0096\u0001\u00a2\u0006\u0004\u0008+\u0010*J\u000f\u0010,\u001a\u00020\u0013H\u0016\u00a2\u0006\u0004\u0008,\u0010\u0017J/\u00101\u001a\u00020\u00132\u0006\u0010-\u001a\u00020\t2\u0006\u0010.\u001a\u00020\t2\u0006\u0010/\u001a\u00020\t2\u0006\u00100\u001a\u00020\tH\u0014\u00a2\u0006\u0004\u00081\u00102J\u0017\u00105\u001a\u00020\u00132\u0006\u00104\u001a\u000203H\u0016\u00a2\u0006\u0004\u00085\u00106J)\u0010:\u001a\u0002092\u0006\u00104\u001a\u0002032\u0008\u0010\u000e\u001a\u0004\u0018\u00010\r2\u0006\u00108\u001a\u000207H\u0014\u00a2\u0006\u0004\u0008:\u0010;J\u0017\u0010>\u001a\u00020\u00132\u0006\u0010=\u001a\u00020<H\u0016\u00a2\u0006\u0004\u0008>\u0010?J\u0017\u0010@\u001a\u00020\u00132\u0006\u0010=\u001a\u00020<H\u0016\u00a2\u0006\u0004\u0008@\u0010?J\u000f\u0010A\u001a\u00020\u0013H\u0016\u00a2\u0006\u0004\u0008A\u0010\u0017J\u0017\u0010D\u001a\u0002092\u0006\u0010C\u001a\u00020BH\u0016\u00a2\u0006\u0004\u0008D\u0010EJ\u0019\u0010G\u001a\u0004\u0018\u00010\r2\u0006\u0010F\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008G\u0010HR.\u0010O\u001a\u0004\u0018\u00010<2\u0008\u0010I\u001a\u0004\u0018\u00010<8\u0010@PX\u0090\u000e\u00a2\u0006\u0012\n\u0004\u0008J\u0010K\u001a\u0004\u0008L\u0010M\"\u0004\u0008N\u0010?R\u001a\u0010S\u001a\u0008\u0012\u0004\u0012\u00020<0P8\u0012X\u0092\u0004\u00a2\u0006\u0006\n\u0004\u0008Q\u0010RR.\u0010W\u001a\u0004\u0018\u00010<2\u0008\u0010I\u001a\u0004\u0018\u00010<8\u0010@PX\u0090\u000e\u00a2\u0006\u0012\n\u0004\u0008T\u0010K\u001a\u0004\u0008U\u0010M\"\u0004\u0008V\u0010?R.\u0010^\u001a\u0004\u0018\u00010X2\u0008\u0010I\u001a\u0004\u0018\u00010X8\u0010@PX\u0090\u000e\u00a2\u0006\u0012\n\u0004\u0008.\u0010Y\u001a\u0004\u0008Z\u0010[\"\u0004\u0008\\\u0010]R.\u0010f\u001a\u0004\u0018\u00010_2\u0008\u0010I\u001a\u0004\u0018\u00010_8\u0010@PX\u0090\u000e\u00a2\u0006\u0012\n\u0004\u0008`\u0010a\u001a\u0004\u0008b\u0010c\"\u0004\u0008d\u0010eR$\u0010n\u001a\u0004\u0018\u00010g8\u0010@\u0010X\u0090\u000e\u00a2\u0006\u0012\n\u0004\u0008h\u0010i\u001a\u0004\u0008j\u0010k\"\u0004\u0008l\u0010mR$\u0010v\u001a\u0004\u0018\u00010o8\u0016@\u0016X\u0096\u000e\u00a2\u0006\u0012\n\u0004\u0008p\u0010q\u001a\u0004\u0008r\u0010s\"\u0004\u0008t\u0010uR\u001d\u0010|\u001a\u0004\u0018\u00010w8RX\u0092\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008x\u0010y\u001a\u0004\u0008z\u0010{R\u001f\u0010#\u001a\u0004\u0018\u00010\"8\u0016@\u0016X\u0096\u000f\u00a2\u0006\r\u001a\u0004\u0008}\u0010~\"\u0005\u0008\u007f\u0010\u0080\u0001R#\u0010\u0085\u0001\u001a\u0004\u0018\u00010\u00038\u0016@\u0016X\u0096\u000f\u00a2\u0006\u0010\u001a\u0006\u0008\u0081\u0001\u0010\u0082\u0001\"\u0006\u0008\u0083\u0001\u0010\u0084\u0001R\u0017\u0010\u0086\u0001\u001a\u0002098\u0016X\u0096\u0005\u00a2\u0006\u0008\u001a\u0006\u0008\u0086\u0001\u0010\u0087\u0001R!\u0010\u008b\u0001\u001a\u0002098\u0016@\u0016X\u0096\u000f\u00a2\u0006\u0010\u001a\u0006\u0008\u0088\u0001\u0010\u0087\u0001\"\u0006\u0008\u0089\u0001\u0010\u008a\u0001R\u001d\u0010\u008e\u0001\u001a\u0008\u0012\u0004\u0012\u00020\u00110P8\u0016X\u0096\u0005\u00a2\u0006\u0008\u001a\u0006\u0008\u008c\u0001\u0010\u008d\u0001R)\u0010\u0091\u0001\u001a\u0002092\u0006\u0010I\u001a\u0002098P@PX\u0090\u000e\u00a2\u0006\u0010\u001a\u0006\u0008\u008f\u0001\u0010\u0087\u0001\"\u0006\u0008\u0090\u0001\u0010\u008a\u0001R)\u0010\u0096\u0001\u001a\u00020\t2\u0006\u0010I\u001a\u00020\t8P@PX\u0090\u000e\u00a2\u0006\u0010\u001a\u0006\u0008\u0092\u0001\u0010\u0093\u0001\"\u0006\u0008\u0094\u0001\u0010\u0095\u0001\u00a8\u0006\u0099\u0001"
    }
    d2 = {
        "Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;",
        "Lcom/yandex/div/core/widget/ViewPager2Wrapper;",
        "Lmk2;",
        "Lcom/yandex/div2/Div$j;",
        "Lve7;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "",
        "defStyleAttr",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "Landroid/view/View;",
        "child",
        "c",
        "(Landroid/view/View;)Ljava/lang/Integer;",
        "Lqc2;",
        "subscription",
        "Lzfb;",
        "addSubscription",
        "(Lqc2;)V",
        "closeAllSubscription",
        "()V",
        "Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;",
        "getDivBorderDrawer",
        "()Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;",
        "invalidateBorder",
        "width",
        "height",
        "onBoundsChanged",
        "(II)V",
        "release",
        "releaseBorderDrawer",
        "Lcom/yandex/div/core/view2/a;",
        "bindingContext",
        "Lcom/yandex/div2/DivBorder;",
        "border",
        "view",
        "setBorder",
        "(Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivBorder;Landroid/view/View;)V",
        "transitionFinished",
        "(Landroid/view/View;)V",
        "transitionStarted",
        "enableAccessibility",
        "w",
        "h",
        "oldw",
        "oldh",
        "onSizeChanged",
        "(IIII)V",
        "Landroid/graphics/Canvas;",
        "canvas",
        "draw",
        "(Landroid/graphics/Canvas;)V",
        "",
        "drawingTime",
        "",
        "drawChild",
        "(Landroid/graphics/Canvas;Landroid/view/View;J)Z",
        "Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;",
        "callback",
        "addChangePageCallbackForIndicators",
        "(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V",
        "removeChangePageCallbackForIndicators",
        "clearChangePageCallbackForIndicators",
        "Landroid/view/MotionEvent;",
        "event",
        "onInterceptTouchEvent",
        "(Landroid/view/MotionEvent;)Z",
        "index",
        "getPageView",
        "(I)Landroid/view/View;",
        "value",
        "e",
        "Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;",
        "getChangePageCallbackForState$div_release",
        "()Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;",
        "setChangePageCallbackForState$div_release",
        "changePageCallbackForState",
        "",
        "f",
        "Ljava/util/List;",
        "changePageCallbacksForIndicators",
        "g",
        "getChangePageCallbackForLogger$div_release",
        "setChangePageCallbackForLogger$div_release",
        "changePageCallbackForLogger",
        "Lcom/yandex/div/core/view2/divs/widgets/DivPagerView$OffScreenPagesUpdateCallback;",
        "Lcom/yandex/div/core/view2/divs/widgets/DivPagerView$OffScreenPagesUpdateCallback;",
        "getChangePageCallbackForOffScreenPages$div_release",
        "()Lcom/yandex/div/core/view2/divs/widgets/DivPagerView$OffScreenPagesUpdateCallback;",
        "setChangePageCallbackForOffScreenPages$div_release",
        "(Lcom/yandex/div/core/view2/divs/widgets/DivPagerView$OffScreenPagesUpdateCallback;)V",
        "changePageCallbackForOffScreenPages",
        "Lcom/yandex/div/core/view2/divs/pager/PagerSelectedActionsDispatcher;",
        "i",
        "Lcom/yandex/div/core/view2/divs/pager/PagerSelectedActionsDispatcher;",
        "getPagerSelectedActionsDispatcher$div_release",
        "()Lcom/yandex/div/core/view2/divs/pager/PagerSelectedActionsDispatcher;",
        "setPagerSelectedActionsDispatcher$div_release",
        "(Lcom/yandex/div/core/view2/divs/pager/PagerSelectedActionsDispatcher;)V",
        "pagerSelectedActionsDispatcher",
        "Lcom/yandex/div/core/view2/divs/widgets/DivPagerView$a;",
        "j",
        "Lcom/yandex/div/core/view2/divs/widgets/DivPagerView$a;",
        "getPagerOnItemsCountChange$div_release",
        "()Lcom/yandex/div/core/view2/divs/widgets/DivPagerView$a;",
        "setPagerOnItemsCountChange$div_release",
        "(Lcom/yandex/div/core/view2/divs/widgets/DivPagerView$a;)V",
        "pagerOnItemsCountChange",
        "Lue7;",
        "k",
        "Lue7;",
        "getOnInterceptTouchEventListener",
        "()Lue7;",
        "setOnInterceptTouchEventListener",
        "(Lue7;)V",
        "onInterceptTouchEventListener",
        "com/yandex/div/core/view2/divs/widgets/DivPagerView$accessibilityDelegate$2$1",
        "l",
        "Lyi5;",
        "getAccessibilityDelegate",
        "()Lcom/yandex/div/core/view2/divs/widgets/DivPagerView$accessibilityDelegate$2$1;",
        "accessibilityDelegate",
        "getBindingContext",
        "()Lcom/yandex/div/core/view2/a;",
        "setBindingContext",
        "(Lcom/yandex/div/core/view2/a;)V",
        "getDiv",
        "()Lcom/yandex/div2/Div$j;",
        "setDiv",
        "(Lcom/yandex/div2/Div$j;)V",
        "div",
        "isTransient",
        "()Z",
        "getNeedClipping",
        "setNeedClipping",
        "(Z)V",
        "needClipping",
        "getSubscriptions",
        "()Ljava/util/List;",
        "subscriptions",
        "getClipToPage$div_release",
        "setClipToPage$div_release",
        "clipToPage",
        "getCurrentItem$div_release",
        "()I",
        "setCurrentItem$div_release",
        "(I)V",
        "currentItem",
        "OffScreenPagesUpdateCallback",
        "a",
        "div_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic d:Lnk2;

.field public e:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

.field public final f:Ljava/util/List;

.field public g:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

.field public h:Lcom/yandex/div/core/view2/divs/widgets/DivPagerView$OffScreenPagesUpdateCallback;

.field public i:Lcom/yandex/div/core/view2/divs/pager/PagerSelectedActionsDispatcher;

.field public j:Lcom/yandex/div/core/view2/divs/widgets/DivPagerView$a;

.field public k:Lue7;

.field public final l:Lyi5;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .line 2
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, p1, p2, p3}, Lcom/yandex/div/core/widget/ViewPager2Wrapper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 5
    new-instance p1, Lnk2;

    invoke-direct {p1}, Lnk2;-><init>()V

    iput-object p1, p0, Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;->d:Lnk2;

    .line 6
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;->f:Ljava/util/List;

    .line 7
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance p2, Lcom/yandex/div/core/view2/divs/widgets/DivPagerView$accessibilityDelegate$2;

    invoke-direct {p2, p0}, Lcom/yandex/div/core/view2/divs/widgets/DivPagerView$accessibilityDelegate$2;-><init>(Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;)V

    invoke-static {p1, p2}, Lkotlin/b;->b(Lkotlin/LazyThreadSafetyMode;Lc74;)Lyi5;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;->l:Lyi5;

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
    invoke-direct {p0, p1, p2, p3}, Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static final synthetic access$getFocusedChildPos(Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;Landroid/view/View;)Ljava/lang/Integer;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;->c(Landroid/view/View;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private getAccessibilityDelegate()Lcom/yandex/div/core/view2/divs/widgets/DivPagerView$accessibilityDelegate$2$1;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;->l:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div/core/view2/divs/widgets/DivPagerView$accessibilityDelegate$2$1;

    return-object p0
.end method


# virtual methods
.method public addChangePageCallbackForIndicators(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V
    .locals 1

    const-string v0, "callback"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/yandex/div/core/widget/ViewPager2Wrapper;->getViewPager()Landroidx/viewpager2/widget/ViewPager2;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    return-void
.end method

.method public addSubscription(Lqc2;)V
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;->d:Lnk2;

    invoke-interface {p0, p1}, Lqj3;->addSubscription(Lqc2;)V

    return-void
.end method

.method public final c(Landroid/view/View;)Ljava/lang/Integer;
    .locals 3

    :cond_0
    invoke-static {p1, p0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    sget v0, Lcom/yandex/div/R$id;->div_pager_item_clip_id:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Ljava/lang/Integer;

    if-eqz v2, :cond_1

    check-cast v0, Ljava/lang/Integer;

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of v0, p1, Landroid/view/View;

    if-eqz v0, :cond_3

    check-cast p1, Landroid/view/View;

    goto :goto_1

    :cond_3
    move-object p1, v1

    :goto_1
    if-nez p1, :cond_0

    :cond_4
    return-object v1
.end method

.method public clearChangePageCallbackForIndicators()V
    .locals 3

    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;->f:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    invoke-virtual {p0}, Lcom/yandex/div/core/widget/ViewPager2Wrapper;->getViewPager()Landroidx/viewpager2/widget/ViewPager2;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/viewpager2/widget/ViewPager2;->unregisterOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;->f:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public closeAllSubscription()V
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;->d:Lnk2;

    invoke-interface {p0}, Lqj3;->closeAllSubscription()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    const-string v0, "canvas"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lvg2;->getDivBorderDrawer()Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    :try_start_0
    invoke-virtual {v0, p1}, Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;->g(Landroid/graphics/Canvas;)V

    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v0, p1}, Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;->h(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :goto_0
    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    throw p0
.end method

.method public drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 1

    const-string v0, "canvas"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2, p1}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->N(Landroid/view/View;Landroid/graphics/Canvas;)V

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p0

    return p0
.end method

.method public enableAccessibility()V
    .locals 1

    invoke-direct {p0}, Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;->getAccessibilityDelegate()Lcom/yandex/div/core/view2/divs/widgets/DivPagerView$accessibilityDelegate$2$1;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/yandex/div/core/widget/ViewPager2Wrapper;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAccessibilityDelegateCompat(Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate;)V

    :cond_0
    return-void
.end method

.method public getBindingContext()Lcom/yandex/div/core/view2/a;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;->d:Lnk2;

    invoke-virtual {p0}, Lnk2;->getBindingContext()Lcom/yandex/div/core/view2/a;

    move-result-object p0

    return-object p0
.end method

.method public getChangePageCallbackForLogger$div_release()Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;->g:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    return-object p0
.end method

.method public getChangePageCallbackForOffScreenPages$div_release()Lcom/yandex/div/core/view2/divs/widgets/DivPagerView$OffScreenPagesUpdateCallback;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;->h:Lcom/yandex/div/core/view2/divs/widgets/DivPagerView$OffScreenPagesUpdateCallback;

    return-object p0
.end method

.method public getChangePageCallbackForState$div_release()Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;->e:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    return-object p0
.end method

.method public getClipToPage$div_release()Z
    .locals 0

    invoke-virtual {p0}, Lcom/yandex/div/core/widget/ViewPager2Wrapper;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getClipChildren()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getCurrentItem$div_release()I
    .locals 0

    invoke-virtual {p0}, Lcom/yandex/div/core/widget/ViewPager2Wrapper;->getViewPager()Landroidx/viewpager2/widget/ViewPager2;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result p0

    return p0
.end method

.method public getDiv()Lcom/yandex/div2/Div$j;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;->d:Lnk2;

    invoke-virtual {p0}, Lnk2;->getDiv()Lcom/yandex/div2/Div;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/Div$j;

    return-object p0
.end method

.method public bridge synthetic getDiv()Lcom/yandex/div2/Div;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;->getDiv()Lcom/yandex/div2/Div$j;

    move-result-object p0

    return-object p0
.end method

.method public getDivBorderDrawer()Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;->d:Lnk2;

    invoke-virtual {p0}, Lnk2;->getDivBorderDrawer()Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;

    move-result-object p0

    return-object p0
.end method

.method public getNeedClipping()Z
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;->d:Lnk2;

    invoke-virtual {p0}, Lnk2;->getNeedClipping()Z

    move-result p0

    return p0
.end method

.method public getOnInterceptTouchEventListener()Lue7;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;->k:Lue7;

    return-object p0
.end method

.method public getPageView(I)Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lcom/yandex/div/core/widget/ViewPager2Wrapper;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    instance-of p1, p0, Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    check-cast p0, Landroid/view/ViewGroup;

    goto :goto_0

    :cond_1
    move-object p0, v0

    :goto_0
    if-nez p0, :cond_2

    return-object v0

    :cond_2
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getPagerOnItemsCountChange$div_release()Lcom/yandex/div/core/view2/divs/widgets/DivPagerView$a;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;->j:Lcom/yandex/div/core/view2/divs/widgets/DivPagerView$a;

    return-object p0
.end method

.method public getPagerSelectedActionsDispatcher$div_release()Lcom/yandex/div/core/view2/divs/pager/PagerSelectedActionsDispatcher;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;->i:Lcom/yandex/div/core/view2/divs/pager/PagerSelectedActionsDispatcher;

    return-object p0
.end method

.method public getSubscriptions()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lqc2;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;->d:Lnk2;

    invoke-virtual {p0}, Lnk2;->getSubscriptions()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public invalidateBorder()V
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;->d:Lnk2;

    invoke-virtual {p0}, Lnk2;->invalidateBorder()V

    return-void
.end method

.method public isTransient()Z
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;->d:Lnk2;

    invoke-virtual {p0}, Lnk2;->isTransient()Z

    move-result p0

    return p0
.end method

.method public onBoundsChanged(II)V
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;->d:Lnk2;

    invoke-virtual {p0, p1, p2}, Lnk2;->onBoundsChanged(II)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    const-string v0, "event"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;->getOnInterceptTouchEventListener()Lue7;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1}, Lue7;->a(Landroid/view/ViewGroup;Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;->onBoundsChanged(II)V

    return-void
.end method

.method public release()V
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;->d:Lnk2;

    invoke-virtual {p0}, Lnk2;->release()V

    return-void
.end method

.method public releaseBorderDrawer()V
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;->d:Lnk2;

    invoke-virtual {p0}, Lnk2;->releaseBorderDrawer()V

    return-void
.end method

.method public removeChangePageCallbackForIndicators(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V
    .locals 1

    const-string v0, "callback"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/yandex/div/core/widget/ViewPager2Wrapper;->getViewPager()Landroidx/viewpager2/widget/ViewPager2;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/viewpager2/widget/ViewPager2;->unregisterOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    return-void
.end method

.method public setBindingContext(Lcom/yandex/div/core/view2/a;)V
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;->d:Lnk2;

    invoke-virtual {p0, p1}, Lnk2;->setBindingContext(Lcom/yandex/div/core/view2/a;)V

    return-void
.end method

.method public setBorder(Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivBorder;Landroid/view/View;)V
    .locals 1

    const-string v0, "bindingContext"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;->d:Lnk2;

    invoke-virtual {p0, p1, p2, p3}, Lnk2;->setBorder(Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivBorder;Landroid/view/View;)V

    return-void
.end method

.method public setChangePageCallbackForLogger$div_release(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V
    .locals 2

    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;->g:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/yandex/div/core/widget/ViewPager2Wrapper;->getViewPager()Landroidx/viewpager2/widget/ViewPager2;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/viewpager2/widget/ViewPager2;->unregisterOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/yandex/div/core/widget/ViewPager2Wrapper;->getViewPager()Landroidx/viewpager2/widget/ViewPager2;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    :cond_1
    iput-object p1, p0, Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;->g:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    return-void
.end method

.method public setChangePageCallbackForOffScreenPages$div_release(Lcom/yandex/div/core/view2/divs/widgets/DivPagerView$OffScreenPagesUpdateCallback;)V
    .locals 2

    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;->h:Lcom/yandex/div/core/view2/divs/widgets/DivPagerView$OffScreenPagesUpdateCallback;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/yandex/div/core/widget/ViewPager2Wrapper;->getViewPager()Landroidx/viewpager2/widget/ViewPager2;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/viewpager2/widget/ViewPager2;->unregisterOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    invoke-virtual {p0}, Lcom/yandex/div/core/widget/ViewPager2Wrapper;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/yandex/div/core/widget/ViewPager2Wrapper;->getViewPager()Landroidx/viewpager2/widget/ViewPager2;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    invoke-virtual {p0}, Lcom/yandex/div/core/widget/ViewPager2Wrapper;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_1
    iput-object p1, p0, Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;->h:Lcom/yandex/div/core/view2/divs/widgets/DivPagerView$OffScreenPagesUpdateCallback;

    return-void
.end method

.method public setChangePageCallbackForState$div_release(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V
    .locals 2

    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;->e:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/yandex/div/core/widget/ViewPager2Wrapper;->getViewPager()Landroidx/viewpager2/widget/ViewPager2;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/viewpager2/widget/ViewPager2;->unregisterOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/yandex/div/core/widget/ViewPager2Wrapper;->getViewPager()Landroidx/viewpager2/widget/ViewPager2;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    :cond_1
    iput-object p1, p0, Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;->e:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    return-void
.end method

.method public setClipToPage$div_release(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/yandex/div/core/widget/ViewPager2Wrapper;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    :goto_0
    return-void
.end method

.method public setCurrentItem$div_release(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/yandex/div/core/widget/ViewPager2Wrapper;->getViewPager()Landroidx/viewpager2/widget/ViewPager2;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    return-void
.end method

.method public setDiv(Lcom/yandex/div2/Div$j;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;->d:Lnk2;

    invoke-virtual {p0, p1}, Lnk2;->setDiv(Lcom/yandex/div2/Div;)V

    return-void
.end method

.method public bridge synthetic setDiv(Lcom/yandex/div2/Div;)V
    .locals 0

    .line 2
    check-cast p1, Lcom/yandex/div2/Div$j;

    invoke-virtual {p0, p1}, Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;->setDiv(Lcom/yandex/div2/Div$j;)V

    return-void
.end method

.method public setNeedClipping(Z)V
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;->d:Lnk2;

    invoke-virtual {p0, p1}, Lnk2;->setNeedClipping(Z)V

    return-void
.end method

.method public setOnInterceptTouchEventListener(Lue7;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;->k:Lue7;

    return-void
.end method

.method public setPagerOnItemsCountChange$div_release(Lcom/yandex/div/core/view2/divs/widgets/DivPagerView$a;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;->j:Lcom/yandex/div/core/view2/divs/widgets/DivPagerView$a;

    return-void
.end method

.method public setPagerSelectedActionsDispatcher$div_release(Lcom/yandex/div/core/view2/divs/pager/PagerSelectedActionsDispatcher;)V
    .locals 2

    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;->i:Lcom/yandex/div/core/view2/divs/pager/PagerSelectedActionsDispatcher;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/yandex/div/core/widget/ViewPager2Wrapper;->getViewPager()Landroidx/viewpager2/widget/ViewPager2;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/div/core/view2/divs/pager/PagerSelectedActionsDispatcher;->f(Landroidx/viewpager2/widget/ViewPager2;)V

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/yandex/div/core/widget/ViewPager2Wrapper;->getViewPager()Landroidx/viewpager2/widget/ViewPager2;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/yandex/div/core/view2/divs/pager/PagerSelectedActionsDispatcher;->e(Landroidx/viewpager2/widget/ViewPager2;)V

    :cond_1
    iput-object p1, p0, Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;->i:Lcom/yandex/div/core/view2/divs/pager/PagerSelectedActionsDispatcher;

    return-void
.end method

.method public transitionFinished(Landroid/view/View;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;->d:Lnk2;

    invoke-virtual {p0, p1}, Lnk2;->transitionFinished(Landroid/view/View;)V

    return-void
.end method

.method public transitionStarted(Landroid/view/View;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;->d:Lnk2;

    invoke-virtual {p0, p1}, Lnk2;->transitionStarted(Landroid/view/View;)V

    return-void
.end method
