.class Lcom/transsion/widgetslistitemlayout/OSCollapseLinerLayout$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslistitemlayout/OSCollapseLinerLayout;->collapseViews(Landroid/view/View;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/widgetslistitemlayout/OSCollapseLinerLayout;

.field final synthetic val$fromView:Landroid/view/View;

.field final synthetic val$toView:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/transsion/widgetslistitemlayout/OSCollapseLinerLayout;Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/widgetslistitemlayout/OSCollapseLinerLayout$1;->this$0:Lcom/transsion/widgetslistitemlayout/OSCollapseLinerLayout;

    iput-object p2, p0, Lcom/transsion/widgetslistitemlayout/OSCollapseLinerLayout$1;->val$fromView:Landroid/view/View;

    iput-object p3, p0, Lcom/transsion/widgetslistitemlayout/OSCollapseLinerLayout$1;->val$toView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/transsion/widgetslistitemlayout/OSCollapseLinerLayout$1;->this$0:Lcom/transsion/widgetslistitemlayout/OSCollapseLinerLayout;

    iget-object v2, p0, Lcom/transsion/widgetslistitemlayout/OSCollapseLinerLayout$1;->val$fromView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    iget-object v2, p0, Lcom/transsion/widgetslistitemlayout/OSCollapseLinerLayout$1;->this$0:Lcom/transsion/widgetslistitemlayout/OSCollapseLinerLayout;

    iget-object v3, p0, Lcom/transsion/widgetslistitemlayout/OSCollapseLinerLayout$1;->val$toView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    :goto_0
    if-gt v1, v2, :cond_0

    iget-object v3, p0, Lcom/transsion/widgetslistitemlayout/OSCollapseLinerLayout$1;->this$0:Lcom/transsion/widgetslistitemlayout/OSCollapseLinerLayout;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/widgetslistitemlayout/OSCollapseLinerLayout$1;->this$0:Lcom/transsion/widgetslistitemlayout/OSCollapseLinerLayout;

    invoke-static {p0}, Lcom/transsion/widgetslistitemlayout/OSCollapseLinerLayout;->a(Lcom/transsion/widgetslistitemlayout/OSCollapseLinerLayout;)Lcom/transsion/widgetslistitemlayout/a;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslistitemlayout/a;->e(Ljava/util/List;)V

    return-void
.end method
