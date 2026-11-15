.class Lcom/transsion/widgets/util/UITools$1$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgets/util/UITools$1;->onGlobalLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/widgets/util/UITools$1;


# direct methods
.method public constructor <init>(Lcom/transsion/widgets/util/UITools$1;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgets/util/UITools$1$2;->this$0:Lcom/transsion/widgets/util/UITools$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v2, 0x5

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eq p1, v1, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_3

    :cond_1
    iget-object p1, p0, Lcom/transsion/widgets/util/UITools$1$2;->this$0:Lcom/transsion/widgets/util/UITools$1;

    invoke-static {p1, v0}, Lcom/transsion/widgets/util/UITools$1;->c(Lcom/transsion/widgets/util/UITools$1;Z)V

    iget-object p0, p0, Lcom/transsion/widgets/util/UITools$1$2;->this$0:Lcom/transsion/widgets/util/UITools$1;

    iget-object p1, p0, Lcom/transsion/widgets/util/UITools$1;->val$scrollView:Landroid/widget/HorizontalScrollView;

    invoke-static {p0}, Lcom/transsion/widgets/util/UITools$1;->a(Lcom/transsion/widgets/util/UITools$1;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/transsion/widgets/util/UITools$1$2;->this$0:Lcom/transsion/widgets/util/UITools$1;

    invoke-static {p0, v1}, Lcom/transsion/widgets/util/UITools$1;->c(Lcom/transsion/widgets/util/UITools$1;Z)V

    :cond_3
    :goto_1
    return v0
.end method
