.class public Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity$c;
.super Lrm7;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public final synthetic d:Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity$c;->d:Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;

    invoke-direct {p0}, Lrm7;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;)V
    .locals 11

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/transsion/xuanniao/account/R$id;->portrait:I

    if-ne v0, v1, :cond_0

    iget-object p1, p0, Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity$c;->d:Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lxj;->U(Landroid/content/Context;)Lxj;

    move-result-object p1

    invoke-virtual {p1}, Lxj;->S0()V

    iget-object p1, p0, Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity$c;->d:Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;

    iget-object p1, p1, Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;->h:Lcom/transsion/xuanniao/account/center/view/o;

    invoke-virtual {p1}, Lcom/transsion/xuanniao/account/center/view/o;->d()Z

    move-result p1

    if-eqz p1, :cond_1f

    iget-object p0, p0, Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity$c;->d:Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;

    iget-object p0, p0, Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;->h:Lcom/transsion/xuanniao/account/center/view/o;

    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/center/view/o;->h()V

    goto/16 :goto_5

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/transsion/xuanniao/account/R$id;->nicknameL:I

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    const-string v5, ""

    const/4 v6, 0x1

    if-ne v0, v1, :cond_6

    iget-object p1, p0, Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity$c;->d:Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lxj;->U(Landroid/content/Context;)Lxj;

    move-result-object p1

    invoke-virtual {p1}, Lxj;->R0()V

    new-instance p1, Lrq7;

    invoke-direct {p1}, Lrq7;-><init>()V

    new-instance v0, Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity$c$a;

    invoke-direct {v0, p0}, Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity$c$a;-><init>(Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity$c;)V

    iput-object v0, p1, Lrq7;->b:Lrq7$a;

    new-instance v0, Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity$c;->d:Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity$c;->d:Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;

    iget-object p0, p0, Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;->f:LOppOOO0/OppOOp0;

    iget-object p0, p0, LOppOOO0/OppOOp0;->c:Lcom/transsion/xuanniao/account/model/data/AccountRes;

    if-eqz p0, :cond_1

    iget-object v5, p0, Lcom/transsion/xuanniao/account/model/data/AccountRes;->nickname:Ljava/lang/String;

    :cond_1
    iget-object p0, p1, Lrq7;->a:Lcom/transsion/widgetslib/dialog/d;

    if-nez p0, :cond_2

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_2

    new-instance p0, Lcom/transsion/widgetslib/dialog/d$a;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    sget v7, Lcom/transsion/xuanniao/account/R$style;->dialog_soft_input:I

    invoke-direct {p0, v1, v7}, Lcom/transsion/widgetslib/dialog/d$a;-><init>(Landroid/content/Context;I)V

    sget v1, Lcom/transsion/xuanniao/account/R$layout;->xn_modify_nickname:I

    invoke-virtual {p0, v1}, Lcom/transsion/widgetslib/dialog/d$a;->D(I)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    sget v7, Lcom/transsion/xuanniao/account/R$string;->xn_modify_nickname:I

    invoke-virtual {v1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/transsion/widgetslib/dialog/d$a;->B(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    sget v7, Lcom/transsion/xuanniao/account/R$string;->xn_confirm:I

    invoke-virtual {v1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v4}, Lcom/transsion/widgetslib/dialog/d$a;->w(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    sget v4, Lcom/transsion/xuanniao/account/R$string;->xn_cancel:I

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Lop7;

    invoke-direct {v4, p1, v0}, Lop7;-><init>(Lrq7;Ljava/lang/ref/WeakReference;)V

    invoke-virtual {p0, v1, v4}, Lcom/transsion/widgetslib/dialog/d$a;->n(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/d$a;->a()Lcom/transsion/widgetslib/dialog/d;

    move-result-object p0

    iput-object p0, p1, Lrq7;->a:Lcom/transsion/widgetslib/dialog/d;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/d;->show()V

    iget-object p0, p1, Lrq7;->a:Lcom/transsion/widgetslib/dialog/d;

    new-instance v1, Lxp7;

    invoke-direct {v1, p1, v0}, Lxp7;-><init>(Lrq7;Ljava/lang/ref/WeakReference;)V

    invoke-virtual {p0, v1}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    iget-object p0, p1, Lrq7;->a:Lcom/transsion/widgetslib/dialog/d;

    invoke-virtual {p0, v3}, Lcom/transsion/widgetslib/dialog/d;->e(I)Landroid/widget/Button;

    move-result-object p0

    iput-object p0, p1, Lrq7;->d:Landroid/widget/Button;

    new-instance v1, Leq7;

    invoke-direct {v1, p1, v0}, Leq7;-><init>(Lrq7;Ljava/lang/ref/WeakReference;)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p0, p1, Lrq7;->a:Lcom/transsion/widgetslib/dialog/d;

    sget v0, Lcom/transsion/xuanniao/account/R$id;->nickNameInput:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/transsion/xuanniao/account/comm/widget/NickNameInput;

    iput-object p0, p1, Lrq7;->c:Lcom/transsion/xuanniao/account/comm/widget/NickNameInput;

    new-instance v0, Lrq7$b;

    invoke-direct {v0, p1}, Lrq7$b;-><init>(Lrq7;)V

    iget-object p0, p0, Lcom/transsion/xuanniao/account/comm/widget/NickNameInput;->OppO00p:Landroid/widget/EditText;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object p0, p1, Lrq7;->a:Lcom/transsion/widgetslib/dialog/d;

    new-instance v0, Llq7;

    invoke-direct {v0, p1}, Llq7;-><init>(Lrq7;)V

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0

    :cond_2
    iget-object p0, p1, Lrq7;->a:Lcom/transsion/widgetslib/dialog/d;

    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result p0

    if-nez p0, :cond_3

    iget-object p0, p1, Lrq7;->a:Lcom/transsion/widgetslib/dialog/d;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/d;->show()V

    :cond_3
    :goto_0
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_4

    iget-object p0, p1, Lrq7;->c:Lcom/transsion/xuanniao/account/comm/widget/NickNameInput;

    invoke-virtual {p0, v5}, Lcom/transsion/xuanniao/account/comm/widget/NickNameInput;->setText(Ljava/lang/String;)V

    :cond_4
    iget-object p0, p1, Lrq7;->d:Landroid/widget/Button;

    iget-object v0, p1, Lrq7;->c:Lcom/transsion/xuanniao/account/comm/widget/NickNameInput;

    invoke-virtual {v0}, Lcom/transsion/xuanniao/account/comm/widget/NickNameInput;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_5

    move v2, v6

    :cond_5
    invoke-virtual {p0, v2}, Landroid/view/View;->setEnabled(Z)V

    iget-object p0, p1, Lrq7;->c:Lcom/transsion/xuanniao/account/comm/widget/NickNameInput;

    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/comm/widget/NickNameInput;->getEdit()Landroid/widget/EditText;

    move-result-object p0

    invoke-virtual {p0, v6}, Landroid/view/View;->setFocusable(Z)V

    iget-object p0, p1, Lrq7;->c:Lcom/transsion/xuanniao/account/comm/widget/NickNameInput;

    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/comm/widget/NickNameInput;->getEdit()Landroid/widget/EditText;

    move-result-object p0

    invoke-virtual {p0, v6}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    iget-object p0, p1, Lrq7;->c:Lcom/transsion/xuanniao/account/comm/widget/NickNameInput;

    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/comm/widget/NickNameInput;->getEdit()Landroid/widget/EditText;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    goto/16 :goto_5

    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/transsion/xuanniao/account/R$id;->usernameL:I

    if-ne v0, v1, :cond_a

    iget-object p1, p0, Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity$c;->d:Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lxj;->U(Landroid/content/Context;)Lxj;

    move-result-object p1

    invoke-virtual {p1}, Lxj;->K0()V

    iget-object p0, p0, Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity$c;->d:Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;

    iget-object p1, p0, Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;->f:LOppOOO0/OppOOp0;

    iget-object p1, p1, LOppOOO0/OppOOp0;->c:Lcom/transsion/xuanniao/account/model/data/AccountRes;

    if-eqz p1, :cond_8

    iget v0, p1, Lcom/transsion/xuanniao/account/model/data/AccountRes;->usernameModifyRemainTimes:I

    if-lez v0, :cond_7

    goto :goto_1

    :cond_7
    invoke-static {p0}, Lxj;->U(Landroid/content/Context;)Lxj;

    move-result-object p1

    invoke-virtual {p1}, Lxj;->D()V

    sget p1, Lcom/transsion/xuanniao/account/R$string;->xn_cannot_modify:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->y0(Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_8
    :goto_1
    new-instance v0, Lcom/transsion/xuanniao/account/center/view/a;

    invoke-direct {v0}, Lcom/transsion/xuanniao/account/center/view/a;-><init>()V

    iput-object v0, p0, Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;->g:Lcom/transsion/xuanniao/account/center/view/a;

    if-eqz p1, :cond_9

    iget-object v5, p1, Lcom/transsion/xuanniao/account/model/data/AccountRes;->username:Ljava/lang/String;

    :cond_9
    invoke-virtual {v0, p0, v5}, Lcom/transsion/xuanniao/account/center/view/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;->g:Lcom/transsion/xuanniao/account/center/view/a;

    new-instance v0, Lcom/transsion/xuanniao/account/center/view/n;

    invoke-direct {v0, p0}, Lcom/transsion/xuanniao/account/center/view/n;-><init>(Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;)V

    iput-object v0, p1, Lcom/transsion/xuanniao/account/center/view/a;->c:Lcom/transsion/xuanniao/account/center/view/a$e;

    goto/16 :goto_5

    :cond_a
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/transsion/xuanniao/account/R$id;->fullNameL:I

    const-string v7, "%d / %d"

    const/16 v8, 0x32

    if-ne v0, v1, :cond_e

    iget-object p1, p0, Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity$c;->d:Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lxj;->U(Landroid/content/Context;)Lxj;

    move-result-object p1

    invoke-virtual {p1}, Lxj;->Q0()V

    new-instance p1, Lcom/transsion/xuanniao/account/center/view/e;

    invoke-direct {p1}, Lcom/transsion/xuanniao/account/center/view/e;-><init>()V

    iget-object v0, p0, Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity$c;->d:Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity$c;->d:Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;

    iget-object v1, v1, Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;->f:LOppOOO0/OppOOp0;

    iget-object v1, v1, LOppOOO0/OppOOp0;->c:Lcom/transsion/xuanniao/account/model/data/AccountRes;

    if-eqz v1, :cond_b

    iget-object v5, v1, Lcom/transsion/xuanniao/account/model/data/AccountRes;->fullName:Ljava/lang/String;

    :cond_b
    iget-object v1, p1, Lcom/transsion/xuanniao/account/center/view/e;->a:Lcom/transsion/widgetslib/dialog/d;

    if-nez v1, :cond_c

    iput-object v0, p1, Lcom/transsion/xuanniao/account/center/view/e;->g:Landroid/content/Context;

    new-instance v1, Lcom/transsion/widgetslib/dialog/d$a;

    sget v2, Lcom/transsion/xuanniao/account/R$style;->dialog_soft_input:I

    invoke-direct {v1, v0, v2}, Lcom/transsion/widgetslib/dialog/d$a;-><init>(Landroid/content/Context;I)V

    sget v2, Lcom/transsion/xuanniao/account/R$layout;->xn_edit_full_name_view:I

    invoke-virtual {v1, v2}, Lcom/transsion/widgetslib/dialog/d$a;->D(I)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v1

    sget v2, Lcom/transsion/xuanniao/account/R$string;->xn_modify_full_name:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/widgetslib/dialog/d$a;->B(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v1

    sget v2, Lcom/transsion/xuanniao/account/R$string;->xn_confirm:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Lcom/transsion/widgetslib/dialog/d$a;->w(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v1

    sget v2, Lcom/transsion/xuanniao/account/R$string;->xn_cancel:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lgr7;

    invoke-direct {v4, p1, v0}, Lgr7;-><init>(Lcom/transsion/xuanniao/account/center/view/e;Landroid/content/Context;)V

    invoke-virtual {v1, v2, v4}, Lcom/transsion/widgetslib/dialog/d$a;->n(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/widgetslib/dialog/d$a;->a()Lcom/transsion/widgetslib/dialog/d;

    move-result-object v1

    iput-object v1, p1, Lcom/transsion/xuanniao/account/center/view/e;->a:Lcom/transsion/widgetslib/dialog/d;

    new-instance v2, Llr7;

    invoke-direct {v2, p1, v0}, Llr7;-><init>(Lcom/transsion/xuanniao/account/center/view/e;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    iget-object v1, p1, Lcom/transsion/xuanniao/account/center/view/e;->a:Lcom/transsion/widgetslib/dialog/d;

    invoke-virtual {v1}, Lcom/transsion/widgetslib/dialog/d;->show()V

    iget-object v1, p1, Lcom/transsion/xuanniao/account/center/view/e;->a:Lcom/transsion/widgetslib/dialog/d;

    invoke-virtual {v1, v3}, Lcom/transsion/widgetslib/dialog/d;->e(I)Landroid/widget/Button;

    move-result-object v1

    iput-object v1, p1, Lcom/transsion/xuanniao/account/center/view/e;->c:Landroid/widget/Button;

    iget-object v1, p1, Lcom/transsion/xuanniao/account/center/view/e;->a:Lcom/transsion/widgetslib/dialog/d;

    sget v2, Lcom/transsion/xuanniao/account/R$id;->fullNameEdit:I

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p1, Lcom/transsion/xuanniao/account/center/view/e;->b:Landroid/widget/EditText;

    iget-object v1, p1, Lcom/transsion/xuanniao/account/center/view/e;->a:Lcom/transsion/widgetslib/dialog/d;

    sget v2, Lcom/transsion/xuanniao/account/R$id;->xn_delete_all:I

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p1, Lcom/transsion/xuanniao/account/center/view/e;->f:Landroid/view/View;

    new-instance v2, Lpr7;

    invoke-direct {v2, p1}, Lpr7;-><init>(Lcom/transsion/xuanniao/account/center/view/e;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p1, Lcom/transsion/xuanniao/account/center/view/e;->a:Lcom/transsion/widgetslib/dialog/d;

    sget v2, Lcom/transsion/xuanniao/account/R$id;->num:I

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/transsion/xuanniao/account/center/view/e;->d:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/transsion/xuanniao/account/center/view/e;->a:Lcom/transsion/widgetslib/dialog/d;

    sget v2, Lcom/transsion/xuanniao/account/R$id;->line:I

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p1, Lcom/transsion/xuanniao/account/center/view/e;->e:Landroid/view/View;

    iget-object v1, p1, Lcom/transsion/xuanniao/account/center/view/e;->c:Landroid/widget/Button;

    new-instance v2, Lcom/transsion/xuanniao/account/center/view/f;

    invoke-direct {v2, p1, v0}, Lcom/transsion/xuanniao/account/center/view/f;-><init>(Lcom/transsion/xuanniao/account/center/view/e;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p1, Lcom/transsion/xuanniao/account/center/view/e;->b:Landroid/widget/EditText;

    new-instance v1, Lcom/transsion/xuanniao/account/center/view/e$c;

    invoke-direct {v1, p1}, Lcom/transsion/xuanniao/account/center/view/e$c;-><init>(Lcom/transsion/xuanniao/account/center/view/e;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p1, Lcom/transsion/xuanniao/account/center/view/e;->b:Landroid/widget/EditText;

    new-instance v1, Lcom/transsion/xuanniao/account/center/view/e$a;

    invoke-direct {v1, p1}, Lcom/transsion/xuanniao/account/center/view/e$a;-><init>(Lcom/transsion/xuanniao/account/center/view/e;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    goto :goto_2

    :cond_c
    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p1, Lcom/transsion/xuanniao/account/center/view/e;->a:Lcom/transsion/widgetslib/dialog/d;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/dialog/d;->show()V

    :cond_d
    :goto_2
    iget-object v0, p1, Lcom/transsion/xuanniao/account/center/view/e;->b:Landroid/widget/EditText;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/transsion/xuanniao/account/center/view/e;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    iget-object v1, p1, Lcom/transsion/xuanniao/account/center/view/e;->b:Landroid/widget/EditText;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    iget-object v0, p1, Lcom/transsion/xuanniao/account/center/view/e;->d:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    iget-object v2, p1, Lcom/transsion/xuanniao/account/center/view/e;->b:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v7, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity$c$b;

    invoke-direct {v0, p0}, Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity$c$b;-><init>(Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity$c;)V

    iput-object v0, p1, Lcom/transsion/xuanniao/account/center/view/e;->h:Lcom/transsion/xuanniao/account/center/view/e$b;

    goto/16 :goto_5

    :cond_e
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/transsion/xuanniao/account/R$id;->genderL:I

    const/4 v9, 0x2

    if-ne v0, v1, :cond_11

    iget-object p1, p0, Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity$c;->d:Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lxj;->U(Landroid/content/Context;)Lxj;

    move-result-object p1

    invoke-virtual {p1}, Lxj;->O0()V

    new-instance p1, Lcom/transsion/xuanniao/account/center/view/h;

    invoke-direct {p1}, Lcom/transsion/xuanniao/account/center/view/h;-><init>()V

    new-instance v0, Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity$c$c;

    invoke-direct {v0, p0}, Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity$c$c;-><init>(Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity$c;)V

    iput-object v0, p1, Lcom/transsion/xuanniao/account/center/view/h;->c:Lcom/transsion/xuanniao/account/center/view/h$a;

    iget-object v0, p0, Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity$c;->d:Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity$c;->d:Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;

    iget-object p0, p0, Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;->f:LOppOOO0/OppOOp0;

    invoke-virtual {p0}, LOppOOO0/OppOOp0;->h()I

    move-result p0

    iput-object v0, p1, Lcom/transsion/xuanniao/account/center/view/h;->b:Landroid/content/Context;

    iput p0, p1, Lcom/transsion/xuanniao/account/center/view/h;->d:I

    add-int/lit8 v1, p0, -0x1

    if-eqz v1, :cond_f

    if-eq v1, v6, :cond_f

    goto :goto_3

    :cond_f
    move v9, v1

    :goto_3
    sget v1, Lcom/transsion/xuanniao/account/R$string;->xn_man:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/transsion/xuanniao/account/center/view/h;->b:Landroid/content/Context;

    sget v2, Lcom/transsion/xuanniao/account/R$string;->xn_female:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/transsion/xuanniao/account/center/view/h;->b:Landroid/content/Context;

    sget v3, Lcom/transsion/xuanniao/account/R$string;->xn_secrecy:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/transsion/xuanniao/account/center/view/h;->a:Lcom/transsion/widgetslib/dialog/d;

    if-nez v1, :cond_10

    new-instance v1, Lcom/transsion/widgetslib/dialog/d$a;

    iget-object v2, p1, Lcom/transsion/xuanniao/account/center/view/h;->b:Landroid/content/Context;

    sget v3, Lcom/transsion/xuanniao/account/R$style;->dialog_soft_input:I

    invoke-direct {v1, v2, v3}, Lcom/transsion/widgetslib/dialog/d$a;-><init>(Landroid/content/Context;I)V

    iget-object v2, p1, Lcom/transsion/xuanniao/account/center/view/h;->b:Landroid/content/Context;

    sget v3, Lcom/transsion/xuanniao/account/R$string;->xn_select_gender:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/widgetslib/dialog/d$a;->B(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v1

    new-instance v2, Lcom/transsion/xuanniao/account/center/view/g;

    invoke-direct {v2, p1, p0}, Lcom/transsion/xuanniao/account/center/view/g;-><init>(Lcom/transsion/xuanniao/account/center/view/h;I)V

    invoke-virtual {v1, v0, v9, v2}, Lcom/transsion/widgetslib/dialog/d$a;->z([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object p0

    iget-object v0, p1, Lcom/transsion/xuanniao/account/center/view/h;->b:Landroid/content/Context;

    sget v1, Lcom/transsion/xuanniao/account/R$string;->xn_cancel:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ltr7;

    invoke-direct {v1, p1}, Ltr7;-><init>(Lcom/transsion/xuanniao/account/center/view/h;)V

    invoke-virtual {p0, v0, v1}, Lcom/transsion/widgetslib/dialog/d$a;->n(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/d$a;->F()Lcom/transsion/widgetslib/dialog/d;

    move-result-object p0

    iput-object p0, p1, Lcom/transsion/xuanniao/account/center/view/h;->a:Lcom/transsion/widgetslib/dialog/d;

    goto/16 :goto_5

    :cond_10
    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result p0

    if-nez p0, :cond_1f

    iget-object p0, p1, Lcom/transsion/xuanniao/account/center/view/h;->a:Lcom/transsion/widgetslib/dialog/d;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/d;->show()V

    goto/16 :goto_5

    :cond_11
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/transsion/xuanniao/account/R$id;->birthdayL:I

    if-ne v0, v1, :cond_15

    iget-object p1, p0, Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity$c;->d:Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lxj;->U(Landroid/content/Context;)Lxj;

    move-result-object p1

    invoke-virtual {p1}, Lxj;->N0()V

    new-instance p1, Lcom/transsion/xuanniao/account/center/view/d;

    invoke-direct {p1}, Lcom/transsion/xuanniao/account/center/view/d;-><init>()V

    new-instance v0, Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity$c$d;

    invoke-direct {v0, p0}, Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity$c$d;-><init>(Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity$c;)V

    iput-object v0, p1, Lcom/transsion/xuanniao/account/center/view/d;->c:Lcom/transsion/xuanniao/account/center/view/d$a;

    new-instance v0, Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity$c;->d:Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity$c;->d:Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;

    iget-object p0, p0, Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;->f:LOppOOO0/OppOOp0;

    iget-object p0, p0, LOppOOO0/OppOOp0;->c:Lcom/transsion/xuanniao/account/model/data/AccountRes;

    if-eqz p0, :cond_12

    iget-object v4, p0, Lcom/transsion/xuanniao/account/model/data/AccountRes;->birthday:Ljava/lang/String;

    :cond_12
    invoke-static {}, Lpp7;->a()I

    move-result p0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/2addr v1, v6

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    const/4 v5, 0x5

    invoke-virtual {v3, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_13

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v7, v5

    const/4 v8, 0x3

    if-lt v7, v8, :cond_13

    iput-object v4, p1, Lcom/transsion/xuanniao/account/center/view/d;->b:Ljava/lang/String;

    aget-object p0, v5, v2

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    aget-object v1, v5, v6

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    aget-object v2, v5, v9

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    :cond_13
    invoke-virtual {p1, p0, v1, v3}, Lcom/transsion/xuanniao/account/center/view/d;->a(III)V

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_14

    goto/16 :goto_5

    :cond_14
    new-instance v2, Lcom/transsion/widgetslib/dialog/a;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Context;

    sub-int/2addr v1, v6

    invoke-direct {v2, v4, p0, v1, v3}, Lcom/transsion/widgetslib/dialog/a;-><init>(Landroid/content/Context;III)V

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    sget v1, Lcom/transsion/xuanniao/account/R$string;->xn_birthday:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/transsion/widgetslib/dialog/a;->u(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/a;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    sget v2, Lcom/transsion/xuanniao/account/R$string;->xn_confirm:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/transsion/xuanniao/account/center/view/c;

    invoke-direct {v2, p1, v0}, Lcom/transsion/xuanniao/account/center/view/c;-><init>(Lcom/transsion/xuanniao/account/center/view/d;Ljava/lang/ref/WeakReference;)V

    invoke-virtual {p0, v1, v2}, Lcom/transsion/widgetslib/dialog/a;->t(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/a;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    sget v2, Lcom/transsion/xuanniao/account/R$string;->xn_cancel:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lvq7;

    invoke-direct {v2, p1, v0}, Lvq7;-><init>(Lcom/transsion/xuanniao/account/center/view/d;Ljava/lang/ref/WeakReference;)V

    invoke-virtual {p0, v1, v2}, Lcom/transsion/widgetslib/dialog/a;->p(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/a;

    move-result-object p0

    new-instance v0, Lpq7;

    invoke-direct {v0, p1}, Lpq7;-><init>(Lcom/transsion/xuanniao/account/center/view/d;)V

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/dialog/a;->q(Lcom/transsion/widgetslib/dialog/a$c;)Lcom/transsion/widgetslib/dialog/a;

    move-result-object p0

    iput-object p0, p1, Lcom/transsion/xuanniao/account/center/view/d;->a:Lcom/transsion/widgetslib/dialog/a;

    invoke-static {}, Lpp7;->a()I

    move-result v0

    add-int/lit8 v0, v0, -0x63

    invoke-static {}, Lpp7;->a()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/transsion/widgetslib/dialog/a;->v(II)V

    iget-object p0, p1, Lcom/transsion/xuanniao/account/center/view/d;->a:Lcom/transsion/widgetslib/dialog/a;

    const-string v0, "yyyy-MM-dd"

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/dialog/a;->setFormat(Ljava/lang/String;)V

    iget-object p0, p1, Lcom/transsion/xuanniao/account/center/view/d;->a:Lcom/transsion/widgetslib/dialog/a;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/a;->h()Lcom/transsion/widgetslib/dialog/d;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/d;->show()V

    iget-object p0, p1, Lcom/transsion/xuanniao/account/center/view/d;->a:Lcom/transsion/widgetslib/dialog/a;

    new-instance v0, Lbr7;

    invoke-direct {v0, p1}, Lbr7;-><init>(Lcom/transsion/xuanniao/account/center/view/d;)V

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/dialog/a;->r(Landroid/content/DialogInterface$OnDismissListener;)Lcom/transsion/widgetslib/dialog/a;

    goto/16 :goto_5

    :cond_15
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/transsion/xuanniao/account/R$id;->signatureL:I

    if-ne v0, v1, :cond_1a

    iget-object p1, p0, Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity$c;->d:Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lxj;->U(Landroid/content/Context;)Lxj;

    move-result-object p1

    invoke-virtual {p1}, Lxj;->M0()V

    new-instance p1, Lcom/transsion/xuanniao/account/center/view/j;

    invoke-direct {p1}, Lcom/transsion/xuanniao/account/center/view/j;-><init>()V

    new-instance v0, Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity$c$e;

    invoke-direct {v0, p0}, Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity$c$e;-><init>(Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity$c;)V

    iput-object v0, p1, Lcom/transsion/xuanniao/account/center/view/j;->h:Lcom/transsion/xuanniao/account/center/view/j$b;

    iget-object p0, p0, Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity$c;->d:Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;

    iget-object v0, p0, Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;->f:LOppOOO0/OppOOp0;

    iget-object v0, v0, LOppOOO0/OppOOp0;->c:Lcom/transsion/xuanniao/account/model/data/AccountRes;

    if-eqz v0, :cond_16

    iget-object v5, v0, Lcom/transsion/xuanniao/account/model/data/AccountRes;->signature:Ljava/lang/String;

    :cond_16
    iget-object v0, p1, Lcom/transsion/xuanniao/account/center/view/j;->a:Lcom/transsion/widgetslib/dialog/d;

    if-nez v0, :cond_17

    iput-object p0, p1, Lcom/transsion/xuanniao/account/center/view/j;->g:Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;

    new-instance v0, Lcom/transsion/widgetslib/dialog/d$a;

    sget v1, Lcom/transsion/xuanniao/account/R$style;->dialog_soft_input:I

    invoke-direct {v0, p0, v1}, Lcom/transsion/widgetslib/dialog/d$a;-><init>(Landroid/content/Context;I)V

    sget v1, Lcom/transsion/xuanniao/account/R$layout;->xn_edit_signature_view:I

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/d$a;->D(I)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v0

    sget v1, Lcom/transsion/xuanniao/account/R$string;->xn_signature:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/d$a;->B(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v0

    sget v1, Lcom/transsion/xuanniao/account/R$string;->xn_confirm:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lcom/transsion/widgetslib/dialog/d$a;->w(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v0

    sget v1, Lcom/transsion/xuanniao/account/R$string;->xn_cancel:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Lvr7;

    invoke-direct {v4, p1, p0}, Lvr7;-><init>(Lcom/transsion/xuanniao/account/center/view/j;Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;)V

    invoke-virtual {v0, v1, v4}, Lcom/transsion/widgetslib/dialog/d$a;->n(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/widgetslib/dialog/d$a;->a()Lcom/transsion/widgetslib/dialog/d;

    move-result-object v0

    iput-object v0, p1, Lcom/transsion/xuanniao/account/center/view/j;->a:Lcom/transsion/widgetslib/dialog/d;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/dialog/d;->show()V

    sget-object v0, Llk7$a;->a:Llk7;

    new-instance v1, LOppOOO/OppOOp;

    invoke-direct {v1, p1, p0}, LOppOOO/OppOOp;-><init>(Lcom/transsion/xuanniao/account/center/view/j;Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;)V

    iget-object v0, v0, Llk7;->a:Landroid/os/Handler;

    const-wide/16 v9, 0xc8

    invoke-virtual {v0, v1, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p1, Lcom/transsion/xuanniao/account/center/view/j;->a:Lcom/transsion/widgetslib/dialog/d;

    invoke-virtual {v0, v3}, Lcom/transsion/widgetslib/dialog/d;->e(I)Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p1, Lcom/transsion/xuanniao/account/center/view/j;->c:Landroid/widget/Button;

    iget-object v0, p1, Lcom/transsion/xuanniao/account/center/view/j;->a:Lcom/transsion/widgetslib/dialog/d;

    sget v1, Lcom/transsion/xuanniao/account/R$id;->signatureEdit:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/transsion/xuanniao/account/center/view/j;->b:Landroid/widget/EditText;

    iget-object v0, p1, Lcom/transsion/xuanniao/account/center/view/j;->a:Lcom/transsion/widgetslib/dialog/d;

    sget v1, Lcom/transsion/xuanniao/account/R$id;->xn_delete_all:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/transsion/xuanniao/account/center/view/j;->f:Landroid/view/View;

    new-instance v1, Las7;

    invoke-direct {v1, p1}, Las7;-><init>(Lcom/transsion/xuanniao/account/center/view/j;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p1, Lcom/transsion/xuanniao/account/center/view/j;->a:Lcom/transsion/widgetslib/dialog/d;

    sget v1, Lcom/transsion/xuanniao/account/R$id;->num:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/transsion/xuanniao/account/center/view/j;->d:Landroid/widget/TextView;

    iget-object v0, p1, Lcom/transsion/xuanniao/account/center/view/j;->a:Lcom/transsion/widgetslib/dialog/d;

    sget v1, Lcom/transsion/xuanniao/account/R$id;->line:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/transsion/xuanniao/account/center/view/j;->e:Landroid/view/View;

    iget-object v0, p1, Lcom/transsion/xuanniao/account/center/view/j;->c:Landroid/widget/Button;

    new-instance v1, Lcom/transsion/xuanniao/account/center/view/i;

    invoke-direct {v1, p1, p0}, Lcom/transsion/xuanniao/account/center/view/i;-><init>(Lcom/transsion/xuanniao/account/center/view/j;Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p0, p1, Lcom/transsion/xuanniao/account/center/view/j;->b:Landroid/widget/EditText;

    new-instance v0, Lcom/transsion/xuanniao/account/center/view/j$c;

    invoke-direct {v0, p1}, Lcom/transsion/xuanniao/account/center/view/j$c;-><init>(Lcom/transsion/xuanniao/account/center/view/j;)V

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object p0, p1, Lcom/transsion/xuanniao/account/center/view/j;->b:Landroid/widget/EditText;

    new-instance v0, Lcom/transsion/xuanniao/account/center/view/j$a;

    invoke-direct {v0, p1}, Lcom/transsion/xuanniao/account/center/view/j$a;-><init>(Lcom/transsion/xuanniao/account/center/view/j;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    goto :goto_4

    :cond_17
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result p0

    if-nez p0, :cond_18

    iget-object p0, p1, Lcom/transsion/xuanniao/account/center/view/j;->a:Lcom/transsion/widgetslib/dialog/d;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/d;->show()V

    :cond_18
    :goto_4
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_19

    iget-object p0, p1, Lcom/transsion/xuanniao/account/center/view/j;->b:Landroid/widget/EditText;

    invoke-virtual {p0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p1, Lcom/transsion/xuanniao/account/center/view/j;->b:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    iget-object v0, p1, Lcom/transsion/xuanniao/account/center/view/j;->b:Landroid/widget/EditText;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setSelection(I)V

    iget-object p0, p1, Lcom/transsion/xuanniao/account/center/view/j;->d:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iget-object p1, p1, Lcom/transsion/xuanniao/account/center/view/j;->b:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {p1, v1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, v7, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    :cond_19
    iget-object p0, p1, Lcom/transsion/xuanniao/account/center/view/j;->d:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v7, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    :cond_1a
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/transsion/xuanniao/account/R$id;->regionL:I

    if-ne v0, v1, :cond_1e

    iget-object p1, p0, Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity$c;->d:Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lxj;->U(Landroid/content/Context;)Lxj;

    move-result-object p1

    invoke-virtual {p1}, Lxj;->L0()V

    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity$c;->d:Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;

    const-class v1, Lcom/transsion/xuanniao/account/login/view/CountrySelectActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity$c;->d:Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;

    iget-object v0, v0, Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;->f:LOppOOO0/OppOOp0;

    iget-object v0, v0, LOppOOO0/OppOOp0;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1c

    iget-object v0, p0, Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity$c;->d:Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity$c;->d:Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;

    iget-object v1, v1, Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;->f:LOppOOO0/OppOOp0;

    iget-object v2, v1, LOppOOO0/OppOOp0;->g:Ljava/lang/String;

    iget-object v1, v1, LOppOOO0/OppOOp0;->k:Lcom/transsion/xuanniao/account/model/data/CountryData;

    if-eqz v1, :cond_1b

    iget-object v4, v1, Lcom/transsion/xuanniao/account/model/data/CountryData;->countries:Ljava/util/ArrayList;

    :cond_1b
    invoke-static {v0, v2, v4}, Lcom/transsion/xuanniao/account/model/data/CountryData;->getCode(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    :cond_1c
    const-string v1, "countryCode"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity$c;->d:Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;

    iget-object v0, v0, Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;->f:LOppOOO0/OppOOp0;

    iget-object v0, v0, LOppOOO0/OppOOp0;->c:Lcom/transsion/xuanniao/account/model/data/AccountRes;

    if-eqz v0, :cond_1d

    iget-object v5, v0, Lcom/transsion/xuanniao/account/model/data/AccountRes;->countryName:Ljava/lang/String;

    :cond_1d
    const-string v0, "countryName"

    invoke-virtual {p1, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "notShowCode"

    invoke-virtual {p1, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object p0, p0, Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity$c;->d:Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;

    const/16 v0, 0x3ef

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_5

    :cond_1e
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/transsion/xuanniao/account/R$id;->addressL:I

    if-ne p1, v0, :cond_1f

    iget-object p1, p0, Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity$c;->d:Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lxj;->U(Landroid/content/Context;)Lxj;

    move-result-object p1

    invoke-virtual {p1}, Lxj;->G()V

    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity$c;->d:Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;

    const-class v1, Lcom/transsion/xuanniao/account/center/view/MyAddressActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity$c;->d:Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;

    iget-object v0, v0, Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;->f:LOppOOO0/OppOOp0;

    iget-object v0, v0, LOppOOO0/OppOOp0;->j:Ljava/util/ArrayList;

    const-string v1, "addresses"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity$c;->d:Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;

    const/16 v0, 0x3f0

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_1f
    :goto_5
    return-void
.end method
