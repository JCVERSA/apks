.class public Lcom/transsion/widgetslib/dialog/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Landroid/content/Context;

.field public b:Lcom/transsion/widgetslib/dialog/d$a;

.field public c:Landroid/view/View;

.field public d:Landroid/widget/TextView;

.field public e:Landroid/widget/TextView;

.field public f:Landroid/widget/ProgressBar;

.field public g:Landroid/widget/LinearLayout;

.field public h:I

.field public i:Z

.field public j:Z

.field public k:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/transsion/widgetslib/dialog/c;-><init>(Landroid/content/Context;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x64

    .line 3
    iput v0, p0, Lcom/transsion/widgetslib/dialog/c;->h:I

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/transsion/widgetslib/dialog/c;->i:Z

    .line 5
    iput-boolean v0, p0, Lcom/transsion/widgetslib/dialog/c;->j:Z

    .line 6
    new-instance v1, Lcom/transsion/widgetslib/dialog/d$a;

    invoke-direct {v1, p1, p2}, Lcom/transsion/widgetslib/dialog/d$a;-><init>(Landroid/content/Context;Z)V

    iput-object v1, p0, Lcom/transsion/widgetslib/dialog/c;->b:Lcom/transsion/widgetslib/dialog/d$a;

    .line 7
    invoke-virtual {v1}, Lcom/transsion/widgetslib/dialog/d$a;->getContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/widgetslib/dialog/c;->a:Landroid/content/Context;

    .line 8
    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/dialog/c;->e(Z)Lcom/transsion/widgetslib/dialog/c;

    .line 9
    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/dialog/c;->d(Z)Lcom/transsion/widgetslib/dialog/c;

    .line 10
    iget-object p2, p0, Lcom/transsion/widgetslib/dialog/c;->b:Lcom/transsion/widgetslib/dialog/d$a;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_progress_dialog_no_btn_insets:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/transsion/widgetslib/dialog/d$a;->q(I)Lcom/transsion/widgetslib/dialog/d$a;

    .line 11
    iget-object p2, p0, Lcom/transsion/widgetslib/dialog/c;->b:Lcom/transsion/widgetslib/dialog/d$a;

    iget-object p2, p2, Lcom/transsion/widgetslib/dialog/d$a;->a:Lcom/transsion/widgetslib/dialog/d;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/transsion/widgetslib/R$dimen;->os_progress_dialog_no_btn_insets_top:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/transsion/widgetslib/dialog/d;->setPromptDialogPaddingTop(I)V

    .line 12
    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/c;->c:Landroid/view/View;

    if-nez p1, :cond_0

    .line 13
    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/c;->c()V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()Lcom/transsion/widgetslib/dialog/d;
    .locals 2

    iget-boolean v0, p0, Lcom/transsion/widgetslib/dialog/c;->i:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/c;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/c;->b:Lcom/transsion/widgetslib/dialog/d$a;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/d$a;->a()Lcom/transsion/widgetslib/dialog/d;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    return-object p0
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/c;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/widgetslib/dialog/c;->j:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/c;->g:Landroid/widget/LinearLayout;

    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/c;->a:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_progress_intro_padding_top:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    float-to-int p0, p0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/c;->a:Landroid/content/Context;

    invoke-static {v0}, Lolb;->Z(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/c;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lcom/transsion/widgetslib/R$layout;->os_ultra_small_dialog_progress:I

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/dialog/c;->c:Landroid/view/View;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/c;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lcom/transsion/widgetslib/R$layout;->os_dialog_progress:I

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/dialog/c;->c:Landroid/view/View;

    :goto_0
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/c;->c:Landroid/view/View;

    sget v1, Lcom/transsion/widgetslib/R$id;->dialog_progress_bar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/transsion/widgetslib/dialog/c;->f:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/c;->c:Landroid/view/View;

    sget v1, Lcom/transsion/widgetslib/R$id;->dialog_progress_tv:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/widgetslib/dialog/c;->d:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/c;->c:Landroid/view/View;

    sget v1, Lcom/transsion/widgetslib/R$id;->text_progress_message:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/widgetslib/dialog/c;->e:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/c;->a:Landroid/content/Context;

    invoke-static {v0}, Lolb;->q0(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/c;->f:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/c;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/widgetslib/R$dimen;->os_dialog_progress_bar_margin_top_sh:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/c;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/widgetslib/R$dimen;->os_dialog_progress_bar_margin_bottom_sh:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    :cond_1
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/c;->b:Lcom/transsion/widgetslib/dialog/d$a;

    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/c;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/widgetslib/R$dimen;->os_dialog_progress_padding_top:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/d$a;->x(I)Lcom/transsion/widgetslib/dialog/d$a;

    :cond_2
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/c;->e:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/ScrollingMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/c;->c:Landroid/view/View;

    sget v1, Lcom/transsion/widgetslib/R$id;->ll_intro:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/transsion/widgetslib/dialog/c;->g:Landroid/widget/LinearLayout;

    iget-boolean v0, p0, Lcom/transsion/widgetslib/dialog/c;->i:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/c;->d:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/c;->b:Lcom/transsion/widgetslib/dialog/d$a;

    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/c;->c:Landroid/view/View;

    invoke-virtual {v0, p0}, Lcom/transsion/widgetslib/dialog/d$a;->E(Landroid/view/View;)Lcom/transsion/widgetslib/dialog/d$a;

    return-void
.end method

.method public d(Z)Lcom/transsion/widgetslib/dialog/c;
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/c;->b:Lcom/transsion/widgetslib/dialog/d$a;

    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/dialog/d$a;->e(Z)Lcom/transsion/widgetslib/dialog/d$a;

    return-object p0
.end method

.method public e(Z)Lcom/transsion/widgetslib/dialog/c;
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/c;->b:Lcom/transsion/widgetslib/dialog/d$a;

    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/dialog/d$a;->f(Z)Lcom/transsion/widgetslib/dialog/d$a;

    return-object p0
.end method

.method public f(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/c;
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/c;->a:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/transsion/widgetslib/dialog/c;->g(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/c;

    move-result-object p0

    return-object p0
.end method

.method public g(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/c;
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/c;->b:Lcom/transsion/widgetslib/dialog/d$a;

    invoke-virtual {v0, p1, p2}, Lcom/transsion/widgetslib/dialog/d$a;->n(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    return-object p0
.end method

.method public h(I)Lcom/transsion/widgetslib/dialog/c;
    .locals 5

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/c;->c:Landroid/view/View;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/c;->c()V

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/c;->f:Landroid/widget/ProgressBar;

    iget v1, p0, Lcom/transsion/widgetslib/dialog/c;->h:I

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/c;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/transsion/widgetslib/dialog/c;->h:I

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-float p1, p1

    iget v1, p0, Lcom/transsion/widgetslib/dialog/c;->h:I

    int-to-float v1, v1

    div-float/2addr p1, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr p1, v1

    float-to-double v1, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int p1, v1

    const-string v1, "tr"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "%d%%"

    const-string v3, "%%%d"

    const/4 v4, 0x0

    if-nez v1, :cond_3

    const-string v1, "ar"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lolb;->m0()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/c;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/view/View;->setLayoutDirection(I)V

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/c;->d:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, v3, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/c;->d:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, v2, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/c;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/view/View;->setLayoutDirection(I)V

    invoke-static {}, Lolb;->m0()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/c;->d:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, v3, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/c;->d:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, v2, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-object p0
.end method

.method public i(I)Lcom/transsion/widgetslib/dialog/c;
    .locals 2

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/c;->e:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-boolean v0, p0, Lcom/transsion/widgetslib/dialog/c;->k:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/c;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/c;->a:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lolb;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/c;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/c;->a:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/c;->b()V

    return-object p0
.end method

.method public j(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/c;
    .locals 2

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/c;->e:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-boolean v0, p0, Lcom/transsion/widgetslib/dialog/c;->k:Z

    if-nez v0, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lolb;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/c;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/c;->b()V

    return-object p0
.end method

.method public k(I)Lcom/transsion/widgetslib/dialog/c;
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/c;->b:Lcom/transsion/widgetslib/dialog/d$a;

    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/dialog/d$a;->A(I)Lcom/transsion/widgetslib/dialog/d$a;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/transsion/widgetslib/dialog/c;->j:Z

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/c;->b()V

    return-object p0
.end method

.method public l()Lcom/transsion/widgetslib/dialog/d;
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/c;->a()Lcom/transsion/widgetslib/dialog/d;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/d;->show()V

    return-object p0
.end method
