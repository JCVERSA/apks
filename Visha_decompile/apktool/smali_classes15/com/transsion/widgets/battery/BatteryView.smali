.class public Lcom/transsion/widgets/battery/BatteryView;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;


# instance fields
.field private borderColor:I

.field private borderPadding:F

.field private borderPaint:Landroid/graphics/Paint;

.field private borderRf:Landroid/graphics/RectF;

.field private borderWidth:F

.field private chargingSpeed:I

.field private currentPower:I

.field private headerColor:I

.field private headerPaint:Landroid/graphics/Paint;

.field private headerRf:Landroid/graphics/RectF;

.field private headerWidth:F

.field private height:I

.field private highColor:I

.field private lowColor:I

.field private lowValue:I

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mLifecycle:Landroidx/lifecycle/Lifecycle;

.field private mOnBatteryPowerListener:Lcom/transsion/widgets/battery/OnBatteryPowerListener;

.field private mediumColor:I

.field private mediumValue:I

.field private noChargingHighColor:I

.field private orientation:Lcom/transsion/widgets/battery/BatteryViewOrientation;

.field private power:I

.field private powerPaint:Landroid/graphics/Paint;

.field private powerRf:Landroid/graphics/RectF;

.field private radis:F

.field private receiver:Landroid/content/BroadcastReceiver;

.field private runnable:Ljava/lang/Runnable;

.field private width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/transsion/widgets/battery/BatteryView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/widgets/battery/BatteryView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p3, 0x3c

    .line 4
    iput p3, p0, Lcom/transsion/widgets/battery/BatteryView;->currentPower:I

    .line 5
    new-instance p3, Landroid/os/Handler;

    invoke-direct {p3}, Landroid/os/Handler;-><init>()V

    iput-object p3, p0, Lcom/transsion/widgets/battery/BatteryView;->mHandler:Landroid/os/Handler;

    .line 6
    new-instance p3, Lcom/transsion/widgets/battery/BatteryView$1;

    invoke-direct {p3, p0}, Lcom/transsion/widgets/battery/BatteryView$1;-><init>(Lcom/transsion/widgets/battery/BatteryView;)V

    iput-object p3, p0, Lcom/transsion/widgets/battery/BatteryView;->receiver:Landroid/content/BroadcastReceiver;

    .line 7
    iput-object p1, p0, Lcom/transsion/widgets/battery/BatteryView;->mContext:Landroid/content/Context;

    .line 8
    invoke-direct {p0, p1, p2}, Lcom/transsion/widgets/battery/BatteryView;->getAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 9
    invoke-direct {p0}, Lcom/transsion/widgets/battery/BatteryView;->initPaints()V

    return-void
.end method

.method public static bridge synthetic a(Lcom/transsion/widgets/battery/BatteryView;)I
    .locals 0

    iget p0, p0, Lcom/transsion/widgets/battery/BatteryView;->chargingSpeed:I

    return p0
.end method

.method public static bridge synthetic b(Lcom/transsion/widgets/battery/BatteryView;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgets/battery/BatteryView;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/transsion/widgets/battery/BatteryView;)I
    .locals 0

    iget p0, p0, Lcom/transsion/widgets/battery/BatteryView;->power:I

    return p0
.end method

.method public static bridge synthetic d(Lcom/transsion/widgets/battery/BatteryView;)Landroid/graphics/RectF;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgets/battery/BatteryView;->powerRf:Landroid/graphics/RectF;

    return-object p0
.end method

