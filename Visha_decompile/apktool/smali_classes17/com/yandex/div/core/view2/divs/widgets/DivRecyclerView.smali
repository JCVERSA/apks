.class public Lcom/yandex/div/core/view2/divs/widgets/DivRecyclerView;
.super Lcom/yandex/div/core/view2/backbutton/BackHandlingRecyclerView;
.source "SourceFile"

# interfaces
.implements Lmk2;
.implements Lve7;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div/core/view2/divs/widgets/DivRecyclerView$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yandex/div/core/view2/backbutton/BackHandlingRecyclerView;",
        "Lmk2;",
        "Lve7;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u009a\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0002\u0008\u0015\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u001a\n\u0002\u0010!\n\u0002\u0008\u0006\u0008\u0010\u0018\u0000 \u008e\u00012\u00020\u00012\u0008\u0012\u0004\u0012\u00020\u00030\u00022\u00020\u0004:\u0002\u008f\u0001B\'\u0008\u0007\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\t\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u000f\u0010\u000e\u001a\u00020\rH\u0012\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0013\u0010\u0011\u001a\u00020\t*\u00020\u0010H\u0012\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u001a\u0010\u0016\u001a\u00020\u00152\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0013H\u0096\u0001\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u0010\u0010\u0018\u001a\u00020\u0015H\u0096\u0001\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u0012\u0010\u001b\u001a\u0004\u0018\u00010\u001aH\u0096\u0001\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u0010\u0010\u001d\u001a\u00020\u0015H\u0096\u0001\u00a2\u0006\u0004\u0008\u001d\u0010\u0019J \u0010 \u001a\u00020\u00152\u0006\u0010\u001e\u001a\u00020\t2\u0006\u0010\u001f\u001a\u00020\tH\u0096\u0001\u00a2\u0006\u0004\u0008 \u0010!J\u0010\u0010\"\u001a\u00020\u0015H\u0096\u0001\u00a2\u0006\u0004\u0008\"\u0010\u0019J*\u0010)\u001a\u00020\u00152\u0006\u0010$\u001a\u00020#2\u0008\u0010&\u001a\u0004\u0018\u00010%2\u0006\u0010(\u001a\u00020\'H\u0096\u0001\u00a2\u0006\u0004\u0008)\u0010*J\u0018\u0010+\u001a\u00020\u00152\u0006\u0010(\u001a\u00020\'H\u0096\u0001\u00a2\u0006\u0004\u0008+\u0010,J\u0018\u0010-\u001a\u00020\u00152\u0006\u0010(\u001a\u00020\'H\u0096\u0001\u00a2\u0006\u0004\u0008-\u0010,J\u001f\u00100\u001a\u00020\r2\u0006\u0010.\u001a\u00020\t2\u0006\u0010/\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u00080\u00101J\u0017\u00103\u001a\u00020\u00152\u0006\u00102\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u00083\u00104J\u001f\u00107\u001a\u00020\u00152\u0006\u00105\u001a\u00020\t2\u0006\u00106\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u00087\u0010!J\u0017\u0010:\u001a\u00020\r2\u0006\u00109\u001a\u000208H\u0016\u00a2\u0006\u0004\u0008:\u0010;J\u0019\u0010=\u001a\u00020\r2\u0008\u0010<\u001a\u0004\u0018\u000108H\u0017\u00a2\u0006\u0004\u0008=\u0010;J/\u0010B\u001a\u00020\u00152\u0006\u0010>\u001a\u00020\t2\u0006\u0010?\u001a\u00020\t2\u0006\u0010@\u001a\u00020\t2\u0006\u0010A\u001a\u00020\tH\u0014\u00a2\u0006\u0004\u0008B\u0010CJ\u0017\u0010F\u001a\u00020\u00152\u0006\u0010E\u001a\u00020DH\u0016\u00a2\u0006\u0004\u0008F\u0010GJ)\u0010K\u001a\u00020\r2\u0006\u0010E\u001a\u00020D2\u0008\u0010H\u001a\u0004\u0018\u00010\'2\u0006\u0010J\u001a\u00020IH\u0016\u00a2\u0006\u0004\u0008K\u0010LJ\u000f\u0010M\u001a\u00020\u0015H\u0016\u00a2\u0006\u0004\u0008M\u0010\u0019J\u0019\u0010O\u001a\u0004\u0018\u00010\'2\u0006\u0010N\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008O\u0010PR\u0016\u0010S\u001a\u00020\t8\u0012@\u0012X\u0092\u000e\u00a2\u0006\u0006\n\u0004\u0008Q\u0010RR\u0016\u0010T\u001a\u00020\t8\u0012@\u0012X\u0092\u000e\u00a2\u0006\u0006\n\u0004\u0008?\u0010RR\u0016\u0010V\u001a\u00020\t8\u0012@\u0012X\u0092\u000e\u00a2\u0006\u0006\n\u0004\u0008U\u0010RR*\u0010^\u001a\u00020\u00102\u0006\u0010W\u001a\u00020\u00108\u0016@VX\u0096\u000e\u00a2\u0006\u0012\n\u0004\u0008X\u0010Y\u001a\u0004\u0008Z\u0010[\"\u0004\u0008\\\u0010]R$\u0010f\u001a\u0004\u0018\u00010_8\u0016@\u0016X\u0096\u000e\u00a2\u0006\u0012\n\u0004\u0008`\u0010a\u001a\u0004\u0008b\u0010c\"\u0004\u0008d\u0010eR\"\u0010n\u001a\u00020g8\u0016@\u0016X\u0096\u000e\u00a2\u0006\u0012\n\u0004\u0008h\u0010i\u001a\u0004\u0008j\u0010k\"\u0004\u0008l\u0010mR$\u0010v\u001a\u0004\u0018\u00010o8\u0016@\u0016X\u0096\u000e\u00a2\u0006\u0012\n\u0004\u0008p\u0010q\u001a\u0004\u0008r\u0010s\"\u0004\u0008t\u0010uR\u0016\u0010y\u001a\u00020\r8\u0012@\u0012X\u0092\u000e\u00a2\u0006\u0006\n\u0004\u0008w\u0010xR\u0016\u0010{\u001a\u00020\t8\u0012@\u0012X\u0092\u000e\u00a2\u0006\u0006\n\u0004\u0008z\u0010RR\u001e\u0010$\u001a\u0004\u0018\u00010#8\u0016@\u0016X\u0096\u000f\u00a2\u0006\u000c\u001a\u0004\u0008|\u0010}\"\u0004\u0008~\u0010\u007fR#\u0010\u0084\u0001\u001a\u0004\u0018\u00010\u00038\u0016@\u0016X\u0096\u000f\u00a2\u0006\u0010\u001a\u0006\u0008\u0080\u0001\u0010\u0081\u0001\"\u0006\u0008\u0082\u0001\u0010\u0083\u0001R\u0016\u0010\u0085\u0001\u001a\u00020\r8\u0016X\u0096\u0005\u00a2\u0006\u0007\u001a\u0005\u0008\u0085\u0001\u0010\u000fR \u0010\u0089\u0001\u001a\u00020\r8\u0016@\u0016X\u0096\u000f\u00a2\u0006\u000f\u001a\u0005\u0008\u0086\u0001\u0010\u000f\"\u0006\u0008\u0087\u0001\u0010\u0088\u0001R\u001e\u0010\u008d\u0001\u001a\t\u0012\u0004\u0012\u00020\u00130\u008a\u00018\u0016X\u0096\u0005\u00a2\u0006\u0008\u001a\u0006\u0008\u008b\u0001\u0010\u008c\u0001\u00a8\u0006\u0090\u0001"
    }
    d2 = {
        "Lcom/yandex/div/core/view2/divs/widgets/DivRecyclerView;",
        "Lcom/yandex/div/core/view2/backbutton/BackHandlingRecyclerView;",
        "Lmk2;",
        "Lcom/yandex/div2/Div$d;",
        "Lve7;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "",
        "defStyleAttr",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "",
        "b",
        "()Z",
        "",
        "c",
        "(F)I",
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
        "releaseBorderDrawer",
        "Lcom/yandex/div/core/view2/a;",
        "bindingContext",
        "Lcom/yandex/div2/DivBorder;",
        "border",
        "Landroid/view/View;",
        "view",
        "setBorder",
        "(Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivBorder;Landroid/view/View;)V",
        "transitionFinished",
        "(Landroid/view/View;)V",
        "transitionStarted",
        "velocityX",
        "velocityY",
        "fling",
        "(II)Z",
        "state",
        "onScrollStateChanged",
        "(I)V",
        "dx",
        "dy",
        "onScrolled",
        "Landroid/view/MotionEvent;",
        "event",
        "onInterceptTouchEvent",
        "(Landroid/view/MotionEvent;)Z",
        "e",
        "onTouchEvent",
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
        "child",
        "",
        "drawingTime",
        "drawChild",
        "(Landroid/graphics/Canvas;Landroid/view/View;J)Z",
        "release",
        "index",
        "getItemView",
        "(I)Landroid/view/View;",
        "g",
        "I",
        "scrollPointerId",
        "pointTouchX",
        "i",
        "pointTouchY",
        "value",
        "j",
        "F",
        "getScrollInterceptionAngle",
        "()F",
        "setScrollInterceptionAngle",
        "(F)V",
        "scrollInterceptionAngle",
        "Lue7;",
        "k",
        "Lue7;",
        "getOnInterceptTouchEventListener",
        "()Lue7;",
        "setOnInterceptTouchEventListener",
        "(Lue7;)V",
        "onInterceptTouchEventListener",
        "Lcom/yandex/div2/DivGallery$ScrollMode;",
        "l",
        "Lcom/yandex/div2/DivGallery$ScrollMode;",
        "getScrollMode",
        "()Lcom/yandex/div2/DivGallery$ScrollMode;",
        "setScrollMode",
        "(Lcom/yandex/div2/DivGallery$ScrollMode;)V",
        "scrollMode",
        "Lcom/yandex/div/core/view2/divs/gallery/PagerSnapStartHelper;",
        "m",
        "Lcom/yandex/div/core/view2/divs/gallery/PagerSnapStartHelper;",
        "getPagerSnapStartHelper",
        "()Lcom/yandex/div/core/view2/divs/gallery/PagerSnapStartHelper;",
        "setPagerSnapStartHelper",
        "(Lcom/yandex/div/core/view2/divs/gallery/PagerSnapStartHelper;)V",
        "pagerSnapStartHelper",
        "n",
        "Z",
        "needFling",
        "o",
        "beforeScrollFocusPosition",
        "getBindingContext",
        "()Lcom/yandex/div/core/view2/a;",
        "setBindingContext",
        "(Lcom/yandex/div/core/view2/a;)V",
        "getDiv",
        "()Lcom/yandex/div2/Div$d;",
        "setDiv",
        "(Lcom/yandex/div2/Div$d;)V",
        "div",
        "isTransient",
        "getNeedClipping",
        "setNeedClipping",
        "(Z)V",
        "needClipping",
        "",
        "getSubscriptions",
        "()Ljava/util/List;",
        "subscriptions",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/yandex/div/core/view2/divs/widgets/DivRecyclerView$a;

.field public static final NOT_INTERCEPT:F


# instance fields
.field public final synthetic f:Lnk2;

.field public g:I

.field public h:I

.field public i:I

.field public j:F

.field public k:Lue7;

.field public l:Lcom/yandex/div2/DivGallery$ScrollMode;

.field public m:Lcom/yandex/div/core/view2/divs/gallery/PagerSnapStartHelper;

.field public n:Z

.field public o:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/yandex/div/core/view2/divs/widgets/DivRecyclerView$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yandex/div/core/view2/divs/widgets/DivRecyclerView$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/yandex/div/core/view2/divs/widgets/DivRecyclerView;->Companion:Lcom/yandex/div/core/view2/divs/widgets/DivRecyclerView$a;

    return-void
.end method

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

    invoke-direct/range {v1 .. v6}, Lcom/yandex/div/core/view2/divs/widgets/DivRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

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

    invoke-direct/range {v1 .. v6}, Lcom/yandex/div/core/view2/divs/widgets/DivRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance v0, Landroidx/appcompat/view/ContextThemeWrapper;

    sget v1, Lcom/yandex/div/R$style;->Div_Gallery:I

    invoke-direct {v0, p1, v1}, Landroidx/appcompat/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {p0, v0, p2, p3}, Lcom/yandex/div/core/view2/backbutton/BackHandlingRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 5
    new-instance p1, Lnk2;

    invoke-direct {p1}, Lnk2;-><init>()V

    iput-object p1, p0, Lcom/yandex/div/core/view2/divs/widgets/DivRecyclerView;->f:Lnk2;

    const/4 p1, -0x1

    .line 6
    iput p1, p0, Lcom/yandex/div/core/view2/divs/widgets/DivRecyclerView;->g:I

    .line 7
    sget-object p2, Lcom/yandex/div2/DivGallery$ScrollMode;->DEFAULT:Lcom/yandex/div2/DivGallery$ScrollMode;

    iput-object p2, p0, Lcom/yandex/div/core/view2/divs/widgets/DivRecyclerView;->l:Lcom/yandex/div2/DivGallery$ScrollMode;

    .line 8
    iput p1, p0, Lcom/yandex/div/core/view2/divs/widgets/DivRecyclerView;->o:I

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
    invoke-direct {p0, p1, p2, p3}, Lcom/yandex/div/core/view2/divs/widgets/DivRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private b()Z
    .locals 3

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    invoke-virtual {p0, v2}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0, v0}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, v2}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    return v2
.end method


