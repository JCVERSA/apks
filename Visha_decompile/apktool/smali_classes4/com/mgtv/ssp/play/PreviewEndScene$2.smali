.class Lcom/mgtv/ssp/play/PreviewEndScene$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgtv/ssp/play/PreviewEndScene;->addMultipleView(Landroid/content/Context;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mgtv/ssp/play/PreviewEndScene;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$layout:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Lcom/mgtv/ssp/play/PreviewEndScene;Landroid/widget/LinearLayout;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/ssp/play/PreviewEndScene$2;->this$0:Lcom/mgtv/ssp/play/PreviewEndScene;

    iput-object p2, p0, Lcom/mgtv/ssp/play/PreviewEndScene$2;->val$layout:Landroid/widget/LinearLayout;

    iput-object p3, p0, Lcom/mgtv/ssp/play/PreviewEndScene$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/mgtv/ssp/play/PreviewEndScene$2;->val$layout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    sget v2, Lcom/mgtv/ssp/R$id;->tv_btn:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/mgtv/ssp/play/PreviewEndScene$2;->val$layout:Landroid/widget/LinearLayout;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/mgtv/ssp/play/PreviewEndScene$2;->val$layout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int/2addr v3, v0

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int/2addr v3, v0

    iget-object v0, p0, Lcom/mgtv/ssp/play/PreviewEndScene$2;->this$0:Lcom/mgtv/ssp/play/PreviewEndScene;

    iget-object v2, p0, Lcom/mgtv/ssp/play/PreviewEndScene$2;->val$context:Landroid/content/Context;

    const/high16 v4, 0x41800000    # 16.0f

    invoke-static {v0, v2, v4}, Lcom/mgtv/ssp/play/PreviewEndScene;->access$100(Lcom/mgtv/ssp/play/PreviewEndScene;Landroid/content/Context;F)I

    move-result v0

    sub-int/2addr v3, v0

    iget-object v0, p0, Lcom/mgtv/ssp/play/PreviewEndScene$2;->val$layout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/mgtv/ssp/play/PreviewEndScene$2;->this$0:Lcom/mgtv/ssp/play/PreviewEndScene;

    iget-object v4, p0, Lcom/mgtv/ssp/play/PreviewEndScene$2;->val$context:Landroid/content/Context;

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v2, v4, v5}, Lcom/mgtv/ssp/play/PreviewEndScene;->access$100(Lcom/mgtv/ssp/play/PreviewEndScene;Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v0, v3, v1, v1, v2}, Landroid/view/View;->setPadding(IIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    iget-object v0, p0, Lcom/mgtv/ssp/play/PreviewEndScene$2;->val$layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
