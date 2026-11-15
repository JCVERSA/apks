.class Lcom/transsion/widgetslib/widget/FootOperationBar$15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/widget/FootOperationBar;->E(Landroid/view/View;Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/widgetslib/widget/FootOperationBar;

.field final synthetic val$child:Landroid/view/View;

.field final synthetic val$isExpend:Z

.field final synthetic val$parent:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/transsion/widgetslib/widget/FootOperationBar;Landroid/view/View;Landroid/view/View;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar$15;->this$0:Lcom/transsion/widgetslib/widget/FootOperationBar;

    iput-object p2, p0, Lcom/transsion/widgetslib/widget/FootOperationBar$15;->val$child:Landroid/view/View;

    iput-object p3, p0, Lcom/transsion/widgetslib/widget/FootOperationBar$15;->val$parent:Landroid/view/View;

    iput-boolean p4, p0, Lcom/transsion/widgetslib/widget/FootOperationBar$15;->val$isExpend:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar$15;->val$child:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iget-object v2, p0, Lcom/transsion/widgetslib/widget/FootOperationBar$15;->val$parent:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    const/4 v2, 0x0

    iput v2, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v2

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    iget-boolean v2, p0, Lcom/transsion/widgetslib/widget/FootOperationBar$15;->val$isExpend:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/transsion/widgetslib/widget/FootOperationBar$15;->this$0:Lcom/transsion/widgetslib/widget/FootOperationBar;

    invoke-static {v2}, Lcom/transsion/widgetslib/widget/FootOperationBar;->p(Lcom/transsion/widgetslib/widget/FootOperationBar;)I

    move-result v2

    iput v2, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Lcom/transsion/widgetslib/widget/FootOperationBar$15;->this$0:Lcom/transsion/widgetslib/widget/FootOperationBar;

    invoke-static {v2}, Lcom/transsion/widgetslib/widget/FootOperationBar;->p(Lcom/transsion/widgetslib/widget/FootOperationBar;)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_0
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/transsion/widgetslib/widget/FootOperationBar$15;->this$0:Lcom/transsion/widgetslib/widget/FootOperationBar;

    invoke-static {v2}, Lcom/transsion/widgetslib/widget/FootOperationBar;->o(Lcom/transsion/widgetslib/widget/FootOperationBar;)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/transsion/widgetslib/widget/FootOperationBar$15;->this$0:Lcom/transsion/widgetslib/widget/FootOperationBar;

    invoke-static {v2}, Lcom/transsion/widgetslib/widget/FootOperationBar;->o(Lcom/transsion/widgetslib/widget/FootOperationBar;)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar$15;->val$child:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar$15;->val$parent:Landroid/view/View;

    new-instance v2, Landroid/view/TouchDelegate;

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar$15;->val$child:Landroid/view/View;

    invoke-direct {v2, v0, p0}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    return-void
.end method
