.class public final Lcom/mgmi/ViewGroup/a/a;
.super Landroid/app/Dialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mgmi/ViewGroup/a/a$b;,
        Lcom/mgmi/ViewGroup/a/a$a;
    }
.end annotation


# instance fields
.field public a:Landroid/widget/TextView;

.field public b:Landroid/widget/TextView;

.field public c:Landroid/widget/TextView;

.field public d:Landroid/widget/TextView;

.field public e:Landroid/widget/LinearLayout;

.field public f:Landroid/widget/LinearLayout;

.field public g:Landroid/widget/TextView;

.field private h:Landroid/view/View;

.field private i:Ljava/lang/CharSequence;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private j:Ljava/lang/CharSequence;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private k:Lcom/mgmi/ViewGroup/a/a$a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    sget v0, Lcom/mgmi/R$style;->MgmiTransparentDialog:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0}, Lcom/mgmi/ViewGroup/a/a;->a()V

    return-void
.end method

.method public static synthetic a(Lcom/mgmi/ViewGroup/a/a;)Lcom/mgmi/ViewGroup/a/a$a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgmi/ViewGroup/a/a;->k:Lcom/mgmi/ViewGroup/a/a$a;

    return-object p0
.end method

.method private d(I)Ljava/lang/String;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 14
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private d()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mgmi/ViewGroup/a/a;->i:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mgmi/ViewGroup/a/a;->j:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/mgmi/ViewGroup/a/a;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/mgmi/ViewGroup/a/a;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/mgmi/ViewGroup/a/a;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mgmi/ViewGroup/a/a;->i:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v0, p0, Lcom/mgmi/ViewGroup/a/a;->a:Landroid/widget/TextView;

    new-instance v1, Lcom/mgmi/ViewGroup/a/a$2;

    invoke-direct {v1, p0}, Lcom/mgmi/ViewGroup/a/a$2;-><init>(Lcom/mgmi/ViewGroup/a/a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    iget-object v0, p0, Lcom/mgmi/ViewGroup/a/a;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mgmi/ViewGroup/a/a;->j:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object v0, p0, Lcom/mgmi/ViewGroup/a/a;->b:Landroid/widget/TextView;

    new-instance v1, Lcom/mgmi/ViewGroup/a/a$3;

    invoke-direct {v1, p0}, Lcom/mgmi/ViewGroup/a/a$3;-><init>(Lcom/mgmi/ViewGroup/a/a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/mgmi/ViewGroup/a/a;->j:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 9
    iget-object v0, p0, Lcom/mgmi/ViewGroup/a/a;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 10
    iget-object v0, p0, Lcom/mgmi/ViewGroup/a/a;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 11
    iget-object v0, p0, Lcom/mgmi/ViewGroup/a/a;->g:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mgmi/ViewGroup/a/a;->j:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    iget-object v0, p0, Lcom/mgmi/ViewGroup/a/a;->g:Landroid/widget/TextView;

    new-instance v1, Lcom/mgmi/ViewGroup/a/a$4;

    invoke-direct {v1, p0}, Lcom/mgmi/ViewGroup/a/a$4;-><init>(Lcom/mgmi/ViewGroup/a/a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public a(I)Lcom/mgmi/ViewGroup/a/a;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 14
    invoke-direct {p0, p1}, Lcom/mgmi/ViewGroup/a/a;->d(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mgmi/ViewGroup/a/a;->a(Ljava/lang/CharSequence;)Lcom/mgmi/ViewGroup/a/a;

    move-result-object p0

    return-object p0
.end method

.method public a(Lcom/mgmi/ViewGroup/a/a$a;)Lcom/mgmi/ViewGroup/a/a;
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/mgmi/ViewGroup/a/a;->k:Lcom/mgmi/ViewGroup/a/a$a;

    return-object p0
.end method

.method public a(Ljava/lang/CharSequence;)Lcom/mgmi/ViewGroup/a/a;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/mgmi/ViewGroup/a/a;->d:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 16
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    iget-object p1, p0, Lcom/mgmi/ViewGroup/a/a;->d:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/mgmi/ViewGroup/a/a;
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/mgmi/ViewGroup/a/a;->i:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public a(Z)Lcom/mgmi/ViewGroup/a/a;
    .locals 0

    .line 20
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    return-object p0
.end method

.method public a()V
    .locals 2

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 3
    sget v0, Lcom/mgmi/R$layout;->mgmi_common_dialog:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 4
    sget v0, Lcom/mgmi/R$id;->left_button:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mgmi/ViewGroup/a/a;->a:Landroid/widget/TextView;

    .line 5
    sget v0, Lcom/mgmi/R$id;->right_button:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mgmi/ViewGroup/a/a;->b:Landroid/widget/TextView;

    .line 6
    sget v0, Lcom/mgmi/R$id;->tv_big_title:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mgmi/ViewGroup/a/a;->c:Landroid/widget/TextView;

    .line 7
    sget v0, Lcom/mgmi/R$id;->tv_title:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mgmi/ViewGroup/a/a;->d:Landroid/widget/TextView;

    .line 8
    sget v0, Lcom/mgmi/R$id;->ll_one_button:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/mgmi/ViewGroup/a/a;->e:Landroid/widget/LinearLayout;

    .line 9
    sget v0, Lcom/mgmi/R$id;->ll_two_button:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/mgmi/ViewGroup/a/a;->f:Landroid/widget/LinearLayout;

    .line 10
    sget v0, Lcom/mgmi/R$id;->right_button1:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mgmi/ViewGroup/a/a;->g:Landroid/widget/TextView;

    .line 11
    sget v0, Lcom/mgmi/R$id;->dialogBgOfBaseExtend:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mgmi/ViewGroup/a/a;->h:Landroid/view/View;

    .line 12
    new-instance v1, Lcom/mgmi/ViewGroup/a/a$1;

    invoke-direct {v1, p0}, Lcom/mgmi/ViewGroup/a/a$1;-><init>(Lcom/mgmi/ViewGroup/a/a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x0

    .line 13
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    return-void
.end method

.method public b(I)Lcom/mgmi/ViewGroup/a/a;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lcom/mgmi/ViewGroup/a/a;->d(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mgmi/ViewGroup/a/a;->a(Ljava/lang/String;)Lcom/mgmi/ViewGroup/a/a;

    move-result-object p0

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/mgmi/ViewGroup/a/a;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/mgmi/ViewGroup/a/a;->j:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public b()Z
    .locals 1

    .line 3
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 5
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 6
    :cond_0
    invoke-direct {p0}, Lcom/mgmi/ViewGroup/a/a;->d()Z

    move-result p0

    return p0
.end method

.method public c(I)Lcom/mgmi/ViewGroup/a/a;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lcom/mgmi/ViewGroup/a/a;->d(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mgmi/ViewGroup/a/a;->b(Ljava/lang/String;)Lcom/mgmi/ViewGroup/a/a;

    move-result-object p0

    return-object p0
.end method

.method public c()V
    .locals 1

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/mgmi/ViewGroup/a/a;->k:Lcom/mgmi/ViewGroup/a/a$a;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/mgmi/ViewGroup/a/a$a;->c()V

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/app/Dialog;->onDetachedFromWindow()V

    invoke-virtual {p0}, Lcom/mgmi/ViewGroup/a/a;->c()V

    return-void
.end method
