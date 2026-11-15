.class Lcom/transsion/widgetslistitemlayout/OSListItemView$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslistitemlayout/OSListItemView;->O()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/widgetslistitemlayout/OSListItemView;

.field final synthetic val$finalBadge:Lcom/transsion/widgetslib/view/BadgeView;

.field final synthetic val$finalBadgeMarginEnd:I

.field final synthetic val$finalBadgeMarginTop:I

.field final synthetic val$finalImage:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/transsion/widgetslistitemlayout/OSListItemView;Landroid/view/View;ILcom/transsion/widgetslib/view/BadgeView;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView$6;->this$0:Lcom/transsion/widgetslistitemlayout/OSListItemView;

    iput-object p2, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView$6;->val$finalImage:Landroid/view/View;

    iput p3, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView$6;->val$finalBadgeMarginTop:I

    iput-object p4, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView$6;->val$finalBadge:Lcom/transsion/widgetslib/view/BadgeView;

    iput p5, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView$6;->val$finalBadgeMarginEnd:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView$6;->this$0:Lcom/transsion/widgetslistitemlayout/OSListItemView;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView$6;->val$finalImage:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView$6;->val$finalBadge:Lcom/transsion/widgetslib/view/BadgeView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView$6;->val$finalImage:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    const/16 v2, 0x13

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v1, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView$6;->val$finalImage:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    const/4 v2, 0x6

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget v1, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView$6;->val$finalBadgeMarginTop:I

    neg-int v1, v1

    iget v2, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView$6;->val$finalBadgeMarginEnd:I

    neg-int v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iget-object p0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView$6;->val$finalBadge:Lcom/transsion/widgetslib/view/BadgeView;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
