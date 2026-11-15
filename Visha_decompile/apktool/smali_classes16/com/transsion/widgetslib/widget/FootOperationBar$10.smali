.class Lcom/transsion/widgetslib/widget/FootOperationBar$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/widget/FootOperationBar;->Q()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/widgetslib/widget/FootOperationBar;


# direct methods
.method public constructor <init>(Lcom/transsion/widgetslib/widget/FootOperationBar;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar$10;->this$0:Lcom/transsion/widgetslib/widget/FootOperationBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar$10;->this$0:Lcom/transsion/widgetslib/widget/FootOperationBar;

    invoke-virtual {v0}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/Display;->getCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar$10;->this$0:Lcom/transsion/widgetslib/widget/FootOperationBar;

    invoke-static {v1}, Lcom/transsion/widgetslib/widget/FootOperationBar;->l(Lcom/transsion/widgetslib/widget/FootOperationBar;)Landroid/widget/ListPopupWindow;

    move-result-object v1

    if-nez v1, :cond_2

    return-void

    :cond_2
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar$10;->this$0:Lcom/transsion/widgetslib/widget/FootOperationBar;

    invoke-static {p0}, Lcom/transsion/widgetslib/widget/FootOperationBar;->l(Lcom/transsion/widgetslib/widget/FootOperationBar;)Landroid/widget/ListPopupWindow;

    move-result-object p0

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v0

    neg-int v0, v0

    invoke-virtual {p0, v0}, Landroid/widget/ListPopupWindow;->setHorizontalOffset(I)V

    return-void
.end method
