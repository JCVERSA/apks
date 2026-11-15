.class public Lcom/transsion/tools/covert/fragments/ConverterMainFragment$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/tools/covert/fragments/ConverterMainFragment;->U0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Lcom/transsion/tools/covert/fragments/ConverterMainFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/tools/covert/fragments/ConverterMainFragment;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/tools/covert/fragments/ConverterMainFragment$a;->c:Lcom/transsion/tools/covert/fragments/ConverterMainFragment;

    iput-object p2, p0, Lcom/transsion/tools/covert/fragments/ConverterMainFragment$a;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    iget-object p2, p0, Lcom/transsion/tools/covert/fragments/ConverterMainFragment$a;->b:Landroid/view/View;

    invoke-virtual {p2, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    if-gtz p1, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lcom/transsion/tools/covert/fragments/ConverterMainFragment$a;->c:Lcom/transsion/tools/covert/fragments/ConverterMainFragment;

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

    iget-object p2, p0, Lcom/transsion/tools/covert/fragments/ConverterMainFragment$a;->c:Lcom/transsion/tools/covert/fragments/ConverterMainFragment;

    invoke-static {p2}, Lcom/transsion/tools/covert/fragments/ConverterMainFragment;->o0(Lcom/transsion/tools/covert/fragments/ConverterMainFragment;)Landroid/widget/Button;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout$LayoutParams;

    iput p1, p2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 p1, 0x1

    iput p1, p2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object p0, p0, Lcom/transsion/tools/covert/fragments/ConverterMainFragment$a;->c:Lcom/transsion/tools/covert/fragments/ConverterMainFragment;

    invoke-static {p0}, Lcom/transsion/tools/covert/fragments/ConverterMainFragment;->o0(Lcom/transsion/tools/covert/fragments/ConverterMainFragment;)Landroid/widget/Button;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
