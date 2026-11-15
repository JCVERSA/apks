.class public LOppOOO/OppOOp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic OppO00p:Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;

.field public final synthetic OppO0O0:Lcom/transsion/xuanniao/account/center/view/j;


# direct methods
.method public constructor <init>(Lcom/transsion/xuanniao/account/center/view/j;Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LOppOOO/OppOOp;->OppO0O0:Lcom/transsion/xuanniao/account/center/view/j;

    iput-object p2, p0, LOppOOO/OppOOp;->OppO00p:Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, LOppOOO/OppOOp;->OppO0O0:Lcom/transsion/xuanniao/account/center/view/j;

    iget-object v0, v0, Lcom/transsion/xuanniao/account/center/view/j;->b:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    iget-object v0, p0, LOppOOO/OppOOp;->OppO0O0:Lcom/transsion/xuanniao/account/center/view/j;

    iget-object v0, v0, Lcom/transsion/xuanniao/account/center/view/j;->b:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, LOppOOO/OppOOp;->OppO0O0:Lcom/transsion/xuanniao/account/center/view/j;

    iget-object v0, v0, Lcom/transsion/xuanniao/account/center/view/j;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    iget-object v0, p0, LOppOOO/OppOOp;->OppO00p:Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "input_method"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object p0, p0, LOppOOO/OppOOp;->OppO0O0:Lcom/transsion/xuanniao/account/center/view/j;

    iget-object p0, p0, Lcom/transsion/xuanniao/account/center/view/j;->b:Landroid/widget/EditText;

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method
