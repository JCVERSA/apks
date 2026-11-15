.class Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->Q()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;

.field final synthetic val$view:Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;


# direct methods
.method public constructor <init>(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$10;->this$0:Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;

    iput-object p2, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$10;->val$view:Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$10;->val$view:Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->computeVerticalScrollRange()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$10;->this$0:Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;

    invoke-static {v1}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->o(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;)I

    move-result v1

    if-ne v1, v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$10;->this$0:Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;

    invoke-static {v1, v0}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->y(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;I)V

    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$10;->this$0:Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->v(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;I)V

    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$10;->this$0:Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;

    iget-object v1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$10;->val$view:Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;

    invoke-static {v0}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->o(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;)I

    move-result v2

    iget-object v3, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$10;->val$view:Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;

    invoke-virtual {v3}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->computeVerticalScrollOffset()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->F(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;Landroid/view/View;II)V

    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$10;->this$0:Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;

    invoke-static {p0}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->C(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;)V

    return-void
.end method
