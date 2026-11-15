.class public Lcom/transsion/widgets/battery/BatteryMeterView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/receiver/BatteryControllerReceiver$a;


# instance fields
.field private mBatteryControllerReceiver:Lcom/transsion/receiver/BatteryControllerReceiver;

.field private mBatteryHeight:I

.field private final mBatteryIconView:Landroid/widget/ImageView;

.field private mBatteryWidth:I

.field private mCharging:Z

.field private mChargingView:Landroid/widget/ImageView;

.field private mContext:Landroid/content/Context;

.field private final mDrawable:Lcom/transsion/widgets/battery/BatteryMeterDrawableBase;

.field private mLevel:I

.field private mRegistered:Z

.field private final unRegisterRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/widgets/battery/BatteryMeterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 2
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/transsion/widgets/battery/BatteryMeterView;->mLevel:I

    .line 4
    new-instance v0, Lpd0;

    invoke-direct {v0, p0}, Lpd0;-><init>(Lcom/transsion/widgets/battery/BatteryMeterView;)V

    iput-object v0, p0, Lcom/transsion/widgets/battery/BatteryMeterView;->unRegisterRunnable:Ljava/lang/Runnable;

    .line 5
    iput-object p1, p0, Lcom/transsion/widgets/battery/BatteryMeterView;->mContext:Landroid/content/Context;

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/common/R$dimen;->ic_sb_battery_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgets/battery/BatteryMeterView;->mBatteryWidth:I

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/common/R$dimen;->ic_sb_battery_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgets/battery/BatteryMeterView;->mBatteryHeight:I

    .line 8
    sget-object v0, Lcom/transsion/common/R$styleable;->BatteryMeterView:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 9
    sget p3, Lcom/transsion/common/R$styleable;->BatteryMeterView_frameColor:I

    sget v0, Lcom/transsion/common/R$color;->white:I

    .line 10
    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    .line 11
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    .line 12
    new-instance v0, Lcom/transsion/widgets/battery/BatteryMeterDrawableBase;

    invoke-direct {v0, p1, p3}, Lcom/transsion/widgets/battery/BatteryMeterDrawableBase;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/transsion/widgets/battery/BatteryMeterView;->mDrawable:Lcom/transsion/widgets/battery/BatteryMeterDrawableBase;

    .line 13
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 14
    new-instance p2, Landroid/widget/ImageView;

    invoke-direct {p2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/transsion/widgets/battery/BatteryMeterView;->mBatteryIconView:Landroid/widget/ImageView;

    .line 15
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 16
    invoke-direct {p0}, Lcom/transsion/widgets/battery/BatteryMeterView;->setRTLPadding()V

    .line 17
    new-instance p1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget p3, p0, Lcom/transsion/widgets/battery/BatteryMeterView;->mBatteryWidth:I

    iget v0, p0, Lcom/transsion/widgets/battery/BatteryMeterView;->mBatteryHeight:I

    invoke-direct {p1, p3, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 18
    invoke-virtual {p0, p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 19
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 20
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/widgets/battery/BatteryMeterView;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/widgets/battery/BatteryMeterView;->lambda$new$0()V

    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/widgets/battery/BatteryMeterView;->unregisterBatteryReceiver()V

    return-void
.end method

.method private registerBatteryReceiver(Z)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/widgets/battery/BatteryMeterView;->mBatteryControllerReceiver:Lcom/transsion/receiver/BatteryControllerReceiver;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/transsion/widgets/battery/BatteryMeterView;->mRegistered:Z

    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/transsion/receiver/BatteryControllerReceiver;->a(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/transsion/widgets/battery/BatteryMeterView;->mBatteryControllerReceiver:Lcom/transsion/receiver/BatteryControllerReceiver;

    invoke-virtual {p1, p0}, Lcom/transsion/receiver/BatteryControllerReceiver;->b(Lcom/transsion/receiver/BatteryControllerReceiver$a;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/transsion/widgets/battery/BatteryMeterView;->mRegistered:Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/transsion/widgets/battery/BatteryMeterView;->unRegisterRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lcom/transsion/widgets/battery/BatteryMeterView;->unRegisterRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x2710

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private setRTLPadding()V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/common/R$dimen;->dp2:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1, v0, v1}, Landroid/view/View;->setPadding(IIII)V

    :cond_0
    return-void
.end method

.method private showChangingView(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/transsion/widgets/battery/BatteryMeterView;->mCharging:Z

    if-eq p1, v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showChangingView charging:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",mCharging:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/widgets/battery/BatteryMeterView;->mCharging:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BatteryMeterView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/transsion/widgets/battery/BatteryMeterView;->mCharging:Z

    if-eqz p1, :cond_0

    new-instance p1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/transsion/widgets/battery/BatteryMeterView;->mChargingView:Landroid/widget/ImageView;

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v0, 0x11

    const/4 v1, -0x1

    invoke-direct {p1, v1, v1, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/common/R$dimen;->dp1:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iget-object v0, p0, Lcom/transsion/widgets/battery/BatteryMeterView;->mChargingView:Landroid/widget/ImageView;

    sget v1, Lcom/transsion/common/R$drawable;->ic_change:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/transsion/widgets/battery/BatteryMeterView;->mChargingView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/transsion/widgets/battery/BatteryMeterView;->mChargingView:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/transsion/widgets/battery/BatteryMeterView;->mChargingView:Landroid/widget/ImageView;

    :cond_1
    :goto_0
    return-void
.end method

.method private unregisterBatteryReceiver()V
    .locals 2

    iget-boolean v0, p0, Lcom/transsion/widgets/battery/BatteryMeterView;->mRegistered:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/widgets/battery/BatteryMeterView;->mBatteryControllerReceiver:Lcom/transsion/receiver/BatteryControllerReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/transsion/widgets/battery/BatteryMeterView;->mBatteryControllerReceiver:Lcom/transsion/receiver/BatteryControllerReceiver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/receiver/BatteryControllerReceiver;->b(Lcom/transsion/receiver/BatteryControllerReceiver$a;)V

    iput-object v1, p0, Lcom/transsion/widgets/battery/BatteryMeterView;->mBatteryControllerReceiver:Lcom/transsion/receiver/BatteryControllerReceiver;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/widgets/battery/BatteryMeterView;->mRegistered:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public hasOverlappingRendering()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    new-instance v0, Lcom/transsion/receiver/BatteryControllerReceiver;

    invoke-direct {v0}, Lcom/transsion/receiver/BatteryControllerReceiver;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgets/battery/BatteryMeterView;->mBatteryControllerReceiver:Lcom/transsion/receiver/BatteryControllerReceiver;

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/transsion/widgets/battery/BatteryMeterView;->registerBatteryReceiver(Z)V

    return-void
.end method

.method public onBatteryLevelChanged(IZZ)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgets/battery/BatteryMeterView;->mDrawable:Lcom/transsion/widgets/battery/BatteryMeterDrawableBase;

    invoke-virtual {v0, p1}, Lcom/transsion/widgets/battery/BatteryMeterDrawableBase;->setBatteryLevel(I)V

    const/16 v0, 0x64

    if-ge p1, v0, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-direct {p0, p2}, Lcom/transsion/widgets/battery/BatteryMeterView;->showChangingView(Z)V

    iget-object p3, p0, Lcom/transsion/widgets/battery/BatteryMeterView;->mDrawable:Lcom/transsion/widgets/battery/BatteryMeterDrawableBase;

    if-eqz p3, :cond_1

    invoke-virtual {p3, p2}, Lcom/transsion/widgets/battery/BatteryMeterDrawableBase;->setCharging(Z)V

    :cond_1
    iput p1, p0, Lcom/transsion/widgets/battery/BatteryMeterView;->mLevel:I

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    invoke-direct {p0}, Lcom/transsion/widgets/battery/BatteryMeterView;->unregisterBatteryReceiver()V

    iget-object v0, p0, Lcom/transsion/widgets/battery/BatteryMeterView;->unRegisterRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, p1}, Lcom/transsion/widgets/battery/BatteryMeterView;->registerBatteryReceiver(Z)V

    return-void
.end method
