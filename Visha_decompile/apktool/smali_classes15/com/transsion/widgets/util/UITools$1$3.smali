.class Lcom/transsion/widgets/util/UITools$1$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


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

    iput-object p1, p0, Lcom/transsion/widgets/util/UITools$1$3;->this$0:Lcom/transsion/widgets/util/UITools$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChanged()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/widgets/util/UITools$1$3;->this$0:Lcom/transsion/widgets/util/UITools$1;

    invoke-static {v0}, Lcom/transsion/widgets/util/UITools$1;->b(Lcom/transsion/widgets/util/UITools$1;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/widgets/util/UITools$1$3;->this$0:Lcom/transsion/widgets/util/UITools$1;

    iget-object v0, v0, Lcom/transsion/widgets/util/UITools$1;->val$scrollView:Landroid/widget/HorizontalScrollView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/widgets/util/UITools$1$3;->this$0:Lcom/transsion/widgets/util/UITools$1;

    iget-object v0, v0, Lcom/transsion/widgets/util/UITools$1;->val$scrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/widgets/util/UITools$1$3;->this$0:Lcom/transsion/widgets/util/UITools$1;

    invoke-static {v1}, Lcom/transsion/widgets/util/UITools$1;->a(Lcom/transsion/widgets/util/UITools$1;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/transsion/widgets/util/UITools$1$3;->this$0:Lcom/transsion/widgets/util/UITools$1;

    iget-object v0, p0, Lcom/transsion/widgets/util/UITools$1;->val$scrollView:Landroid/widget/HorizontalScrollView;

    invoke-static {p0}, Lcom/transsion/widgets/util/UITools$1;->a(Lcom/transsion/widgets/util/UITools$1;)Ljava/lang/Runnable;

    move-result-object p0

    const-wide/16 v1, 0x64

    invoke-virtual {v0, p0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
