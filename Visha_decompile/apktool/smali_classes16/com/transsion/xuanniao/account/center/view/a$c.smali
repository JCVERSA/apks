.class public Lcom/transsion/xuanniao/account/center/view/a$c;
.super Lrm7;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/xuanniao/account/center/view/a;->a(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic d:Landroid/content/Context;

.field public final synthetic e:Lcom/transsion/xuanniao/account/center/view/a;


# direct methods
.method public constructor <init>(Lcom/transsion/xuanniao/account/center/view/a;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/xuanniao/account/center/view/a$c;->e:Lcom/transsion/xuanniao/account/center/view/a;

    iput-object p2, p0, Lcom/transsion/xuanniao/account/center/view/a$c;->d:Landroid/content/Context;

    invoke-direct {p0}, Lrm7;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/transsion/xuanniao/account/center/view/a$c;->d:Landroid/content/Context;

    invoke-static {p1}, Lxj;->U(Landroid/content/Context;)Lxj;

    move-result-object p1

    const-string v0, "confirm"

    invoke-virtual {p1, v0}, Lxj;->x0(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/xuanniao/account/center/view/a$c;->e:Lcom/transsion/xuanniao/account/center/view/a;

    iget-object p1, p0, Lcom/transsion/xuanniao/account/center/view/a;->c:Lcom/transsion/xuanniao/account/center/view/a$e;

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/transsion/xuanniao/account/center/view/a;->b:Lcom/transsion/xuanniao/account/comm/widget/AccountIdInput;

    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/comm/widget/AccountIdInput;->getText()Ljava/lang/String;

    move-result-object p0

    check-cast p1, Lcom/transsion/xuanniao/account/center/view/n;

    iget-object v0, p1, Lcom/transsion/xuanniao/account/center/view/n;->a:Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;

    iget-object v0, v0, Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;->g:Lcom/transsion/xuanniao/account/center/view/a;

    iget-object v1, v0, Lcom/transsion/xuanniao/account/center/view/a;->a:Lcom/transsion/widgetslib/dialog/d;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/transsion/xuanniao/account/center/view/a;->a:Lcom/transsion/widgetslib/dialog/d;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    iget-object v0, p1, Lcom/transsion/xuanniao/account/center/view/n;->a:Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;

    iget-object v0, v0, Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;->f:LOppOOO0/OppOOp0;

    iput-object p0, v0, LOppOOO0/OppOOp0;->f:Ljava/lang/String;

    new-instance p0, LOppOOO/OppOp0O;

    invoke-direct {p0, p1}, LOppOOO/OppOp0O;-><init>(Lcom/transsion/xuanniao/account/center/view/n;)V

    const-wide/16 v0, 0xc8

    invoke-static {p0, v0, v1}, Loia;->b(Ljava/lang/Runnable;J)V

    :cond_1
    return-void
.end method
