.class public Lcom/transsion/widgetslib/dialog/d;
.super Landroid/app/Dialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/widgetslib/dialog/d$b;,
        Lcom/transsion/widgetslib/dialog/d$a;
    }
.end annotation


# instance fields
.field public b:Lcom/transsion/widgetslib/dialog/PromptController;

.field public c:Lcom/transsion/widgetslib/dialog/d$b;

.field public d:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    invoke-static {p1, p2}, Lcom/transsion/widgetslib/dialog/d;->h(Landroid/content/Context;I)I

    move-result p2

    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    new-instance p1, Lcom/transsion/widgetslib/dialog/PromptController;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-direct {p1, p2, p0, v0}, Lcom/transsion/widgetslib/dialog/PromptController;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V

    iput-object p1, p0, Lcom/transsion/widgetslib/dialog/d;->b:Lcom/transsion/widgetslib/dialog/PromptController;

    return-void
.end method

.method public static bridge synthetic a(Lcom/transsion/widgetslib/dialog/d;)Lcom/transsion/widgetslib/dialog/PromptController;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/d;->b:Lcom/transsion/widgetslib/dialog/PromptController;

    return-object p0
.end method

.method public static bridge synthetic b(Landroid/content/Context;I)I
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/widgetslib/dialog/d;->h(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic c(Landroid/content/Context;Z)I
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/widgetslib/dialog/d;->j(Landroid/content/Context;Z)I

    move-result p0

    return p0
.end method

.method public static h(Landroid/content/Context;I)I
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/transsion/widgetslib/dialog/d;->i(Landroid/content/Context;IZ)I

    move-result p0

    return p0
.end method

.method public static i(Landroid/content/Context;IZ)I
    .locals 1

    const/high16 v0, 0x1000000

    if-lt p1, v0, :cond_0

    return p1

    :cond_0
    if-eqz p2, :cond_1

    sget-boolean p1, Lolb;->d:Z

    if-eqz p1, :cond_1

    invoke-static {p0}, Lolb;->r(Landroid/content/Context;)I

    move-result p0

    goto :goto_0

    :cond_1
    sget p0, Lcom/transsion/widgetslib/R$style;->OS_Dialog_Alert_Base:I

    :goto_0
    return p0
.end method

.method public static j(Landroid/content/Context;Z)I
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/transsion/widgetslib/dialog/d;->i(Landroid/content/Context;IZ)I

    move-result p0

    return p0
.end method


# virtual methods
.method public d()V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/d;->d:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public e(I)Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/d;->b:Lcom/transsion/widgetslib/dialog/PromptController;

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/dialog/PromptController;->B(I)Landroid/widget/Button;

    move-result-object p0

    return-object p0
.end method

.method public final f()V
    .locals 5

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lolb;->p(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    if-nez v3, :cond_2

    return-void

    :cond_2
    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    iget v3, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    const/high16 v4, -0x80000000

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/view/View;->measure(II)V

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-static {v0}, Lolb;->p0(Landroid/view/Window;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lolb;->E(Landroid/content/Context;)I

    move-result p0

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lolb;->D(Landroid/content/Context;)I

    move-result p0

    :goto_0
    int-to-float p0, p0

    const v2, 0x3f59999a    # 0.85f

    mul-float/2addr p0, v2

    float-to-int p0, p0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    if-le v1, p0, :cond_4

    iput p0, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {v0, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_4
    return-void
.end method

.method public g(Landroid/content/res/Configuration;)V
    .locals 4

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lolb;->Z(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/d;->b:Lcom/transsion/widgetslib/dialog/PromptController;

    invoke-virtual {v1}, Lcom/transsion/widgetslib/dialog/PromptController;->H()Z

    move-result v1

    iget-object v2, p0, Lcom/transsion/widgetslib/dialog/d;->b:Lcom/transsion/widgetslib/dialog/PromptController;

    invoke-virtual {v2}, Lcom/transsion/widgetslib/dialog/PromptController;->I()Z

    move-result v2

    iget-object v3, p0, Lcom/transsion/widgetslib/dialog/d;->b:Lcom/transsion/widgetslib/dialog/PromptController;

    invoke-virtual {v3}, Lcom/transsion/widgetslib/dialog/PromptController;->E()Z

    move-result v3

    invoke-static {v0, p0, v1, v2, v3}, Lolb;->S0(Landroid/content/Context;Landroid/app/Dialog;ZZZ)V

    invoke-static {p0}, Lolb;->setUltraSmallModeDialogWidth(Landroid/app/Dialog;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lolb;->g0(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/d;->b:Lcom/transsion/widgetslib/dialog/PromptController;

    invoke-virtual {v1}, Lcom/transsion/widgetslib/dialog/PromptController;->H()Z

    move-result v1

    iget-object v2, p0, Lcom/transsion/widgetslib/dialog/d;->b:Lcom/transsion/widgetslib/dialog/PromptController;

    invoke-virtual {v2}, Lcom/transsion/widgetslib/dialog/PromptController;->I()Z

    move-result v2

    iget-object v3, p0, Lcom/transsion/widgetslib/dialog/d;->b:Lcom/transsion/widgetslib/dialog/PromptController;

    invoke-virtual {v3}, Lcom/transsion/widgetslib/dialog/PromptController;->E()Z

    move-result v3

    invoke-static {v0, p0, v1, v2, v3}, Lolb;->R0(Landroid/content/Context;Landroid/app/Dialog;ZZZ)V

    invoke-static {p0}, Lolb;->setPadDialogWidth(Landroid/app/Dialog;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/d;->b:Lcom/transsion/widgetslib/dialog/PromptController;

    invoke-virtual {v1}, Lcom/transsion/widgetslib/dialog/PromptController;->H()Z

    move-result v1

    iget-object v2, p0, Lcom/transsion/widgetslib/dialog/d;->b:Lcom/transsion/widgetslib/dialog/PromptController;

    invoke-virtual {v2}, Lcom/transsion/widgetslib/dialog/PromptController;->I()Z

    move-result v2

    iget-object v3, p0, Lcom/transsion/widgetslib/dialog/d;->b:Lcom/transsion/widgetslib/dialog/PromptController;

    invoke-virtual {v3}, Lcom/transsion/widgetslib/dialog/PromptController;->E()Z

    move-result v3

    invoke-static {v0, p0, v1, v2, v3}, Lolb;->N0(Landroid/content/Context;Landroid/app/Dialog;ZZZ)V

    invoke-static {p0}, Lolb;->setDialogWidth(Landroid/app/Dialog;)V

    :goto_0
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/d;->d:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/d;->d()V

    :cond_2
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/d;->c:Lcom/transsion/widgetslib/dialog/d$b;

    if-eqz v0, :cond_3

    invoke-interface {v0, p1}, Lcom/transsion/widgetslib/dialog/d$b;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_3
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lolb;->g0(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/d;->f()V

    :cond_4
    return-void
.end method

.method public getLiquidContainerView()Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/d;->b:Lcom/transsion/widgetslib/dialog/PromptController;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/PromptController;->getLiquidContainerView()Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;

    move-result-object p0

    return-object p0
.end method

.method public getListView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/d;->b:Lcom/transsion/widgetslib/dialog/PromptController;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/PromptController;->getListView()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getMessageTextView()Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/d;->b:Lcom/transsion/widgetslib/dialog/PromptController;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/PromptController;->getMessageTextView()Landroid/widget/TextView;

    move-result-object p0

    return-object p0
.end method

.method public hide()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/d;->c:Lcom/transsion/widgetslib/dialog/d$b;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsion/widgetslib/dialog/d$b;->b()V

    :cond_0
    invoke-super {p0}, Landroid/app/Dialog;->hide()V

    return-void
.end method

.method public k(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1

    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/d;->b:Lcom/transsion/widgetslib/dialog/PromptController;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/transsion/widgetslib/dialog/PromptController;->N(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    return-void
.end method

.method public l()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/d;->b:Lcom/transsion/widgetslib/dialog/PromptController;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/PromptController;->e0()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/d;->b:Lcom/transsion/widgetslib/dialog/PromptController;

    invoke-virtual {p1}, Lcom/transsion/widgetslib/dialog/PromptController;->F()V

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lolb;->Z(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p0}, Lolb;->setUltraSmallModeDialogWidth(Landroid/app/Dialog;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lolb;->g0(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {p0}, Lolb;->setPadDialogWidth(Landroid/app/Dialog;)V

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lolb;->setDialogWidth(Landroid/app/Dialog;)V

    :goto_0
    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/d;->d:Ljava/lang/Integer;

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/d;->d()V

    :cond_2
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lolb;->g0(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/d;->f()V

    :cond_3
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lolb;->Z(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/d;->b:Lcom/transsion/widgetslib/dialog/PromptController;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/dialog/PromptController;->H()Z

    move-result v0

    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/d;->b:Lcom/transsion/widgetslib/dialog/PromptController;

    invoke-virtual {v1}, Lcom/transsion/widgetslib/dialog/PromptController;->I()Z

    move-result v1

    iget-object v2, p0, Lcom/transsion/widgetslib/dialog/d;->b:Lcom/transsion/widgetslib/dialog/PromptController;

    invoke-virtual {v2}, Lcom/transsion/widgetslib/dialog/PromptController;->E()Z

    move-result v2

    invoke-static {p1, p0, v0, v1, v2}, Lolb;->S0(Landroid/content/Context;Landroid/app/Dialog;ZZZ)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lolb;->g0(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/d;->b:Lcom/transsion/widgetslib/dialog/PromptController;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/dialog/PromptController;->H()Z

    move-result v0

    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/d;->b:Lcom/transsion/widgetslib/dialog/PromptController;

    invoke-virtual {v1}, Lcom/transsion/widgetslib/dialog/PromptController;->I()Z

    move-result v1

    iget-object v2, p0, Lcom/transsion/widgetslib/dialog/d;->b:Lcom/transsion/widgetslib/dialog/PromptController;

    invoke-virtual {v2}, Lcom/transsion/widgetslib/dialog/PromptController;->E()Z

    move-result v2

    invoke-static {p1, p0, v0, v1, v2}, Lolb;->R0(Landroid/content/Context;Landroid/app/Dialog;ZZZ)V

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/d;->b:Lcom/transsion/widgetslib/dialog/PromptController;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/dialog/PromptController;->H()Z

    move-result v0

    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/d;->b:Lcom/transsion/widgetslib/dialog/PromptController;

    invoke-virtual {v1}, Lcom/transsion/widgetslib/dialog/PromptController;->I()Z

    move-result v1

    iget-object v2, p0, Lcom/transsion/widgetslib/dialog/d;->b:Lcom/transsion/widgetslib/dialog/PromptController;

    invoke-virtual {v2}, Lcom/transsion/widgetslib/dialog/PromptController;->E()Z

    move-result v2

    invoke-static {p1, p0, v0, v1, v2}, Lolb;->N0(Landroid/content/Context;Landroid/app/Dialog;ZZZ)V

    :goto_1
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/d;->b:Lcom/transsion/widgetslib/dialog/PromptController;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/PromptController;->P()V

    return-void
.end method

.method public setDimAmount(F)V
    .locals 1

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public setLightTypeConfig(Lcom/transsion/widgetslib/view/liquid/vfx/light/LightTypeConfig;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/d;->b:Lcom/transsion/widgetslib/dialog/PromptController;

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/dialog/PromptController;->setLightTypeConfig(Lcom/transsion/widgetslib/view/liquid/vfx/light/LightTypeConfig;)V

    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/d;->b:Lcom/transsion/widgetslib/dialog/PromptController;

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/dialog/PromptController;->setMessage(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setOnPromptDialogStatusChangedListener(Lcom/transsion/widgetslib/dialog/d$b;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetslib/dialog/d;->c:Lcom/transsion/widgetslib/dialog/d$b;

    return-void
.end method

.method public setPromptDialogPaddingTop(I)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/d;->b:Lcom/transsion/widgetslib/dialog/PromptController;

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/dialog/PromptController;->setPromptDialogPaddingTop(I)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/d;->b:Lcom/transsion/widgetslib/dialog/PromptController;

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/dialog/PromptController;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitleTextAlignment(I)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/d;->b:Lcom/transsion/widgetslib/dialog/PromptController;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/PromptController;->getTitleView()Landroid/widget/TextView;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/view/View;->setTextAlignment(I)V

    :cond_0
    return-void
.end method

.method public setTitleTextAppearance(I)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/d;->b:Lcom/transsion/widgetslib/dialog/PromptController;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/PromptController;->getTitleView()Landroid/widget/TextView;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextAppearance(I)V

    :cond_0
    return-void
.end method

.method public setTitleTextDirection(I)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/d;->b:Lcom/transsion/widgetslib/dialog/PromptController;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/PromptController;->getTitleView()Landroid/widget/TextView;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/view/View;->setTextDirection(I)V

    :cond_0
    return-void
.end method

.method public setTitleViewBg(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/d;->b:Lcom/transsion/widgetslib/dialog/PromptController;

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/dialog/PromptController;->setTitleViewBg(I)V

    return-void
.end method

.method public setTopTitle(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 2
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/d;->b:Lcom/transsion/widgetslib/dialog/PromptController;

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/dialog/PromptController;->setTopTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTopTitle(Ljava/lang/CharSequence;)V
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/d;->b:Lcom/transsion/widgetslib/dialog/PromptController;

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/dialog/PromptController;->setTopTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 1

    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/d;->b:Lcom/transsion/widgetslib/dialog/PromptController;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/transsion/widgetslib/dialog/PromptController;->f0(ILandroid/view/View;)V

    return-void
.end method

.method public show()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/d;->c:Lcom/transsion/widgetslib/dialog/d$b;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsion/widgetslib/dialog/d$b;->a()V

    :cond_0
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method
