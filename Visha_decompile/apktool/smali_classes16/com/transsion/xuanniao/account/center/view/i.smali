.class public Lcom/transsion/xuanniao/account/center/view/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;

.field public final synthetic c:Lcom/transsion/xuanniao/account/center/view/j;


# direct methods
.method public constructor <init>(Lcom/transsion/xuanniao/account/center/view/j;Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/xuanniao/account/center/view/i;->c:Lcom/transsion/xuanniao/account/center/view/j;

    iput-object p2, p0, Lcom/transsion/xuanniao/account/center/view/i;->b:Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/transsion/xuanniao/account/center/view/i;->c:Lcom/transsion/xuanniao/account/center/view/j;

    iget-object v0, p1, Lcom/transsion/xuanniao/account/center/view/j;->a:Lcom/transsion/widgetslib/dialog/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/transsion/xuanniao/account/center/view/j;->a:Lcom/transsion/widgetslib/dialog/d;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    iget-object p1, p0, Lcom/transsion/xuanniao/account/center/view/i;->b:Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;

    invoke-static {p1}, Lxj;->U(Landroid/content/Context;)Lxj;

    move-result-object p1

    const-string v0, "confirm"

    invoke-virtual {p1, v0}, Lxj;->t0(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/xuanniao/account/center/view/i;->c:Lcom/transsion/xuanniao/account/center/view/j;

    iget-object p1, p0, Lcom/transsion/xuanniao/account/center/view/j;->h:Lcom/transsion/xuanniao/account/center/view/j$b;

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/transsion/xuanniao/account/center/view/j;->b:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    check-cast p1, Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity$c$e;

    iget-object p1, p1, Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity$c$e;->a:Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity$c;

    iget-object p1, p1, Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity$c;->d:Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;

    iget-object p1, p1, Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;->f:LOppOOO0/OppOOp0;

    invoke-virtual {p1, p0}, LOppOOO0/OppOOp0;->k(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
