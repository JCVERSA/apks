.class public Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;
.super Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab$a;,
        Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab$LiquidSearchBarSavedState;,
        Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab$b;,
        Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab$c;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u009e\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\u0008\u000e\n\u0002\u0010\u0007\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0015\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0008\u0016\u0018\u0000 \u00a2\u00012\u00020\u0001:\u0008\u00a3\u0001\u00a4\u0001\u00a5\u0001\u00a6\u0001B\'\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ!\u0010\u000e\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\u00062\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u000b\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0017\u0010\u0012\u001a\u00020\u000b2\u0006\u0010\u0011\u001a\u00020\u0010H\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\r\u0010\u0014\u001a\u00020\r\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\r\u0010\u0016\u001a\u00020\r\u00a2\u0006\u0004\u0008\u0016\u0010\u0015J\u0015\u0010\u0019\u001a\u00020\r2\u0006\u0010\u0018\u001a\u00020\u0017\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\r\u0010\u001b\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\r\u0010\u001d\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u001d\u0010\u001cJ\u000f\u0010\u001e\u001a\u00020\rH\u0014\u00a2\u0006\u0004\u0008\u001e\u0010\u0015J\u000f\u0010\u001f\u001a\u00020\rH\u0014\u00a2\u0006\u0004\u0008\u001f\u0010\u0015J\u0017\u0010!\u001a\u00020\r2\u0006\u0010 \u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008!\u0010\"J\r\u0010#\u001a\u00020\u0006\u00a2\u0006\u0004\u0008#\u0010\u001cJ\u0011\u0010%\u001a\u0004\u0018\u00010$H\u0014\u00a2\u0006\u0004\u0008%\u0010&J\u0019\u0010(\u001a\u00020\r2\u0008\u0010\'\u001a\u0004\u0018\u00010$H\u0014\u00a2\u0006\u0004\u0008(\u0010)J\u001b\u0010-\u001a\u00020\r2\u000c\u0010,\u001a\u0008\u0012\u0004\u0012\u00020+0*\u00a2\u0006\u0004\u0008-\u0010.J%\u0010-\u001a\u00020\r2\u000c\u0010,\u001a\u0008\u0012\u0004\u0012\u00020+0*2\u0008\u0008\u0002\u0010/\u001a\u00020\u0006\u00a2\u0006\u0004\u0008-\u00100J9\u00104\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\u00062\n\u0008\u0002\u00101\u001a\u0004\u0018\u00010\u000b2\n\u0008\u0002\u00102\u001a\u0004\u0018\u00010\u000b2\n\u0008\u0002\u00103\u001a\u0004\u0018\u00010\u000b\u00a2\u0006\u0004\u00084\u00105J\u000f\u00106\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u00086\u00107J\u000f\u00108\u001a\u00020\u000bH\u0002\u00a2\u0006\u0004\u00088\u00107J\u000f\u00109\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u00089\u0010\u0015J\'\u0010=\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\u00062\u0006\u0010;\u001a\u00020:2\u0006\u0010<\u001a\u00020\u000bH\u0002\u00a2\u0006\u0004\u0008=\u0010>J\u0017\u0010@\u001a\u00020\u000b2\u0006\u0010?\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008@\u0010AJ\u0017\u0010B\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u0010H\u0002\u00a2\u0006\u0004\u0008B\u0010CJ\u0017\u0010D\u001a\u00020:2\u0006\u0010\u0011\u001a\u00020\u0010H\u0002\u00a2\u0006\u0004\u0008D\u0010EJ!\u0010I\u001a\u0004\u0018\u00010H2\u0006\u0010F\u001a\u00020:2\u0006\u0010G\u001a\u00020:H\u0002\u00a2\u0006\u0004\u0008I\u0010JJ\u0017\u0010L\u001a\u00020\r2\u0006\u0010K\u001a\u00020HH\u0002\u00a2\u0006\u0004\u0008L\u0010MJ\u0017\u0010N\u001a\u00020\r2\u0006\u0010K\u001a\u00020HH\u0002\u00a2\u0006\u0004\u0008N\u0010MJ\u000f\u0010O\u001a\u00020:H\u0002\u00a2\u0006\u0004\u0008O\u0010PJ\u0017\u0010R\u001a\u00020\u00062\u0006\u0010Q\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008R\u0010SJ\'\u0010W\u001a\u00020\r2\u0006\u0010T\u001a\u00020\u00062\u0006\u0010/\u001a\u00020\u00062\u0006\u0010V\u001a\u00020UH\u0002\u00a2\u0006\u0004\u0008W\u0010XJ\u0017\u0010Y\u001a\u00020\r2\u0006\u0010/\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008Y\u0010ZJ\u001f\u0010]\u001a\u00020\r2\u0006\u0010[\u001a\u00020\u00062\u0006\u0010\\\u001a\u00020\u000bH\u0002\u00a2\u0006\u0004\u0008]\u0010^J\'\u0010a\u001a\u00020\r2\u0006\u0010_\u001a\u00020U2\u0006\u0010`\u001a\u00020\u000b2\u0006\u0010\\\u001a\u00020\u000bH\u0002\u00a2\u0006\u0004\u0008a\u0010bJ\u000f\u0010c\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u0008c\u0010\u0015J\u0017\u0010d\u001a\u00020:2\u0006\u0010_\u001a\u00020UH\u0002\u00a2\u0006\u0004\u0008d\u0010eR\u0014\u0010h\u001a\u00020f8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008D\u0010gR\u001a\u0010l\u001a\u0008\u0012\u0004\u0012\u00020j0i8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008R\u0010kR\u0016\u0010n\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00088\u0010mR\u0018\u0010r\u001a\u0004\u0018\u00010o8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008p\u0010qR\u0016\u0010s\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008=\u0010mR\u0016\u0010t\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008@\u0010mR\u0016\u0010v\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008u\u0010mR\u0016\u0010w\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008W\u0010mR\u0016\u0010x\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008L\u0010mR\u001c\u0010z\u001a\u0008\u0012\u0004\u0012\u00020:0i8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008y\u0010kR\u001c\u0010{\u001a\u0008\u0012\u0004\u0012\u00020:0i8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008a\u0010kR\u0016\u0010}\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008|\u00109R\u0016\u0010\u007f\u001a\u00020:8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008]\u0010~R\u0018\u0010\u0081\u0001\u001a\u00020:8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u0080\u0001\u0010~R\u0018\u0010\u0083\u0001\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u0082\u0001\u00109R\u0017\u0010[\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u0084\u0001\u0010mR)\u0010\u0089\u0001\u001a\u0014\u0012\u0004\u0012\u00020+0\u0085\u0001j\t\u0012\u0004\u0012\u00020+`\u0086\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u0087\u0001\u0010\u0088\u0001R\u0018\u0010\u008b\u0001\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u008a\u0001\u0010mR\u0018\u0010\u008d\u0001\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u008c\u0001\u0010mR\u0018\u0010\u008f\u0001\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u008e\u0001\u0010mR\u0018\u0010\u0091\u0001\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u0090\u0001\u0010mR\u0018\u0010\u0093\u0001\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u0092\u0001\u0010mR!\u0010\u0099\u0001\u001a\u00030\u0094\u00018BX\u0082\u0084\u0002\u00a2\u0006\u0010\n\u0006\u0008\u0095\u0001\u0010\u0096\u0001\u001a\u0006\u0008\u0097\u0001\u0010\u0098\u0001R\u001a\u0010\u009b\u0001\u001a\u0004\u0018\u00010o8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u009a\u0001\u0010qR\u001c\u0010\u009f\u0001\u001a\u0005\u0018\u00010\u009c\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u009d\u0001\u0010\u009e\u0001R\u001a\u0010\u00a1\u0001\u001a\u0004\u0018\u00010o8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u00a0\u0001\u0010q\u00a8\u0006\u00a7\u0001"
    }
    d2 = {
        "Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;",
        "Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "",
        "defStyleAttr",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "position",
        "",
        "animatable",
        "Lzfb;",
        "selectTabWithoutNotify",
        "(ILjava/lang/Boolean;)V",
        "Landroid/view/MotionEvent;",
        "event",
        "dispatchTouchEvent",
        "(Landroid/view/MotionEvent;)Z",
        "animateAppear",
        "()V",
        "animateDisappear",
        "Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab$b;",
        "listener",
        "setOnTabSelectedListener",
        "(Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab$b;)V",
        "getSelectedPosition",
        "()I",
        "getTabCount",
        "onDetachedFromWindow",
        "onAttachedToWindow",
        "isVisible",
        "onVisibilityAggregated",
        "(Z)V",
        "getSelectPosition",
        "Landroid/os/Parcelable;",
        "onSaveInstanceState",
        "()Landroid/os/Parcelable;",
        "state",
        "onRestoreInstanceState",
        "(Landroid/os/Parcelable;)V",
        "",
        "",
        "titleArray",
        "addTabs",
        "(Ljava/util/List;)V",
        "selectPosition",
        "(Ljava/util/List;I)V",
        "isClick",
        "isAnim",
        "isReset",
        "setSelectedPosition",
        "(ILjava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V",
        "hasOverlappingRendering",
        "()Z",
        "P",
        "Z",
        "",
        "positionX",
        "allowMarquee",
        "R",
        "(IFZ)V",
        "eventPosition",
        "S",
        "(I)Z",
        "M",
        "(Landroid/view/MotionEvent;)I",
        "N",
        "(Landroid/view/MotionEvent;)F",
        "x",
        "y",
        "Landroid/view/View;",
        "L",
        "(FF)Landroid/view/View;",
        "hostView",
        "V",
        "(Landroid/view/View;)V",
        "X",
        "getCurrentIndicatorX",
        "()F",
        "width",
        "O",
        "(I)I",
        "i",
        "Landroid/widget/TextView;",
        "tabView",
        "U",
        "(IILandroid/widget/TextView;)V",
        "H",
        "(I)V",
        "mSelectedPosition",
        "useAnimation",
        "c0",
        "(IZ)V",
        "textView",
        "isSelected",
        "a0",
        "(Landroid/widget/TextView;ZZ)V",
        "C",
        "G",
        "(Landroid/widget/TextView;)F",
        "Lcom/transsion/widgetsliquid/view/OSLiquidFobItemContainer;",
        "Lcom/transsion/widgetsliquid/view/OSLiquidFobItemContainer;",
        "tabContainer",
        "",
        "Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab$c;",
        "Ljava/util/List;",
        "tabItems",
        "I",
        "touchSlop",
        "Ljv9;",
        "Q",
        "Ljv9;",
        "currentScaleAnimator",
        "mSelectedBackgroundColor",
        "mItemSpace",
        "T",
        "mHorizontalSpace",
        "originalWidth",
        "singleItemWidth",
        "W",
        "savedItemPositions",
        "savedItemPositionsP",
        "b0",
        "isDragging",
        "F",
        "dragStartX",
        "d0",
        "initialIndicatorX",
        "e0",
        "downOnCurrentItem",
        "f0",
        "Ljava/util/ArrayList;",
        "Lkotlin/collections/ArrayList;",
        "g0",
        "Ljava/util/ArrayList;",
        "mTitleArray",
        "h0",
        "mTextNormalColor",
        "i0",
        "mTextSelectedColor",
        "j0",
        "mTextSelectSize",
        "k0",
        "mTextUnSelectSize",
        "l0",
        "mSegmentTextPadding",
        "Lo97;",
        "m0",
        "Lyi5;",
        "getLinearInterpolator",
        "()Lo97;",
        "linearInterpolator",
        "n0",
        "appearAnimator",
        "Landroid/animation/AnimatorSet;",
        "o0",
        "Landroid/animation/AnimatorSet;",
        "disappearAnimatorSet",
        "p0",
        "disappearScaleAnimator",
        "q0",
        "a",
        "LiquidSearchBarSavedState",
        "b",
        "c",
        "widgetsliquid_release"
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
.field public static final q0:Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab$a;


# instance fields
.field public final N:Lcom/transsion/widgetsliquid/view/OSLiquidFobItemContainer;

.field public final O:Ljava/util/List;

.field public P:I

.field public Q:Ljv9;

.field public R:I

.field public S:I

.field public T:I

.field public U:I

.field public V:I

.field public W:Ljava/util/List;

.field public a0:Ljava/util/List;

.field public b0:Z

.field public c0:F

.field public d0:F

.field public e0:Z

.field public f0:I

.field public final g0:Ljava/util/ArrayList;

.field public h0:I

.field public i0:I

.field public j0:I

.field public k0:I

.field public l0:I

.field public final m0:Lyi5;

.field public n0:Ljv9;

.field public o0:Landroid/animation/AnimatorSet;

.field public p0:Ljv9;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->q0:Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab$a;

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

    invoke-direct/range {v1 .. v6}, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

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

    invoke-direct/range {v1 .. v6}, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 5
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->O:Ljava/util/List;

    .line 6
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->W:Ljava/util/List;

    .line 7
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->a0:Ljava/util/List;

    const/4 p3, -0x1

    .line 8
    iput p3, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->f0:I

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->g0:Ljava/util/ArrayList;

    .line 10
    sget-object v0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab$linearInterpolator$2;->INSTANCE:Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab$linearInterpolator$2;

    invoke-static {v0}, Lkotlin/b;->a(Lc74;)Lyi5;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->m0:Lyi5;

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/widgetsliquid/R$dimen;->os_space050:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->S:I

    const/4 v0, 0x3

    .line 12
    invoke-static {p1, v0}, Lolb;->h(Landroid/content/Context;I)I

    move-result v2

    iput v2, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->T:I

    .line 13
    sget v2, Lcom/transsion/widgetsliquid/R$attr;->os_opacityfill_weaker:I

    sget v3, Lcom/transsion/widgetsliquid/R$color;->os_opacityfill_weaker_hios:I

    invoke-static {p1, v2, v3}, Lolb;->m(Landroid/content/Context;II)I

    move-result v2

    iput v2, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->R:I

    .line 14
    sget-object v2, Lcom/transsion/widgetsliquid/R$styleable;->OSLiquidContainer:[I

    const-string v3, "OSLiquidContainer"

    invoke-static {v2, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 15
    invoke-virtual {p1, p2, v2, v3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    const-string v4, "obtainStyledAttributes(s\u2026efStyleAttr, defStyleRes)"

    invoke-static {v2, v4}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    sget v5, Lcom/transsion/widgetsliquid/R$styleable;->OSLiquidContainer_os_liquid_mixlevel:I

    invoke-virtual {v2, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 17
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1f

    if-lt v5, v6, :cond_0

    const/4 v5, 0x2

    .line 18
    invoke-virtual {p0, v5}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->setMixLevel(I)V

    .line 19
    :cond_0
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 20
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->P:I

    .line 21
    new-instance v2, Lcom/transsion/widgetsliquid/view/OSLiquidFobItemContainer;

    const/4 v9, 0x6

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v5, v2

    move-object v6, p1

    invoke-direct/range {v5 .. v10}, Lcom/transsion/widgetsliquid/view/OSLiquidFobItemContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 22
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v5, 0x11

    .line 23
    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 24
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v5, p3, p3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 25
    iget p3, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->R:I

    invoke-virtual {v2, p3}, Lcom/transsion/widgetsliquid/view/OSLiquidFobItemContainer;->setSelectedBackgroundColor(I)V

    .line 26
    iput-object v2, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->N:Lcom/transsion/widgetsliquid/view/OSLiquidFobItemContainer;

    .line 27
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 28
    sget-object p3, Lcom/transsion/widgetslib/view/liquid/vfx/drag/ElasticTypeConfig;->SEGMENTED_TAB:Lcom/transsion/widgetslib/view/liquid/vfx/drag/ElasticTypeConfig;

    invoke-virtual {p0, p3}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->setElasticTypeConfig(Lcom/transsion/widgetslib/view/liquid/vfx/drag/ElasticTypeConfig;)V

    .line 29
    sget-object p3, Lcom/transsion/widgetslib/view/liquid/vfx/light/LightTypeConfig;->SEGMENTED_TAB_AUTO:Lcom/transsion/widgetslib/view/liquid/vfx/light/LightTypeConfig;

    invoke-virtual {p0, p3}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->setLightTypeConfig(Lcom/transsion/widgetslib/view/liquid/vfx/light/LightTypeConfig;)V

    const p3, 0x3f866666    # 1.05f

    .line 30
    invoke-virtual {p0, p3}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->setScaleRatio(F)V

    .line 31
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->detachPressAnim()V

    .line 32
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 33
    sget-object p3, Lcom/transsion/widgetsliquid/R$styleable;->OSSegmentTab:[I

    const-string v5, "OSSegmentTab"

    invoke-static {p3, v5}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-virtual {p1, p2, p3, v3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-static {p1, v4}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/transsion/widgetsliquid/R$dimen;->os_segment_tab_text_select_size:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 36
    iput p2, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->j0:I

    .line 37
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/transsion/widgetsliquid/R$dimen;->os_segment_tab_text_unselect_size:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 38
    iput p2, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->k0:I

    .line 39
    sget p2, Lcom/transsion/widgetsliquid/R$styleable;->OSSegmentTab_segmentTabSelectTextSize:I

    .line 40
    iget p3, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->j0:I

    .line 41
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    .line 42
    iput p2, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->j0:I

    .line 43
    sget p2, Lcom/transsion/widgetsliquid/R$styleable;->OSSegmentTab_segmentTabUnSelectTextSize:I

    .line 44
    iget p3, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->k0:I

    .line 45
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    .line 46
    iput p2, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->k0:I

    .line 47
    sget p2, Lcom/transsion/widgetsliquid/R$styleable;->OSSegmentTab_segmentTabTextSelectedColor:I

    .line 48
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    .line 49
    sget v4, Lcom/transsion/widgetsliquid/R$attr;->os_text_primary:I

    .line 50
    sget v5, Lcom/transsion/widgetsliquid/R$color;->os_text_primary_hios:I

    .line 51
    invoke-static {p3, v4, v5}, Lolb;->m(Landroid/content/Context;II)I

    move-result p3

    .line 52
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->i0:I

    .line 53
    sget p2, Lcom/transsion/widgetsliquid/R$styleable;->OSSegmentTab_segmentTabTextNormalColor:I

    .line 54
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    .line 55
    sget v4, Lcom/transsion/widgetsliquid/R$attr;->os_text_tertiary:I

    .line 56
    sget v5, Lcom/transsion/widgetsliquid/R$color;->os_text_tertiary_hios:I

    .line 57
    invoke-static {p3, v4, v5}, Lolb;->m(Landroid/content/Context;II)I

    move-result p3

    .line 58
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->h0:I

    .line 59
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 60
    iput p2, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->l0:I

    .line 61
    sget p3, Lcom/transsion/widgetsliquid/R$styleable;->OSSegmentTab_segmentTabTextPadding:I

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    .line 62
    iput p2, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->l0:I

    .line 63
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 64
    invoke-virtual {v2, v0}, Lcom/transsion/widgetsliquid/view/OSLiquidFobItemContainer;->setBackgroundMarginVerticalDp(I)V

    .line 65
    invoke-virtual {v2, v3}, Lcom/transsion/widgetsliquid/view/OSLiquidFobItemContainer;->setItemSpaceDp(I)V

    .line 66
    invoke-virtual {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->Z()V

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
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static synthetic A(Landroid/widget/TextView;IF)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->b0(Landroid/widget/TextView;IF)V

    return-void
.end method

.method public static synthetic B(Landroid/view/View;Lf43;FF)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->W(Landroid/view/View;Lf43;FF)V

    return-void
.end method

.method public static final D(Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;Lf43;FF)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method

.method public static final E(Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;Lf43;FF)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method

.method public static final F(Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;Lf43;ZFF)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->setVisibility(I)V

    return-void
.end method

.method public static final I(Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;ILandroid/widget/TextView;Landroid/view/View;)V
    .locals 0

    const-string p3, "this$0"

    invoke-static {p0, p3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "$tabView"

    invoke-static {p2, p3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->P()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getX()F

    move-result p2

    const/4 p3, 0x1

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->R(IFZ)V

    :cond_0
    return-void
.end method

.method public static final J(Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;)V
    .locals 8

    const-string v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->C()V

    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->N:Lcom/transsion/widgetsliquid/view/OSLiquidFobItemContainer;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->N:Lcom/transsion/widgetsliquid/view/OSLiquidFobItemContainer;

    iget v1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->f0:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v2, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->f0:I

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->setSelectedPosition$default(Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;ILjava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static final K(Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->N:Lcom/transsion/widgetsliquid/view/OSLiquidFobItemContainer;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/transsion/widgetsliquid/view/OSLiquidFobItemContainer;->setSelectedPosition(ILjava/lang/Boolean;)V

    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->N:Lcom/transsion/widgetsliquid/view/OSLiquidFobItemContainer;

    iget p0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->f0:I

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {v0, p0, v1}, Lcom/transsion/widgetsliquid/view/OSLiquidFobItemContainer;->updateBackgroundPosition(FLjava/lang/Boolean;)V

    return-void
.end method

.method private final L(FF)Landroid/view/View;
    .locals 7

    iget-object p2, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->O:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result p2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p2, v2, :cond_1

    move p2, v2

    goto :goto_0

    :cond_1
    move p2, v1

    :goto_0
    iget v3, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->T:I

    if-eqz p2, :cond_2

    neg-int v3, v3

    :cond_2
    iget-object v4, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->O:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab$c;

    invoke-virtual {v1}, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab$c;->b()Landroid/view/View;

    move-result-object v1

    iget-object v4, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->O:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v2

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab$c;

    invoke-virtual {v2}, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab$c;->b()Landroid/view/View;

    move-result-object v2

    if-eqz p2, :cond_3

    int-to-float v4, v3

    sub-float v4, p1, v4

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v5

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_4

    goto :goto_1

    :cond_3
    int-to-float v4, v3

    sub-float v4, p1, v4

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v5

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_4

    :goto_1
    return-object v1

    :cond_4
    if-eqz p2, :cond_5

    int-to-float v1, v3

    sub-float v1, p1, v1

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    cmpg-float v1, v1, v4

    if-gez v1, :cond_6

    goto :goto_2

    :cond_5
    int-to-float v1, v3

    sub-float v1, p1, v1

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v1, v1, v4

    if-lez v1, :cond_6

    :goto_2
    return-object v2

    :cond_6
    iget-object v1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->O:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab$c;

    invoke-virtual {v2}, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab$c;->b()Landroid/view/View;

    move-result-object v2

    if-eqz p2, :cond_8

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v4

    iget v5, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->S:I

    add-int/2addr v4, v5

    :goto_3
    add-int/2addr v4, v3

    goto :goto_4

    :cond_8
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v4

    iget v5, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->S:I

    sub-int/2addr v4, v5

    goto :goto_3

    :goto_4
    if-eqz p2, :cond_9

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v5

    iget v6, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->S:I

    sub-int/2addr v5, v6

    :goto_5
    add-int/2addr v5, v3

    goto :goto_6

    :cond_9
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v5

    iget v6, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->S:I

    add-int/2addr v5, v6

    goto :goto_5

    :goto_6
    if-eqz p2, :cond_a

    int-to-float v4, v4

    cmpg-float v4, p1, v4

    if-gtz v4, :cond_7

    int-to-float v4, v5

    cmpl-float v4, p1, v4

    if-ltz v4, :cond_7

    return-object v2

    :cond_a
    int-to-float v4, v4

    cmpl-float v4, p1, v4

    if-ltz v4, :cond_7

    int-to-float v4, v5

    cmpg-float v4, p1, v4

    if-gtz v4, :cond_7

    return-object v2

    :cond_b
    return-object v0
.end method

.method private final M(Landroid/view/MotionEvent;)I
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->L(FF)Landroid/view/View;

    move-result-object p1

    const/4 v0, -0x1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->N:Lcom/transsion/widgetsliquid/view/OSLiquidFobItemContainer;

    invoke-static {p0}, Landroidx/core/view/ViewGroupKt;->getChildren(Landroid/view/ViewGroup;)Lpc9;

    move-result-object p0

    invoke-interface {p0}, Lpc9;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    if-gez v1, :cond_0

    invoke-static {}, Ly71;->u()V

    :cond_0
    check-cast v2, Landroid/view/View;

    invoke-static {v2, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method

.method private final N(Landroid/view/MotionEvent;)F
    .locals 1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->L(FF)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getX()F

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private final O(I)I
    .locals 2

    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->O:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->T:I

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr p1, v0

    iget v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->S:I

    iget-object v1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->O:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    mul-int/2addr v0, v1

    sub-int/2addr p1, v0

    int-to-float p1, p1

    iget-object p0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->O:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method public static final Q(Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->N:Lcom/transsion/widgetsliquid/view/OSLiquidFobItemContainer;

    iget p0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->f0:I

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result p0

    int-to-float p0, p0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, p0, v1}, Lcom/transsion/widgetsliquid/view/OSLiquidFobItemContainer;->updateBackgroundPosition(FLjava/lang/Boolean;)V

    return-void
.end method

.method private final S(I)Z
    .locals 0

    if-ltz p1, :cond_0

    iget-object p0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->O:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-ge p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final T(Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;ILjava/lang/Boolean;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->N:Lcom/transsion/widgetsliquid/view/OSLiquidFobItemContainer;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/widgetsliquid/view/OSLiquidFobItemContainer;->setSelectedPosition(ILjava/lang/Boolean;)V

    return-void
.end method

.method private final V(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->Q:Ljv9;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljv9;->c()V

    :cond_0
    new-instance v0, Ljv9;

    sget-object v1, Lf43;->q:Lf43$s;

    invoke-direct {v0, p0, v1}, Ljv9;-><init>(Ljava/lang/Object;Laz3;)V

    new-instance v1, Lkv9;

    invoke-direct {v1}, Lkv9;-><init>()V

    const/high16 v2, 0x437a0000    # 250.0f

    invoke-virtual {v1, v2}, Lkv9;->i(F)Lkv9;

    const v2, 0x3f7d70a4    # 0.99f

    invoke-virtual {v1, v2}, Lkv9;->g(F)Lkv9;

    const v2, 0x3f866666    # 1.05f

    invoke-virtual {v1, v2}, Lkv9;->h(F)Lkv9;

    invoke-virtual {v0, v1}, Ljv9;->z(Lkv9;)Ljv9;

    new-instance v1, Lo77;

    invoke-direct {v1, p1}, Lo77;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Lf43;->b(Lf43$r;)Lf43;

    invoke-virtual {v0}, Ljv9;->p()V

    iput-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->Q:Ljv9;

    return-void
.end method

.method public static final W(Landroid/view/View;Lf43;FF)V
    .locals 0

    const-string p1, "$hostView"

    invoke-static {p0, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method

.method private final X(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->Q:Ljv9;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljv9;->c()V

    :cond_0
    new-instance v0, Ljv9;

    sget-object v1, Lf43;->q:Lf43$s;

    invoke-direct {v0, p0, v1}, Ljv9;-><init>(Ljava/lang/Object;Laz3;)V

    new-instance v1, Lkv9;

    invoke-direct {v1}, Lkv9;-><init>()V

    const/high16 v2, 0x437a0000    # 250.0f

    invoke-virtual {v1, v2}, Lkv9;->i(F)Lkv9;

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {v1, v2}, Lkv9;->g(F)Lkv9;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Lkv9;->h(F)Lkv9;

    invoke-virtual {v0, v1}, Ljv9;->z(Lkv9;)Ljv9;

    new-instance v1, Lq77;

    invoke-direct {v1, p1}, Lq77;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Lf43;->b(Lf43$r;)Lf43;

    invoke-virtual {v0}, Ljv9;->p()V

    iput-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->Q:Ljv9;

    return-void
.end method

.method public static final Y(Landroid/view/View;Lf43;FF)V
    .locals 0

    const-string p1, "$hostView"

    invoke-static {p0, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method

.method public static synthetic addTabs$default(Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;Ljava/util/List;IILjava/lang/Object;)V
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->addTabs(Ljava/util/List;I)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: addTabs"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final b0(Landroid/widget/TextView;IF)V
    .locals 1

    const-string v0, "$textView"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextAppearance(I)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method

.method private final getCurrentIndicatorX()F
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->N:Lcom/transsion/widgetsliquid/view/OSLiquidFobItemContainer;

    invoke-virtual {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidFobItemContainer;->getCurrentBackgroundLeft$widgetsliquid_release()F

    move-result p0

    return p0
.end method

.method private final getLinearInterpolator()Lo97;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->m0:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo97;

    return-object p0
.end method

.method public static synthetic r(Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;Lf43;FF)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->E(Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;Lf43;FF)V

    return-void
.end method

.method public static synthetic s(Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;ILjava/lang/Boolean;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->T(Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;ILjava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic selectTabWithoutNotify$default(Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;ILjava/lang/Boolean;ILjava/lang/Object;)V
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->selectTabWithoutNotify(ILjava/lang/Boolean;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: selectTabWithoutNotify"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic setSelectedPosition$default(Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;ILjava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;ILjava/lang/Object;)V
    .locals 0

    if-nez p6, :cond_3

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :cond_0
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_1

    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    sget-object p4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->setSelectedPosition(ILjava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-void

    :cond_3
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: setSelectedPosition"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic t(Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;Lf43;ZFF)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->F(Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;Lf43;ZFF)V

    return-void
.end method

.method public static synthetic u(Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->J(Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;)V

    return-void
.end method

.method public static synthetic v(Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;Lf43;FF)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->D(Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;Lf43;FF)V

    return-void
.end method

.method public static synthetic w(Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->K(Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;)V

    return-void
.end method

.method public static synthetic x(Landroid/view/View;Lf43;FF)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->Y(Landroid/view/View;Lf43;FF)V

    return-void
.end method

.method public static synthetic y(Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;ILandroid/widget/TextView;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->I(Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;ILandroid/widget/TextView;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic z(Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->Q(Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;)V

    return-void
.end method


# virtual methods
.method public final C()V
    .locals 7

    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->N:Lcom/transsion/widgetsliquid/view/OSLiquidFobItemContainer;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x0

    if-ge v3, v0, :cond_2

    iget-object v5, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->N:Lcom/transsion/widgetsliquid/view/OSLiquidFobItemContainer;

    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    instance-of v6, v5, Landroid/widget/TextView;

    if-eqz v6, :cond_0

    move-object v4, v5

    check-cast v4, Landroid/widget/TextView;

    :cond_0
    if-eqz v4, :cond_1

    invoke-virtual {p0, v4}, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->G(Landroid/widget/TextView;)F

    move-result v4

    cmpg-float v5, v4, v1

    if-gez v5, :cond_1

    move v1, v4

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    float-to-int v0, v1

    iput v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->j0:I

    iput v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->k0:I

    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->N:Lcom/transsion/widgetsliquid/view/OSLiquidFobItemContainer;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    move v3, v2

    :goto_1
    if-ge v3, v0, :cond_5

    iget-object v5, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->N:Lcom/transsion/widgetsliquid/view/OSLiquidFobItemContainer;

    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    instance-of v6, v5, Landroid/widget/TextView;

    if-eqz v6, :cond_3

    check-cast v5, Landroid/widget/TextView;

    goto :goto_2

    :cond_3
    move-object v5, v4

    :goto_2
    if-eqz v5, :cond_4

    invoke-virtual {v5, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    return-void
.end method

.method public final G(Landroid/widget/TextView;)F
    .locals 10

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/widget/TextView;->getTextSize()F

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    if-gtz v1, :cond_1

    invoke-virtual {p1}, Landroid/widget/TextView;->getTextSize()F

    move-result p0

    return p0

    :cond_1
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {p1}, Landroid/widget/TextView;->getTextSize()F

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    const/4 v4, 0x1

    const/high16 v5, 0x41400000    # 12.0f

    invoke-static {v4, v5, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    const/high16 v6, 0x41700000    # 15.0f

    invoke-static {v4, v6, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v4, v6, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    int-to-float v1, v1

    cmpg-float v4, v4, v1

    if-gtz v4, :cond_2

    add-float v4, p1, p0

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    move v6, p1

    :goto_0
    cmpg-float v7, v4, v5

    if-gtz v7, :cond_4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v7

    cmpg-float v7, v7, v1

    if-gtz v7, :cond_4

    add-float v6, v4, p0

    move v9, v6

    move v6, v4

    move v4, v9

    goto :goto_0

    :cond_2
    move p0, p1

    move v4, v3

    :goto_1
    move v6, v4

    :goto_2
    sub-float v7, p0, v4

    const/high16 v8, 0x3f800000    # 1.0f

    cmpl-float v7, v7, v8

    if-lez v7, :cond_4

    add-float v7, v4, p0

    const/4 v8, 0x2

    int-to-float v8, v8

    div-float/2addr v7, v8

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v8

    cmpg-float v8, v8, v1

    if-gtz v8, :cond_3

    move v4, v7

    goto :goto_1

    :cond_3
    move p0, v7

    goto :goto_2

    :cond_4
    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p0

    cmpl-float p0, p0, v1

    if-lez p0, :cond_5

    move v6, v3

    :cond_5
    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-static {v6, v3, v5}, Lwn8;->j(FFF)F

    move-result p0

    return p0
.end method

.method public final H(I)V
    .locals 14

    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->O:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->N:Lcom/transsion/widgetsliquid/view/OSLiquidFobItemContainer;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->g0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_3

    new-instance v6, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v6, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    if-ne v2, p1, :cond_0

    move v4, v3

    goto :goto_1

    :cond_0
    move v4, v1

    :goto_1
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setSelected(Z)V

    const/16 v4, 0x11

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setGravity(I)V

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v4, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->g0:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v4, Lr77;

    invoke-direct {v4, p0, v2, v6}, Lr77;-><init>(Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;ILandroid/widget/TextView;)V

    invoke-virtual {v6, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v2, p1, v6}, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->U(IILandroid/widget/TextView;)V

    iget v4, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->l0:I

    invoke-virtual {v6, v4, v1, v4, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v1, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    if-eqz v2, :cond_1

    iget v4, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->S:I

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    goto :goto_2

    :cond_1
    iget v4, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->T:I

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    :goto_2
    add-int/lit8 v4, v0, -0x1

    if-ne v2, v4, :cond_2

    iget v4, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->T:I

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    :cond_2
    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v4, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->N:Lcom/transsion/widgetsliquid/view/OSLiquidFobItemContainer;

    invoke-virtual {v4, v6, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->O:Ljava/util/List;

    new-instance v13, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab$c;

    iget-object v4, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->g0:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "mTitleArray[i]"

    invoke-static {v4, v5}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v5, v4

    check-cast v5, Ljava/lang/String;

    const/16 v11, 0x3c

    const/4 v12, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v4, v13

    invoke-direct/range {v4 .. v12}, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab$c;-><init>(Ljava/lang/String;Landroid/view/View;FFFZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->Z()V

    if-lez v0, :cond_4

    iget-object p1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->N:Lcom/transsion/widgetsliquid/view/OSLiquidFobItemContainer;

    sub-int/2addr v0, v3

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Ls77;

    invoke-direct {v0, p0}, Ls77;-><init>(Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_4
    iget-object p1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->N:Lcom/transsion/widgetsliquid/view/OSLiquidFobItemContainer;

    new-instance v0, Lt77;

    invoke-direct {v0, p0}, Lt77;-><init>(Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final P()Z
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lolb;->r0(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public final R(IFZ)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->S(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->f0:I

    iget-object v1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->N:Lcom/transsion/widgetsliquid/view/OSLiquidFobItemContainer;

    invoke-virtual {v1, p2}, Lcom/transsion/widgetsliquid/view/OSLiquidFobItemContainer;->animateToFinalPosition(F)V

    iget-object p2, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->N:Lcom/transsion/widgetsliquid/view/OSLiquidFobItemContainer;

    invoke-virtual {p2, p1}, Lcom/transsion/widgetsliquid/view/OSLiquidFobItemContainer;->updFinalPosition(I)V

    const/4 p2, 0x1

    if-eq v0, p1, :cond_1

    iput p1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->f0:I

    invoke-virtual {p0, p1, p2}, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->c0(IZ)V

    :cond_1
    if-eqz p3, :cond_2

    iget-object p0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->O:Ljava/util/List;

    invoke-static {p0, p1}, Li81;->r0(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab$c;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab$c;->a()Landroid/widget/TextView;

    move-result-object p0

    if-eqz p0, :cond_2

    const/4 p1, 0x0

    const/4 p3, 0x0

    invoke-static {p0, p1, p2, p3}, Lgcc;->n(Landroid/widget/TextView;FILjava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public final U(IILandroid/widget/TextView;)V
    .locals 1

    const/4 v0, 0x0

    if-ne p1, p2, :cond_0

    sget p1, Lcom/transsion/widgetsliquid/R$style;->os_semibold_font:I

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setTextAppearance(I)V

    iget p1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->j0:I

    int-to-float p1, p1

    invoke-virtual {p3, v0, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {p3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    iget p2, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->i0:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    iget p0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->i0:I

    invoke-virtual {p3, p0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_0
    sget p1, Lcom/transsion/widgetsliquid/R$style;->os_regular_fontweight:I

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setTextAppearance(I)V

    iget p1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->k0:I

    int-to-float p1, p1

    invoke-virtual {p3, v0, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    iget p0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->h0:I

    invoke-virtual {p3, p0}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-void
.end method

.method public final Z()V
    .locals 4

    invoke-virtual {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->P()Z

    move-result v0

    xor-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Landroid/view/View;->setClickable(Z)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/View;->setFocusable(Z)V

    const/4 v2, 0x2

    if-eqz v0, :cond_0

    move v1, v2

    :cond_0
    invoke-virtual {p0, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    iget-object v1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->N:Lcom/transsion/widgetsliquid/view/OSLiquidFobItemContainer;

    invoke-virtual {v1, v2}, Landroid/view/View;->setImportantForAccessibility(I)V

    iget-object p0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->O:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab$c;

    invoke-virtual {v1}, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab$c;->a()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setFocusable(Z)V

    if-eqz v0, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    invoke-virtual {v1, v3}, Landroid/view/View;->setImportantForAccessibility(I)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final a0(Landroid/widget/TextView;ZZ)V
    .locals 3

    if-eqz p2, :cond_0

    iget v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->i0:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->h0:I

    :goto_0
    if-eqz p2, :cond_1

    sget v1, Lcom/transsion/widgetsliquid/R$style;->os_semibold_font:I

    goto :goto_1

    :cond_1
    sget v1, Lcom/transsion/widgetsliquid/R$style;->os_regular_fontweight:I

    :goto_1
    if-eqz p2, :cond_2

    iget p0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->j0:I

    :goto_2
    int-to-float p0, p0

    goto :goto_3

    :cond_2
    iget p0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->k0:I

    goto :goto_2

    :goto_3
    if-eqz p3, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    instance-of v2, p3, Ljava/lang/Runnable;

    if-eqz v2, :cond_3

    check-cast p3, Ljava/lang/Runnable;

    goto :goto_4

    :cond_3
    const/4 p3, 0x0

    :goto_4
    if-eqz p3, :cond_4

    invoke-virtual {p1, p3}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_4
    new-instance p3, Lk77;

    invoke-direct {p3, p1, v1, p0}, Lk77;-><init>(Landroid/widget/TextView;IF)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const-wide/16 v1, 0x64

    invoke-virtual {p1, p3, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_5

    :cond_5
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextAppearance(I)V

    const/4 p3, 0x0

    invoke-virtual {p1, p3, p0}, Landroid/widget/TextView;->setTextSize(IF)V

    :goto_5
    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setSingleLine(Z)V

    if-nez p2, :cond_6

    invoke-static {p1}, Lgcc;->r(Landroid/widget/TextView;)V

    :cond_6
    sget-object p0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setSelected(Z)V

    invoke-virtual {p1}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result p0

    if-eq p0, v0, :cond_7

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_7
    return-void
.end method

.method public final addTabs(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "titleArray"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->addTabs(Ljava/util/List;I)V

    return-void
.end method

.method public final addTabs(Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    const-string v0, "titleArray"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iput p2, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->f0:I

    .line 3
    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->g0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4
    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->g0:Ljava/util/ArrayList;

    check-cast p1, Ljava/util/Collection;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 5
    invoke-virtual {p0, p2}, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->H(I)V

    return-void
.end method

.method public final animateAppear()V
    .locals 5

    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->o0:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->p0:Ljv9;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljv9;->c()V

    :cond_1
    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->n0:Ljv9;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljv9;->c()V

    :cond_2
    const v0, 0x3f4ccccd    # 0.8f

    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleY(F)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->setVisibility(I)V

    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {p0, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->getLinearInterpolator()Lo97;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v2, Ljv9;

    sget-object v3, Lf43;->q:Lf43$s;

    invoke-direct {v2, p0, v3}, Ljv9;-><init>(Ljava/lang/Object;Laz3;)V

    new-instance v3, Lkv9;

    invoke-direct {v3}, Lkv9;-><init>()V

    const/high16 v4, 0x43c80000    # 400.0f

    invoke-virtual {v3, v4}, Lkv9;->i(F)Lkv9;

    const v4, 0x3f4a3d71    # 0.79f

    invoke-virtual {v3, v4}, Lkv9;->g(F)Lkv9;

    invoke-virtual {v3, v1}, Lkv9;->h(F)Lkv9;

    invoke-virtual {v2, v3}, Ljv9;->z(Lkv9;)Ljv9;

    new-instance v1, Lj77;

    invoke-direct {v1, p0}, Lj77;-><init>(Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;)V

    invoke-virtual {v2, v1}, Lf43;->b(Lf43$r;)Lf43;

    invoke-virtual {v2}, Ljv9;->p()V

    iput-object v2, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->n0:Ljv9;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final animateDisappear()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->n0:Ljv9;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljv9;->c()V

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->o0:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_1
    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->p0:Ljv9;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljv9;->c()V

    :cond_2
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->getLinearInterpolator()Lo97;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Ljv9;

    sget-object v2, Lf43;->q:Lf43$s;

    invoke-direct {v1, p0, v2}, Ljv9;-><init>(Ljava/lang/Object;Laz3;)V

    new-instance v2, Lkv9;

    invoke-direct {v2}, Lkv9;-><init>()V

    const/high16 v3, 0x43c80000    # 400.0f

    invoke-virtual {v2, v3}, Lkv9;->i(F)Lkv9;

    const v3, 0x3f4a3d71    # 0.79f

    invoke-virtual {v2, v3}, Lkv9;->g(F)Lkv9;

    const v3, 0x3f4ccccd    # 0.8f

    invoke-virtual {v2, v3}, Lkv9;->h(F)Lkv9;

    invoke-virtual {v1, v2}, Ljv9;->z(Lkv9;)Ljv9;

    new-instance v2, Ll77;

    invoke-direct {v2, p0}, Ll77;-><init>(Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;)V

    invoke-virtual {v1, v2}, Lf43;->b(Lf43$r;)Lf43;

    new-instance v2, Lm77;

    invoke-direct {v2, p0}, Lm77;-><init>(Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;)V

    invoke-virtual {v1, v2}, Lf43;->a(Lf43$q;)Lf43;

    iput-object v1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->p0:Ljv9;

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/animation/Animator;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    iput-object v1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->o0:Landroid/animation/AnimatorSet;

    iget-object p0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->p0:Ljv9;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljv9;->p()V

    :cond_3
    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public final c0(IZ)V
    .locals 5

    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->N:Lcom/transsion/widgetsliquid/view/OSLiquidFobItemContainer;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->N:Lcom/transsion/widgetsliquid/view/OSLiquidFobItemContainer;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const-string v4, "null cannot be cast to non-null type android.widget.TextView"

    invoke-static {v3, v4}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/widget/TextView;

    if-ne v2, p1, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    move v4, v1

    :goto_1
    invoke-virtual {p0, v3, v4, p2}, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->a0(Landroid/widget/TextView;ZZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    const-string v0, "event"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->P()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_0
    invoke-super {p0, p1}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_7

    if-eq v0, v2, :cond_4

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 v3, 0x3

    if-eq v0, v3, :cond_4

    return v2

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->c0:F

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-boolean v1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->b0:Z

    if-nez v1, :cond_2

    iget v1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->P:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    iput-boolean v2, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->b0:Z

    :cond_2
    iget-boolean v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->b0:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->d0:F

    add-float/2addr v0, p1

    iget p1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->T:I

    int-to-float p1, p1

    iget-object v1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->N:Lcom/transsion/widgetsliquid/view/OSLiquidFobItemContainer;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->O(I)I

    move-result v4

    sub-int/2addr v1, v4

    int-to-float v1, v1

    iget v4, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->T:I

    mul-int/2addr v4, v3

    int-to-float v3, v4

    sub-float/2addr v1, v3

    invoke-static {v0, p1, v1}, Lwn8;->j(FFF)F

    move-result p1

    iget-object p0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->N:Lcom/transsion/widgetsliquid/view/OSLiquidFobItemContainer;

    invoke-virtual {p0, p1}, Lcom/transsion/widgetsliquid/view/OSLiquidFobItemContainer;->animateToFinalPosition(F)V

    :cond_3
    return v2

    :cond_4
    invoke-direct {p0, p1}, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->M(Landroid/view/MotionEvent;)I

    move-result v0

    invoke-direct {p0, p1}, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->N(Landroid/view/MotionEvent;)F

    move-result p1

    invoke-direct {p0, v0}, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->S(I)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-boolean v3, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->b0:Z

    xor-int/2addr v3, v2

    invoke-virtual {p0, v0, p1, v3}, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->R(IFZ)V

    :cond_5
    iput-boolean v1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->b0:Z

    sget-boolean p1, Lolb;->P:Z

    if-nez p1, :cond_6

    invoke-direct {p0, p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->X(Landroid/view/View;)V

    :cond_6
    return v2

    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->c0:F

    iput-boolean v1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->b0:Z

    invoke-direct {p0, p1}, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->M(Landroid/view/MotionEvent;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->S(I)Z

    move-result v3

    if-eqz v3, :cond_8

    iget v3, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->f0:I

    if-ne v0, v3, :cond_8

    move v1, v2

    :cond_8
    iput-boolean v1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->e0:Z

    if-nez v1, :cond_9

    invoke-direct {p0, p1}, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->N(Landroid/view/MotionEvent;)F

    move-result p1

    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->N:Lcom/transsion/widgetsliquid/view/OSLiquidFobItemContainer;

    invoke-virtual {v0, p1}, Lcom/transsion/widgetsliquid/view/OSLiquidFobItemContainer;->animateToFinalPosition(F)V

    iput p1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->d0:F

    goto :goto_0

    :cond_9
    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->getCurrentIndicatorX()F

    move-result p1

    iput p1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->d0:F

    :goto_0
    sget-boolean p1, Lolb;->P:Z

    if-nez p1, :cond_a

    invoke-direct {p0, p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->V(Landroid/view/View;)V

    :cond_a
    return v2
.end method

.method public final getSelectPosition()I
    .locals 0

    iget p0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->f0:I

    return p0
.end method

.method public final getSelectedPosition()I
    .locals 0

    iget p0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->f0:I

    return p0
.end method

.method public final getTabCount()I
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->O:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public hasOverlappingRendering()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->Z()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->Q:Ljv9;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljv9;->c()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->Q:Ljv9;

    iget-object v1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->n0:Ljv9;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljv9;->c()V

    :cond_1
    iput-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->n0:Ljv9;

    iget-object v1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->o0:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_2
    iput-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->o0:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->p0:Ljv9;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljv9;->c()V

    :cond_3
    iput-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->p0:Ljv9;

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 9

    instance-of v0, p1, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab$LiquidSearchBarSavedState;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    :cond_0
    check-cast p1, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab$LiquidSearchBarSavedState;

    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    invoke-virtual {p1}, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab$LiquidSearchBarSavedState;->getOriginWidth()I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->U:I

    invoke-virtual {p1}, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab$LiquidSearchBarSavedState;->getSingleItemWidth()I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->V:I

    invoke-virtual {p1}, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab$LiquidSearchBarSavedState;->getItemPositions()[F

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->W:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->a0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->W:Ljava/util/List;

    invoke-virtual {p1}, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab$LiquidSearchBarSavedState;->getItemPositions()[F

    move-result-object v3

    invoke-static {v3}, Lhi;->Z0([F)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->a0:Ljava/util/List;

    invoke-virtual {p1}, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab$LiquidSearchBarSavedState;->getItemPositionsP()[F

    move-result-object v3

    invoke-static {v3}, Lhi;->Z0([F)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p1}, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab$LiquidSearchBarSavedState;->getItemPositions()[F

    move-result-object v0

    array-length v3, v0

    move v4, v1

    move v5, v4

    :goto_1
    if-ge v4, v3, :cond_5

    aget v6, v0, v4

    add-int/lit8 v6, v5, 0x1

    iget-object v7, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->O:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v5, v7, :cond_4

    invoke-virtual {p1}, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab$LiquidSearchBarSavedState;->getRtl()I

    move-result v7

    if-ne v7, v2, :cond_2

    move v7, v2

    goto :goto_2

    :cond_2
    move v7, v1

    :goto_2
    invoke-static {}, Lolb;->l0()Z

    move-result v8

    if-eq v7, v8, :cond_3

    iget-object v7, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->O:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab$c;

    invoke-virtual {p1}, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab$LiquidSearchBarSavedState;->getItemPositionsP()[F

    move-result-object v8

    aget v8, v8, v5

    invoke-virtual {v7, v8}, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab$c;->f(F)V

    invoke-virtual {p1}, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab$LiquidSearchBarSavedState;->getItemPositionsP()[F

    move-result-object v7

    invoke-virtual {p1}, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab$LiquidSearchBarSavedState;->getItemPositions()[F

    move-result-object v8

    aget v8, v8, v5

    aput v8, v7, v5

    invoke-virtual {p1}, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab$LiquidSearchBarSavedState;->getItemPositions()[F

    move-result-object v7

    iget-object v8, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->O:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab$c;

    invoke-virtual {v8}, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab$c;->c()F

    move-result v8

    aput v8, v7, v5

    goto :goto_3

    :cond_3
    iget-object v7, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->O:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab$c;

    invoke-virtual {p1}, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab$LiquidSearchBarSavedState;->getItemPositions()[F

    move-result-object v8

    aget v8, v8, v5

    invoke-virtual {v7, v8}, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab$c;->f(F)V

    :goto_3
    iget-object v7, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->O:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab$c;

    invoke-static {}, Lolb;->l0()Z

    move-result v8

    invoke-virtual {v7, v8}, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab$c;->d(Z)V

    iget-object v7, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->O:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab$c;

    invoke-virtual {p1}, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab$LiquidSearchBarSavedState;->getTextHeight()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v5, v7}, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab$c;->e(F)V

    :cond_4
    add-int/lit8 v4, v4, 0x1

    move v5, v6

    goto/16 :goto_1

    :cond_5
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab$LiquidSearchBarSavedState;

    invoke-direct {v1, v0}, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab$LiquidSearchBarSavedState;-><init>(Landroid/os/Parcelable;)V

    iget v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->f0:I

    invoke-virtual {v1, v0}, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab$LiquidSearchBarSavedState;->setMSelectedPosition(I)V

    iget v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->U:I

    invoke-virtual {v1, v0}, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab$LiquidSearchBarSavedState;->setOriginWidth(I)V

    iget v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->V:I

    invoke-virtual {v1, v0}, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab$LiquidSearchBarSavedState;->setSingleItemWidth(I)V

    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->W:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Li81;->Y0(Ljava/util/Collection;)[F

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab$LiquidSearchBarSavedState;->setItemPositions([F)V

    iget-object p0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->a0:Ljava/util/List;

    check-cast p0, Ljava/util/Collection;

    invoke-static {p0}, Li81;->Y0(Ljava/util/Collection;)[F

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab$LiquidSearchBarSavedState;->setItemPositionsP([F)V

    invoke-static {}, Lolb;->l0()Z

    move-result p0

    invoke-virtual {v1, p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab$LiquidSearchBarSavedState;->setRtl(I)V

    return-object v1
.end method

.method public onVisibilityAggregated(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->onVisibilityAggregated(Z)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->N:Lcom/transsion/widgetsliquid/view/OSLiquidFobItemContainer;

    new-instance v0, Ln77;

    invoke-direct {v0, p0}, Ln77;-><init>(Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final selectTabWithoutNotify(ILjava/lang/Boolean;)V
    .locals 2

    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->O:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->N:Lcom/transsion/widgetsliquid/view/OSLiquidFobItemContainer;

    new-instance v1, Lp77;

    invoke-direct {v1, p0, p1, p2}, Lp77;-><init>(Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;ILjava/lang/Boolean;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public final setOnTabSelectedListener(Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab$b;)V
    .locals 0

    const-string p0, "listener"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final setSelectedPosition(ILjava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 0

    iget p2, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->f0:I

    if-ne p2, p1, :cond_0

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p4, p2}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p3, p2}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->c0(IZ)V

    iput p1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->f0:I

    return-void
.end method
