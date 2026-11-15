.class public final Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetPanel$scheduleEnterAfterLayoutSettles$runnable$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetPanel;->u()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "com/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetPanel$scheduleEnterAfterLayoutSettles$runnable$1",
        "Ljava/lang/Runnable;",
        "Lzfb;",
        "run",
        "()V",
        "widgetsbottomsheet_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $retryCount:Lkotlin/jvm/internal/Ref$IntRef;

.field final synthetic this$0:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetPanel;


# direct methods
.method public constructor <init>(Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetPanel;Lkotlin/jvm/internal/Ref$IntRef;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetPanel$scheduleEnterAfterLayoutSettles$runnable$1;->this$0:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetPanel;

    iput-object p2, p0, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetPanel$scheduleEnterAfterLayoutSettles$runnable$1;->$retryCount:Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetPanel$scheduleEnterAfterLayoutSettles$runnable$1;->this$0:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetPanel;

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetPanel$scheduleEnterAfterLayoutSettles$runnable$1;->this$0:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetPanel;

    invoke-static {v0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetPanel;->access$getMEnterAnimator$p(Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetPanel;)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetPanel$scheduleEnterAfterLayoutSettles$runnable$1;->this$0:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetPanel;

    invoke-virtual {v0}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetPanel$scheduleEnterAfterLayoutSettles$runnable$1;->$retryCount:Lkotlin/jvm/internal/Ref$IntRef;

    iget v2, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    const/4 v3, 0x2

    if-ge v2, v3, :cond_1

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    iget-object v0, p0, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetPanel$scheduleEnterAfterLayoutSettles$runnable$1;->this$0:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetPanel;

    invoke-virtual {v0, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_1
    iget-object v0, p0, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetPanel$scheduleEnterAfterLayoutSettles$runnable$1;->this$0:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetPanel;

    invoke-static {v0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetPanel;->access$getMEnterScheduleRunnable$p(Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetPanel;)Ljava/lang/Runnable;

    move-result-object v0

    if-ne v0, p0, :cond_2

    iget-object v0, p0, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetPanel$scheduleEnterAfterLayoutSettles$runnable$1;->this$0:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetPanel;

    invoke-static {v0, v1}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetPanel;->access$setMEnterScheduleRunnable$p(Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetPanel;Ljava/lang/Runnable;)V

    :cond_2
    iget-object v0, p0, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetPanel$scheduleEnterAfterLayoutSettles$runnable$1;->this$0:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetPanel;

    invoke-static {v0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetPanel;->access$updatePanelHeight(Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetPanel;)V

    iget-object v0, p0, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetPanel$scheduleEnterAfterLayoutSettles$runnable$1;->this$0:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetPanel;

    invoke-static {v0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetPanel;->access$setPanelSmoothCornerBg(Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetPanel;)V

    iget-object p0, p0, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetPanel$scheduleEnterAfterLayoutSettles$runnable$1;->this$0:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetPanel;

    invoke-static {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetPanel;->access$animateEnter(Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetPanel;)V

    return-void

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetPanel$scheduleEnterAfterLayoutSettles$runnable$1;->this$0:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetPanel;

    invoke-static {v0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetPanel;->access$getMEnterScheduleRunnable$p(Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetPanel;)Ljava/lang/Runnable;

    move-result-object v0

    if-ne v0, p0, :cond_4

    iget-object p0, p0, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetPanel$scheduleEnterAfterLayoutSettles$runnable$1;->this$0:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetPanel;

    invoke-static {p0, v1}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetPanel;->access$setMEnterScheduleRunnable$p(Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetPanel;Ljava/lang/Runnable;)V

    :cond_4
    return-void
.end method
