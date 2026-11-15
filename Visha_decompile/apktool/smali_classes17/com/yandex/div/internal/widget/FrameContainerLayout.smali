.class public Lcom/yandex/div/internal/widget/FrameContainerLayout;
.super Lcom/yandex/div/internal/widget/DivViewGroup;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/div/core/widget/AspectView;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008*\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010#\n\u0002\u0008\u0008\n\u0002\u0010\u0007\n\u0002\u0008\u0017\u0008\u0016\u0018\u00002\u00020\u00012\u00020\u0002B\'\u0008\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\t\u0010\nJ\'\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J#\u0010\u0016\u001a\u00020\u0013*\u00020\u00122\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\u0013H\u0002\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u001b\u0010\u0018\u001a\u00020\u0013*\u00020\u00122\u0006\u0010\u0014\u001a\u00020\u0013H\u0002\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u001b\u0010\u001a\u001a\u00020\u0013*\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u0013H\u0002\u00a2\u0006\u0004\u0008\u001a\u0010\u0019J\u0017\u0010\u001c\u001a\u00020\u000f2\u0006\u0010\u001b\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u0017\u0010\u001f\u001a\u00020\u000f2\u0006\u0010\u001e\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\u001f\u0010\u001dJ\u001f\u0010 \u001a\u00020\u000f2\u0006\u0010\r\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008 \u0010!J\'\u0010\"\u001a\u00020\u000f2\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\u0013H\u0002\u00a2\u0006\u0004\u0008\"\u0010#J\u0017\u0010$\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008$\u0010%J\'\u0010\'\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u00072\u0006\u0010&\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\'\u0010(J\u0017\u0010)\u001a\u00020\u00132\u0006\u0010\r\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008)\u0010*J\u001f\u0010+\u001a\u00020\u000f2\u0006\u0010\r\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008+\u0010!J\'\u0010,\u001a\u00020\u000f2\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008,\u0010\u0011J\'\u0010-\u001a\u00020\u000f2\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008-\u0010\u0011J/\u00102\u001a\u00020\u000f2\u0006\u0010.\u001a\u00020\u00072\u0006\u0010/\u001a\u00020\u00072\u0006\u00100\u001a\u00020\u00072\u0006\u00101\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u00082\u00103J\u0017\u00105\u001a\u00020\u000f2\u0006\u00104\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u00085\u0010\u001dJ\u001f\u00106\u001a\u00020\u000f2\u0006\u0010\r\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u0007H\u0014\u00a2\u0006\u0004\u00086\u0010!J7\u0010:\u001a\u00020\u000f2\u0006\u00107\u001a\u00020\u00132\u0006\u0010,\u001a\u00020\u00072\u0006\u00108\u001a\u00020\u00072\u0006\u00109\u001a\u00020\u00072\u0006\u0010\"\u001a\u00020\u0007H\u0014\u00a2\u0006\u0004\u0008:\u0010;J\u000f\u0010<\u001a\u00020\u0013H\u0016\u00a2\u0006\u0004\u0008<\u0010=J\u000f\u0010?\u001a\u00020>H\u0014\u00a2\u0006\u0004\u0008?\u0010@R\u0014\u0010C\u001a\u00020A8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\'\u0010BR(\u0010J\u001a\u00020\u00138\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0018\n\u0004\u0008$\u0010D\u0012\u0004\u0008H\u0010I\u001a\u0004\u0008E\u0010=\"\u0004\u0008F\u0010GR\u001a\u0010M\u001a\u0008\u0012\u0004\u0012\u00020\u000b0K8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008)\u0010LR\u001a\u0010N\u001a\u0008\u0012\u0004\u0012\u00020\u000b0K8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00082\u0010LR\u001a\u0010O\u001a\u0008\u0012\u0004\u0012\u00020\u000b0K8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010LR\u0016\u0010Q\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010PR\u0016\u0010R\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010PR\u0016\u0010S\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010PR+\u0010[\u001a\u00020T2\u0006\u0010U\u001a\u00020T8V@VX\u0096\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008-\u0010V\u001a\u0004\u0008W\u0010X\"\u0004\u0008Y\u0010ZR\u0014\u0010^\u001a\u00020\u00078BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\\\u0010]R\u0014\u0010`\u001a\u00020\u00078BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008_\u0010]R\u0014\u0010b\u001a\u00020\u00078BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008a\u0010]R\u0014\u0010d\u001a\u00020\u00078BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008c\u0010]R\u0014\u0010f\u001a\u00020\u00138BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008e\u0010=R\u0014\u0010h\u001a\u00020\u00078BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008g\u0010]R\u0014\u0010j\u001a\u00020\u00078BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008i\u0010]\u00a8\u0006k"
    }
    d2 = {
        "Lcom/yandex/div/internal/widget/FrameContainerLayout;",
        "Lcom/yandex/div/internal/widget/DivViewGroup;",
        "Lcom/yandex/div/core/widget/AspectView;",
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
        "widthMeasureSpec",
        "heightMeasureSpec",
        "Lzfb;",
        "j",
        "(Landroid/view/View;II)V",
        "Lcom/yandex/div/internal/widget/DivLayoutParams;",
        "",
        "exactWidth",
        "exactHeight",
        "h",
        "(Lcom/yandex/div/internal/widget/DivLayoutParams;ZZ)Z",
        "i",
        "(Lcom/yandex/div/internal/widget/DivLayoutParams;Z)Z",
        "g",
        "childWidth",
        "o",
        "(I)V",
        "childHeight",
        "n",
        "a",
        "(II)V",
        "b",
        "(Landroid/view/View;ZZ)V",
        "d",
        "(I)I",
        "widthSize",
        "c",
        "(III)I",
        "e",
        "(I)Z",
        "m",
        "l",
        "k",
        "left",
        "top",
        "right",
        "bottom",
        "f",
        "(IIII)V",
        "gravity",
        "setForegroundGravity",
        "onMeasure",
        "changed",
        "t",
        "r",
        "onLayout",
        "(ZIIII)V",
        "shouldDelayChildPressedState",
        "()Z",
        "Landroid/view/ViewGroup$LayoutParams;",
        "generateDefaultLayoutParams",
        "()Landroid/view/ViewGroup$LayoutParams;",
        "Landroid/graphics/Rect;",
        "Landroid/graphics/Rect;",
        "foregroundPadding",
        "Z",
        "getMeasureAllChildren",
        "setMeasureAllChildren",
        "(Z)V",
        "getMeasureAllChildren$annotations",
        "()V",
        "measureAllChildren",
        "",
        "Ljava/util/Set;",
        "measuredMatchParentChildren",
        "skippedMatchParentChildren",
        "matchParentChildren",
        "I",
        "maxWidth",
        "maxHeight",
        "childState",
        "",
        "<set-?>",
        "Lgo8;",
        "getAspectRatio",
        "()F",
        "setAspectRatio",
        "(F)V",
        "aspectRatio",
        "getPaddingLeftWithForeground",
        "()I",
        "paddingLeftWithForeground",
        "getPaddingRightWithForeground",
        "paddingRightWithForeground",
        "getPaddingTopWithForeground",
        "paddingTopWithForeground",
        "getPaddingBottomWithForeground",
        "paddingBottomWithForeground",
        "getUseAspect",
        "useAspect",
        "getHorizontalPadding",
        "horizontalPadding",
        "getVerticalPadding",
        "verticalPadding",
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
.field public static final synthetic l:[Laf5;


# instance fields
.field public final c:Landroid/graphics/Rect;

.field public d:Z

.field public final e:Ljava/util/Set;

.field public final f:Ljava/util/Set;

.field public final g:Ljava/util/Set;

.field public h:I

.field public i:I

.field public j:I

.field public final k:Lgo8;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v1, "getAspectRatio()F"

    const/4 v2, 0x0

    const-class v3, Lcom/yandex/div/internal/widget/FrameContainerLayout;

    const-string v4, "aspectRatio"

    invoke-direct {v0, v3, v4, v1, v2}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v0}, Lxq8;->f(Lkotlin/jvm/internal/MutablePropertyReference1;)Lxe5;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Laf5;

    aput-object v0, v1, v2

    sput-object v1, Lcom/yandex/div/internal/widget/FrameContainerLayout;->l:[Laf5;

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

    invoke-direct/range {v1 .. v6}, Lcom/yandex/div/internal/widget/FrameContainerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

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

    invoke-direct/range {v1 .. v6}, Lcom/yandex/div/internal/widget/FrameContainerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, p1, p2, p3}, Lcom/yandex/div/internal/widget/DivViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 5
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/yandex/div/internal/widget/FrameContainerLayout;->c:Landroid/graphics/Rect;

    .line 6
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lcom/yandex/div/internal/widget/FrameContainerLayout;->e:Ljava/util/Set;

    .line 7
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lcom/yandex/div/internal/widget/FrameContainerLayout;->f:Ljava/util/Set;

    .line 8
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lcom/yandex/div/internal/widget/FrameContainerLayout;->g:Ljava/util/Set;

    .line 9
    sget-object p1, Lcom/yandex/div/core/widget/AspectView;->x6:Lcom/yandex/div/core/widget/AspectView$Companion;

    invoke-virtual {p1}, Lcom/yandex/div/core/widget/AspectView$Companion;->a()Lgo8;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/div/internal/widget/FrameContainerLayout;->k:Lgo8;

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
    invoke-direct {p0, p1, p2, p3}, Lcom/yandex/div/internal/widget/FrameContainerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private final getHorizontalPadding()I
    .locals 1

    invoke-direct {p0}, Lcom/yandex/div/internal/widget/FrameContainerLayout;->getPaddingLeftWithForeground()I

    move-result v0

    invoke-direct {p0}, Lcom/yandex/div/internal/widget/FrameContainerLayout;->getPaddingRightWithForeground()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public static synthetic getMeasureAllChildren$annotations()V
    .locals 0

    return-void
.end method

.method private final getPaddingBottomWithForeground()I
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    iget-object p0, p0, Lcom/yandex/div/internal/widget/FrameContainerLayout;->c:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method private final getPaddingLeftWithForeground()I
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    iget-object p0, p0, Lcom/yandex/div/internal/widget/FrameContainerLayout;->c:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->left:I

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method private final getPaddingRightWithForeground()I
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    iget-object p0, p0, Lcom/yandex/div/internal/widget/FrameContainerLayout;->c:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->right:I

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method private final getPaddingTopWithForeground()I
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    iget-object p0, p0, Lcom/yandex/div/internal/widget/FrameContainerLayout;->c:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->top:I

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method private final getUseAspect()Z
    .locals 1

    invoke-virtual {p0}, Lcom/yandex/div/internal/widget/FrameContainerLayout;->getAspectRatio()F

    move-result p0

    const/4 v0, 0x0

    cmpg-float p0, p0, v0

    const/4 v0, 0x1

    if-nez p0, :cond_0

    move p0, v0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    xor-int/2addr p0, v0

    return p0
.end method

.method private final getVerticalPadding()I
    .locals 1

    invoke-direct {p0}, Lcom/yandex/div/internal/widget/FrameContainerLayout;->getPaddingTopWithForeground()I

    move-result v0

    invoke-direct {p0}, Lcom/yandex/div/internal/widget/FrameContainerLayout;->getPaddingBottomWithForeground()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method


# virtual methods
.method public final a(II)V
    .locals 11

    iget-object v0, p0, Lcom/yandex/div/internal/widget/FrameContainerLayout;->g:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lodc;->e(I)Z

    move-result v0

    invoke-static {p2}, Lodc;->e(I)Z

    move-result v1

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_2

    iget v4, p0, Lcom/yandex/div/internal/widget/FrameContainerLayout;->h:I

    if-nez v4, :cond_2

    move v4, v3

    goto :goto_0

    :cond_2
    move v4, v2

    :goto_0
    if-nez v1, :cond_3

    invoke-direct {p0}, Lcom/yandex/div/internal/widget/FrameContainerLayout;->getUseAspect()Z

    move-result v5

    if-nez v5, :cond_3

    iget v5, p0, Lcom/yandex/div/internal/widget/FrameContainerLayout;->i:I

    if-nez v5, :cond_3

    move v2, v3

    :cond_3
    if-nez v4, :cond_5

    if-nez v2, :cond_5

    iget-object p1, p0, Lcom/yandex/div/internal/widget/FrameContainerLayout;->g:Ljava/util/Set;

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    invoke-virtual {p0, p2, v0, v1}, Lcom/yandex/div/internal/widget/FrameContainerLayout;->b(Landroid/view/View;ZZ)V

    goto :goto_1

    :cond_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/yandex/div/internal/widget/FrameContainerLayout;->g:Ljava/util/Set;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    const-string v5, "null cannot be cast to non-null type com.yandex.div.internal.widget.DivLayoutParams"

    invoke-static {v3, v5}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lcom/yandex/div/internal/widget/DivLayoutParams;

    iget-object v5, p0, Lcom/yandex/div/internal/widget/FrameContainerLayout;->f:Ljava/util/Set;

    invoke-interface {v5, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    iget v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_7

    if-nez v4, :cond_8

    :cond_7
    iget v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    if-ne v5, v6, :cond_9

    if-eqz v2, :cond_9

    :cond_8
    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v5, p0

    move-object v6, v1

    move v7, p1

    move v9, p2

    invoke-virtual/range {v5 .. v10}, Lcom/yandex/div/internal/widget/DivViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    iget v5, p0, Lcom/yandex/div/internal/widget/FrameContainerLayout;->j:I

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredState()I

    move-result v6

    invoke-static {v5, v6}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v5

    iput v5, p0, Lcom/yandex/div/internal/widget/FrameContainerLayout;->j:I

    iget-object v5, p0, Lcom/yandex/div/internal/widget/FrameContainerLayout;->f:Ljava/util/Set;

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5, v1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    :cond_9
    if-eqz v4, :cond_a

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {v3}, Lcom/yandex/div/internal/widget/DivLayoutParams;->c()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {p0, v5}, Lcom/yandex/div/internal/widget/FrameContainerLayout;->o(I)V

    :cond_a
    if-eqz v2, :cond_6

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {v3}, Lcom/yandex/div/internal/widget/DivLayoutParams;->h()I

    move-result v3

    add-int/2addr v1, v3

    invoke-virtual {p0, v1}, Lcom/yandex/div/internal/widget/FrameContainerLayout;->n(I)V

    goto :goto_2

    :cond_b
    return-void
.end method

.method public final b(Landroid/view/View;ZZ)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type com.yandex.div.internal.widget.DivLayoutParams"

    invoke-static {p1, v0}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/yandex/div/internal/widget/DivLayoutParams;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div/internal/widget/FrameContainerLayout;->i(Lcom/yandex/div/internal/widget/DivLayoutParams;Z)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/yandex/div/internal/widget/DivLayoutParams;->c()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/yandex/div/internal/widget/FrameContainerLayout;->o(I)V

    :cond_0
    invoke-virtual {p0, p1, p3}, Lcom/yandex/div/internal/widget/FrameContainerLayout;->g(Lcom/yandex/div/internal/widget/DivLayoutParams;Z)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/yandex/div/internal/widget/DivLayoutParams;->h()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/yandex/div/internal/widget/FrameContainerLayout;->n(I)V

    :cond_1
    return-void
.end method

.method public final c(III)I
    .locals 0

    invoke-static {p2}, Lodc;->e(I)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/yandex/div/internal/widget/FrameContainerLayout;->e(I)Z

    move-result p1

    if-eqz p1, :cond_1

    int-to-float p1, p3

    invoke-virtual {p0}, Lcom/yandex/div/internal/widget/FrameContainerLayout;->getAspectRatio()F

    move-result p0

    div-float/2addr p1, p0

    invoke-static {p1}, Ls86;->c(F)I

    move-result p0

    return p0

    :cond_1
    iget p1, p0, Lcom/yandex/div/internal/widget/FrameContainerLayout;->i:I

    invoke-direct {p0}, Lcom/yandex/div/internal/widget/FrameContainerLayout;->getVerticalPadding()I

    move-result p2

    add-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumHeight()I

    move-result p2

    invoke-static {p1, p2}, Lwn8;->d(II)I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result p0

    invoke-static {p1, p0}, Lwn8;->d(II)I

    move-result p1

    :cond_2
    return p1
.end method

.method public final d(I)I
    .locals 1

    invoke-static {p1}, Lodc;->e(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget p1, p0, Lcom/yandex/div/internal/widget/FrameContainerLayout;->h:I

    invoke-direct {p0}, Lcom/yandex/div/internal/widget/FrameContainerLayout;->getHorizontalPadding()I

    move-result v0

    add-int/2addr p1, v0

    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {p1, v0}, Lwn8;->d(II)I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result p0

    invoke-static {p1, p0}, Lwn8;->d(II)I

    move-result p1

    :cond_1
    return p1
.end method

.method public final e(I)Z
    .locals 0

    invoke-direct {p0}, Lcom/yandex/div/internal/widget/FrameContainerLayout;->getUseAspect()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p1}, Lodc;->e(I)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final f(IIII)V
    .locals 9

    invoke-direct {p0}, Lcom/yandex/div/internal/widget/FrameContainerLayout;->getPaddingLeftWithForeground()I

    move-result v0

    sub-int/2addr p3, p1

    invoke-direct {p0}, Lcom/yandex/div/internal/widget/FrameContainerLayout;->getPaddingRightWithForeground()I

    move-result p1

    sub-int/2addr p3, p1

    invoke-direct {p0}, Lcom/yandex/div/internal/widget/FrameContainerLayout;->getPaddingTopWithForeground()I

    move-result p1

    sub-int/2addr p4, p2

    invoke-direct {p0}, Lcom/yandex/div/internal/widget/FrameContainerLayout;->getPaddingBottomWithForeground()I

    move-result p2

    sub-int/2addr p4, p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_5

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_4

    const-string v3, "child"

    invoke-static {v2, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    const-string v4, "null cannot be cast to non-null type com.yandex.div.internal.widget.DivLayoutParams"

    invoke-static {v3, v4}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lcom/yandex/div/internal/widget/DivLayoutParams;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    invoke-virtual {v3}, Lcom/yandex/div/internal/widget/DivLayoutParams;->b()I

    move-result v6

    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v7

    invoke-static {v6, v7}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v6

    invoke-virtual {v3}, Lcom/yandex/div/internal/widget/DivLayoutParams;->b()I

    move-result v7

    and-int/lit8 v7, v7, 0x70

    and-int/lit8 v6, v6, 0x7

    const/4 v8, 0x1

    if-eq v6, v8, :cond_1

    const/4 v8, 0x5

    if-eq v6, v8, :cond_0

    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    :goto_1
    add-int/2addr v6, v0

    goto :goto_2

    :cond_0
    sub-int v6, p3, v4

    iget v8, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr v6, v8

    goto :goto_2

    :cond_1
    sub-int v6, p3, v0

    sub-int/2addr v6, v4

    iget v8, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v6, v8

    iget v8, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr v6, v8

    div-int/lit8 v6, v6, 0x2

    goto :goto_1

    :goto_2
    const/16 v8, 0x10

    if-eq v7, v8, :cond_3

    const/16 v8, 0x50

    if-eq v7, v8, :cond_2

    iget v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v3, p1

    goto :goto_3

    :cond_2
    sub-int v7, p4, v5

    iget v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int v3, v7, v3

    goto :goto_3

    :cond_3
    sub-int v7, p4, p1

    sub-int/2addr v7, v5

    iget v8, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v7, v8

    iget v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v7, v3

    div-int/lit8 v7, v7, 0x2

    add-int v3, p1, v7

    :goto_3
    add-int/2addr v4, v6

    add-int/2addr v5, v3

    invoke-virtual {v2, v6, v3, v4, v5}, Landroid/view/View;->layout(IIII)V

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method public final g(Lcom/yandex/div/internal/widget/DivLayoutParams;Z)Z
    .locals 0

    if-nez p2, :cond_0

    iget p0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const/4 p1, -0x1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    new-instance p0, Lcom/yandex/div/internal/widget/DivLayoutParams;

    const/4 v0, -0x1

    invoke-direct {p0, v0, v0}, Lcom/yandex/div/internal/widget/DivLayoutParams;-><init>(II)V

    return-object p0
.end method

.method public getAspectRatio()F
    .locals 3

    iget-object v0, p0, Lcom/yandex/div/internal/widget/FrameContainerLayout;->k:Lgo8;

    sget-object v1, Lcom/yandex/div/internal/widget/FrameContainerLayout;->l:[Laf5;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lgo8;->getValue(Ljava/lang/Object;Laf5;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    return p0
.end method

.method public final getMeasureAllChildren()Z
    .locals 0

    iget-boolean p0, p0, Lcom/yandex/div/internal/widget/FrameContainerLayout;->d:Z

    return p0
.end method

.method public final h(Lcom/yandex/div/internal/widget/DivLayoutParams;ZZ)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div/internal/widget/FrameContainerLayout;->i(Lcom/yandex/div/internal/widget/DivLayoutParams;Z)Z

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {p0, p1, p3}, Lcom/yandex/div/internal/widget/FrameContainerLayout;->g(Lcom/yandex/div/internal/widget/DivLayoutParams;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final i(Lcom/yandex/div/internal/widget/DivLayoutParams;Z)Z
    .locals 0

    if-nez p2, :cond_0

    iget p0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    const/4 p1, -0x1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final j(Landroid/view/View;II)V
    .locals 11

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.yandex.div.internal.widget.DivLayoutParams"

    invoke-static {v0, v1}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/yandex/div/internal/widget/DivLayoutParams;

    invoke-static {p2}, Lodc;->e(I)Z

    move-result v1

    invoke-static {p3}, Lodc;->e(I)Z

    move-result v2

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, -0x1

    if-ne v3, v6, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    iget v7, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    if-ne v7, v6, :cond_1

    move v4, v5

    :cond_1
    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    if-eqz v2, :cond_3

    if-nez v3, :cond_7

    goto :goto_2

    :cond_3
    if-eqz v1, :cond_4

    if-nez v4, :cond_7

    goto :goto_2

    :cond_4
    if-nez v3, :cond_5

    goto :goto_2

    :cond_5
    if-eqz v4, :cond_6

    goto :goto_1

    :cond_6
    const/4 v5, -0x3

    if-ne v7, v5, :cond_9

    invoke-direct {p0}, Lcom/yandex/div/internal/widget/FrameContainerLayout;->getUseAspect()Z

    move-result v5

    if-nez v5, :cond_7

    goto :goto_2

    :cond_7
    :goto_1
    invoke-virtual {p0, v0, v1, v2}, Lcom/yandex/div/internal/widget/FrameContainerLayout;->h(Lcom/yandex/div/internal/widget/DivLayoutParams;ZZ)Z

    move-result p2

    if-eqz p2, :cond_8

    iget-object p0, p0, Lcom/yandex/div/internal/widget/FrameContainerLayout;->f:Ljava/util/Set;

    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_8
    return-void

    :cond_9
    :goto_2
    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v5, p0

    move-object v6, p1

    move v7, p2

    move v9, p3

    invoke-virtual/range {v5 .. v10}, Lcom/yandex/div/internal/widget/DivViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    iget p2, p0, Lcom/yandex/div/internal/widget/FrameContainerLayout;->j:I

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredState()I

    move-result p3

    invoke-static {p2, p3}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result p2

    iput p2, p0, Lcom/yandex/div/internal/widget/FrameContainerLayout;->j:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/yandex/div/internal/widget/FrameContainerLayout;->h(Lcom/yandex/div/internal/widget/DivLayoutParams;ZZ)Z

    move-result p2

    if-eqz p2, :cond_a

    iget-object p2, p0, Lcom/yandex/div/internal/widget/FrameContainerLayout;->e:Ljava/util/Set;

    check-cast p2, Ljava/util/Collection;

    invoke-interface {p2, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_a
    if-nez v1, :cond_b

    if-nez v3, :cond_b

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {v0}, Lcom/yandex/div/internal/widget/DivLayoutParams;->c()I

    move-result p3

    add-int/2addr p2, p3

    invoke-virtual {p0, p2}, Lcom/yandex/div/internal/widget/FrameContainerLayout;->o(I)V

    :cond_b
    if-nez v2, :cond_c

    if-nez v4, :cond_c

    invoke-direct {p0}, Lcom/yandex/div/internal/widget/FrameContainerLayout;->getUseAspect()Z

    move-result p2

    if-nez p2, :cond_c

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    invoke-virtual {v0}, Lcom/yandex/div/internal/widget/DivLayoutParams;->h()I

    move-result p2

    add-int/2addr p1, p2

    invoke-virtual {p0, p1}, Lcom/yandex/div/internal/widget/FrameContainerLayout;->n(I)V

    :cond_c
    return-void
.end method

.method public final k(Landroid/view/View;II)V
    .locals 12

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.yandex.div.internal.widget.DivLayoutParams"

    invoke-static {v0, v1}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/yandex/div/internal/widget/DivLayoutParams;

    invoke-direct {p0}, Lcom/yandex/div/internal/widget/FrameContainerLayout;->getHorizontalPadding()I

    move-result v1

    invoke-virtual {v0}, Lcom/yandex/div/internal/widget/DivLayoutParams;->c()I

    move-result v2

    add-int v5, v1, v2

    invoke-direct {p0}, Lcom/yandex/div/internal/widget/FrameContainerLayout;->getVerticalPadding()I

    move-result v1

    invoke-virtual {v0}, Lcom/yandex/div/internal/widget/DivLayoutParams;->h()I

    move-result v2

    add-int/2addr v1, v2

    iget v6, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    const/4 v2, 0x0

    const/4 v9, -0x1

    if-ne v6, v9, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    sub-int/2addr p2, v5

    invoke-static {p2, v2}, Lwn8;->d(II)I

    move-result p2

    invoke-static {p2}, Lodc;->h(I)I

    move-result p2

    goto :goto_0

    :cond_0
    sget-object v3, Lcom/yandex/div/internal/widget/DivViewGroup;->Companion:Lcom/yandex/div/internal/widget/DivViewGroup$a;

    invoke-virtual {p1}, Landroid/view/View;->getMinimumWidth()I

    move-result v7

    invoke-virtual {v0}, Lcom/yandex/div/internal/widget/DivLayoutParams;->f()I

    move-result v8

    move v4, p2

    invoke-virtual/range {v3 .. v8}, Lcom/yandex/div/internal/widget/DivViewGroup$a;->a(IIIII)I

    move-result p2

    :goto_0
    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    if-ne v3, v9, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    sub-int/2addr p3, v1

    invoke-static {p3, v2}, Lwn8;->d(II)I

    move-result p3

    invoke-static {p3}, Lodc;->h(I)I

    move-result p3

    goto :goto_1

    :cond_1
    sget-object v6, Lcom/yandex/div/internal/widget/DivViewGroup;->Companion:Lcom/yandex/div/internal/widget/DivViewGroup$a;

    invoke-virtual {p1}, Landroid/view/View;->getMinimumHeight()I

    move-result v10

    invoke-virtual {v0}, Lcom/yandex/div/internal/widget/DivLayoutParams;->e()I

    move-result v11

    move v7, p3

    move v8, v1

    move v9, v3

    invoke-virtual/range {v6 .. v11}, Lcom/yandex/div/internal/widget/DivViewGroup$a;->a(IIIII)I

    move-result p3

    :goto_1
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    iget-object p2, p0, Lcom/yandex/div/internal/widget/FrameContainerLayout;->f:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget p2, p0, Lcom/yandex/div/internal/widget/FrameContainerLayout;->j:I

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredState()I

    move-result p1

    invoke-static {p2, p1}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result p1

    iput p1, p0, Lcom/yandex/div/internal/widget/FrameContainerLayout;->j:I

    :cond_2
    return-void
.end method

.method public final l(Landroid/view/View;II)V
    .locals 8

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.yandex.div.internal.widget.DivLayoutParams"

    invoke-static {v0, v1}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/yandex/div/internal/widget/DivLayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const/4 v1, -0x3

    if-ne v0, v1, :cond_0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v6, p3

    invoke-virtual/range {v2 .. v7}, Lcom/yandex/div/internal/widget/DivViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    iget-object p0, p0, Lcom/yandex/div/internal/widget/FrameContainerLayout;->g:Ljava/util/Set;

    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final m(II)V
    .locals 6

    invoke-virtual {p0, p1}, Lcom/yandex/div/internal/widget/FrameContainerLayout;->e(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/yandex/div/internal/widget/FrameContainerLayout;->d:Z

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-nez v0, :cond_1

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_2

    :cond_1
    const-string v4, "child"

    invoke-static {v3, v4}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v3, p1, p2}, Lcom/yandex/div/internal/widget/FrameContainerLayout;->l(Landroid/view/View;II)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final n(I)V
    .locals 1

    iget v0, p0, Lcom/yandex/div/internal/widget/FrameContainerLayout;->i:I

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/yandex/div/internal/widget/FrameContainerLayout;->i:I

    return-void
.end method

.method public final o(I)V
    .locals 1

    iget v0, p0, Lcom/yandex/div/internal/widget/FrameContainerLayout;->h:I

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/yandex/div/internal/widget/FrameContainerLayout;->h:I

    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result p3

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result p4

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/yandex/div/internal/widget/FrameContainerLayout;->f(IIII)V

    return-void
.end method

.method public onMeasure(II)V
    .locals 6

    const/4 v0, 0x0

    iput v0, p0, Lcom/yandex/div/internal/widget/FrameContainerLayout;->h:I

    iput v0, p0, Lcom/yandex/div/internal/widget/FrameContainerLayout;->i:I

    iput v0, p0, Lcom/yandex/div/internal/widget/FrameContainerLayout;->j:I

    invoke-static {p1}, Lodc;->e(I)Z

    move-result v1

    invoke-direct {p0}, Lcom/yandex/div/internal/widget/FrameContainerLayout;->getUseAspect()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    goto :goto_0

    :cond_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p0}, Lcom/yandex/div/internal/widget/FrameContainerLayout;->getAspectRatio()F

    move-result v1

    div-float/2addr p2, v1

    invoke-static {p2}, Ls86;->c(F)I

    move-result p2

    invoke-static {p2}, Lodc;->h(I)I

    move-result p2

    :goto_0
    iget-boolean v1, p0, Lcom/yandex/div/internal/widget/FrameContainerLayout;->d:Z

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    :goto_1
    if-ge v0, v2, :cond_4

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-nez v1, :cond_2

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_3

    :cond_2
    const-string v4, "child"

    invoke-static {v3, v4}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v3, p1, p2}, Lcom/yandex/div/internal/widget/FrameContainerLayout;->j(Landroid/view/View;II)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/yandex/div/internal/widget/FrameContainerLayout;->g:Ljava/util/Set;

    check-cast v0, Ljava/util/Collection;

    iget-object v1, p0, Lcom/yandex/div/internal/widget/FrameContainerLayout;->e:Ljava/util/Set;

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v0, v1}, Ld81;->C(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    iget-object v0, p0, Lcom/yandex/div/internal/widget/FrameContainerLayout;->g:Ljava/util/Set;

    check-cast v0, Ljava/util/Collection;

    iget-object v1, p0, Lcom/yandex/div/internal/widget/FrameContainerLayout;->f:Ljava/util/Set;

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v0, v1}, Ld81;->C(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div/internal/widget/FrameContainerLayout;->a(II)V

    invoke-virtual {p0, p1}, Lcom/yandex/div/internal/widget/FrameContainerLayout;->d(I)I

    move-result v0

    iget v1, p0, Lcom/yandex/div/internal/widget/FrameContainerLayout;->j:I

    invoke-static {v0, p1, v1}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v0

    const v1, 0xffffff

    and-int/2addr v1, v0

    invoke-virtual {p0, p1, p2, v1}, Lcom/yandex/div/internal/widget/FrameContainerLayout;->c(III)I

    move-result v1

    invoke-static {p2}, Lodc;->f(I)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {v1}, Lodc;->h(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div/internal/widget/FrameContainerLayout;->m(II)V

    :cond_5
    iget v2, p0, Lcom/yandex/div/internal/widget/FrameContainerLayout;->j:I

    shl-int/lit8 v2, v2, 0x10

    invoke-static {v1, p2, v2}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setMeasuredDimension(II)V

    iget-object v0, p0, Lcom/yandex/div/internal/widget/FrameContainerLayout;->g:Ljava/util/Set;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {p0, v1, p1, p2}, Lcom/yandex/div/internal/widget/FrameContainerLayout;->k(Landroid/view/View;II)V

    goto :goto_2

    :cond_6
    iget-object p1, p0, Lcom/yandex/div/internal/widget/FrameContainerLayout;->e:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    iget-object p1, p0, Lcom/yandex/div/internal/widget/FrameContainerLayout;->f:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    iget-object p0, p0, Lcom/yandex/div/internal/widget/FrameContainerLayout;->g:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public setAspectRatio(F)V
    .locals 3

    iget-object v0, p0, Lcom/yandex/div/internal/widget/FrameContainerLayout;->k:Lgo8;

    sget-object v1, Lcom/yandex/div/internal/widget/FrameContainerLayout;->l:[Laf5;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-interface {v0, p0, v1, p1}, Lgo8;->setValue(Ljava/lang/Object;Laf5;Ljava/lang/Object;)V

    return-void
.end method

.method public setForegroundGravity(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getForegroundGravity()I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->setForegroundGravity(I)V

    invoke-virtual {p0}, Landroid/view/View;->getForegroundGravity()I

    move-result p1

    const/16 v0, 0x77

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object v0, p0, Lcom/yandex/div/internal/widget/FrameContainerLayout;->c:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/yandex/div/internal/widget/FrameContainerLayout;->c:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public final setMeasureAllChildren(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/yandex/div/internal/widget/FrameContainerLayout;->d:Z

    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