.method private drawHorizontalLeft(Landroid/graphics/Canvas;)V
    .locals 5

    iget-object v0, p0, Lcom/transsion/widgets/battery/BatteryView;->borderRf:Landroid/graphics/RectF;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/transsion/widgets/battery/BatteryView;->headerWidth:F

    iget v2, p0, Lcom/transsion/widgets/battery/BatteryView;->borderPadding:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/transsion/widgets/battery/BatteryView;->borderWidth:F

    add-float/2addr v1, v2

    iget v3, p0, Lcom/transsion/widgets/battery/BatteryView;->width:I

    int-to-float v3, v3

    sub-float/2addr v3, v2

    iget v4, p0, Lcom/transsion/widgets/battery/BatteryView;->height:I

    int-to-float v4, v4

    sub-float/2addr v4, v2

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/transsion/widgets/battery/BatteryView;->borderRf:Landroid/graphics/RectF;

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgets/battery/BatteryView;->borderRf:Landroid/graphics/RectF;

    iget v1, p0, Lcom/transsion/widgets/battery/BatteryView;->radis:F

    iget-object v2, p0, Lcom/transsion/widgets/battery/BatteryView;->borderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/transsion/widgets/battery/BatteryView;->powerRf:Landroid/graphics/RectF;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/transsion/widgets/battery/BatteryView;->initBattery()V

    iget v0, p0, Lcom/transsion/widgets/battery/BatteryView;->currentPower:I

    invoke-virtual {p0, v0}, Lcom/transsion/widgets/battery/BatteryView;->setPower(I)V

    :cond_1
    iget-object v0, p0, Lcom/transsion/widgets/battery/BatteryView;->powerRf:Landroid/graphics/RectF;

    iget v1, p0, Lcom/transsion/widgets/battery/BatteryView;->radis:F

    iget-object v2, p0, Lcom/transsion/widgets/battery/BatteryView;->powerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/transsion/widgets/battery/BatteryView;->headerRf:Landroid/graphics/RectF;

    if-nez v0, :cond_2

    iget v0, p0, Lcom/transsion/widgets/battery/BatteryView;->height:I

    int-to-float v0, v0

    const/high16 v1, 0x40400000    # 3.0f

    div-float/2addr v0, v1

    new-instance v1, Landroid/graphics/RectF;

    iget v2, p0, Lcom/transsion/widgets/battery/BatteryView;->headerWidth:F

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v3, v0

    const/4 v4, 0x0

    invoke-direct {v1, v4, v0, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, p0, Lcom/transsion/widgets/battery/BatteryView;->headerRf:Landroid/graphics/RectF;

    :cond_2
    iget-object v0, p0, Lcom/transsion/widgets/battery/BatteryView;->headerRf:Landroid/graphics/RectF;

    iget v1, p0, Lcom/transsion/widgets/battery/BatteryView;->radis:F

    iget-object p0, p0, Lcom/transsion/widgets/battery/BatteryView;->headerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, p0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawHorizontalRight(Landroid/graphics/Canvas;)V
    .locals 5

    iget-object v0, p0, Lcom/transsion/widgets/battery/BatteryView;->borderRf:Landroid/graphics/RectF;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/transsion/widgets/battery/BatteryView;->borderWidth:F

    iget v2, p0, Lcom/transsion/widgets/battery/BatteryView;->width:I

    int-to-float v2, v2

    sub-float/2addr v2, v1

    iget v3, p0, Lcom/transsion/widgets/battery/BatteryView;->borderPadding:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/transsion/widgets/battery/BatteryView;->headerWidth:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/transsion/widgets/battery/BatteryView;->height:I

    int-to-float v3, v3

    sub-float/2addr v3, v1

    invoke-direct {v0, v1, v1, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/transsion/widgets/battery/BatteryView;->borderRf:Landroid/graphics/RectF;

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgets/battery/BatteryView;->borderRf:Landroid/graphics/RectF;

    iget v1, p0, Lcom/transsion/widgets/battery/BatteryView;->radis:F

    iget-object v2, p0, Lcom/transsion/widgets/battery/BatteryView;->borderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/transsion/widgets/battery/BatteryView;->powerRf:Landroid/graphics/RectF;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/transsion/widgets/battery/BatteryView;->initBattery()V

    iget v0, p0, Lcom/transsion/widgets/battery/BatteryView;->currentPower:I

    invoke-virtual {p0, v0}, Lcom/transsion/widgets/battery/BatteryView;->setPower(I)V

    :cond_1
    iget-object v0, p0, Lcom/transsion/widgets/battery/BatteryView;->powerRf:Landroid/graphics/RectF;

    iget v1, p0, Lcom/transsion/widgets/battery/BatteryView;->radis:F

    iget-object v2, p0, Lcom/transsion/widgets/battery/BatteryView;->powerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/transsion/widgets/battery/BatteryView;->headerRf:Landroid/graphics/RectF;

    if-nez v0, :cond_2

    iget v0, p0, Lcom/transsion/widgets/battery/BatteryView;->height:I

    int-to-float v0, v0

    const/high16 v1, 0x40400000    # 3.0f

    div-float/2addr v0, v1

    new-instance v1, Landroid/graphics/RectF;

    iget v2, p0, Lcom/transsion/widgets/battery/BatteryView;->width:I

    int-to-float v3, v2

    iget v4, p0, Lcom/transsion/widgets/battery/BatteryView;->headerWidth:F

    sub-float/2addr v3, v4

    int-to-float v2, v2

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v4, v0

    invoke-direct {v1, v3, v0, v2, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, p0, Lcom/transsion/widgets/battery/BatteryView;->headerRf:Landroid/graphics/RectF;

    :cond_2
    iget-object v0, p0, Lcom/transsion/widgets/battery/BatteryView;->headerRf:Landroid/graphics/RectF;

    iget v1, p0, Lcom/transsion/widgets/battery/BatteryView;->radis:F

    iget-object p0, p0, Lcom/transsion/widgets/battery/BatteryView;->headerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, p0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawVerticalBottom(Landroid/graphics/Canvas;)V
    .locals 5

    iget-object v0, p0, Lcom/transsion/widgets/battery/BatteryView;->borderRf:Landroid/graphics/RectF;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/transsion/widgets/battery/BatteryView;->borderWidth:F

    iget v2, p0, Lcom/transsion/widgets/battery/BatteryView;->width:I

    int-to-float v2, v2

    sub-float/2addr v2, v1

    iget v3, p0, Lcom/transsion/widgets/battery/BatteryView;->height:I

    int-to-float v3, v3

    iget v4, p0, Lcom/transsion/widgets/battery/BatteryView;->headerWidth:F

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/transsion/widgets/battery/BatteryView;->borderPadding:F

    sub-float/2addr v3, v4

    sub-float/2addr v3, v1

    invoke-direct {v0, v1, v1, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/transsion/widgets/battery/BatteryView;->borderRf:Landroid/graphics/RectF;

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgets/battery/BatteryView;->borderRf:Landroid/graphics/RectF;

    iget v1, p0, Lcom/transsion/widgets/battery/BatteryView;->radis:F

    iget-object v2, p0, Lcom/transsion/widgets/battery/BatteryView;->borderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/transsion/widgets/battery/BatteryView;->powerRf:Landroid/graphics/RectF;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/transsion/widgets/battery/BatteryView;->initBattery()V

    iget v0, p0, Lcom/transsion/widgets/battery/BatteryView;->currentPower:I

    invoke-virtual {p0, v0}, Lcom/transsion/widgets/battery/BatteryView;->setPower(I)V

    :cond_1
    iget-object v0, p0, Lcom/transsion/widgets/battery/BatteryView;->powerRf:Landroid/graphics/RectF;

    iget v1, p0, Lcom/transsion/widgets/battery/BatteryView;->radis:F

    iget-object v2, p0, Lcom/transsion/widgets/battery/BatteryView;->powerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/transsion/widgets/battery/BatteryView;->headerRf:Landroid/graphics/RectF;

    if-nez v0, :cond_2

    iget v0, p0, Lcom/transsion/widgets/battery/BatteryView;->width:I

    int-to-float v0, v0

    const/high16 v1, 0x40400000    # 3.0f

    div-float/2addr v0, v1

    new-instance v1, Landroid/graphics/RectF;

    iget v2, p0, Lcom/transsion/widgets/battery/BatteryView;->height:I

    int-to-float v3, v2

    iget v4, p0, Lcom/transsion/widgets/battery/BatteryView;->headerWidth:F

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v4, v0

    int-to-float v2, v2

    invoke-direct {v1, v0, v3, v4, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, p0, Lcom/transsion/widgets/battery/BatteryView;->headerRf:Landroid/graphics/RectF;

    :cond_2
    iget-object v0, p0, Lcom/transsion/widgets/battery/BatteryView;->headerRf:Landroid/graphics/RectF;

    iget v1, p0, Lcom/transsion/widgets/battery/BatteryView;->radis:F

    iget-object p0, p0, Lcom/transsion/widgets/battery/BatteryView;->headerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, p0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawVerticalTop(Landroid/graphics/Canvas;)V
    .locals 5

    iget-object v0, p0, Lcom/transsion/widgets/battery/BatteryView;->borderRf:Landroid/graphics/RectF;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/transsion/widgets/battery/BatteryView;->borderWidth:F

    iget v2, p0, Lcom/transsion/widgets/battery/BatteryView;->headerWidth:F

    iget v3, p0, Lcom/transsion/widgets/battery/BatteryView;->borderPadding:F

    add-float/2addr v2, v3

    add-float/2addr v2, v1

    iget v3, p0, Lcom/transsion/widgets/battery/BatteryView;->width:I

    int-to-float v3, v3

    sub-float/2addr v3, v1

    iget v4, p0, Lcom/transsion/widgets/battery/BatteryView;->height:I

    int-to-float v4, v4

    sub-float/2addr v4, v1

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/transsion/widgets/battery/BatteryView;->borderRf:Landroid/graphics/RectF;

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgets/battery/BatteryView;->borderRf:Landroid/graphics/RectF;

    iget v1, p0, Lcom/transsion/widgets/battery/BatteryView;->radis:F

    iget-object v2, p0, Lcom/transsion/widgets/battery/BatteryView;->borderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/transsion/widgets/battery/BatteryView;->powerRf:Landroid/graphics/RectF;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/transsion/widgets/battery/BatteryView;->initBattery()V

    iget v0, p0, Lcom/transsion/widgets/battery/BatteryView;->currentPower:I

    invoke-virtual {p0, v0}, Lcom/transsion/widgets/battery/BatteryView;->setPower(I)V

    :cond_1
    iget-object v0, p0, Lcom/transsion/widgets/battery/BatteryView;->powerRf:Landroid/graphics/RectF;

    iget v1, p0, Lcom/transsion/widgets/battery/BatteryView;->radis:F

    iget-object v2, p0, Lcom/transsion/widgets/battery/BatteryView;->powerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/transsion/widgets/battery/BatteryView;->headerRf:Landroid/graphics/RectF;

    if-nez v0, :cond_2

    iget v0, p0, Lcom/transsion/widgets/battery/BatteryView;->width:I

    int-to-float v0, v0

    const/high16 v1, 0x40400000    # 3.0f

    div-float/2addr v0, v1

    new-instance v1, Landroid/graphics/RectF;

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v2, v0

    iget v3, p0, Lcom/transsion/widgets/battery/BatteryView;->headerWidth:F

    const/4 v4, 0x0

    invoke-direct {v1, v0, v4, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, p0, Lcom/transsion/widgets/battery/BatteryView;->headerRf:Landroid/graphics/RectF;

    :cond_2
    iget-object v0, p0, Lcom/transsion/widgets/battery/BatteryView;->headerRf:Landroid/graphics/RectF;

    iget v1, p0, Lcom/transsion/widgets/battery/BatteryView;->radis:F

    iget-object p0, p0, Lcom/transsion/widgets/battery/BatteryView;->headerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, p0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public static bridge synthetic e(Lcom/transsion/widgets/battery/BatteryView;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgets/battery/BatteryView;->runnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static bridge synthetic f(Lcom/transsion/widgets/battery/BatteryView;I)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgets/battery/BatteryView;->currentPower:I

    return-void
.end method

.method public static bridge synthetic g(Lcom/transsion/widgets/battery/BatteryView;I)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgets/battery/BatteryView;->power:I

    return-void
.end method

.method private getAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    sget-object v0, Lcom/transsion/common/R$styleable;->BatteryView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lcom/transsion/common/R$styleable;->BatteryView_bv_orientation:I

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    const/4 v1, 0x2

    if-eqz p2, :cond_3

    if-eq p2, v0, :cond_2

    if-eq p2, v1, :cond_1

    const/4 v2, 0x3

    if-eq p2, v2, :cond_0

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/transsion/widgets/battery/BatteryViewOrientation;->VERTICAL_BOTTOM:Lcom/transsion/widgets/battery/BatteryViewOrientation;

    iput-object p2, p0, Lcom/transsion/widgets/battery/BatteryView;->orientation:Lcom/transsion/widgets/battery/BatteryViewOrientation;

    goto :goto_0

    :cond_1
    sget-object p2, Lcom/transsion/widgets/battery/BatteryViewOrientation;->VERTICAL_TOP:Lcom/transsion/widgets/battery/BatteryViewOrientation;

    iput-object p2, p0, Lcom/transsion/widgets/battery/BatteryView;->orientation:Lcom/transsion/widgets/battery/BatteryViewOrientation;

    goto :goto_0

    :cond_2
    sget-object p2, Lcom/transsion/widgets/battery/BatteryViewOrientation;->HORIZONTAL_RIGHT:Lcom/transsion/widgets/battery/BatteryViewOrientation;

    iput-object p2, p0, Lcom/transsion/widgets/battery/BatteryView;->orientation:Lcom/transsion/widgets/battery/BatteryViewOrientation;

    goto :goto_0

    :cond_3
    sget-object p2, Lcom/transsion/widgets/battery/BatteryViewOrientation;->HORIZONTAL_LEFT:Lcom/transsion/widgets/battery/BatteryViewOrientation;

    iput-object p2, p0, Lcom/transsion/widgets/battery/BatteryView;->orientation:Lcom/transsion/widgets/battery/BatteryViewOrientation;

    :goto_0
    sget p2, Lcom/transsion/common/R$styleable;->BatteryView_bv_border_padding:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/transsion/widgets/battery/BatteryView;->borderPadding:F

    sget p2, Lcom/transsion/common/R$styleable;->BatteryView_bv_border_width:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/transsion/widgets/battery/BatteryView;->borderWidth:F

    sget p2, Lcom/transsion/common/R$styleable;->BatteryView_bv_header_width:I

    const/16 v2, 0xa

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/transsion/widgets/battery/BatteryView;->headerWidth:F

    sget p2, Lcom/transsion/common/R$styleable;->BatteryView_bv_radis:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/transsion/widgets/battery/BatteryView;->radis:F

    sget p2, Lcom/transsion/common/R$styleable;->BatteryView_bv_border_color:I

    const/4 v3, -0x1

    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/transsion/widgets/battery/BatteryView;->borderColor:I

    sget p2, Lcom/transsion/common/R$styleable;->BatteryView_bv_power_color_low:I

    iget-object v4, p0, Lcom/transsion/widgets/battery/BatteryView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/transsion/common/R$color;->low:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {p1, p2, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/transsion/widgets/battery/BatteryView;->lowColor:I

    sget p2, Lcom/transsion/common/R$styleable;->BatteryView_bv_power_value_low:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/transsion/widgets/battery/BatteryView;->lowValue:I

    sget p2, Lcom/transsion/common/R$styleable;->BatteryView_bv_power_color_medium:I

    iget-object v4, p0, Lcom/transsion/widgets/battery/BatteryView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/transsion/common/R$color;->medium:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {p1, p2, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/transsion/widgets/battery/BatteryView;->mediumColor:I

    sget p2, Lcom/transsion/common/R$styleable;->BatteryView_bv_power_value_medium:I

    const/16 v4, 0x14

    invoke-virtual {p1, p2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/transsion/widgets/battery/BatteryView;->mediumValue:I

    sget p2, Lcom/transsion/common/R$styleable;->BatteryView_bv_power_color_high:I

    iget-object v4, p0, Lcom/transsion/widgets/battery/BatteryView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/transsion/common/R$color;->high:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {p1, p2, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/transsion/widgets/battery/BatteryView;->highColor:I

    sget p2, Lcom/transsion/common/R$styleable;->BatteryView_bv_header_color:I

    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/transsion/widgets/battery/BatteryView;->headerColor:I

    sget p2, Lcom/transsion/common/R$styleable;->BatteryView_bv_no_charging_color_high:I

    iget-object v3, p0, Lcom/transsion/widgets/battery/BatteryView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/transsion/widgets/battery/BatteryView;->noChargingHighColor:I

    sget p2, Lcom/transsion/common/R$styleable;->BatteryView_bv_charging_speed:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    rem-int/2addr p2, v2

    iput p2, p0, Lcom/transsion/widgets/battery/BatteryView;->chargingSpeed:I

    if-nez p2, :cond_4

    iput v0, p0, Lcom/transsion/widgets/battery/BatteryView;->chargingSpeed:I

    :cond_4
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private getHorizontalWidth(I)F
    .locals 3

    iget v0, p0, Lcom/transsion/widgets/battery/BatteryView;->width:I

    int-to-float v0, v0

    iget v1, p0, Lcom/transsion/widgets/battery/BatteryView;->borderWidth:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/transsion/widgets/battery/BatteryView;->borderPadding:F

    mul-float/2addr v2, v1

    sub-float/2addr v0, v2

    sub-float/2addr v0, v1

    iget p0, p0, Lcom/transsion/widgets/battery/BatteryView;->headerWidth:F

    sub-float/2addr v0, p0

    int-to-float p0, p1

    mul-float/2addr v0, p0

    const/high16 p0, 0x42c80000    # 100.0f

    div-float/2addr v0, p0

    return v0
.end method

.method private getVerticalHeight(I)F
    .locals 3

    iget v0, p0, Lcom/transsion/widgets/battery/BatteryView;->height:I

    int-to-float v0, v0

    iget v1, p0, Lcom/transsion/widgets/battery/BatteryView;->borderWidth:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/transsion/widgets/battery/BatteryView;->borderPadding:F

    const/high16 v2, 0x40400000    # 3.0f

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget p0, p0, Lcom/transsion/widgets/battery/BatteryView;->headerWidth:F

    sub-float/2addr v0, p0

    int-to-float p0, p1

    mul-float/2addr v0, p0

    const/high16 p0, 0x42c80000    # 100.0f

    div-float/2addr v0, p0

    return v0
.end method

.method public static bridge synthetic h(Lcom/transsion/widgets/battery/BatteryView;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/widgets/battery/BatteryView;->startCharge()V

    return-void
.end method

.method public static bridge synthetic i(Lcom/transsion/widgets/battery/BatteryView;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/widgets/battery/BatteryView;->stopCharge()V

    return-void
.end method

.method private initBattery()V
    .locals 2

    :try_start_0
    invoke-static {}, Lse;->a()Landroid/app/Application;

    move-result-object v0

    const-string v1, "batterymanager"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryManager;

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/BatteryManager;->getIntProperty(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgets/battery/BatteryView;->currentPower:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private initPaints()V
    .locals 4

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgets/battery/BatteryView;->borderPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/transsion/widgets/battery/BatteryView;->borderPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/transsion/widgets/battery/BatteryView;->borderPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/transsion/widgets/battery/BatteryView;->borderColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/transsion/widgets/battery/BatteryView;->borderPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/transsion/widgets/battery/BatteryView;->borderWidth:F

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgets/battery/BatteryView;->powerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/transsion/widgets/battery/BatteryView;->powerPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/transsion/widgets/battery/BatteryView;->powerPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/transsion/widgets/battery/BatteryView;->highColor:I

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/transsion/widgets/battery/BatteryView;->powerPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgets/battery/BatteryView;->headerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/transsion/widgets/battery/BatteryView;->headerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/transsion/widgets/battery/BatteryView;->headerPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/transsion/widgets/battery/BatteryView;->headerColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p0, p0, Lcom/transsion/widgets/battery/BatteryView;->headerPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method private registerPower()V
    .locals 2
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/transsion/widgets/battery/BatteryView;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/transsion/widgets/battery/BatteryView;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private startCharge()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgets/battery/BatteryView;->runnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/transsion/widgets/battery/BatteryView;->currentPower:I

    iput v0, p0, Lcom/transsion/widgets/battery/BatteryView;->power:I

    new-instance v0, Lcom/transsion/widgets/battery/BatteryView$2;

    invoke-direct {v0, p0}, Lcom/transsion/widgets/battery/BatteryView$2;-><init>(Lcom/transsion/widgets/battery/BatteryView;)V

    iput-object v0, p0, Lcom/transsion/widgets/battery/BatteryView;->runnable:Ljava/lang/Runnable;

    iget-object p0, p0, Lcom/transsion/widgets/battery/BatteryView;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private stopCharge()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/widgets/battery/BatteryView;->runnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/transsion/widgets/battery/BatteryView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/widgets/battery/BatteryView;->runnable:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method

.method private unregisterPower()V
    .locals 1
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    iget-object v0, p0, Lcom/transsion/widgets/battery/BatteryView;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/transsion/widgets/battery/BatteryView;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/widgets/battery/BatteryView;->orientation:Lcom/transsion/widgets/battery/BatteryViewOrientation;

    sget-object v1, Lcom/transsion/widgets/battery/BatteryViewOrientation;->HORIZONTAL_LEFT:Lcom/transsion/widgets/battery/BatteryViewOrientation;

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/transsion/widgets/battery/BatteryView;->drawHorizontalLeft(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/transsion/widgets/battery/BatteryViewOrientation;->HORIZONTAL_RIGHT:Lcom/transsion/widgets/battery/BatteryViewOrientation;

    if-ne v0, v1, :cond_1

    invoke-direct {p0, p1}, Lcom/transsion/widgets/battery/BatteryView;->drawHorizontalRight(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/transsion/widgets/battery/BatteryViewOrientation;->VERTICAL_TOP:Lcom/transsion/widgets/battery/BatteryViewOrientation;

    if-ne v0, v1, :cond_2

    invoke-direct {p0, p1}, Lcom/transsion/widgets/battery/BatteryView;->drawVerticalTop(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/transsion/widgets/battery/BatteryViewOrientation;->VERTICAL_BOTTOM:Lcom/transsion/widgets/battery/BatteryViewOrientation;

    if-ne v0, v1, :cond_3

    invoke-direct {p0, p1}, Lcom/transsion/widgets/battery/BatteryView;->drawVerticalBottom(Landroid/graphics/Canvas;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    iput p1, p0, Lcom/transsion/widgets/battery/BatteryView;->width:I

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iput p1, p0, Lcom/transsion/widgets/battery/BatteryView;->height:I

    return-void
.end method

.method public removeOnBatteryPowerListener()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/widgets/battery/BatteryView;->mOnBatteryPowerListener:Lcom/transsion/widgets/battery/OnBatteryPowerListener;

    return-void
.end method

.method public setChargingSpeed(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgets/battery/BatteryView;->chargingSpeed:I

    return-void
.end method

.method public setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 1
    .param p1    # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/transsion/widgets/battery/BatteryView;->mLifecycle:Landroidx/lifecycle/Lifecycle;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
    invoke-interface {p1}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/widgets/battery/BatteryView;->mLifecycle:Landroidx/lifecycle/Lifecycle;

    invoke-virtual {p1, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method public setOnBatteryPowerListener(Lcom/transsion/widgets/battery/OnBatteryPowerListener;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgets/battery/BatteryView;->mOnBatteryPowerListener:Lcom/transsion/widgets/battery/OnBatteryPowerListener;

    return-void
.end method

.method public declared-synchronized setPower(I)V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/transsion/widgets/battery/BatteryView;->mOnBatteryPowerListener:Lcom/transsion/widgets/battery/OnBatteryPowerListener;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/transsion/widgets/battery/BatteryView;->currentPower:I

    invoke-interface {v0, v1}, Lcom/transsion/widgets/battery/OnBatteryPowerListener;->onPower(I)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    :cond_0
    :goto_0
    iget v0, p0, Lcom/transsion/widgets/battery/BatteryView;->lowValue:I

    if-gt p1, v0, :cond_1

    iget-object v0, p0, Lcom/transsion/widgets/battery/BatteryView;->powerPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/transsion/widgets/battery/BatteryView;->lowColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    :cond_1
    iget v0, p0, Lcom/transsion/widgets/battery/BatteryView;->mediumValue:I

    if-ge p1, v0, :cond_2

    iget-object v0, p0, Lcom/transsion/widgets/battery/BatteryView;->powerPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/transsion/widgets/battery/BatteryView;->mediumColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/transsion/widgets/battery/BatteryView;->runnable:Ljava/lang/Runnable;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/transsion/widgets/battery/BatteryView;->powerPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/transsion/widgets/battery/BatteryView;->noChargingHighColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/transsion/widgets/battery/BatteryView;->powerPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/transsion/widgets/battery/BatteryView;->highColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    :goto_1
    iget-object v0, p0, Lcom/transsion/widgets/battery/BatteryView;->orientation:Lcom/transsion/widgets/battery/BatteryViewOrientation;

    sget-object v1, Lcom/transsion/widgets/battery/BatteryViewOrientation;->HORIZONTAL_RIGHT:Lcom/transsion/widgets/battery/BatteryViewOrientation;

    if-ne v0, v1, :cond_4

    invoke-direct {p0, p1}, Lcom/transsion/widgets/battery/BatteryView;->getHorizontalWidth(I)F

    move-result p1

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/transsion/widgets/battery/BatteryView;->borderWidth:F

    iget v2, p0, Lcom/transsion/widgets/battery/BatteryView;->borderPadding:F

    add-float v3, v1, v2

    add-float v4, v1, v2

    add-float v5, v1, v2

    add-float/2addr v5, p1

    iget p1, p0, Lcom/transsion/widgets/battery/BatteryView;->height:I

    int-to-float p1, p1

    sub-float/2addr p1, v1

    sub-float/2addr p1, v2

    invoke-direct {v0, v3, v4, v5, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/transsion/widgets/battery/BatteryView;->powerRf:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    goto :goto_2

    :cond_4
    sget-object v1, Lcom/transsion/widgets/battery/BatteryViewOrientation;->HORIZONTAL_LEFT:Lcom/transsion/widgets/battery/BatteryViewOrientation;

    if-ne v0, v1, :cond_5

    invoke-direct {p0, p1}, Lcom/transsion/widgets/battery/BatteryView;->getHorizontalWidth(I)F

    move-result p1

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/transsion/widgets/battery/BatteryView;->width:I

    int-to-float v2, v1

    iget v3, p0, Lcom/transsion/widgets/battery/BatteryView;->borderWidth:F

    sub-float/2addr v2, v3

    iget v4, p0, Lcom/transsion/widgets/battery/BatteryView;->borderPadding:F

    sub-float/2addr v2, v4

    sub-float/2addr v2, p1

    add-float p1, v3, v4

    int-to-float v1, v1

    sub-float/2addr v1, v3

    sub-float/2addr v1, v4

    iget v5, p0, Lcom/transsion/widgets/battery/BatteryView;->height:I

    int-to-float v5, v5

    sub-float/2addr v5, v3

    sub-float/2addr v5, v4

    invoke-direct {v0, v2, p1, v1, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/transsion/widgets/battery/BatteryView;->powerRf:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    goto :goto_2

    :cond_5
    sget-object v1, Lcom/transsion/widgets/battery/BatteryViewOrientation;->VERTICAL_TOP:Lcom/transsion/widgets/battery/BatteryViewOrientation;

    if-ne v0, v1, :cond_6

    invoke-direct {p0, p1}, Lcom/transsion/widgets/battery/BatteryView;->getVerticalHeight(I)F

    move-result p1

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/transsion/widgets/battery/BatteryView;->borderWidth:F

    iget v2, p0, Lcom/transsion/widgets/battery/BatteryView;->borderPadding:F

    add-float v3, v1, v2

    iget v4, p0, Lcom/transsion/widgets/battery/BatteryView;->height:I

    int-to-float v5, v4

    sub-float/2addr v5, v1

    sub-float/2addr v5, v2

    sub-float/2addr v5, p1

    iget p1, p0, Lcom/transsion/widgets/battery/BatteryView;->width:I

    int-to-float p1, p1

    sub-float/2addr p1, v1

    sub-float/2addr p1, v2

    int-to-float v4, v4

    sub-float/2addr v4, v1

    sub-float/2addr v4, v2

    invoke-direct {v0, v3, v5, p1, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/transsion/widgets/battery/BatteryView;->powerRf:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    goto :goto_2

    :cond_6
    sget-object v1, Lcom/transsion/widgets/battery/BatteryViewOrientation;->VERTICAL_BOTTOM:Lcom/transsion/widgets/battery/BatteryViewOrientation;

    if-ne v0, v1, :cond_7

    invoke-direct {p0, p1}, Lcom/transsion/widgets/battery/BatteryView;->getVerticalHeight(I)F

    move-result p1

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/transsion/widgets/battery/BatteryView;->borderWidth:F

    iget v2, p0, Lcom/transsion/widgets/battery/BatteryView;->borderPadding:F

    add-float v3, v1, v2

    add-float v4, v1, v2

    iget v5, p0, Lcom/transsion/widgets/battery/BatteryView;->width:I

    int-to-float v5, v5

    sub-float/2addr v5, v1

    sub-float/2addr v5, v2

    add-float/2addr v1, v2

    add-float/2addr v1, p1

    invoke-direct {v0, v3, v4, v5, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/transsion/widgets/battery/BatteryView;->powerRf:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_7
    :goto_2
    monitor-exit p0

    return-void

    :goto_3
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
