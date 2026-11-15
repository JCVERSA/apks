.class public Lcom/transsion/widgetslistitemlayout/OSListItemView$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/widgetslistitemlayout/c$h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslistitemlayout/OSListItemView;->I(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/widgetslistitemlayout/OSListItemView;


# direct methods
.method public constructor <init>(Lcom/transsion/widgetslistitemlayout/OSListItemView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView$f;->a:Lcom/transsion/widgetslistitemlayout/OSListItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView$f;->a:Lcom/transsion/widgetslistitemlayout/OSListItemView;

    invoke-static {v0, p1}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->n(Lcom/transsion/widgetslistitemlayout/OSListItemView;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView$f;->a:Lcom/transsion/widgetslistitemlayout/OSListItemView;

    invoke-static {v0}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->g(Lcom/transsion/widgetslistitemlayout/OSListItemView;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView$f;->a:Lcom/transsion/widgetslistitemlayout/OSListItemView;

    invoke-static {v0}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->g(Lcom/transsion/widgetslistitemlayout/OSListItemView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView$f;->a:Lcom/transsion/widgetslistitemlayout/OSListItemView;

    invoke-static {v0}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->l(Lcom/transsion/widgetslistitemlayout/OSListItemView;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView$f;->a:Lcom/transsion/widgetslistitemlayout/OSListItemView;

    invoke-static {v0}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->d(Lcom/transsion/widgetslistitemlayout/OSListItemView;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView$f;->a:Lcom/transsion/widgetslistitemlayout/OSListItemView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->q(Lcom/transsion/widgetslistitemlayout/OSListItemView;Z)V

    iget-object p0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView$f;->a:Lcom/transsion/widgetslistitemlayout/OSListItemView;

    invoke-static {p0}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->l(Lcom/transsion/widgetslistitemlayout/OSListItemView;)Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public b()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView$f;->a:Lcom/transsion/widgetslistitemlayout/OSListItemView;

    invoke-virtual {p0}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->adjustViewDescribeTitleWidth()V

    return-void
.end method

.method public c(Landroid/widget/EditText;)V
    .locals 1

    iget-object p0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView$f;->a:Lcom/transsion/widgetslistitemlayout/OSListItemView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_0
    return-void
.end method
