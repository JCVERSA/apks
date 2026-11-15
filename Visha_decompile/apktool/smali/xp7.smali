.class public Lxp7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field public final synthetic a:Ljava/lang/ref/WeakReference;

.field public final synthetic b:Lrq7;


# direct methods
.method public constructor <init>(Lrq7;Ljava/lang/ref/WeakReference;)V
    .locals 0

    iput-object p1, p0, Lxp7;->b:Lrq7;

    iput-object p2, p0, Lxp7;->a:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object p1, p0, Lxp7;->b:Lrq7;

    iget-object p1, p1, Lrq7;->c:Lcom/transsion/xuanniao/account/comm/widget/NickNameInput;

    invoke-virtual {p1}, Lcom/transsion/xuanniao/account/comm/widget/NickNameInput;->getEdit()Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    iget-object p1, p0, Lxp7;->b:Lrq7;

    iget-object p1, p1, Lrq7;->c:Lcom/transsion/xuanniao/account/comm/widget/NickNameInput;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusable(Z)V

    iget-object p1, p0, Lxp7;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lxp7;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    const-string v1, "input_method"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    iget-object p0, p0, Lxp7;->b:Lrq7;

    iget-object p0, p0, Lrq7;->c:Lcom/transsion/xuanniao/account/comm/widget/NickNameInput;

    invoke-virtual {p1, p0, v0}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_0
    return-void
.end method
