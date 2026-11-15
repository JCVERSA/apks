.class public Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;->W0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment$a;->c:Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;

    iput-object p2, p0, Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment$a;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    iget-object p2, p0, Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment$a;->b:Landroid/view/View;

    invoke-virtual {p2, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    if-gtz p1, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment$a;->c:Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p2

    const/high16 p3, 0x43a00000    # 320.0f

    invoke-static {p2, p3}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result p2

    int-to-float p1, p1

    const p3, 0x3e99999a    # 0.3f

    mul-float/2addr p1, p3

    float-to-int p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget-object p2, p0, Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment$a;->c:Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;

    invoke-static {p2}, Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;->v0(Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;)Landroid/widget/Button;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout$LayoutParams;

    iget-object p3, p0, Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment$a;->c:Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;

    invoke-static {p3}, Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;->u0(Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;)Landroid/widget/RelativeLayout;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Landroid/widget/FrameLayout$LayoutParams;

    iput p1, p2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/4 p4, 0x1

    iput p4, p2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iput p4, p3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    div-int/lit8 p1, p1, 0x2

    iget-object p4, p0, Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment$a;->c:Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;

    invoke-virtual {p4}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p4

    const/high16 p5, 0x42480000    # 50.0f

    invoke-static {p4, p5}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result p4

    add-int/2addr p1, p4

    invoke-virtual {p3, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    iget-object p1, p0, Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment$a;->c:Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;

    invoke-static {p1}, Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;->v0(Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p0, p0, Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment$a;->c:Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;

    invoke-static {p0}, Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;->u0(Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;)Landroid/widget/RelativeLayout;

    move-result-object p0

    invoke-virtual {p0, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
