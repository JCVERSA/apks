.class Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->g0(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;


# direct methods
.method public constructor <init>(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$1;->this$0:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$1;->this$0:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-static {v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->d(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$1;->this$0:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-static {v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->b(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$1;->this$0:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->q(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$1;->this$0:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-static {v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->h(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;)Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$1;->this$0:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v3, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$1;->this$0:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-static {v3}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->j(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;)I

    move-result v4

    iget-object v5, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$1;->this$0:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-static {v5}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->i(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;)I

    move-result v5

    mul-int/2addr v4, v5

    int-to-float v4, v4

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float/2addr v4, v5

    add-float/2addr v4, v2

    invoke-static {v3, v4}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->l(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;F)V

    iget-object v3, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$1;->this$0:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-static {v3}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->j(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;)I

    move-result v4

    iget-object v6, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$1;->this$0:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-static {v6}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->i(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;)I

    move-result v6

    mul-int/2addr v4, v6

    int-to-float v4, v4

    mul-float/2addr v4, v5

    sub-float/2addr v4, v2

    neg-float v4, v4

    invoke-static {v3, v4}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->k(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;F)V

    iget-object v3, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$1;->this$0:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    add-float/2addr v0, v1

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v0, v4

    invoke-static {v3}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->e(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v0, v5

    invoke-static {v3, v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->o(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;F)V

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$1;->this$0:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    sub-float/2addr v1, v2

    neg-float v0, v1

    div-float/2addr v0, v4

    invoke-static {p0, v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->n(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;F)V

    nop

    :cond_1
    :goto_0
    return-void
.end method
