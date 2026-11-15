.class public final Lcom/transsion/commercialization/task/wheel/LuckyWheelView;
.super Landroid/view/View;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/commercialization/task/wheel/LuckyWheelView$IndicatorState;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00aa\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010!\n\u0002\u0008\u0003\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u0006\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u001a\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001:\u0002\u008a\u0001B\'\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u000f\u0010\r\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000cJ\u000f\u0010\u000e\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u000cJ\'\u0010\u0014\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u0011H\u0002\u00a2\u0006\u0004\u0008\u0014\u0010\u0015JG\u0010\u001f\u001a\u00020\n2\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\u00112\u0006\u0010\u0019\u001a\u00020\u00112\u0006\u0010\u001a\u001a\u00020\u00112\u0006\u0010\u001b\u001a\u00020\u00112\u0006\u0010\u001c\u001a\u00020\u00112\u0006\u0010\u001e\u001a\u00020\u001dH\u0002\u00a2\u0006\u0004\u0008\u001f\u0010 JG\u0010%\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\"\u001a\u00020!2\u0006\u0010#\u001a\u00020\u00112\u0006\u0010$\u001a\u00020\u00112\u0006\u0010\u0018\u001a\u00020\u00112\u0006\u0010\u0019\u001a\u00020\u00112\u0006\u0010\u001a\u001a\u00020\u0011H\u0002\u00a2\u0006\u0004\u0008%\u0010&J\u0013\u0010(\u001a\u00020!*\u00020\'H\u0002\u00a2\u0006\u0004\u0008(\u0010)J\u0017\u0010,\u001a\u00020\n2\u0008\u0010+\u001a\u0004\u0018\u00010*\u00a2\u0006\u0004\u0008,\u0010-J\u0015\u0010/\u001a\u00020\n2\u0006\u0010.\u001a\u00020\u001d\u00a2\u0006\u0004\u0008/\u00100J\u0015\u00102\u001a\u00020\n2\u0006\u00101\u001a\u00020\u0011\u00a2\u0006\u0004\u00082\u00103J\u001d\u00107\u001a\u00020\n2\u000e\u00106\u001a\n\u0012\u0004\u0012\u000205\u0018\u000104\u00a2\u0006\u0004\u00087\u00108J\u0017\u0010:\u001a\u00020\n2\u0008\u0008\u0001\u00109\u001a\u00020\u0006\u00a2\u0006\u0004\u0008:\u0010;J\r\u0010<\u001a\u00020\n\u00a2\u0006\u0004\u0008<\u0010\u000cJ\u0017\u0010?\u001a\u00020\n2\u0008\u0010>\u001a\u0004\u0018\u00010=\u00a2\u0006\u0004\u0008?\u0010@J\r\u0010A\u001a\u00020\n\u00a2\u0006\u0004\u0008A\u0010\u000cJ/\u0010F\u001a\u00020\n2\u0006\u0010B\u001a\u00020\u00062\u0006\u0010C\u001a\u00020\u00062\u0006\u0010D\u001a\u00020\u00062\u0006\u0010E\u001a\u00020\u0006H\u0014\u00a2\u0006\u0004\u0008F\u0010GJ\u0017\u0010H\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\u000fH\u0014\u00a2\u0006\u0004\u0008H\u0010IJ\u0015\u0010K\u001a\u00020\n2\u0006\u0010J\u001a\u00020\u0011\u00a2\u0006\u0004\u0008K\u00103J\u0015\u0010L\u001a\u00020\n2\u0006\u0010J\u001a\u00020\u0011\u00a2\u0006\u0004\u0008L\u00103J\u000f\u0010M\u001a\u00020\nH\u0014\u00a2\u0006\u0004\u0008M\u0010\u000cR\u0016\u0010Q\u001a\u00020N8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008O\u0010PR\u0018\u0010T\u001a\u0004\u0018\u00010*8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008R\u0010SR\u001a\u0010X\u001a\u0008\u0012\u0004\u0012\u0002050U8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008V\u0010WR \u0010]\u001a\u000e\u0012\u0004\u0012\u00020Z\u0012\u0004\u0012\u00020!0Y8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008[\u0010\\R\u0016\u0010$\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010^R\u001a\u0010`\u001a\u0008\u0012\u0004\u0012\u00020_0U8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010WR\u0016\u0010b\u001a\u00020\u001d8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008%\u0010aR\u0014\u0010e\u001a\u00020c8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008C\u0010dR\u0014\u0010f\u001a\u00020c8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010dR\u0014\u0010g\u001a\u00020c8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\r\u0010dR\u0014\u0010k\u001a\u00020h8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008i\u0010jR\u0014\u0010n\u001a\u00020\u00168\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008l\u0010mR\u0014\u0010o\u001a\u00020\u00168\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010mR\u0014\u0010q\u001a\u00020h8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008p\u0010jR\u0014\u0010s\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008(\u0010rR\u0014\u0010u\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008t\u0010rR\u0014\u0010w\u001a\u00020\u00118\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008v\u0010^R\u0018\u0010z\u001a\u0004\u0018\u00010!8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008x\u0010yR\u0014\u0010|\u001a\u00020\u00118\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008{\u0010^R\u0016\u0010~\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008}\u0010^R\u0017\u0010\u0080\u0001\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u007f\u0010^R\u0018\u0010\u0082\u0001\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u0081\u0001\u0010^R\u001b\u0010\u0085\u0001\u001a\u0005\u0018\u00010\u0083\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008B\u0010\u0084\u0001R\u0018\u0010\u0087\u0001\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u0086\u0001\u0010^R\u0018\u0010\u0089\u0001\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u0088\u0001\u0010^\u00a8\u0006\u008b\u0001"
    }
    d2 = {
        "Lcom/transsion/commercialization/task/wheel/LuckyWheelView;",
        "Landroid/view/View;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "",
        "defStyleAttr",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "",
        "m",
        "()V",
        "j",
        "i",
        "Landroid/graphics/Canvas;",
        "canvas",
        "",
        "cx",
        "cy",
        "f",
        "(Landroid/graphics/Canvas;FF)V",
        "Landroid/graphics/Path;",
        "path",
        "centerX",
        "centerY",
        "radius",
        "cutRadius",
        "edgeAngleDeg",
        "",
        "isStartEdge",
        "e",
        "(Landroid/graphics/Path;FFFFFZ)V",
        "Landroid/graphics/Bitmap;",
        "bitmap",
        "startAngle",
        "sweepAngle",
        "g",
        "(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;FFFFF)V",
        "Landroid/graphics/drawable/Drawable;",
        "o",
        "(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;",
        "Lcom/transsion/commercialization/task/wheel/e;",
        "listener",
        "setOnWheelStateListener",
        "(Lcom/transsion/commercialization/task/wheel/e;)V",
        "enable",
        "setDebugMidLineEnabled",
        "(Z)V",
        "speed",
        "setStartAngularSpeed",
        "(F)V",
        "",
        "Lcom/transsion/bean/lottery/LotteryUserActivityInfoPriceItemsBean;",
        "data",
        "setWheelItems",
        "(Ljava/util/List;)V",
        "resId",
        "setCenterIndicator",
        "(I)V",
        "startIndicator",
        "Lcom/transsion/bean/lottery/LotteryDrawResultEntity$LotteryResultBean;",
        "lotteryDrawResult",
        "endIndicator",
        "(Lcom/transsion/bean/lottery/LotteryDrawResultEntity$LotteryResultBean;)V",
        "resetIndicator",
        "w",
        "h",
        "oldw",
        "oldh",
        "onSizeChanged",
        "(IIII)V",
        "onDraw",
        "(Landroid/graphics/Canvas;)V",
        "ratio",
        "setImageSizeRatio",
        "setImageRadiusRatio",
        "onDetachedFromWindow",
        "Lcom/transsion/commercialization/task/wheel/LuckyWheelView$IndicatorState;",
        "a",
        "Lcom/transsion/commercialization/task/wheel/LuckyWheelView$IndicatorState;",
        "indicatorState",
        "b",
        "Lcom/transsion/commercialization/task/wheel/e;",
        "stateListener",
        "",
        "c",
        "Ljava/util/List;",
        "items",
        "",
        "",
        "d",
        "Ljava/util/Map;",
        "bitmapCache",
        "F",
        "",
        "sectorMidRadians",
        "Z",
        "showDebugMidLine",
        "Landroid/graphics/Paint;",
        "Landroid/graphics/Paint;",
        "sectorPaint",
        "sectorMidPaint",
        "indicatorMidPaint",
        "Landroid/graphics/RectF;",
        "k",
        "Landroid/graphics/RectF;",
        "wheelRect",
        "l",
        "Landroid/graphics/Path;",
        "sectorPath",
        "cutPath",
        "n",
        "quarterRect",
        "I",
        "colorLight",
        "p",
        "colorWhite",
        "q",
        "quarterRadiusRatio",
        "r",
        "Landroid/graphics/Bitmap;",
        "indicatorBitmap",
        "s",
        "indicatorSizePx",
        "t",
        "indicatorWorldAngle",
        "u",
        "startAngularSpeed",
        "v",
        "currentAngularSpeed",
        "Landroid/animation/ValueAnimator;",
        "Landroid/animation/ValueAnimator;",
        "animator",
        "x",
        "imageSizeRatio",
        "y",
        "imageRadiusRatio",
        "IndicatorState",
        "Commercialization_psRelease"
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


# instance fields
.field private a:Lcom/transsion/commercialization/task/wheel/LuckyWheelView$IndicatorState;

.field private b:Lcom/transsion/commercialization/task/wheel/e;

.field private final c:Ljava/util/List;

.field private final d:Ljava/util/Map;

.field private e:F

.field private final f:Ljava/util/List;

.field private g:Z

.field private final h:Landroid/graphics/Paint;

.field private final i:Landroid/graphics/Paint;

.field private final j:Landroid/graphics/Paint;

.field private final k:Landroid/graphics/RectF;

.field private final l:Landroid/graphics/Path;

.field private final m:Landroid/graphics/Path;

.field private final n:Landroid/graphics/RectF;

.field private final o:I

.field private final p:I

.field private final q:F

.field private r:Landroid/graphics/Bitmap;

.field private final s:F

.field private t:F

.field private u:F

.field private v:F

.field private w:Landroid/animation/ValueAnimator;

.field private x:F

.field private y:F


# direct methods
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

    invoke-direct/range {v1 .. v6}, Lcom/transsion/commercialization/task/wheel/LuckyWheelView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

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

    invoke-direct/range {v1 .. v6}, Lcom/transsion/commercialization/task/wheel/LuckyWheelView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    const/4 p3, 0x1

    .line 5
    invoke-virtual {p0, p3, p2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 6
    sget-object p2, Lcom/transsion/commercialization/task/wheel/LuckyWheelView$IndicatorState;->IDLE:Lcom/transsion/commercialization/task/wheel/LuckyWheelView$IndicatorState;

    iput-object p2, p0, Lcom/transsion/commercialization/task/wheel/LuckyWheelView;->a:Lcom/transsion/commercialization/task/wheel/LuckyWheelView$IndicatorState;

    .line 7
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/transsion/commercialization/task/wheel/LuckyWheelView;->c:Ljava/util/List;

    .line 8
    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p2, p0, Lcom/transsion/commercialization/task/wheel/LuckyWheelView;->d:Ljava/util/Map;

    .line 9
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/transsion/commercialization/task/wheel/LuckyWheelView;->f:Ljava/util/List;

    .line 10
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/transsion/commercialization/task/wheel/LuckyWheelView;->h:Landroid/graphics/Paint;

    .line 11
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, p3}, Landroid/graphics/Paint;-><init>(I)V

    const/high16 v0, -0x10000

    .line 12
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v0, 0x40400000    # 3.0f

    .line 13
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 14
    iput-object p2, p0, Lcom/transsion/commercialization/task/wheel/LuckyWheelView;->i:Landroid/graphics/Paint;

    .line 15
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, p3}, Landroid/graphics/Paint;-><init>(I)V

    const p3, -0xffff01

    .line 16
    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 17
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 18
    iput-object p2, p0, Lcom/transsion/commercialization/task/wheel/LuckyWheelView;->j:Landroid/graphics/Paint;

    .line 19
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/transsion/commercialization/task/wheel/LuckyWheelView;->k:Landroid/graphics/RectF;

    .line 20
    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iput-object p2, p0, Lcom/transsion/commercialization/task/wheel/LuckyWheelView;->l:Landroid/graphics/Path;

    .line 21
    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iput-object p2, p0, Lcom/transsion/commercialization/task/wheel/LuckyWheelView;->m:Landroid/graphics/Path;

    .line 22
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/transsion/commercialization/task/wheel/LuckyWheelView;->n:Landroid/graphics/RectF;

    .line 23
    const-string p2, "#FFF5E2"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/transsion/commercialization/task/wheel/LuckyWheelView;->o:I

    .line 24
    const-string p2, "#FFFFFF"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/transsion/commercialization/task/wheel/LuckyWheelView;->p:I

    const p2, 0x3d4ccccd    # 0.05f

    .line 25
    iput p2, p0, Lcom/transsion/commercialization/task/wheel/LuckyWheelView;->q:F

    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 p2, 0x42c00000    # 96.0f

    mul-float/2addr p1, p2

    iput p1, p0, Lcom/transsion/commercialization/task/wheel/LuckyWheelView;->s:F

    const/high16 p1, 0x41a00000    # 20.0f

    .line 27
    iput p1, p0, Lcom/transsion/commercialization/task/wheel/LuckyWheelView;->u:F

    const p1, 0x3ea8f5c3    # 0.33f

    .line 28
    iput p1, p0, Lcom/transsion/commercialization/task/wheel/LuckyWheelView;->x:F

    const p1, 0x3f266666    # 0.65f

    .line 29
    iput p1, p0, Lcom/transsion/commercialization/task/wheel/LuckyWheelView;->y:F

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
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/commercialization/task/wheel/LuckyWheelView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/commercialization/task/wheel/LuckyWheelView;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/commercialization/task/wheel/LuckyWheelView;->k(Lcom/transsion/commercialization/task/wheel/LuckyWheelView;Landroid/animation/ValueAnimator;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$getBitmapCache$p(Lcom/transsion/commercialization/task/wheel/LuckyWheelView;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/commercialization/task/wheel/LuckyWheelView;->d:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getStateListener$p(Lcom/transsion/commercialization/task/wheel/LuckyWheelView;)Lcom/transsion/commercialization/task/wheel/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/commercialization/task/wheel/LuckyWheelView;->b:Lcom/transsion/commercialization/task/wheel/e;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$setCurrentAngularSpeed$p(Lcom/transsion/commercialization/task/wheel/LuckyWheelView;F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/transsion/commercialization/task/wheel/LuckyWheelView;->v:F

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic access$setIndicatorState$p(Lcom/transsion/commercialization/task/wheel/LuckyWheelView;Lcom/transsion/commercialization/task/wheel/LuckyWheelView$IndicatorState;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/commercialization/task/wheel/LuckyWheelView;->a:Lcom/transsion/commercialization/task/wheel/LuckyWheelView$IndicatorState;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic access$setIndicatorWorldAngle$p(Lcom/transsion/commercialization/task/wheel/LuckyWheelView;F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/transsion/commercialization/task/wheel/LuckyWheelView;->t:F

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic access$startStableSpin(Lcom/transsion/commercialization/task/wheel/LuckyWheelView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/commercialization/task/wheel/LuckyWheelView;->m()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Lcom/transsion/commercialization/task/wheel/LuckyWheelView;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/commercialization/task/wheel/LuckyWheelView;->h(Lcom/transsion/commercialization/task/wheel/LuckyWheelView;Landroid/animation/ValueAnimator;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c(Lcom/transsion/commercialization/task/wheel/LuckyWheelView;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/commercialization/task/wheel/LuckyWheelView;->n(Lcom/transsion/commercialization/task/wheel/LuckyWheelView;Landroid/animation/ValueAnimator;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic d(Lcom/transsion/commercialization/task/wheel/LuckyWheelView;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/commercialization/task/wheel/LuckyWheelView;->l(Lcom/transsion/commercialization/task/wheel/LuckyWheelView;Landroid/animation/ValueAnimator;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final e(Landroid/graphics/Path;FFFFFZ)V
    .locals 4

    .line 1
    add-float/2addr p4, p2

    .line 2
    iget-object v0, p0, Lcom/transsion/commercialization/task/wheel/LuckyWheelView;->n:Landroid/graphics/RectF;

    .line 3
    .line 4
    sub-float v1, p4, p5

    .line 5
    .line 6
    sub-float v2, p3, p5

    .line 7
    .line 8
    add-float v3, p4, p5

    .line 9
    .line 10
    add-float/2addr p5, p3

    .line 11
    invoke-virtual {v0, v1, v2, v3, p5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 12
    .line 13
    .line 14
    new-instance p5, Landroid/graphics/Path;

    .line 15
    .line 16
    invoke-direct {p5}, Landroid/graphics/Path;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p5, p4, p3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 20
    .line 21
    .line 22
    iget-object p4, p0, Lcom/transsion/commercialization/task/wheel/LuckyWheelView;->n:Landroid/graphics/RectF;

    .line 23
    .line 24
    if-eqz p7, :cond_0

    .line 25
    .line 26
    const/high16 p7, -0x3d4c0000    # -90.0f

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/high16 p7, 0x42b40000    # 90.0f

    .line 30
    .line 31
    :goto_0
    const/high16 v0, 0x43340000    # 180.0f

    .line 32
    .line 33
    invoke-virtual {p5, p4, v0, p7}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p5}, Landroid/graphics/Path;->close()V

    .line 37
    .line 38
    .line 39
    new-instance p4, Landroid/graphics/Matrix;

    .line 40
    .line 41
    invoke-direct {p4}, Landroid/graphics/Matrix;-><init>()V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p4, p6, p2, p3}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p5, p4}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, p5}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method private final f(Landroid/graphics/Canvas;FF)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/transsion/commercialization/task/wheel/LuckyWheelView;->r:Landroid/graphics/Bitmap;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget v1, p0, Lcom/transsion/commercialization/task/wheel/LuckyWheelView;->s:F

    .line 7
    .line 8
    const/high16 v2, 0x40000000    # 2.0f

    .line 9
    .line 10
    div-float/2addr v1, v2

    .line 11
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 12
    .line 13
    .line 14
    iget v2, p0, Lcom/transsion/commercialization/task/wheel/LuckyWheelView;->t:F

    .line 15
    .line 16
    invoke-virtual {p1, v2, p2, p3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 17
    .line 18
    .line 19
    new-instance v2, Landroid/graphics/RectF;

    .line 20
    .line 21
    sub-float v3, p2, v1

    .line 22
    .line 23
    sub-float v6, p3, v1

    .line 24
    .line 25
    add-float v4, p2, v1

    .line 26
    .line 27
    add-float v8, p3, v1

    .line 28
    .line 29
    invoke-direct {v2, v3, v6, v4, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 30
    .line 31
    .line 32
    const/4 p3, 0x0

    .line 33
    invoke-virtual {p1, v0, p3, v2, p3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 34
    .line 35
    .line 36
    iget-boolean p3, p0, Lcom/transsion/commercialization/task/wheel/LuckyWheelView;->g:Z

    .line 37
    .line 38
    if-eqz p3, :cond_1

    .line 39
    .line 40
    iget-object v9, p0, Lcom/transsion/commercialization/task/wheel/LuckyWheelView;->j:Landroid/graphics/Paint;

    .line 41
    .line 42
    move-object v4, p1

    .line 43
    move v5, p2

    .line 44
    move v7, p2

    .line 45
    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 46
    .line 47
    .line 48
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method private final g(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;FFFFF)V
    .locals 8

    .line 1
    const/high16 v0, 0x40000000    # 2.0f

    .line 2
    .line 3
    div-float/2addr p4, v0

    .line 4
    add-float/2addr p3, p4

    .line 5
    float-to-double p3, p3

    .line 6
    invoke-static {p3, p4}, Ljava/lang/Math;->toRadians(D)D

    .line 7
    .line 8
    .line 9
    move-result-wide p3

    .line 10
    iget v1, p0, Lcom/transsion/commercialization/task/wheel/LuckyWheelView;->y:F

    .line 11
    .line 12
    mul-float/2addr v1, p7

    .line 13
    float-to-double v2, p5

    .line 14
    float-to-double v4, v1

    .line 15
    invoke-static {p3, p4}, Ljava/lang/Math;->cos(D)D

    .line 16
    .line 17
    .line 18
    move-result-wide v6

    .line 19
    mul-double/2addr v6, v4

    .line 20
    add-double/2addr v2, v6

    .line 21
    double-to-float p5, v2

    .line 22
    float-to-double v1, p6

    .line 23
    invoke-static {p3, p4}, Ljava/lang/Math;->sin(D)D

    .line 24
    .line 25
    .line 26
    move-result-wide p3

    .line 27
    mul-double/2addr v4, p3

    .line 28
    add-double/2addr v1, v4

    .line 29
    double-to-float p3, v1

    .line 30
    iget p4, p0, Lcom/transsion/commercialization/task/wheel/LuckyWheelView;->x:F

    .line 31
    .line 32
    mul-float/2addr p7, p4

    .line 33
    div-float/2addr p7, v0

    .line 34
    new-instance p4, Landroid/graphics/RectF;

    .line 35
    .line 36
    sub-float p6, p5, p7

    .line 37
    .line 38
    sub-float v0, p3, p7

    .line 39
    .line 40
    add-float/2addr p5, p7

    .line 41
    add-float/2addr p3, p7

    .line 42
    invoke-direct {p4, p6, v0, p5, p3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 43
    .line 44
    .line 45
    const/4 p3, 0x0

    .line 46
    invoke-virtual {p1, p2, p3, p4, p3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method private static final h(Lcom/transsion/commercialization/task/wheel/LuckyWheelView;Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    .line 11
    .line 12
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    check-cast p1, Ljava/lang/Float;

    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    iput p1, p0, Lcom/transsion/commercialization/task/wheel/LuckyWheelView;->t:F

    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method private final i()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/transsion/commercialization/task/wheel/LuckyWheelView;->c:Ljava/util/List;

    .line 2
    .line 3
    check-cast v0, Ljava/lang/Iterable;

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Lcom/transsion/bean/lottery/LotteryUserActivityInfoPriceItemsBean;

    .line 20
    .line 21
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/view/View;)Lcom/bumptech/glide/RequestManager;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v2}, Lcom/bumptech/glide/RequestManager;->asBitmap()Lcom/bumptech/glide/RequestBuilder;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v1}, Lcom/transsion/bean/lottery/LotteryUserActivityInfoPriceItemsBean;->getImgUrl()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-virtual {v2, v3}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    new-instance v3, Lcom/transsion/commercialization/task/wheel/LuckyWheelView$b;

    .line 38
    .line 39
    invoke-direct {v3, p0, v1}, Lcom/transsion/commercialization/task/wheel/LuckyWheelView$b;-><init>(Lcom/transsion/commercialization/task/wheel/LuckyWheelView;Lcom/transsion/bean/lottery/LotteryUserActivityInfoPriceItemsBean;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2, v3}, Lcom/bumptech/glide/RequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    return-void
.end method

.method private final j()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/transsion/commercialization/task/wheel/LuckyWheelView;->w:Landroid/animation/ValueAnimator;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 6
    .line 7
    .line 8
    :cond_0
    sget-object v0, Lcom/transsion/commercialization/task/wheel/LuckyWheelView$IndicatorState;->STOPPING:Lcom/transsion/commercialization/task/wheel/LuckyWheelView$IndicatorState;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/transsion/commercialization/task/wheel/LuckyWheelView;->a:Lcom/transsion/commercialization/task/wheel/LuckyWheelView$IndicatorState;

    .line 11
    .line 12
    iget v0, p0, Lcom/transsion/commercialization/task/wheel/LuckyWheelView;->t:F

    .line 13
    .line 14
    const/high16 v1, 0x43b40000    # 360.0f

    .line 15
    .line 16
    rem-float v2, v0, v1

    .line 17
    .line 18
    sub-float v2, v1, v2

    .line 19
    .line 20
    rem-float/2addr v2, v1

    .line 21
    const/high16 v3, 0x3f800000    # 1.0f

    .line 22
    .line 23
    cmpg-float v3, v2, v3

    .line 24
    .line 25
    if-gez v3, :cond_1

    .line 26
    .line 27
    add-float/2addr v2, v1

    .line 28
    :cond_1
    add-float/2addr v2, v0

    .line 29
    const/4 v1, 0x2

    .line 30
    new-array v1, v1, [F

    .line 31
    .line 32
    const/4 v3, 0x0

    .line 33
    aput v0, v1, v3

    .line 34
    .line 35
    const/4 v0, 0x1

    .line 36
    aput v2, v1, v0

    .line 37
    .line 38
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    const-wide/16 v1, 0x4b0

    .line 43
    .line 44
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 45
    .line 46
    .line 47
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    .line 48
    .line 49
    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 53
    .line 54
    .line 55
    new-instance v1, Lcom/transsion/commercialization/task/wheel/d;

    .line 56
    .line 57
    invoke-direct {v1, p0}, Lcom/transsion/commercialization/task/wheel/d;-><init>(Lcom/transsion/commercialization/task/wheel/LuckyWheelView;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 61
    .line 62
    .line 63
    new-instance v1, Lcom/transsion/commercialization/task/wheel/LuckyWheelView$c;

    .line 64
    .line 65
    invoke-direct {v1, p0}, Lcom/transsion/commercialization/task/wheel/LuckyWheelView$c;-><init>(Lcom/transsion/commercialization/task/wheel/LuckyWheelView;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 72
    .line 73
    .line 74
    iput-object v0, p0, Lcom/transsion/commercialization/task/wheel/LuckyWheelView;->w:Landroid/animation/ValueAnimator;

    .line 75
    .line 76
    return-void
.end method

.method private static final k(Lcom/transsion/commercialization/task/wheel/LuckyWheelView;Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    .line 11
    .line 12
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    check-cast p1, Ljava/lang/Float;

    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    iput p1, p0, Lcom/transsion/commercialization/task/wheel/LuckyWheelView;->t:F

    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method private static final l(Lcom/transsion/commercialization/task/wheel/LuckyWheelView;Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    .line 11
    .line 12
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    check-cast p1, Ljava/lang/Float;

    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    iput p1, p0, Lcom/transsion/commercialization/task/wheel/LuckyWheelView;->v:F

    .line 22
    .line 23
    iget v0, p0, Lcom/transsion/commercialization/task/wheel/LuckyWheelView;->t:F

    .line 24
    .line 25
    add-float/2addr v0, p1

    .line 26
    const/high16 p1, 0x43b40000    # 360.0f

    .line 27
    .line 28
    rem-float/2addr v0, p1

    .line 29
    iput v0, p0, Lcom/transsion/commercialization/task/wheel/LuckyWheelView;->t:F

    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method private final m()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/commercialization/task/wheel/LuckyWheelView;->a:Lcom/transsion/commercialization/task/wheel/LuckyWheelView$IndicatorState;

    .line 2
    .line 3
    sget-object v1, Lcom/transsion/commercialization/task/wheel/LuckyWheelView$IndicatorState;->ACCELERATING:Lcom/transsion/commercialization/task/wheel/LuckyWheelView$IndicatorState;

    .line 4
    .line 5
    if-eq v0, v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    sget-object v0, Lcom/transsion/commercialization/task/wheel/LuckyWheelView$IndicatorState;->SPINNING:Lcom/transsion/commercialization/task/wheel/LuckyWheelView$IndicatorState;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/transsion/commercialization/task/wheel/LuckyWheelView;->a:Lcom/transsion/commercialization/task/wheel/LuckyWheelView$IndicatorState;

    .line 11
    .line 12
    iget-object v0, p0, Lcom/transsion/commercialization/task/wheel/LuckyWheelView;->b:Lcom/transsion/commercialization/task/wheel/e;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-interface {v0}, Lcom/transsion/commercialization/task/wheel/e;->a()V

    .line 17
    .line 18
    .line 19
    :cond_1
    iget-object v0, p0, Lcom/transsion/commercialization/task/wheel/LuckyWheelView;->w:Landroid/animation/ValueAnimator;

    .line 20
    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 24
    .line 25
    .line 26
    :cond_2
    const/4 v0, 0x2

    .line 27
    new-array v0, v0, [F

    .line 28
    .line 29
    fill-array-data v0, :array_0

    .line 30
    .line 31
    .line 32
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    const-wide/16 v1, 0x10

    .line 37
    .line 38
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 39
    .line 40
    .line 41
    const/4 v1, -0x1

    .line 42
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 43
    .line 44
    .line 45
    new-instance v1, Lcom/transsion/commercialization/task/wheel/a;

    .line 46
    .line 47
    invoke-direct {v1, p0}, Lcom/transsion/commercialization/task/wheel/a;-><init>(Lcom/transsion/commercialization/task/wheel/LuckyWheelView;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 54
    .line 55
    .line 56
    iput-object v0, p0, Lcom/transsion/commercialization/task/wheel/LuckyWheelView;->w:Landroid/animation/ValueAnimator;

    .line 57
    .line 58
    return-void

    .line 59
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private static final n(Lcom/transsion/commercialization/task/wheel/LuckyWheelView;Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget p1, p0, Lcom/transsion/commercialization/task/wheel/LuckyWheelView;->u:F

    .line 7
    .line 8
    iput p1, p0, Lcom/transsion/commercialization/task/wheel/LuckyWheelView;->v:F

    .line 9
    .line 10
    iget v0, p0, Lcom/transsion/commercialization/task/wheel/LuckyWheelView;->t:F

    .line 11
    .line 12
    add-float/2addr v0, p1

    .line 13
    const/high16 p1, 0x43b40000    # 360.0f

    .line 14
    .line 15
    rem-float/2addr v0, p1

    .line 16
    iput v0, p0, Lcom/transsion/commercialization/task/wheel/LuckyWheelView;->t:F

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method private final o(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 5

    .line 1
    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const-string v0, "getBitmap(...)"

    .line 12
    .line 13
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-object p1

    .line 17
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 26
    .line 27
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const-string v1, "createBitmap(...)"

    .line 32
    .line 33
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    new-instance v1, Landroid/graphics/Canvas;

    .line 37
    .line 38
    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    const/4 v4, 0x0

    .line 50
    invoke-virtual {p1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 54
    .line 55
    .line 56
    return-object v0
.end method


# virtual methods
.method public final endIndicator(Lcom/transsion/bean/lottery/LotteryDrawResultEntity$LotteryResultBean;)V
    .locals 11

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    iget-object v2, p0, Lcom/transsion/commercialization/task/wheel/LuckyWheelView;->a:Lcom/transsion/commercialization/task/wheel/LuckyWheelView$IndicatorState;

    .line 4
    .line 5
    sget-object v3, Lcom/transsion/commercialization/task/wheel/LuckyWheelView$IndicatorState;->SPINNING:Lcom/transsion/commercialization/task/wheel/LuckyWheelView$IndicatorState;

    .line 6
    .line 7
    if-eq v2, v3, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v2, p0, Lcom/transsion/commercialization/task/wheel/LuckyWheelView;->c:Ljava/util/List;

    .line 11
    .line 12
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    move v3, v1

    .line 17
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    const/4 v5, -0x1

    .line 22
    if-eqz v4, :cond_3

    .line 23
    .line 24
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    check-cast v4, Lcom/transsion/bean/lottery/LotteryUserActivityInfoPriceItemsBean;

    .line 29
    .line 30
    invoke-virtual {v4}, Lcom/transsion/bean/lottery/LotteryUserActivityInfoPriceItemsBean;->getId()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    if-eqz p1, :cond_1

    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/transsion/bean/lottery/LotteryDrawResultEntity$LotteryResultBean;->getPrice()Lcom/transsion/bean/lottery/LotteryUserActivityInfoPriceBean;

    .line 37
    .line 38
    .line 39
    move-result-object v6

    .line 40
    if-eqz v6, :cond_1

    .line 41
    .line 42
    invoke-virtual {v6}, Lcom/transsion/bean/lottery/LotteryUserActivityInfoPriceBean;->getId()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v6

    .line 46
    goto :goto_1

    .line 47
    :cond_1
    const/4 v6, 0x0

    .line 48
    :goto_1
    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    if-eqz v4, :cond_2

    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_2
    add-int/2addr v3, v0

    .line 56
    goto :goto_0

    .line 57
    :cond_3
    move v3, v5

    .line 58
    :goto_2
    if-ne v3, v5, :cond_5

    .line 59
    .line 60
    iget-object p1, p0, Lcom/transsion/commercialization/task/wheel/LuckyWheelView;->b:Lcom/transsion/commercialization/task/wheel/e;

    .line 61
    .line 62
    if-eqz p1, :cond_4

    .line 63
    .line 64
    const-string v0, "\u5956\u54c1\u5217\u8868\u4e2d\u6ca1\u6709\u76ee\u6807ID"

    .line 65
    .line 66
    invoke-interface {p1, v0}, Lcom/transsion/commercialization/task/wheel/e;->f(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    :cond_4
    invoke-direct {p0}, Lcom/transsion/commercialization/task/wheel/LuckyWheelView;->j()V

    .line 70
    .line 71
    .line 72
    return-void

    .line 73
    :cond_5
    iget-object v2, p0, Lcom/transsion/commercialization/task/wheel/LuckyWheelView;->c:Ljava/util/List;

    .line 74
    .line 75
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    check-cast v2, Lcom/transsion/bean/lottery/LotteryUserActivityInfoPriceItemsBean;

    .line 80
    .line 81
    sget-object v4, Lcom/transsion/commercialization/task/wheel/LuckyWheelView$IndicatorState;->STOPPING:Lcom/transsion/commercialization/task/wheel/LuckyWheelView$IndicatorState;

    .line 82
    .line 83
    iput-object v4, p0, Lcom/transsion/commercialization/task/wheel/LuckyWheelView;->a:Lcom/transsion/commercialization/task/wheel/LuckyWheelView$IndicatorState;

    .line 84
    .line 85
    iget-object v4, p0, Lcom/transsion/commercialization/task/wheel/LuckyWheelView;->b:Lcom/transsion/commercialization/task/wheel/e;

    .line 86
    .line 87
    if-eqz v4, :cond_6

    .line 88
    .line 89
    invoke-interface {v4, v2}, Lcom/transsion/commercialization/task/wheel/e;->b(Lcom/transsion/bean/lottery/LotteryUserActivityInfoPriceItemsBean;)V

    .line 90
    .line 91
    .line 92
    :cond_6
    iget-object v2, p0, Lcom/transsion/commercialization/task/wheel/LuckyWheelView;->w:Landroid/animation/ValueAnimator;

    .line 93
    .line 94
    if-eqz v2, :cond_7

    .line 95
    .line 96
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    .line 97
    .line 98
    .line 99
    :cond_7
    int-to-float v2, v3

    .line 100
    iget v3, p0, Lcom/transsion/commercialization/task/wheel/LuckyWheelView;->e:F

    .line 101
    .line 102
    mul-float/2addr v2, v3

    .line 103
    iget v3, p0, Lcom/transsion/commercialization/task/wheel/LuckyWheelView;->t:F

    .line 104
    .line 105
    const/high16 v4, 0x43b40000    # 360.0f

    .line 106
    .line 107
    rem-float v5, v3, v4

    .line 108
    .line 109
    sub-float/2addr v2, v5

    .line 110
    const/4 v5, 0x0

    .line 111
    cmpg-float v5, v2, v5

    .line 112
    .line 113
    if-gez v5, :cond_8

    .line 114
    .line 115
    add-float/2addr v2, v4

    .line 116
    :cond_8
    const/high16 v4, 0x44340000    # 720.0f

    .line 117
    .line 118
    add-float/2addr v2, v4

    .line 119
    add-float/2addr v3, v2

    .line 120
    iget v2, p0, Lcom/transsion/commercialization/task/wheel/LuckyWheelView;->v:F

    .line 121
    .line 122
    const/high16 v4, 0x41a00000    # 20.0f

    .line 123
    .line 124
    div-float/2addr v2, v4

    .line 125
    const-wide/16 v4, 0x898

    .line 126
    .line 127
    long-to-float v4, v4

    .line 128
    mul-float/2addr v4, v2

    .line 129
    float-to-long v5, v4

    .line 130
    const-wide/16 v7, 0x5dc

    .line 131
    .line 132
    const-wide/16 v9, 0xdac

    .line 133
    .line 134
    invoke-static/range {v5 .. v10}, Lkotlin/ranges/RangesKt;->m(JJJ)J

    .line 135
    .line 136
    .line 137
    move-result-wide v4

    .line 138
    iget v2, p0, Lcom/transsion/commercialization/task/wheel/LuckyWheelView;->t:F

    .line 139
    .line 140
    const/4 v6, 0x2

    .line 141
    new-array v6, v6, [F

    .line 142
    .line 143
    aput v2, v6, v1

    .line 144
    .line 145
    aput v3, v6, v0

    .line 146
    .line 147
    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 152
    .line 153
    .line 154
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    .line 155
    .line 156
    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 160
    .line 161
    .line 162
    new-instance v1, Lcom/transsion/commercialization/task/wheel/b;

    .line 163
    .line 164
    invoke-direct {v1, p0}, Lcom/transsion/commercialization/task/wheel/b;-><init>(Lcom/transsion/commercialization/task/wheel/LuckyWheelView;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 168
    .line 169
    .line 170
    new-instance v1, Lcom/transsion/commercialization/task/wheel/LuckyWheelView$a;

    .line 171
    .line 172
    invoke-direct {v1, p0, p1}, Lcom/transsion/commercialization/task/wheel/LuckyWheelView$a;-><init>(Lcom/transsion/commercialization/task/wheel/LuckyWheelView;Lcom/transsion/bean/lottery/LotteryDrawResultEntity$LotteryResultBean;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 179
    .line 180
    .line 181
    iput-object v0, p0, Lcom/transsion/commercialization/task/wheel/LuckyWheelView;->w:Landroid/animation/ValueAnimator;

    .line 182
    .line 183
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/transsion/commercialization/task/wheel/LuckyWheelView;->w:Landroid/animation/ValueAnimator;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 9
    .line 10
    .line 11
    :cond_0
    sget-object v0, Lcom/transsion/commercialization/task/wheel/LuckyWheelView$IndicatorState;->IDLE:Lcom/transsion/commercialization/task/wheel/LuckyWheelView$IndicatorState;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/transsion/commercialization/task/wheel/LuckyWheelView;->a:Lcom/transsion/commercialization/task/wheel/LuckyWheelView$IndicatorState;

    .line 14
    .line 15
    iget-object v0, p0, Lcom/transsion/commercialization/task/wheel/LuckyWheelView;->d:Ljava/util/Map;

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 21

    .line 1
    move-object/from16 v8, p0

    .line 2
    .line 3
    move-object/from16 v9, p1

    .line 4
    .line 5
    const-string v0, "canvas"

    .line 6
    .line 7
    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, v8, Lcom/transsion/commercialization/task/wheel/LuckyWheelView;->c:Ljava/util/List;

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    iget-object v0, v8, Lcom/transsion/commercialization/task/wheel/LuckyWheelView;->k:Landroid/graphics/RectF;

    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    .line 25
    .line 26
    .line 27
    move-result v10

    .line 28
    iget-object v0, v8, Lcom/transsion/commercialization/task/wheel/LuckyWheelView;->k:Landroid/graphics/RectF;

    .line 29
    .line 30
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    .line 31
    .line 32
    .line 33
    move-result v11

    .line 34
    iget-object v0, v8, Lcom/transsion/commercialization/task/wheel/LuckyWheelView;->k:Landroid/graphics/RectF;

    .line 35
    .line 36
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    const/high16 v12, 0x40000000    # 2.0f

    .line 41
    .line 42
    div-float v13, v0, v12

    .line 43
    .line 44
    iget v0, v8, Lcom/transsion/commercialization/task/wheel/LuckyWheelView;->q:F

    .line 45
    .line 46
    mul-float v14, v13, v0

    .line 47
    .line 48
    iget v0, v8, Lcom/transsion/commercialization/task/wheel/LuckyWheelView;->e:F

    .line 49
    .line 50
    div-float/2addr v0, v12

    .line 51
    const/high16 v15, -0x3d4c0000    # -90.0f

    .line 52
    .line 53
    sub-float v0, v15, v0

    .line 54
    .line 55
    iget-object v1, v8, Lcom/transsion/commercialization/task/wheel/LuckyWheelView;->c:Ljava/util/List;

    .line 56
    .line 57
    check-cast v1, Ljava/lang/Iterable;

    .line 58
    .line 59
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 60
    .line 61
    .line 62
    move-result-object v16

    .line 63
    const/16 v17, 0x0

    .line 64
    .line 65
    move v7, v0

    .line 66
    move/from16 v6, v17

    .line 67
    .line 68
    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-eqz v0, :cond_4

    .line 73
    .line 74
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    add-int/lit8 v18, v6, 0x1

    .line 79
    .line 80
    if-gez v6, :cond_1

    .line 81
    .line 82
    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V

    .line 83
    .line 84
    .line 85
    :cond_1
    check-cast v0, Lcom/transsion/bean/lottery/LotteryUserActivityInfoPriceItemsBean;

    .line 86
    .line 87
    iget-object v0, v8, Lcom/transsion/commercialization/task/wheel/LuckyWheelView;->l:Landroid/graphics/Path;

    .line 88
    .line 89
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 90
    .line 91
    .line 92
    iget-object v0, v8, Lcom/transsion/commercialization/task/wheel/LuckyWheelView;->l:Landroid/graphics/Path;

    .line 93
    .line 94
    invoke-virtual {v0, v10, v11}, Landroid/graphics/Path;->moveTo(FF)V

    .line 95
    .line 96
    .line 97
    iget-object v0, v8, Lcom/transsion/commercialization/task/wheel/LuckyWheelView;->l:Landroid/graphics/Path;

    .line 98
    .line 99
    iget-object v1, v8, Lcom/transsion/commercialization/task/wheel/LuckyWheelView;->k:Landroid/graphics/RectF;

    .line 100
    .line 101
    iget v2, v8, Lcom/transsion/commercialization/task/wheel/LuckyWheelView;->e:F

    .line 102
    .line 103
    invoke-virtual {v0, v1, v7, v2}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 104
    .line 105
    .line 106
    iget-object v0, v8, Lcom/transsion/commercialization/task/wheel/LuckyWheelView;->l:Landroid/graphics/Path;

    .line 107
    .line 108
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 109
    .line 110
    .line 111
    iget-object v0, v8, Lcom/transsion/commercialization/task/wheel/LuckyWheelView;->m:Landroid/graphics/Path;

    .line 112
    .line 113
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 114
    .line 115
    .line 116
    iget-object v1, v8, Lcom/transsion/commercialization/task/wheel/LuckyWheelView;->m:Landroid/graphics/Path;

    .line 117
    .line 118
    const/16 v19, 0x1

    .line 119
    .line 120
    move-object/from16 v0, p0

    .line 121
    .line 122
    move v2, v10

    .line 123
    move v3, v11

    .line 124
    move v4, v13

    .line 125
    move v5, v14

    .line 126
    move v15, v6

    .line 127
    move v6, v7

    .line 128
    move/from16 v20, v7

    .line 129
    .line 130
    move/from16 v7, v19

    .line 131
    .line 132
    invoke-direct/range {v0 .. v7}, Lcom/transsion/commercialization/task/wheel/LuckyWheelView;->e(Landroid/graphics/Path;FFFFFZ)V

    .line 133
    .line 134
    .line 135
    iget-object v1, v8, Lcom/transsion/commercialization/task/wheel/LuckyWheelView;->m:Landroid/graphics/Path;

    .line 136
    .line 137
    iget v0, v8, Lcom/transsion/commercialization/task/wheel/LuckyWheelView;->e:F

    .line 138
    .line 139
    add-float v6, v20, v0

    .line 140
    .line 141
    const/4 v7, 0x0

    .line 142
    move-object/from16 v0, p0

    .line 143
    .line 144
    invoke-direct/range {v0 .. v7}, Lcom/transsion/commercialization/task/wheel/LuckyWheelView;->e(Landroid/graphics/Path;FFFFFZ)V

    .line 145
    .line 146
    .line 147
    iget-object v0, v8, Lcom/transsion/commercialization/task/wheel/LuckyWheelView;->l:Landroid/graphics/Path;

    .line 148
    .line 149
    iget-object v1, v8, Lcom/transsion/commercialization/task/wheel/LuckyWheelView;->m:Landroid/graphics/Path;

    .line 150
    .line 151
    sget-object v2, Landroid/graphics/Path$Op;->DIFFERENCE:Landroid/graphics/Path$Op;

    .line 152
    .line 153
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    .line 154
    .line 155
    .line 156
    iget-object v0, v8, Lcom/transsion/commercialization/task/wheel/LuckyWheelView;->h:Landroid/graphics/Paint;

    .line 157
    .line 158
    rem-int/lit8 v6, v15, 0x2

    .line 159
    .line 160
    if-nez v6, :cond_2

    .line 161
    .line 162
    iget v1, v8, Lcom/transsion/commercialization/task/wheel/LuckyWheelView;->o:I

    .line 163
    .line 164
    goto :goto_1

    .line 165
    :cond_2
    iget v1, v8, Lcom/transsion/commercialization/task/wheel/LuckyWheelView;->p:I

    .line 166
    .line 167
    :goto_1
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 168
    .line 169
    .line 170
    iget-object v0, v8, Lcom/transsion/commercialization/task/wheel/LuckyWheelView;->l:Landroid/graphics/Path;

    .line 171
    .line 172
    iget-object v1, v8, Lcom/transsion/commercialization/task/wheel/LuckyWheelView;->h:Landroid/graphics/Paint;

    .line 173
    .line 174
    invoke-virtual {v9, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 175
    .line 176
    .line 177
    iget-boolean v0, v8, Lcom/transsion/commercialization/task/wheel/LuckyWheelView;->g:Z

    .line 178
    .line 179
    if-eqz v0, :cond_3

    .line 180
    .line 181
    iget-object v0, v8, Lcom/transsion/commercialization/task/wheel/LuckyWheelView;->f:Ljava/util/List;

    .line 182
    .line 183
    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    check-cast v0, Ljava/lang/Number;

    .line 188
    .line 189
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    .line 190
    .line 191
    .line 192
    move-result-wide v0

    .line 193
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    .line 194
    .line 195
    .line 196
    move-result-wide v2

    .line 197
    double-to-float v2, v2

    .line 198
    mul-float/2addr v2, v13

    .line 199
    add-float v3, v10, v2

    .line 200
    .line 201
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    .line 202
    .line 203
    .line 204
    move-result-wide v0

    .line 205
    double-to-float v0, v0

    .line 206
    mul-float/2addr v0, v13

    .line 207
    add-float v4, v11, v0

    .line 208
    .line 209
    iget-object v5, v8, Lcom/transsion/commercialization/task/wheel/LuckyWheelView;->i:Landroid/graphics/Paint;

    .line 210
    .line 211
    move-object/from16 v0, p1

    .line 212
    .line 213
    move v1, v10

    .line 214
    move v2, v11

    .line 215
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 216
    .line 217
    .line 218
    :cond_3
    iget v0, v8, Lcom/transsion/commercialization/task/wheel/LuckyWheelView;->e:F

    .line 219
    .line 220
    add-float v7, v20, v0

    .line 221
    .line 222
    move/from16 v6, v18

    .line 223
    .line 224
    const/high16 v15, -0x3d4c0000    # -90.0f

    .line 225
    .line 226
    goto/16 :goto_0

    .line 227
    .line 228
    :cond_4
    iget v0, v8, Lcom/transsion/commercialization/task/wheel/LuckyWheelView;->e:F

    .line 229
    .line 230
    div-float/2addr v0, v12

    .line 231
    const/high16 v1, -0x3d4c0000    # -90.0f

    .line 232
    .line 233
    sub-float v15, v1, v0

    .line 234
    .line 235
    iget-object v0, v8, Lcom/transsion/commercialization/task/wheel/LuckyWheelView;->c:Ljava/util/List;

    .line 236
    .line 237
    check-cast v0, Ljava/lang/Iterable;

    .line 238
    .line 239
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 240
    .line 241
    .line 242
    move-result-object v12

    .line 243
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    .line 244
    .line 245
    .line 246
    move-result v0

    .line 247
    if-eqz v0, :cond_7

    .line 248
    .line 249
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    move-result-object v0

    .line 253
    add-int/lit8 v14, v17, 0x1

    .line 254
    .line 255
    if-gez v17, :cond_5

    .line 256
    .line 257
    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V

    .line 258
    .line 259
    .line 260
    :cond_5
    check-cast v0, Lcom/transsion/bean/lottery/LotteryUserActivityInfoPriceItemsBean;

    .line 261
    .line 262
    iget-object v1, v8, Lcom/transsion/commercialization/task/wheel/LuckyWheelView;->d:Ljava/util/Map;

    .line 263
    .line 264
    invoke-virtual {v0}, Lcom/transsion/bean/lottery/LotteryUserActivityInfoPriceItemsBean;->getImgUrl()Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v0

    .line 268
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    .line 270
    .line 271
    move-result-object v0

    .line 272
    move-object v2, v0

    .line 273
    check-cast v2, Landroid/graphics/Bitmap;

    .line 274
    .line 275
    if-eqz v2, :cond_6

    .line 276
    .line 277
    iget v4, v8, Lcom/transsion/commercialization/task/wheel/LuckyWheelView;->e:F

    .line 278
    .line 279
    move-object/from16 v0, p0

    .line 280
    .line 281
    move-object/from16 v1, p1

    .line 282
    .line 283
    move v3, v15

    .line 284
    move v5, v10

    .line 285
    move v6, v11

    .line 286
    move v7, v13

    .line 287
    invoke-direct/range {v0 .. v7}, Lcom/transsion/commercialization/task/wheel/LuckyWheelView;->g(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;FFFFF)V

    .line 288
    .line 289
    .line 290
    :cond_6
    iget v0, v8, Lcom/transsion/commercialization/task/wheel/LuckyWheelView;->e:F

    .line 291
    .line 292
    add-float/2addr v15, v0

    .line 293
    move/from16 v17, v14

    .line 294
    .line 295
    goto :goto_2

    .line 296
    :cond_7
    invoke-direct {v8, v9, v10, v11}, Lcom/transsion/commercialization/task/wheel/LuckyWheelView;->f(Landroid/graphics/Canvas;FF)V

    .line 297
    .line 298
    .line 299
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 2
    .line 3
    .line 4
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    int-to-float p1, p1

    .line 9
    iget-object p2, p0, Lcom/transsion/commercialization/task/wheel/LuckyWheelView;->k:Landroid/graphics/RectF;

    .line 10
    .line 11
    const/4 p3, 0x0

    .line 12
    invoke-virtual {p2, p3, p3, p1, p1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final resetIndicator()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/commercialization/task/wheel/LuckyWheelView;->j()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final setCenterIndicator(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0, p1}, Landroidx/core/content/b;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-direct {p0, p1}, Lcom/transsion/commercialization/task/wheel/LuckyWheelView;->o(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    :goto_0
    iput-object p1, p0, Lcom/transsion/commercialization/task/wheel/LuckyWheelView;->r:Landroid/graphics/Bitmap;

    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final setDebugMidLineEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/transsion/commercialization/task/wheel/LuckyWheelView;->g:Z

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setImageRadiusRatio(F)V
    .locals 2

    .line 1
    const v0, 0x3e99999a    # 0.3f

    .line 2
    .line 3
    .line 4
    const v1, 0x3f666666    # 0.9f

    .line 5
    .line 6
    .line 7
    invoke-static {p1, v0, v1}, Lkotlin/ranges/RangesKt;->k(FFF)F

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    iput p1, p0, Lcom/transsion/commercialization/task/wheel/LuckyWheelView;->y:F

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final setImageSizeRatio(F)V
    .locals 2

    .line 1
    const v0, 0x3dcccccd    # 0.1f

    .line 2
    .line 3
    .line 4
    const v1, 0x3f19999a    # 0.6f

    .line 5
    .line 6
    .line 7
    invoke-static {p1, v0, v1}, Lkotlin/ranges/RangesKt;->k(FFF)F

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    iput p1, p0, Lcom/transsion/commercialization/task/wheel/LuckyWheelView;->x:F

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final setOnWheelStateListener(Lcom/transsion/commercialization/task/wheel/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/commercialization/task/wheel/LuckyWheelView;->b:Lcom/transsion/commercialization/task/wheel/e;

    .line 2
    .line 3
    return-void
.end method

.method public final setStartAngularSpeed(F)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpg-float v0, p1, v0

    .line 3
    .line 4
    if-gtz v0, :cond_0

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    iput p1, p0, Lcom/transsion/commercialization/task/wheel/LuckyWheelView;->u:F

    .line 8
    .line 9
    return-void
.end method

.method public final setWheelItems(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/bean/lottery/LotteryUserActivityInfoPriceItemsBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    check-cast p1, Ljava/util/Collection;

    .line 2
    .line 3
    if-eqz p1, :cond_2

    .line 4
    .line 5
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/transsion/commercialization/task/wheel/LuckyWheelView;->c:Ljava/util/List;

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/transsion/commercialization/task/wheel/LuckyWheelView;->d:Ljava/util/Map;

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/transsion/commercialization/task/wheel/LuckyWheelView;->f:Ljava/util/List;

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/transsion/commercialization/task/wheel/LuckyWheelView;->c:Ljava/util/List;

    .line 28
    .line 29
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 30
    .line 31
    .line 32
    iget-object p1, p0, Lcom/transsion/commercialization/task/wheel/LuckyWheelView;->c:Ljava/util/List;

    .line 33
    .line 34
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    int-to-float p1, p1

    .line 39
    const/high16 v0, 0x43b40000    # 360.0f

    .line 40
    .line 41
    div-float/2addr v0, p1

    .line 42
    iput v0, p0, Lcom/transsion/commercialization/task/wheel/LuckyWheelView;->e:F

    .line 43
    .line 44
    iget-object p1, p0, Lcom/transsion/commercialization/task/wheel/LuckyWheelView;->c:Ljava/util/List;

    .line 45
    .line 46
    check-cast p1, Ljava/util/Collection;

    .line 47
    .line 48
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    const/4 v0, 0x0

    .line 53
    :goto_0
    if-ge v0, p1, :cond_1

    .line 54
    .line 55
    int-to-float v1, v0

    .line 56
    iget v2, p0, Lcom/transsion/commercialization/task/wheel/LuckyWheelView;->e:F

    .line 57
    .line 58
    mul-float/2addr v1, v2

    .line 59
    const/high16 v2, 0x42b40000    # 90.0f

    .line 60
    .line 61
    sub-float/2addr v1, v2

    .line 62
    iget-object v2, p0, Lcom/transsion/commercialization/task/wheel/LuckyWheelView;->f:Ljava/util/List;

    .line 63
    .line 64
    float-to-double v3, v1

    .line 65
    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    .line 66
    .line 67
    .line 68
    move-result-wide v3

    .line 69
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    add-int/lit8 v0, v0, 0x1

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_1
    invoke-direct {p0}, Lcom/transsion/commercialization/task/wheel/LuckyWheelView;->i()V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 83
    .line 84
    .line 85
    :cond_2
    :goto_1
    return-void
.end method

.method public final startIndicator()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/transsion/commercialization/task/wheel/LuckyWheelView;->a:Lcom/transsion/commercialization/task/wheel/LuckyWheelView$IndicatorState;

    .line 2
    .line 3
    sget-object v1, Lcom/transsion/commercialization/task/wheel/LuckyWheelView$IndicatorState;->IDLE:Lcom/transsion/commercialization/task/wheel/LuckyWheelView$IndicatorState;

    .line 4
    .line 5
    if-eq v0, v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    sget-object v0, Lcom/transsion/commercialization/task/wheel/LuckyWheelView$IndicatorState;->ACCELERATING:Lcom/transsion/commercialization/task/wheel/LuckyWheelView$IndicatorState;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/transsion/commercialization/task/wheel/LuckyWheelView;->a:Lcom/transsion/commercialization/task/wheel/LuckyWheelView$IndicatorState;

    .line 11
    .line 12
    iget-object v0, p0, Lcom/transsion/commercialization/task/wheel/LuckyWheelView;->b:Lcom/transsion/commercialization/task/wheel/e;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-interface {v0}, Lcom/transsion/commercialization/task/wheel/e;->d()V

    .line 17
    .line 18
    .line 19
    :cond_1
    iget-object v0, p0, Lcom/transsion/commercialization/task/wheel/LuckyWheelView;->b:Lcom/transsion/commercialization/task/wheel/e;

    .line 20
    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    invoke-interface {v0}, Lcom/transsion/commercialization/task/wheel/e;->e()V

    .line 24
    .line 25
    .line 26
    :cond_2
    iget-object v0, p0, Lcom/transsion/commercialization/task/wheel/LuckyWheelView;->w:Landroid/animation/ValueAnimator;

    .line 27
    .line 28
    if-eqz v0, :cond_3

    .line 29
    .line 30
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 31
    .line 32
    .line 33
    :cond_3
    iget v0, p0, Lcom/transsion/commercialization/task/wheel/LuckyWheelView;->u:F

    .line 34
    .line 35
    const/4 v1, 0x2

    .line 36
    new-array v1, v1, [F

    .line 37
    .line 38
    const/4 v2, 0x0

    .line 39
    const/4 v3, 0x0

    .line 40
    aput v2, v1, v3

    .line 41
    .line 42
    const/4 v2, 0x1

    .line 43
    aput v0, v1, v2

    .line 44
    .line 45
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    const-wide/16 v1, 0xc8

    .line 50
    .line 51
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 52
    .line 53
    .line 54
    new-instance v1, Lcom/transsion/commercialization/task/wheel/c;

    .line 55
    .line 56
    invoke-direct {v1, p0}, Lcom/transsion/commercialization/task/wheel/c;-><init>(Lcom/transsion/commercialization/task/wheel/LuckyWheelView;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 60
    .line 61
    .line 62
    new-instance v1, Lcom/transsion/commercialization/task/wheel/LuckyWheelView$d;

    .line 63
    .line 64
    invoke-direct {v1, p0}, Lcom/transsion/commercialization/task/wheel/LuckyWheelView$d;-><init>(Lcom/transsion/commercialization/task/wheel/LuckyWheelView;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 71
    .line 72
    .line 73
    iput-object v0, p0, Lcom/transsion/commercialization/task/wheel/LuckyWheelView;->w:Landroid/animation/ValueAnimator;

    .line 74
    .line 75
    return-void
.end method
