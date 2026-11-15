.class Lcom/cloud/tmc/integration/SoftHideKeyBoardUtil$1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/integration/SoftHideKeyBoardUtil;-><init>(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cloud/tmc/integration/SoftHideKeyBoardUtil;


# direct methods
.method constructor <init>(Lcom/cloud/tmc/integration/SoftHideKeyBoardUtil;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/SoftHideKeyBoardUtil$1;->this$0:Lcom/cloud/tmc/integration/SoftHideKeyBoardUtil;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/SoftHideKeyBoardUtil$1;->this$0:Lcom/cloud/tmc/integration/SoftHideKeyBoardUtil;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/cloud/tmc/integration/SoftHideKeyBoardUtil;->a(Lcom/cloud/tmc/integration/SoftHideKeyBoardUtil;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/cloud/tmc/integration/SoftHideKeyBoardUtil$1;->this$0:Lcom/cloud/tmc/integration/SoftHideKeyBoardUtil;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/cloud/tmc/integration/SoftHideKeyBoardUtil;->b(Lcom/cloud/tmc/integration/SoftHideKeyBoardUtil;)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    invoke-static {v0, v1}, Lcom/cloud/tmc/integration/SoftHideKeyBoardUtil;->c(Lcom/cloud/tmc/integration/SoftHideKeyBoardUtil;I)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/cloud/tmc/integration/SoftHideKeyBoardUtil$1;->this$0:Lcom/cloud/tmc/integration/SoftHideKeyBoardUtil;

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    invoke-static {v0, v1}, Lcom/cloud/tmc/integration/SoftHideKeyBoardUtil;->d(Lcom/cloud/tmc/integration/SoftHideKeyBoardUtil;Z)V

    .line 26
    .line 27
    .line 28
    :cond_0
    iget-object v0, p0, Lcom/cloud/tmc/integration/SoftHideKeyBoardUtil$1;->this$0:Lcom/cloud/tmc/integration/SoftHideKeyBoardUtil;

    .line 29
    .line 30
    invoke-static {v0}, Lcom/cloud/tmc/integration/SoftHideKeyBoardUtil;->e(Lcom/cloud/tmc/integration/SoftHideKeyBoardUtil;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method
