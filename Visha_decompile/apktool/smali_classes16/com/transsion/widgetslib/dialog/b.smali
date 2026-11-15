.class public Lcom/transsion/widgetslib/dialog/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Landroid/content/Context;

.field public b:Lcom/transsion/widgetslib/dialog/d$a;

.field public c:Ljava/lang/String;

.field public d:Lcom/transsion/widgetslib/view/OSLoadingView;

.field public e:Lcom/transsion/widgetslib/dialog/d;

.field public f:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/transsion/widgetslib/dialog/b;-><init>(Landroid/content/Context;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/transsion/widgetslib/dialog/b;->a:Landroid/content/Context;

    .line 4
    new-instance v0, Lcom/transsion/widgetslib/dialog/d$a;

    invoke-direct {v0, p1, p2}, Lcom/transsion/widgetslib/dialog/d$a;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/transsion/widgetslib/dialog/b;->b:Lcom/transsion/widgetslib/dialog/d$a;

    const/4 p1, 0x0

    .line 5
    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/dialog/d$a;->f(Z)Lcom/transsion/widgetslib/dialog/d$a;

    .line 6
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/b;->b:Lcom/transsion/widgetslib/dialog/d$a;

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/dialog/d$a;->e(Z)Lcom/transsion/widgetslib/dialog/d$a;

    return-void
.end method

.method public static bridge synthetic a(Lcom/transsion/widgetslib/dialog/b;)Lcom/transsion/widgetslib/view/OSLoadingView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/b;->d:Lcom/transsion/widgetslib/view/OSLoadingView;

    return-object p0
.end method


# virtual methods
.method public b()Lcom/transsion/widgetslib/dialog/d;
    .locals 3

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lolb;->Z(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/b;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lcom/transsion/widgetslib/R$layout;->os_ultra_small_dialog_loading_bottom:I

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/b;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lcom/transsion/widgetslib/R$layout;->os_dialog_loading_bottom:I

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    :goto_0
    sget v1, Lcom/transsion/widgetslib/R$id;->messageTv:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/transsion/widgetslib/dialog/b;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v1, Lcom/transsion/widgetslib/R$id;->osLoading:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/transsion/widgetslib/view/OSLoadingView;

    iput-object v1, p0, Lcom/transsion/widgetslib/dialog/b;->d:Lcom/transsion/widgetslib/view/OSLoadingView;

    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/b;->b:Lcom/transsion/widgetslib/dialog/d$a;

    invoke-virtual {v1, v0}, Lcom/transsion/widgetslib/dialog/d$a;->E(Landroid/view/View;)Lcom/transsion/widgetslib/dialog/d$a;

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/b;->b:Lcom/transsion/widgetslib/dialog/d$a;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/dialog/d$a;->a()Lcom/transsion/widgetslib/dialog/d;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    sget v2, Lcom/transsion/widgetslib/R$style;->OsInputDialogAnimStyle:I

    invoke-virtual {v1, v2}, Landroid/view/Window;->setWindowAnimations(I)V

    iget-boolean v2, p0, Lcom/transsion/widgetslib/dialog/b;->f:Z

    if-nez v2, :cond_1

    new-instance v2, Lcom/transsion/widgetslib/dialog/b$a;

    invoke-direct {v2, p0}, Lcom/transsion/widgetslib/dialog/b$a;-><init>(Lcom/transsion/widgetslib/dialog/b;)V

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :cond_1
    const/4 p0, 0x0

    invoke-virtual {v1, p0}, Landroid/view/Window;->setSoftInputMode(I)V

    return-object v0
.end method

.method public c(I)Lcom/transsion/widgetslib/dialog/b;
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/b;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/dialog/b;->d(Ljava/lang/String;)Lcom/transsion/widgetslib/dialog/b;

    return-object p0
.end method

.method public d(Ljava/lang/String;)Lcom/transsion/widgetslib/dialog/b;
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetslib/dialog/b;->c:Ljava/lang/String;

    return-object p0
.end method

.method public e()Lcom/transsion/widgetslib/dialog/d;
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/b;->b()Lcom/transsion/widgetslib/dialog/d;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/dialog/b;->e:Lcom/transsion/widgetslib/dialog/d;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/dialog/d;->show()V

    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/b;->e:Lcom/transsion/widgetslib/dialog/d;

    return-object p0
.end method