# virtual methods
.method public addSubscription(Lqc2;)V
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/widgets/DivRecyclerView;->f:Lnk2;

    invoke-interface {p0, p1}, Lqj3;->addSubscription(Lqc2;)V

    return-void
.end method

.method public final c(F)I
    .locals 0

    float-to-double p0, p1

    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p0

    double-to-float p0, p0

    float-to-int p0, p0

    return p0
.end method

.method public closeAllSubscription()V
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/widgets/DivRecyclerView;->f:Lnk2;

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

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    :try_start_0
    invoke-virtual {v0, p1}, Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;->g(Landroid/graphics/Canvas;)V

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->draw(Landroid/graphics/Canvas;)V

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
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p0

    return p0
.end method

.method public fling(II)Z
    .locals 1

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->fling(II)Z

    move-result p1

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/divs/widgets/DivRecyclerView;->getScrollMode()Lcom/yandex/div2/DivGallery$ScrollMode;

    move-result-object p2

    sget-object v0, Lcom/yandex/div2/DivGallery$ScrollMode;->PAGING:Lcom/yandex/div2/DivGallery$ScrollMode;

    if-ne p2, v0, :cond_0

    xor-int/lit8 p2, p1, 0x1

    iput-boolean p2, p0, Lcom/yandex/div/core/view2/divs/widgets/DivRecyclerView;->n:Z

    :cond_0
    return p1
