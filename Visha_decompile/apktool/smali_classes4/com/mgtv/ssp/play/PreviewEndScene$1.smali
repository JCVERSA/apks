.class Lcom/mgtv/ssp/play/PreviewEndScene$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgtv/ssp/play/PreviewEndScene;->addSingleView(Landroid/content/Context;Lcom/hunantv/imgo/net/entity/AuthInfo$Component;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mgtv/ssp/play/PreviewEndScene;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/mgtv/ssp/play/PreviewEndScene;Landroid/view/View;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/ssp/play/PreviewEndScene$1;->this$0:Lcom/mgtv/ssp/play/PreviewEndScene;

    iput-object p2, p0, Lcom/mgtv/ssp/play/PreviewEndScene$1;->val$view:Landroid/view/View;

    iput-object p3, p0, Lcom/mgtv/ssp/play/PreviewEndScene$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lcom/mgtv/ssp/play/PreviewEndScene$1;->this$0:Lcom/mgtv/ssp/play/PreviewEndScene;

    invoke-static {v0}, Lcom/mgtv/ssp/play/PreviewEndScene;->access$000(Lcom/mgtv/ssp/play/PreviewEndScene;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/mgtv/ssp/play/PreviewEndScene$1;->val$view:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Lcom/mgtv/ssp/play/PreviewEndScene$1;->val$view:Landroid/view/View;

    sget v2, Lcom/mgtv/ssp/R$id;->tv_btn:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/mgtv/ssp/play/PreviewEndScene$1;->val$view:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, 0x1

    if-lt v0, v5, :cond_0

    iget-object v6, p0, Lcom/mgtv/ssp/play/PreviewEndScene$1;->this$0:Lcom/mgtv/ssp/play/PreviewEndScene;

    invoke-static {v6}, Lcom/mgtv/ssp/play/PreviewEndScene;->access$000(Lcom/mgtv/ssp/play/PreviewEndScene;)Landroid/widget/LinearLayout;

    move-result-object v6

    sub-int/2addr v0, v5

    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v6, v0, Landroid/view/ViewGroup;

    if-eqz v6, :cond_0

    move-object v6, v0

    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    if-le v6, v5, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v2, v0

    iget-object v0, p0, Lcom/mgtv/ssp/play/PreviewEndScene$1;->this$0:Lcom/mgtv/ssp/play/PreviewEndScene;

    iget-object v5, p0, Lcom/mgtv/ssp/play/PreviewEndScene$1;->val$context:Landroid/content/Context;

    const/high16 v6, 0x41800000    # 16.0f

    invoke-static {v0, v5, v6}, Lcom/mgtv/ssp/play/PreviewEndScene;->access$100(Lcom/mgtv/ssp/play/PreviewEndScene;Landroid/content/Context;F)I

    move-result v0

    add-int/2addr v2, v0

    iput v2, v4, Landroid/widget/LinearLayout$LayoutParams;->width:I

    invoke-virtual {v1, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/mgtv/ssp/play/PreviewEndScene$1;->val$view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget-object v0, p0, Lcom/mgtv/ssp/play/PreviewEndScene$1;->val$view:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    iget-object v0, p0, Lcom/mgtv/ssp/play/PreviewEndScene$1;->val$view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
