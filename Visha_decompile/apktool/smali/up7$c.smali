.class public Lup7$c;
.super LOppOOp0/OppO0O0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lup7;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic k:Lup7;


# direct methods
.method public constructor <init>(Lup7;Landroid/content/Context;Ljava/lang/Class;)V
    .locals 0

    iput-object p1, p0, Lup7$c;->k:Lup7;

    invoke-direct {p0, p2, p3}, LOppOOp0/OppO0O0;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public b(ILjava/lang/Object;Ljava/lang/String;)V
    .locals 1

    check-cast p2, Lcom/transsion/xuanniao/account/model/data/AcquireCodeRes;

    iget-object p1, p0, Lup7$c;->k:Lup7;

    invoke-virtual {p1}, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lup7$c;->k:Lup7;

    invoke-virtual {p1}, Lup7;->e()Lcom/transsion/xuanniao/account/verify/view/VerifyPhoneActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->A0()V

    iget-object p1, p0, Lup7$c;->k:Lup7;

    iget-object p1, p1, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a:Ljk7;

    check-cast p1, Lwm7;

    invoke-interface {p1}, Lwm7;->a()V

    iget-object p1, p0, Lup7$c;->k:Lup7;

    invoke-virtual {p2}, Lcom/transsion/xuanniao/account/model/data/AcquireCodeRes;->getTicket()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lup7;->d:Ljava/lang/String;

    iget-object p1, p0, Lup7$c;->k:Lup7;

    invoke-virtual {p1}, Lup7;->e()Lcom/transsion/xuanniao/account/verify/view/VerifyPhoneActivity;

    move-result-object p1

    invoke-static {p1}, Ltl7;->c(Landroid/content/Context;)Ltl7;

    move-result-object p1

    iget-object p2, p0, Lup7$c;->k:Lup7;

    iget-object p2, p2, Lup7;->d:Ljava/lang/String;

    invoke-virtual {p1}, Lkk7;->a()V

    iget-object p3, p1, Lkk7;->b:Landroid/content/SharedPreferences$Editor;

    const-string v0, "sms_ticket"

    invoke-interface {p3, v0, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-virtual {p1}, Lkk7;->b()V

    iget-object p0, p0, Lup7$c;->k:Lup7;

    iget-object p0, p0, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a:Ljk7;

    check-cast p0, Lwm7;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lwm7;->q(Z)V

    :goto_0
    return-void
.end method

.method public d(Lcom/transsion/xuanniao/account/comm/mvpbase/BaseData;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lup7$c;->k:Lup7;

    invoke-virtual {v0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lup7$c;->k:Lup7;

    invoke-virtual {v0}, Lup7;->e()Lcom/transsion/xuanniao/account/verify/view/VerifyPhoneActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->A0()V

    iget v0, p1, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseData;->code:I

    const v1, 0x61c18

    if-ne v0, v1, :cond_1

    iget-object p0, p0, Lup7$c;->k:Lup7;

    iget-object p0, p0, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a:Ljk7;

    check-cast p0, Lwm7;

    invoke-interface {p0}, Lwm7;->e()V

    goto :goto_1

    :cond_1
    const v1, 0x61c19

    if-ne v0, v1, :cond_2

    iget-object p0, p0, Lup7$c;->k:Lup7;

    iget-object p0, p0, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a:Ljk7;

    check-cast p0, Lwm7;

    invoke-interface {p0}, Lwm7;->b()V

    goto :goto_1

    :cond_2
    const v1, 0x61ae4

    if-ne v0, v1, :cond_3

    iget-object p1, p0, Lup7$c;->k:Lup7;

    iget-object p1, p1, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a:Ljk7;

    check-cast p1, Lwm7;

    invoke-interface {p1}, Lwm7;->h()V

    iget-object p0, p0, Lup7$c;->k:Lup7;

    invoke-virtual {p0}, Lup7;->c()V

    goto :goto_1

    :cond_3
    const v1, 0x61a80

    if-ne v0, v1, :cond_5

    iget-object p1, p0, Lup7$c;->k:Lup7;

    invoke-virtual {p1}, Lup7;->e()Lcom/transsion/xuanniao/account/verify/view/VerifyPhoneActivity;

    move-result-object p1

    invoke-static {p1}, Ltl7;->c(Landroid/content/Context;)Ltl7;

    move-result-object p1

    invoke-virtual {p1}, Ltl7;->h()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lup7$c;->k:Lup7;

    iget-object p1, p1, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a:Ljk7;

    check-cast p1, Lwm7;

    invoke-interface {p1}, Lwm7;->z()V

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lup7$c;->k:Lup7;

    iget-object p1, p1, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a:Ljk7;

    check-cast p1, Lwm7;

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Lwm7;->q(Z)V

    :goto_0
    iget-object p0, p0, Lup7$c;->k:Lup7;

    invoke-virtual {p0}, Lup7;->c()V

    goto :goto_1

    :cond_5
    invoke-super {p0, p1, p2}, LOppOOp0/OppO0O0;->d(Lcom/transsion/xuanniao/account/comm/mvpbase/BaseData;Ljava/lang/String;)V

    iget-object p0, p0, Lup7$c;->k:Lup7;

    invoke-virtual {p0}, Lup7;->c()V

    :goto_1
    return-void
.end method

.method public g()V
    .locals 1

    iget-object v0, p0, Lup7$c;->k:Lup7;

    invoke-virtual {v0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lup7$c;->k:Lup7;

    invoke-virtual {p0}, Lup7;->d()V

    return-void
.end method
