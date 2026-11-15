.class Lcom/transsion/widgets/util/UITools$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/widgets/util/UITools$1;
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

    iput-object p1, p0, Lcom/transsion/widgets/util/UITools$1$1;->this$0:Lcom/transsion/widgets/util/UITools$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/widgets/util/UITools$1$1;->this$0:Lcom/transsion/widgets/util/UITools$1;

    iget-object v0, v0, Lcom/transsion/widgets/util/UITools$1;->val$scrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/widgets/util/UITools$1$1;->this$0:Lcom/transsion/widgets/util/UITools$1;

    iget-object v1, v1, Lcom/transsion/widgets/util/UITools$1;->val$scrollView:Landroid/widget/HorizontalScrollView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    sub-int/2addr v1, v0

    iget-object v2, p0, Lcom/transsion/widgets/util/UITools$1$1;->this$0:Lcom/transsion/widgets/util/UITools$1;

    iget-object v2, v2, Lcom/transsion/widgets/util/UITools$1;->val$scrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/transsion/widgets/util/UITools$1$1;->this$0:Lcom/transsion/widgets/util/UITools$1;

    iget v3, v2, Lcom/transsion/widgets/util/UITools$1;->val$padding:I

    if-gt v0, v3, :cond_0

    invoke-static {v2}, Lcom/transsion/widgets/util/UITools$1;->b(Lcom/transsion/widgets/util/UITools$1;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/transsion/widgets/util/UITools$1$1;->this$0:Lcom/transsion/widgets/util/UITools$1;

    invoke-static {p0}, Lcom/transsion/widgets/util/UITools$1;->d(Lcom/transsion/widgets/util/UITools$1;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgets/util/UITools$1$1;->this$0:Lcom/transsion/widgets/util/UITools$1;

    iget v2, v0, Lcom/transsion/widgets/util/UITools$1;->val$padding:I

    if-gt v1, v2, :cond_1

    invoke-static {v0}, Lcom/transsion/widgets/util/UITools$1;->b(Lcom/transsion/widgets/util/UITools$1;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/transsion/widgets/util/UITools$1$1;->this$0:Lcom/transsion/widgets/util/UITools$1;

    invoke-static {p0}, Lcom/transsion/widgets/util/UITools$1;->e(Lcom/transsion/widgets/util/UITools$1;)V

    :cond_1
    :goto_0
    return-void
.end method
