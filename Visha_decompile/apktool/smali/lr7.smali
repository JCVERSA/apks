.class public Llr7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Lcom/transsion/xuanniao/account/center/view/e;


# direct methods
.method public constructor <init>(Lcom/transsion/xuanniao/account/center/view/e;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Llr7;->b:Lcom/transsion/xuanniao/account/center/view/e;

    iput-object p2, p0, Llr7;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object p1, p0, Llr7;->b:Lcom/transsion/xuanniao/account/center/view/e;

    iget-object p1, p1, Lcom/transsion/xuanniao/account/center/view/e;->b:Landroid/widget/EditText;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusable(Z)V

    iget-object p1, p0, Llr7;->b:Lcom/transsion/xuanniao/account/center/view/e;

    iget-object p1, p1, Lcom/transsion/xuanniao/account/center/view/e;->b:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    iget-object p1, p0, Llr7;->b:Lcom/transsion/xuanniao/account/center/view/e;

    iget-object p1, p1, Lcom/transsion/xuanniao/account/center/view/e;->b:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    iget-object p1, p0, Llr7;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "input_method"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    iget-object p0, p0, Llr7;->b:Lcom/transsion/xuanniao/account/center/view/e;

    iget-object p0, p0, Lcom/transsion/xuanniao/account/center/view/e;->b:Landroid/widget/EditText;

    invoke-virtual {p1, p0, v0}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method
