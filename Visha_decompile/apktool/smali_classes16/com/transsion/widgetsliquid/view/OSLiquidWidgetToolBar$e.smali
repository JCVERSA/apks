.class public final Lcom/transsion/widgetsliquid/view/OSLiquidWidgetToolBar$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetsliquid/view/OSLiquidWidgetToolBar;->E(Landroid/widget/TextView;FFZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic b:Landroid/widget/TextView;

.field public final synthetic c:I

.field public final synthetic d:F

.field public final synthetic e:F

.field public final synthetic f:Z

.field public final synthetic g:I


# direct methods
.method public constructor <init>(Landroid/widget/TextView;IFFZI)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidWidgetToolBar$e;->b:Landroid/widget/TextView;

    iput p2, p0, Lcom/transsion/widgetsliquid/view/OSLiquidWidgetToolBar$e;->c:I

    iput p3, p0, Lcom/transsion/widgetsliquid/view/OSLiquidWidgetToolBar$e;->d:F

    iput p4, p0, Lcom/transsion/widgetsliquid/view/OSLiquidWidgetToolBar$e;->e:F

    iput-boolean p5, p0, Lcom/transsion/widgetsliquid/view/OSLiquidWidgetToolBar$e;->f:Z

    iput p6, p0, Lcom/transsion/widgetsliquid/view/OSLiquidWidgetToolBar$e;->g:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 5

    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidWidgetToolBar$e;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidWidgetToolBar$e;->b:Landroid/widget/TextView;

    sget v1, Lcom/transsion/widgetsliquid/R$id;->os_liquid_toolbar_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidWidgetToolBar$e;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidWidgetToolBar$e;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidWidgetToolBar$e;->b:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidWidgetToolBar$e;->b:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    if-gtz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidWidgetToolBar$e;->b:Landroid/widget/TextView;

    iget v1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidWidgetToolBar$e;->d:F

    iget v2, p0, Lcom/transsion/widgetsliquid/view/OSLiquidWidgetToolBar$e;->e:F

    iget-boolean v3, p0, Lcom/transsion/widgetsliquid/view/OSLiquidWidgetToolBar$e;->f:Z

    iget v4, p0, Lcom/transsion/widgetsliquid/view/OSLiquidWidgetToolBar$e;->g:I

    invoke-static {v0, v1, v2, v3, v4}, Lolb;->F0(Landroid/widget/TextView;FFZI)F

    move-result v0

    iget-object v1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidWidgetToolBar$e;->b:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidWidgetToolBar$e;->b:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidWidgetToolBar$e;->b:Landroid/widget/TextView;

    iget p0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidWidgetToolBar$e;->g:I

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setMaxLines(I)V

    return-void
.end method
