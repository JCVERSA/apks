.class public Lpl7$a;
.super LOppOOp0/OppO0O0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl7;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic k:Lpl7;


# direct methods
.method public constructor <init>(Lpl7;Landroid/content/Context;Ljava/lang/Class;)V
    .locals 0

    iput-object p1, p0, Lpl7$a;->k:Lpl7;

    invoke-direct {p0, p2, p3}, LOppOOp0/OppO0O0;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public b(ILjava/lang/Object;Ljava/lang/String;)V
    .locals 0

    check-cast p2, Lcom/transsion/xuanniao/account/model/data/EncryptRes;

    iget-object p1, p0, Lpl7$a;->k:Lpl7;

    invoke-virtual {p1}, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lpl7$a;->k:Lpl7;

    invoke-virtual {p1}, Lpl7;->e()Lcom/transsion/xuanniao/account/bind/phone/view/BindingPhoneActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->A0()V

    iget-object p0, p0, Lpl7$a;->k:Lpl7;

    iget-object p0, p0, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a:Ljk7;

    check-cast p0, Lgn7;

    invoke-interface {p0}, Lgn7;->onSuccess()V

    :goto_0
    return-void
.end method

.method public d(Lcom/transsion/xuanniao/account/comm/mvpbase/BaseData;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lpl7$a;->k:Lpl7;

    invoke-virtual {v0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lpl7$a;->k:Lpl7;

    invoke-virtual {v0}, Lpl7;->e()Lcom/transsion/xuanniao/account/bind/phone/view/BindingPhoneActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->A0()V

    iget v0, p1, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseData;->code:I

    const v1, 0x61ae4

    if-ne v0, v1, :cond_1

    iget-object p0, p0, Lpl7$a;->k:Lpl7;

    iget-object p0, p0, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a:Ljk7;

    check-cast p0, Lgn7;

    invoke-interface {p0}, Lgn7;->d()V

    goto :goto_0

    :cond_1
    const v1, 0x61a81

    if-ne v0, v1, :cond_2

    iget-object p0, p0, Lpl7$a;->k:Lpl7;

    iget-object p0, p0, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a:Ljk7;

    check-cast p0, Lgn7;

    invoke-interface {p0}, Lgn7;->r()V

    goto :goto_0

    :cond_2
    invoke-super {p0, p1, p2}, LOppOOp0/OppO0O0;->d(Lcom/transsion/xuanniao/account/comm/mvpbase/BaseData;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public g()V
    .locals 1

    iget-object v0, p0, Lpl7$a;->k:Lpl7;

    invoke-virtual {v0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lpl7$a;->k:Lpl7;

    invoke-virtual {p0}, Lpl7;->g()V

    return-void
.end method
