.class public Lcom/transsion/widgetslib/view/OSCheckBox;
.super Landroid/widget/CheckBox;
.source "SourceFile"


# static fields
.field public static final TAG:Ljava/lang/String; = "OSCheckBox"


# instance fields
.field public b:Lcv8;

.field public c:Lcv8;

.field public d:Lcv8;

.field public e:Lcv8;

.field public f:Landroid/graphics/drawable/StateListDrawable;

.field public g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/OSCheckBox;->a(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    invoke-virtual {p0, p2}, Lcom/transsion/widgetslib/view/OSCheckBox;->a(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 6
    invoke-virtual {p0, p2}, Lcom/transsion/widgetslib/view/OSCheckBox;->a(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static getCheckDrawables(Landroid/content/Context;)Lyu8;
    .locals 7

    new-instance v0, Lyu8;

    invoke-direct {v0}, Lyu8;-><init>()V

    new-instance v1, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    const/4 v2, 0x1

    invoke-static {p0, v2}, Ld57;->c(Landroid/content/Context;Z)Ld57;

    move-result-object v2

    const v3, 0x101009e

    const v4, 0x10100a0

    filled-new-array {v4, v3}, [I

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    const v3, -0x101009e

    filled-new-array {v4, v3}, [I

    move-result-object v4

    sget v5, Lcom/transsion/widgetslib/R$drawable;->os_check_drawable_end_checked:I

    invoke-static {p0, v5}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    const/4 v4, 0x0

    invoke-static {p0, v4, v4}, Ld57;->d(Landroid/content/Context;ZZ)Ld57;

    move-result-object v5

    const v6, -0x10100a0

    filled-new-array {v6, v3}, [I

    move-result-object v3

    invoke-virtual {v1, v3, v5}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    invoke-static {p0}, Ld57;->b(Landroid/content/Context;)Ld57;

    move-result-object p0

    new-array v3, v4, [I

    invoke-virtual {v1, v3, p0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v1}, Lyu8;->setStateListDrawable(Landroid/graphics/drawable/StateListDrawable;)V

    invoke-virtual {v0, v2}, Lyu8;->setCheckedDrawable(Lcv8;)V

    invoke-virtual {v0, p0}, Lyu8;->setNormalDrawable(Lcv8;)V

    invoke-virtual {v0, v5}, Lyu8;->setDisabledDrawable(Lcv8;)V

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v0, -0x1

    if-nez p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const-string v1, "http://schemas.android.com/apk/res/android"

    const-string v2, "button"

    invoke-interface {p1, v1, v2, v0}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    :goto_0
    if-ne v1, v0, :cond_3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    sget-boolean v0, Lolb;->E:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/OSCheckBox;->b()V

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/transsion/widgetslib/R$styleable;->OSCheckBox:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    sget v0, Lcom/transsion/widgetslib/R$styleable;->OSCheckBox_picture_mode:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/view/OSCheckBox;->setPictureMode(Z)V

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/widgetslib/view/OSCheckBox;->c:Lcv8;

    iput-object v0, p0, Lcom/transsion/widgetslib/view/OSCheckBox;->b:Lcv8;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/transsion/widgetslib/view/OSCheckBox;->d:Lcv8;

    iput-object v0, p0, Lcom/transsion/widgetslib/view/OSCheckBox;->b:Lcv8;

    :goto_1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_3
    return-void
.end method

.method public final b()V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/widgetslib/view/OSCheckBox;->getCheckDrawables(Landroid/content/Context;)Lyu8;

    move-result-object v0

    invoke-virtual {v0}, Lyu8;->getStateListDrawable()Landroid/graphics/drawable/StateListDrawable;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lyu8;->getStateListDrawable()Landroid/graphics/drawable/StateListDrawable;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/widgetslib/view/OSCheckBox;->f:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {p0, v1}, Lcom/transsion/widgetslib/view/OSCheckBox;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    invoke-virtual {v0}, Lyu8;->getCheckedDrawable()Lcv8;

    move-result-object v1

    instance-of v1, v1, Ld57;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lyu8;->getCheckedDrawable()Lcv8;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/widgetslib/view/OSCheckBox;->c:Lcv8;

    :cond_1
    invoke-virtual {v0}, Lyu8;->getNormalDrawable()Lcv8;

    move-result-object v1

    instance-of v1, v1, Ld57;

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lyu8;->getNormalDrawable()Lcv8;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/widgetslib/view/OSCheckBox;->d:Lcv8;

    :cond_2
    invoke-virtual {v0}, Lyu8;->getDisabledDrawable()Lcv8;

    move-result-object v1

    instance-of v1, v1, Ld57;

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lyu8;->getDisabledDrawable()Lcv8;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/view/OSCheckBox;->e:Lcv8;

    :cond_3
    return-void
.end method

.method public getCheckedDrawable()Ld57;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/transsion/widgetslib/view/OSCheckBox;->c:Lcv8;

    instance-of v0, p0, Ld57;

    if-eqz v0, :cond_0

    check-cast p0, Ld57;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getDisabledDrawable()Ld57;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/transsion/widgetslib/view/OSCheckBox;->e:Lcv8;

    instance-of v0, p0, Ld57;

    if-eqz v0, :cond_0

    check-cast p0, Ld57;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getNormalDrawable()Ld57;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/transsion/widgetslib/view/OSCheckBox;->d:Lcv8;

    instance-of v0, p0, Ld57;

    if-eqz v0, :cond_0

    check-cast p0, Ld57;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public isStopAnimation()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/widgetslib/view/OSCheckBox;->g:Z

    return p0
.end method

.method public onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-object p0, p0, Lcom/transsion/widgetslib/view/OSCheckBox;->b:Lcv8;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcv8;->stop()V

    :cond_0
    return-void
.end method

.method public setButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/transsion/widgetslib/view/OSCheckBox;->f:Landroid/graphics/drawable/StateListDrawable;

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/transsion/widgetslib/view/OSCheckBox;->c:Lcv8;

    iput-object p1, p0, Lcom/transsion/widgetslib/view/OSCheckBox;->d:Lcv8;

    iput-object p1, p0, Lcom/transsion/widgetslib/view/OSCheckBox;->e:Lcv8;

    :cond_0
    return-void
.end method

.method public setChecked(Z)V
    .locals 4

    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    sget-object v0, Lcom/transsion/widgetslib/view/OSCheckBox;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setChecked, checked: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", getParent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", obj: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lbq5;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/transsion/widgetslib/view/OSCheckBox;->b:Lcv8;

    if-eqz v1, :cond_5

    iget-object v2, p0, Lcom/transsion/widgetslib/view/OSCheckBox;->c:Lcv8;

    if-eqz v2, :cond_5

    iget-object v3, p0, Lcom/transsion/widgetslib/view/OSCheckBox;->d:Lcv8;

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    if-ne v1, v2, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setChecked, 111111: mCurrentDrawable: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/widgetslib/view/OSCheckBox;->c:Lcv8;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lbq5;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    if-nez p1, :cond_2

    if-ne v1, v3, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setChecked, 222222: mCurrentDrawable: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/widgetslib/view/OSCheckBox;->d:Lcv8;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lbq5;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    move-object v2, v3

    :goto_0
    iput-object v2, p0, Lcom/transsion/widgetslib/view/OSCheckBox;->b:Lcv8;

    invoke-interface {v2}, Lcv8;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/transsion/widgetslib/view/OSCheckBox;->b:Lcv8;

    invoke-interface {p1}, Lcv8;->stop()V

    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_5
    :goto_1
    return-void
.end method

.method public setCheckedFillColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/OSCheckBox;->getNormalDrawable()Ld57;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ld57;->setCheckedFillColor(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/OSCheckBox;->getCheckedDrawable()Ld57;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Ld57;->setCheckedFillColor(I)V

    :cond_1
    return-void
.end method

.method public setPictureMode(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/OSCheckBox;->getNormalDrawable()Ld57;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Ld57;->h(ZZ)V

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/OSCheckBox;->getCheckedDrawable()Ld57;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Ld57;->h(ZZ)V

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/OSCheckBox;->getDisabledDrawable()Ld57;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result p0

    invoke-virtual {v0, p1, p0}, Ld57;->h(ZZ)V

    :cond_2
    return-void
.end method

.method public setShowBorderShadow(ZZ)V
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/OSCheckBox;->getNormalDrawable()Ld57;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ld57;->setShowBorderShadow(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/OSCheckBox;->getCheckedDrawable()Ld57;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0, p2}, Ld57;->setShowBorderShadow(Z)V

    :cond_1
    return-void
.end method

.method public setStopAnimation(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/widgetslib/view/OSCheckBox;->g:Z

    return-void
.end method

.method public setTickColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/OSCheckBox;->getNormalDrawable()Ld57;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ld57;->setTickColor(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/OSCheckBox;->getCheckedDrawable()Ld57;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Ld57;->setTickColor(I)V

    :cond_1
    return-void
.end method

.method public setUncheckedBorderColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/OSCheckBox;->getNormalDrawable()Ld57;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ld57;->setUncheckedBorderColor(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/OSCheckBox;->getCheckedDrawable()Ld57;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Ld57;->setUncheckedBorderColor(I)V

    :cond_1
    return-void
.end method

.method public setUncheckedFillColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/OSCheckBox;->getNormalDrawable()Ld57;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ld57;->setUncheckedFillColor(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/OSCheckBox;->getCheckedDrawable()Ld57;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Ld57;->setUncheckedFillColor(I)V

    :cond_1
    return-void
.end method
