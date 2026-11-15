.class public Lcom/hunantv/imgo/b/b;
.super Landroid/app/Dialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hunantv/imgo/b/b$a;,
        Lcom/hunantv/imgo/b/b$b;
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

.field private k:Lcom/hunantv/imgo/b/b$a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    sget v0, Lcom/mgtv/ssp/R$style;->MGTransparentDialog:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0}, Lcom/hunantv/imgo/b/b;->a()V

    return-void
.end method

.method public static synthetic a(Lcom/hunantv/imgo/b/b;)Lcom/hunantv/imgo/b/b$a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hunantv/imgo/b/b;->k:Lcom/hunantv/imgo/b/b$a;

    return-object p0
.end method

.method public static a(Landroid/app/Dialog;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 21
    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 22
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method private c()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    or-int/lit16 v1, v1, 0x400

    .line 4
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    const/4 v3, 0x1

    .line 5
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 6
    invoke-virtual {v0, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 7
    invoke-virtual {p0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    const/4 p0, 0x0

    .line 8
    invoke-virtual {v0, p0}, Landroid/view/Window;->setStatusBarColor(I)V

    :cond_0
    return-void
.end method

.method private d(I)Ljava/lang/String;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private d()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x400

    invoke-virtual {p0, v0, v0}, Landroid/view/Window;->setFlags(II)V

    return-void
.end method

.method private e()Z
    .locals 3

    iget-object v0, p0, Lcom/hunantv/imgo/b/b;->i:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/hunantv/imgo/b/b;->j:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/hunantv/imgo/b/b;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/hunantv/imgo/b/b;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/hunantv/imgo/b/b;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/hunantv/imgo/b/b;->i:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/hunantv/imgo/b/b;->a:Landroid/widget/TextView;

    new-instance v1, Lcom/hunantv/imgo/b/b$2;

    invoke-direct {v1, p0}, Lcom/hunantv/imgo/b/b$2;-><init>(Lcom/hunantv/imgo/b/b;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/hunantv/imgo/b/b;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/hunantv/imgo/b/b;->j:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/hunantv/imgo/b/b;->b:Landroid/widget/TextView;

    new-instance v1, Lcom/hunantv/imgo/b/b$3;

    invoke-direct {v1, p0}, Lcom/hunantv/imgo/b/b$3;-><init>(Lcom/hunantv/imgo/b/b;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/hunantv/imgo/b/b;->j:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/hunantv/imgo/b/b;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/hunantv/imgo/b/b;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/hunantv/imgo/b/b;->g:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/hunantv/imgo/b/b;->j:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/hunantv/imgo/b/b;->g:Landroid/widget/TextView;

    new-instance v1, Lcom/hunantv/imgo/b/b$4;

    invoke-direct {v1, p0}, Lcom/hunantv/imgo/b/b$4;-><init>(Lcom/hunantv/imgo/b/b;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public a(I)Lcom/hunantv/imgo/b/b;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 14
    invoke-direct {p0, p1}, Lcom/hunantv/imgo/b/b;->d(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/hunantv/imgo/b/b;->a(Ljava/lang/CharSequence;)Lcom/hunantv/imgo/b/b;

    move-result-object p0

    return-object p0
.end method

.method public a(Lcom/hunantv/imgo/b/b$a;)Lcom/hunantv/imgo/b/b;
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/hunantv/imgo/b/b;->k:Lcom/hunantv/imgo/b/b$a;

    return-object p0
.end method

.method public a(Ljava/lang/CharSequence;)Lcom/hunantv/imgo/b/b;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/hunantv/imgo/b/b;->d:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 16
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    iget-object p1, p0, Lcom/hunantv/imgo/b/b;->d:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/hunantv/imgo/b/b;
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/hunantv/imgo/b/b;->i:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public a(Z)Lcom/hunantv/imgo/b/b;
    .locals 0

    .line 20
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    return-object p0
.end method

.method public a()V
    .locals 2

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 3
    sget v0, Lcom/mgtv/ssp/R$layout;->dialog_commonexception:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 4
    sget v0, Lcom/mgtv/ssp/R$id;->left_button:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/hunantv/imgo/b/b;->a:Landroid/widget/TextView;

    .line 5
    sget v0, Lcom/mgtv/ssp/R$id;->right_button:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/hunantv/imgo/b/b;->b:Landroid/widget/TextView;

    .line 6
    sget v0, Lcom/mgtv/ssp/R$id;->tv_big_title:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/hunantv/imgo/b/b;->c:Landroid/widget/TextView;

    .line 7
    sget v0, Lcom/mgtv/ssp/R$id;->tv_title:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/hunantv/imgo/b/b;->d:Landroid/widget/TextView;

    .line 8
    sget v0, Lcom/mgtv/ssp/R$id;->ll_one_button:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/hunantv/imgo/b/b;->e:Landroid/widget/LinearLayout;

    .line 9
    sget v0, Lcom/mgtv/ssp/R$id;->ll_two_button:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/hunantv/imgo/b/b;->f:Landroid/widget/LinearLayout;

    .line 10
    sget v0, Lcom/mgtv/ssp/R$id;->right_button1:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/hunantv/imgo/b/b;->g:Landroid/widget/TextView;

    .line 11
    sget v0, Lcom/mgtv/ssp/R$id;->dialogBgOfBaseExtend:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/hunantv/imgo/b/b;->h:Landroid/view/View;

    .line 12
    new-instance v1, Lcom/hunantv/imgo/b/b$1;

    invoke-direct {v1, p0}, Lcom/hunantv/imgo/b/b$1;-><init>(Lcom/hunantv/imgo/b/b;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x0

    .line 13
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    return-void
.end method

.method public b(I)Lcom/hunantv/imgo/b/b;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lcom/hunantv/imgo/b/b;->d(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/hunantv/imgo/b/b;->a(Ljava/lang/String;)Lcom/hunantv/imgo/b/b;

    move-result-object p0

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/hunantv/imgo/b/b;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/hunantv/imgo/b/b;->j:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public b(Z)Lcom/hunantv/imgo/b/b;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    return-object p0
.end method

.method public b()Z
    .locals 1

    .line 4
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 6
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 7
    :cond_0
    invoke-direct {p0}, Lcom/hunantv/imgo/b/b;->e()Z

    move-result p0

    return p0
.end method

.method public c(I)Lcom/hunantv/imgo/b/b;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 9
    invoke-direct {p0, p1}, Lcom/hunantv/imgo/b/b;->d(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/hunantv/imgo/b/b;->b(Ljava/lang/String;)Lcom/hunantv/imgo/b/b;

    move-result-object p0

    return-object p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/hunantv/imgo/b/b;->d()V

    invoke-direct {p0}, Lcom/hunantv/imgo/b/b;->c()V

    return-void
.end method
