.class public Lcom/transsion/widgetslib/widget/OSPopupPressLayout;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# static fields
.field public static final f:Lm97;


# instance fields
.field public b:Lcom/transsion/widgetsmotionlibrary/b;

.field public c:Z

.field public d:Ljava/lang/Integer;

.field public final e:Lcom/transsion/widgetsmotionlibrary/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lm97;

    invoke-direct {v0}, Lm97;-><init>()V

    sput-object v0, Lcom/transsion/widgetslib/widget/OSPopupPressLayout;->f:Lm97;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/transsion/widgetslib/widget/OSPopupPressLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/widgetslib/widget/OSPopupPressLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/widgetslib/R$dimen;->os_radius_l:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    .line 5
    invoke-static {p1}, Lcom/transsion/widgetsmotionlibrary/a;->c(F)Lcom/transsion/widgetsmotionlibrary/a;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/OSPopupPressLayout;->e:Lcom/transsion/widgetsmotionlibrary/a;

    return-void
.end method

.method private getMaskColor()I
    .locals 2

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/OSPopupPressLayout;->d:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v0, Lcom/transsion/widgetslib/R$attr;->os_opacityfill_weaker:I

    sget v1, Lcom/transsion/widgetslib/R$color;->os_opacityfill_weaker_hios:I

    invoke-static {p0, v0, v1}, Lolb;->m(Landroid/content/Context;II)I

    move-result p0

    return p0
.end method

.method private getPressTarget()Landroid/view/View;
    .locals 1

    sget v0, Lcom/transsion/widgetslib/R$id;->os_popup_item_content:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/OSPopupPressLayout;->b:Lcom/transsion/widgetsmotionlibrary/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/transsion/widgetsmotionlibrary/b;

    invoke-direct {v0}, Lcom/transsion/widgetsmotionlibrary/b;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/OSPopupPressLayout;->b:Lcom/transsion/widgetsmotionlibrary/b;

    :cond_0
    return-void
.end method

.method public clearMaskColorOverride()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/OSPopupPressLayout;->d:Ljava/lang/Integer;

    return-void
.end method

.method public dispatchSetPressed(Z)V
    .locals 0

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/OSPopupPressLayout;->getPressTarget()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/OSPopupPressLayout;->b:Lcom/transsion/widgetsmotionlibrary/b;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v1, v0}, Lcom/transsion/widgetsmotionlibrary/b;->l(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/transsion/widgetsmotionlibrary/b;->k()V

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/OSPopupPressLayout;->b:Lcom/transsion/widgetsmotionlibrary/b;

    :cond_1
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/view/View;->setPressed(Z)V

    iput-boolean v0, p0, Lcom/transsion/widgetslib/widget/OSPopupPressLayout;->c:Z

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method public setMaskColorOverride(I)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/OSPopupPressLayout;->d:Ljava/lang/Integer;

    return-void
.end method

.method public setPressed(Z)V
    .locals 8

    invoke-super {p0, p1}, Landroid/view/View;->setPressed(Z)V

    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/OSPopupPressLayout;->c:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/transsion/widgetslib/widget/OSPopupPressLayout;->c:Z

    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/OSPopupPressLayout;->getPressTarget()Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_1

    return-void

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/OSPopupPressLayout;->a()V

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/OSPopupPressLayout;->b:Lcom/transsion/widgetsmotionlibrary/b;

    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/OSPopupPressLayout;->getMaskColor()I

    move-result v3

    sget-object v6, Lcom/transsion/widgetslib/widget/OSPopupPressLayout;->f:Lm97;

    iget-object v7, p0, Lcom/transsion/widgetslib/widget/OSPopupPressLayout;->e:Lcom/transsion/widgetsmotionlibrary/a;

    const-wide/16 v4, 0xc8

    invoke-virtual/range {v1 .. v7}, Lcom/transsion/widgetsmotionlibrary/b;->v(Landroid/view/View;IJLandroid/view/animation/PathInterpolator;Lcom/transsion/widgetsmotionlibrary/a;)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/OSPopupPressLayout;->b:Lcom/transsion/widgetsmotionlibrary/b;

    if-eqz p0, :cond_3

    invoke-virtual {p0, v2}, Lcom/transsion/widgetsmotionlibrary/b;->p(Landroid/view/View;)V

    :cond_3
    :goto_0
    return-void
.end method
