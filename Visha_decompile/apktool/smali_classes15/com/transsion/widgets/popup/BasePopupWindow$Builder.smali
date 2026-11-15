.class public Lcom/transsion/widgets/popup/BasePopupWindow$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/widgets/popup/BasePopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private animationStyle:I

.field private backgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private contentView:Landroid/view/View;

.field private final context:Landroid/content/Context;

.field private elevation:I

.field private gravity:I

.field private height:I

.field private layoutId:I

.field private offsetX:I

.field private offsetY:I

.field private onDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

.field private outsideTouchable:Z

.field private final popupWindow:Landroid/widget/PopupWindow;

.field private target:Landroid/view/View;

.field private touchable:Z

.field private width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/widgets/popup/BasePopupWindow$Builder;->context:Landroid/content/Context;

    new-instance v0, Landroid/widget/PopupWindow;

    invoke-direct {v0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/widgets/popup/BasePopupWindow$Builder;->popupWindow:Landroid/widget/PopupWindow;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/transsion/widgets/popup/BasePopupWindow$Builder;->outsideTouchable:Z

    iput-boolean p1, p0, Lcom/transsion/widgets/popup/BasePopupWindow$Builder;->touchable:Z

    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object p1, p0, Lcom/transsion/widgets/popup/BasePopupWindow$Builder;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    iput v0, p0, Lcom/transsion/widgets/popup/BasePopupWindow$Builder;->width:I

    iput v0, p0, Lcom/transsion/widgets/popup/BasePopupWindow$Builder;->height:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/transsion/widgets/popup/BasePopupWindow$Builder;->layoutId:I

    iput v0, p0, Lcom/transsion/widgets/popup/BasePopupWindow$Builder;->offsetX:I

    iput v0, p0, Lcom/transsion/widgets/popup/BasePopupWindow$Builder;->offsetY:I

    iput v0, p0, Lcom/transsion/widgets/popup/BasePopupWindow$Builder;->elevation:I

    const/4 p1, 0x7

    iput p1, p0, Lcom/transsion/widgets/popup/BasePopupWindow$Builder;->gravity:I

    return-void
.end method

.method private setPopupWindowConfig(Lcom/transsion/widgets/popup/BasePopupWindow;)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/widgets/popup/BasePopupWindow$Builder;->context:Landroid/content/Context;

    if-eqz v0, :cond_5

    invoke-static {p1, v0}, Lcom/transsion/widgets/popup/BasePopupWindow;->c(Lcom/transsion/widgets/popup/BasePopupWindow;Landroid/content/Context;)V

    iget-object v0, p0, Lcom/transsion/widgets/popup/BasePopupWindow$Builder;->contentView:Landroid/view/View;

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    iget v2, p0, Lcom/transsion/widgets/popup/BasePopupWindow$Builder;->layoutId:I

    if-ne v2, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/transsion/widgets/popup/CusException;

    const-string p1, "setContentView and setLayoutId can\'t be used together."

    invoke-direct {p0, p1}, Lcom/transsion/widgets/popup/CusException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    iget v0, p0, Lcom/transsion/widgets/popup/BasePopupWindow$Builder;->layoutId:I

    if-eq v0, v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Lcom/transsion/widgets/popup/CusException;

    const-string p1, "contentView or layoutId can\'t be null."

    invoke-direct {p0, p1}, Lcom/transsion/widgets/popup/CusException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/transsion/widgets/popup/BasePopupWindow$Builder;->target:Landroid/view/View;

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/transsion/widgets/popup/BasePopupWindow$Builder;->width:I

    invoke-static {p1, v0}, Lcom/transsion/widgets/popup/BasePopupWindow;->p(Lcom/transsion/widgets/popup/BasePopupWindow;I)V

    iget v0, p0, Lcom/transsion/widgets/popup/BasePopupWindow$Builder;->height:I

    invoke-static {p1, v0}, Lcom/transsion/widgets/popup/BasePopupWindow;->f(Lcom/transsion/widgets/popup/BasePopupWindow;I)V

    iget-object v0, p0, Lcom/transsion/widgets/popup/BasePopupWindow$Builder;->contentView:Landroid/view/View;

    invoke-static {p1, v0}, Lcom/transsion/widgets/popup/BasePopupWindow;->o(Lcom/transsion/widgets/popup/BasePopupWindow;Landroid/view/View;)V

    iget v0, p0, Lcom/transsion/widgets/popup/BasePopupWindow$Builder;->layoutId:I

    invoke-static {p1, v0}, Lcom/transsion/widgets/popup/BasePopupWindow;->g(Lcom/transsion/widgets/popup/BasePopupWindow;I)V

    iget-object v0, p0, Lcom/transsion/widgets/popup/BasePopupWindow$Builder;->popupWindow:Landroid/widget/PopupWindow;

    invoke-static {p1, v0}, Lcom/transsion/widgets/popup/BasePopupWindow;->l(Lcom/transsion/widgets/popup/BasePopupWindow;Landroid/widget/PopupWindow;)V

    iget-boolean v0, p0, Lcom/transsion/widgets/popup/BasePopupWindow$Builder;->outsideTouchable:Z

    invoke-static {p1, v0}, Lcom/transsion/widgets/popup/BasePopupWindow;->k(Lcom/transsion/widgets/popup/BasePopupWindow;Z)V

    iget-object v0, p0, Lcom/transsion/widgets/popup/BasePopupWindow$Builder;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {p1, v0}, Lcom/transsion/widgets/popup/BasePopupWindow;->b(Lcom/transsion/widgets/popup/BasePopupWindow;Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/transsion/widgets/popup/BasePopupWindow$Builder;->onDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-static {p1, v0}, Lcom/transsion/widgets/popup/BasePopupWindow;->j(Lcom/transsion/widgets/popup/BasePopupWindow;Landroid/widget/PopupWindow$OnDismissListener;)V

    iget v0, p0, Lcom/transsion/widgets/popup/BasePopupWindow$Builder;->animationStyle:I

    invoke-static {p1, v0}, Lcom/transsion/widgets/popup/BasePopupWindow;->a(Lcom/transsion/widgets/popup/BasePopupWindow;I)V

    iget-boolean v0, p0, Lcom/transsion/widgets/popup/BasePopupWindow$Builder;->touchable:Z

    invoke-static {p1, v0}, Lcom/transsion/widgets/popup/BasePopupWindow;->n(Lcom/transsion/widgets/popup/BasePopupWindow;Z)V

    iget v0, p0, Lcom/transsion/widgets/popup/BasePopupWindow$Builder;->offsetX:I

    invoke-static {p1, v0}, Lcom/transsion/widgets/popup/BasePopupWindow;->h(Lcom/transsion/widgets/popup/BasePopupWindow;I)V

    iget v0, p0, Lcom/transsion/widgets/popup/BasePopupWindow$Builder;->offsetY:I

    invoke-static {p1, v0}, Lcom/transsion/widgets/popup/BasePopupWindow;->i(Lcom/transsion/widgets/popup/BasePopupWindow;I)V

    iget v0, p0, Lcom/transsion/widgets/popup/BasePopupWindow$Builder;->elevation:I

    invoke-static {p1, v0}, Lcom/transsion/widgets/popup/BasePopupWindow;->d(Lcom/transsion/widgets/popup/BasePopupWindow;I)V

    iget-object v0, p0, Lcom/transsion/widgets/popup/BasePopupWindow$Builder;->target:Landroid/view/View;

    invoke-static {p1, v0}, Lcom/transsion/widgets/popup/BasePopupWindow;->m(Lcom/transsion/widgets/popup/BasePopupWindow;Landroid/view/View;)V

    iget p0, p0, Lcom/transsion/widgets/popup/BasePopupWindow$Builder;->gravity:I

    invoke-static {p1, p0}, Lcom/transsion/widgets/popup/BasePopupWindow;->e(Lcom/transsion/widgets/popup/BasePopupWindow;I)V

    return-void

    :cond_4
    new-instance p0, Lcom/transsion/widgets/popup/CusException;

    const-string p1, "please set a target view"

    invoke-direct {p0, p1}, Lcom/transsion/widgets/popup/CusException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Lcom/transsion/widgets/popup/CusException;

    const-string p1, "context can\'t be null."

    invoke-direct {p0, p1}, Lcom/transsion/widgets/popup/CusException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public build()Lcom/transsion/widgets/popup/BasePopupWindow;
    .locals 2

    new-instance v0, Lcom/transsion/widgets/popup/BasePopupWindow;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/widgets/popup/BasePopupWindow;-><init>(Lsb0;)V

    invoke-direct {p0, v0}, Lcom/transsion/widgets/popup/BasePopupWindow$Builder;->setPopupWindowConfig(Lcom/transsion/widgets/popup/BasePopupWindow;)V

    return-object v0
.end method

.method public setAnimationStyle(I)Lcom/transsion/widgets/popup/BasePopupWindow$Builder;
    .locals 0

    iput p1, p0, Lcom/transsion/widgets/popup/BasePopupWindow$Builder;->animationStyle:I

    return-object p0
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)Lcom/transsion/widgets/popup/BasePopupWindow$Builder;
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgets/popup/BasePopupWindow$Builder;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public setContentView(Landroid/view/View;)Lcom/transsion/widgets/popup/BasePopupWindow$Builder;
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgets/popup/BasePopupWindow$Builder;->contentView:Landroid/view/View;

    return-object p0
.end method

.method public setElevation(I)Lcom/transsion/widgets/popup/BasePopupWindow$Builder;
    .locals 0

    iput p1, p0, Lcom/transsion/widgets/popup/BasePopupWindow$Builder;->elevation:I

    return-object p0
.end method

.method public setGravity(I)Lcom/transsion/widgets/popup/BasePopupWindow$Builder;
    .locals 0

    iput p1, p0, Lcom/transsion/widgets/popup/BasePopupWindow$Builder;->gravity:I

    return-object p0
.end method

.method public setHeight(I)Lcom/transsion/widgets/popup/BasePopupWindow$Builder;
    .locals 0

    iput p1, p0, Lcom/transsion/widgets/popup/BasePopupWindow$Builder;->height:I

    return-object p0
.end method

.method public setLayoutId(I)Lcom/transsion/widgets/popup/BasePopupWindow$Builder;
    .locals 0

    iput p1, p0, Lcom/transsion/widgets/popup/BasePopupWindow$Builder;->layoutId:I

    return-object p0
.end method

.method public setOffsetX(I)Lcom/transsion/widgets/popup/BasePopupWindow$Builder;
    .locals 0

    iput p1, p0, Lcom/transsion/widgets/popup/BasePopupWindow$Builder;->offsetX:I

    return-object p0
.end method

.method public setOffsetY(I)Lcom/transsion/widgets/popup/BasePopupWindow$Builder;
    .locals 0

    iput p1, p0, Lcom/transsion/widgets/popup/BasePopupWindow$Builder;->offsetY:I

    return-object p0
.end method

.method public setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)Lcom/transsion/widgets/popup/BasePopupWindow$Builder;
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgets/popup/BasePopupWindow$Builder;->onDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    return-object p0
.end method

.method public setOutsideTouchable(Z)Lcom/transsion/widgets/popup/BasePopupWindow$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/widgets/popup/BasePopupWindow$Builder;->outsideTouchable:Z

    return-object p0
.end method

.method public setTarget(Landroid/view/View;)Lcom/transsion/widgets/popup/BasePopupWindow$Builder;
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgets/popup/BasePopupWindow$Builder;->target:Landroid/view/View;

    return-object p0
.end method

.method public setTouchable(Z)Lcom/transsion/widgets/popup/BasePopupWindow$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/widgets/popup/BasePopupWindow$Builder;->touchable:Z

    return-object p0
.end method

.method public setWidth(I)Lcom/transsion/widgets/popup/BasePopupWindow$Builder;
    .locals 0

    iput p1, p0, Lcom/transsion/widgets/popup/BasePopupWindow$Builder;->width:I

    return-object p0
.end method
