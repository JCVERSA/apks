.class public Lcom/transsion/xuanniao/account/center/view/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Lcom/transsion/xuanniao/account/center/view/e;


# direct methods
.method public constructor <init>(Lcom/transsion/xuanniao/account/center/view/e;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/xuanniao/account/center/view/f;->c:Lcom/transsion/xuanniao/account/center/view/e;

    iput-object p2, p0, Lcom/transsion/xuanniao/account/center/view/f;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/transsion/xuanniao/account/center/view/f;->c:Lcom/transsion/xuanniao/account/center/view/e;

    iget-object v0, p1, Lcom/transsion/xuanniao/account/center/view/e;->a:Lcom/transsion/widgetslib/dialog/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/transsion/xuanniao/account/center/view/e;->a:Lcom/transsion/widgetslib/dialog/d;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    iget-object p1, p0, Lcom/transsion/xuanniao/account/center/view/f;->b:Landroid/content/Context;

    invoke-static {p1}, Lxj;->U(Landroid/content/Context;)Lxj;

    move-result-object p1

    const-string v0, "confirm"

    invoke-virtual {p1, v0}, Lxj;->B0(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/xuanniao/account/center/view/f;->c:Lcom/transsion/xuanniao/account/center/view/e;

    iget-object p1, p0, Lcom/transsion/xuanniao/account/center/view/e;->h:Lcom/transsion/xuanniao/account/center/view/e$b;

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/transsion/xuanniao/account/center/view/e;->b:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    check-cast p1, Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity$c$b;

    iget-object p1, p1, Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity$c$b;->a:Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity$c;

    iget-object p1, p1, Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity$c;->d:Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;

    iget-object p1, p1, Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;->f:LOppOOO0/OppOOp0;

    invoke-virtual {p1, p0}, LOppOOO0/OppOOp0;->i(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