.end method

.method public getBindingContext()Lcom/yandex/div/core/view2/a;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/widgets/DivRecyclerView;->f:Lnk2;

    invoke-virtual {p0}, Lnk2;->getBindingContext()Lcom/yandex/div/core/view2/a;

    move-result-object p0

    return-object p0
.end method

.method public getDiv()Lcom/yandex/div2/Div$d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/widgets/DivRecyclerView;->f:Lnk2;

    invoke-virtual {p0}, Lnk2;->getDiv()Lcom/yandex/div2/Div;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/Div$d;

    return-object p0
.end method

.method public bridge synthetic getDiv()Lcom/yandex/div2/Div;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/yandex/div/core/view2/divs/widgets/DivRecyclerView;->getDiv()Lcom/yandex/div2/Div$d;

    move-result-object p0

    return-object p0
.end method

.method public getDivBorderDrawer()Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/widgets/DivRecyclerView;->f:Lnk2;

    invoke-virtual {p0}, Lnk2;->getDivBorderDrawer()Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;

    move-result-object p0

    return-object p0
.end method

.method public getItemView(I)Landroid/view/View;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    instance-of p1, p0, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    check-cast p0, Landroid/view/ViewGroup;

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    if-nez p0, :cond_1

    return-object v0

    :cond_1
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getNeedClipping()Z
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/widgets/DivRecyclerView;->f:Lnk2;

    invoke-virtual {p0}, Lnk2;->getNeedClipping()Z

    move-result p0

    return p0
