.class Lcom/transsion/playercommon/widgets/TabOperationBar$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/playercommon/widgets/TabOperationBar;->N()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/playercommon/widgets/TabOperationBar;


# direct methods
.method public constructor <init>(Lcom/transsion/playercommon/widgets/TabOperationBar;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/widgets/TabOperationBar$10;->this$0:Lcom/transsion/playercommon/widgets/TabOperationBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/TabOperationBar$10;->this$0:Lcom/transsion/playercommon/widgets/TabOperationBar;

    invoke-virtual {v0}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/Display;->getCutout()Landroid/view/DisplayCutout;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/playercommon/widgets/TabOperationBar$10;->this$0:Lcom/transsion/playercommon/widgets/TabOperationBar;

    invoke-static {p0}, Lcom/transsion/playercommon/widgets/TabOperationBar;->i(Lcom/transsion/playercommon/widgets/TabOperationBar;)Landroid/widget/ListPopupWindow;

    move-result-object p0

    invoke-virtual {v0}, Landroid/view/Display;->getCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v0

    neg-int v0, v0

    invoke-virtual {p0, v0}, Landroid/widget/ListPopupWindow;->setHorizontalOffset(I)V

    :cond_1
    :goto_0
    return-void
.end method
