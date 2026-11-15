.class Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;
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

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$3;->this$0:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$3;->this$0:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->I0()V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$3;->this$0:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->z0()V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$3;->this$0:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-static {v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->g(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;)Lkx3;

    move-result-object v0

    invoke-virtual {v0}, Lkx3;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$3;->this$0:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-static {v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->f(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;)Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$g;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$3;->this$0:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-static {v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->f(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;)Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$g;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$g;->c(I)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$3;->this$0:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->w0(I)V

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$3;->this$0:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method