.end method

.method public getOnInterceptTouchEventListener()Lue7;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/widgets/DivRecyclerView;->k:Lue7;

    return-object p0
.end method

.method public getPagerSnapStartHelper()Lcom/yandex/div/core/view2/divs/gallery/PagerSnapStartHelper;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/widgets/DivRecyclerView;->m:Lcom/yandex/div/core/view2/divs/gallery/PagerSnapStartHelper;

    return-object p0
.end method

.method public getScrollInterceptionAngle()F
    .locals 0

    iget p0, p0, Lcom/yandex/div/core/view2/divs/widgets/DivRecyclerView;->j:F

    return p0
.end method

.method public getScrollMode()Lcom/yandex/div2/DivGallery$ScrollMode;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/widgets/DivRecyclerView;->l:Lcom/yandex/div2/DivGallery$ScrollMode;

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

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/widgets/DivRecyclerView;->f:Lnk2;

    invoke-virtual {p0}, Lnk2;->getSubscriptions()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public invalidateBorder()V
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/widgets/DivRecyclerView;->f:Lnk2;

    invoke-virtual {p0}, Lnk2;->invalidateBorder()V

    return-void
.end method

.method public isTransient()Z
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/widgets/DivRecyclerView;->f:Lnk2;

    invoke-virtual {p0}, Lnk2;->isTransient()Z

    move-result p0

    return p0
.end method

.method public onBoundsChanged(II)V
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/widgets/DivRecyclerView;->f:Lnk2;

    invoke-virtual {p0, p1, p2}, Lnk2;->onBoundsChanged(II)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    const-string v0, "event"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/divs/widgets/DivRecyclerView;->getOnInterceptTouchEventListener()Lue7;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1}, Lue7;->a(Landroid/view/ViewGroup;Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    :cond_1
    invoke-virtual {p0}, Lcom/yandex/div/core/view2/divs/widgets/DivRecyclerView;->getScrollInterceptionAngle()F

    move-result v0

    const/4 v3, 0x0

    cmpg-float v0, v0, v3

    if-nez v0, :cond_2

    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    if-eqz v0, :cond_3

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    if-eqz v0, :cond_e

    const/4 v4, 0x2

    if-eq v0, v4, :cond_5

    const/4 v1, 0x5

    if-eq v0, v1, :cond_4

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_4
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/yandex/div/core/view2/divs/widgets/DivRecyclerView;->g:I

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yandex/div/core/view2/divs/widgets/DivRecyclerView;->c(F)I

    move-result v0

    iput v0, p0, Lcom/yandex/div/core/view2/divs/widgets/DivRecyclerView;->h:I

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yandex/div/core/view2/divs/widgets/DivRecyclerView;->c(F)I

    move-result v0

    iput v0, p0, Lcom/yandex/div/core/view2/divs/widgets/DivRecyclerView;->i:I

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-nez v0, :cond_6

    return v1

    :cond_6
    iget v3, p0, Lcom/yandex/div/core/view2/divs/widgets/DivRecyclerView;->g:I

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    if-gez v3, :cond_7

    return v1

    :cond_7
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    invoke-virtual {p0, v4}, Lcom/yandex/div/core/view2/divs/widgets/DivRecyclerView;->c(F)I

    move-result v4

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    invoke-virtual {p0, v3}, Lcom/yandex/div/core/view2/divs/widgets/DivRecyclerView;->c(F)I

    move-result v3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    move-result v5

    if-ne v5, v2, :cond_8

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_8
    iget p1, p0, Lcom/yandex/div/core/view2/divs/widgets/DivRecyclerView;->h:I

    sub-int/2addr v4, p1

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget v4, p0, Lcom/yandex/div/core/view2/divs/widgets/DivRecyclerView;->i:I

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-nez p1, :cond_9

    if-nez v3, :cond_9

    return v1

    :cond_9
    if-eqz p1, :cond_a

    int-to-double v3, v3

    int-to-double v5, p1

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->atan(D)D

    move-result-wide v3

    const/16 p1, 0xb4

    int-to-double v5, p1

    mul-double/2addr v3, v5

    const-wide v5, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v3, v5

    goto :goto_2

    :cond_a
    const-wide v3, 0x4056800000000000L    # 90.0

    :goto_2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/divs/widgets/DivRecyclerView;->getScrollInterceptionAngle()F

    move-result p1

    float-to-double v5, p1

    cmpg-double p1, v3, v5

    if-lez p1, :cond_c

    :cond_b
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result p1

    if-eqz p1, :cond_d

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/divs/widgets/DivRecyclerView;->getScrollInterceptionAngle()F

    move-result p0

    float-to-double p0, p0

    cmpl-double p0, v3, p0

    if-lez p0, :cond_d

    :cond_c
    move v1, v2

    :cond_d
    return v1

    :cond_e
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/yandex/div/core/view2/divs/widgets/DivRecyclerView;->g:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yandex/div/core/view2/divs/widgets/DivRecyclerView;->c(F)I

    move-result v0

    iput v0, p0, Lcom/yandex/div/core/view2/divs/widgets/DivRecyclerView;->h:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yandex/div/core/view2/divs/widgets/DivRecyclerView;->c(F)I

    move-result v0

    iput v0, p0, Lcom/yandex/div/core/view2/divs/widgets/DivRecyclerView;->i:I

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onScrollStateChanged(I)V
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, -0x1

    iput p1, p0, Lcom/yandex/div/core/view2/divs/widgets/DivRecyclerView;->o:I

    return-void

    :cond_0
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lcom/yandex/div/core/view2/divs/widgets/DivRecyclerView;->o:I

    :cond_1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onScrollStateChanged(I)V

    return-void
.end method

.method public onScrolled(II)V
    .locals 3

    iget v0, p0, Lcom/yandex/div/core/view2/divs/widgets/DivRecyclerView;->o:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    instance-of v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v1, :cond_1

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getOrientation()I

    move-result v0

    goto :goto_0

    :cond_1
    instance-of v1, v0, Lcom/yandex/div/core/view2/divs/gallery/DivGridLayoutManager;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/yandex/div/core/view2/divs/gallery/DivGridLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getOrientation()I

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    if-lez p2, :cond_3

    iget v0, p0, Lcom/yandex/div/core/view2/divs/widgets/DivRecyclerView;->o:I

    :goto_1
    add-int/2addr v0, v1

    goto :goto_3

    :cond_3
    if-ne v0, v1, :cond_4

    if-gtz p2, :cond_4

    iget v0, p0, Lcom/yandex/div/core/view2/divs/widgets/DivRecyclerView;->o:I

    :goto_2
    sub-int/2addr v0, v1

    goto :goto_3

    :cond_4
    if-lez p1, :cond_5

    iget v0, p0, Lcom/yandex/div/core/view2/divs/widgets/DivRecyclerView;->o:I

    goto :goto_1

    :cond_5
    iget v0, p0, Lcom/yandex/div/core/view2/divs/widgets/DivRecyclerView;->o:I

    goto :goto_2

    :goto_3
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    goto :goto_4

    :cond_6
    move-object v0, v1

    :goto_4
    instance-of v2, v0, Lcom/yandex/div/core/widget/DivViewWrapper;

    if-eqz v2, :cond_7

    move-object v1, v0

    check-cast v1, Lcom/yandex/div/core/widget/DivViewWrapper;

    :cond_7
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/yandex/div/core/widget/DivViewWrapper;->getChild()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_8
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->onScrolled(II)V

    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView;->onSizeChanged(IIII)V

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div/core/view2/divs/widgets/DivRecyclerView;->onBoundsChanged(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/divs/widgets/DivRecyclerView;->getScrollMode()Lcom/yandex/div2/DivGallery$ScrollMode;

    move-result-object v0

    sget-object v1, Lcom/yandex/div2/DivGallery$ScrollMode;->PAGING:Lcom/yandex/div2/DivGallery$ScrollMode;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    iput-boolean v2, p0, Lcom/yandex/div/core/view2/divs/widgets/DivRecyclerView;->n:Z

    :cond_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/yandex/div/core/view2/divs/widgets/DivRecyclerView;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_0
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-ne p1, v2, :cond_6

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/divs/widgets/DivRecyclerView;->getScrollMode()Lcom/yandex/div2/DivGallery$ScrollMode;

    move-result-object p1

    if-ne p1, v1, :cond_6

    iget-boolean p1, p0, Lcom/yandex/div/core/view2/divs/widgets/DivRecyclerView;->n:Z

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    if-nez p1, :cond_2

    return v0

    :cond_2
    invoke-virtual {p0}, Lcom/yandex/div/core/view2/divs/widgets/DivRecyclerView;->getPagerSnapStartHelper()Lcom/yandex/div/core/view2/divs/gallery/PagerSnapStartHelper;

    move-result-object v1

    if-nez v1, :cond_3

    return v0

    :cond_3
    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/PagerSnapHelper;->findSnapView(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_4

    return v0

    :cond_4
    invoke-virtual {v1, p1, v4}, Lcom/yandex/div/core/view2/divs/gallery/PagerSnapStartHelper;->calculateDistanceToFinalSnap(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroid/view/View;)[I

    move-result-object p1

    array-length v1, p1

    const/4 v4, 0x2

    if-lt v1, v4, :cond_6

    aget v1, p1, v3

    if-nez v1, :cond_5

    aget v3, p1, v2

    if-nez v3, :cond_5

    goto :goto_1

    :cond_5
    aget p1, p1, v2

    invoke-virtual {p0, v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(II)V

    nop

    :cond_6
    :goto_1
    return v0
.end method

.method public release()V
    .locals 1

    invoke-super {p0}, Lqj3;->release()V

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/divs/widgets/DivRecyclerView;->releaseBorderDrawer()V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p0

    instance-of v0, p0, Ltr8;

    if-eqz v0, :cond_0

    check-cast p0, Ltr8;

    invoke-interface {p0}, Ltr8;->release()V

    :cond_0
    return-void
.end method

.method public releaseBorderDrawer()V
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/widgets/DivRecyclerView;->f:Lnk2;

    invoke-virtual {p0}, Lnk2;->releaseBorderDrawer()V

    return-void
.end method

.method public setBindingContext(Lcom/yandex/div/core/view2/a;)V
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/widgets/DivRecyclerView;->f:Lnk2;

    invoke-virtual {p0, p1}, Lnk2;->setBindingContext(Lcom/yandex/div/core/view2/a;)V

    return-void
.end method

.method public setBorder(Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivBorder;Landroid/view/View;)V
    .locals 1

    const-string v0, "bindingContext"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/widgets/DivRecyclerView;->f:Lnk2;

    invoke-virtual {p0, p1, p2, p3}, Lnk2;->setBorder(Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivBorder;Landroid/view/View;)V

    return-void
.end method

.method public setDiv(Lcom/yandex/div2/Div$d;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/widgets/DivRecyclerView;->f:Lnk2;

    invoke-virtual {p0, p1}, Lnk2;->setDiv(Lcom/yandex/div2/Div;)V

    return-void
.end method

.method public bridge synthetic setDiv(Lcom/yandex/div2/Div;)V
    .locals 0

    .line 2
    check-cast p1, Lcom/yandex/div2/Div$d;

    invoke-virtual {p0, p1}, Lcom/yandex/div/core/view2/divs/widgets/DivRecyclerView;->setDiv(Lcom/yandex/div2/Div$d;)V

    return-void
.end method

.method public setNeedClipping(Z)V
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/widgets/DivRecyclerView;->f:Lnk2;

    invoke-virtual {p0, p1}, Lnk2;->setNeedClipping(Z)V

    return-void
.end method

.method public setOnInterceptTouchEventListener(Lue7;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/div/core/view2/divs/widgets/DivRecyclerView;->k:Lue7;

    return-void
.end method

.method public setPagerSnapStartHelper(Lcom/yandex/div/core/view2/divs/gallery/PagerSnapStartHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/div/core/view2/divs/widgets/DivRecyclerView;->m:Lcom/yandex/div/core/view2/divs/gallery/PagerSnapStartHelper;

    return-void
.end method

.method public setScrollInterceptionAngle(F)V
    .locals 2

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/16 v0, 0x5a

    int-to-float v0, v0

    rem-float v0, p1, v0

    :goto_0
    iput v0, p0, Lcom/yandex/div/core/view2/divs/widgets/DivRecyclerView;->j:F

    return-void
.end method

.method public setScrollMode(Lcom/yandex/div2/DivGallery$ScrollMode;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/yandex/div/core/view2/divs/widgets/DivRecyclerView;->l:Lcom/yandex/div2/DivGallery$ScrollMode;

    return-void
.end method

.method public transitionFinished(Landroid/view/View;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/widgets/DivRecyclerView;->f:Lnk2;

    invoke-virtual {p0, p1}, Lnk2;->transitionFinished(Landroid/view/View;)V

    return-void
.end method

.method public transitionStarted(Landroid/view/View;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/widgets/DivRecyclerView;->f:Lnk2;

    invoke-virtual {p0, p1}, Lnk2;->transitionStarted(Landroid/view/View;)V

    return-void
.end method
