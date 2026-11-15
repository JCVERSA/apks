.class public LOppOOO0/OppOOp0$e;
.super LOppOOp0/OppO0O0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LOppOOO0/OppOOp0;->k(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic k:Ljava/lang/String;

.field public final synthetic l:LOppOOO0/OppOOp0;


# direct methods
.method public constructor <init>(LOppOOO0/OppOOp0;Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LOppOOO0/OppOOp0$e;->l:LOppOOO0/OppOOp0;

    iput-object p4, p0, LOppOOO0/OppOOp0$e;->k:Ljava/lang/String;

    invoke-direct {p0, p2, p3}, LOppOOp0/OppO0O0;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public b(ILjava/lang/Object;Ljava/lang/String;)V
    .locals 0

    check-cast p2, Lcom/transsion/xuanniao/account/model/data/EncryptRes;

    iget-object p1, p0, LOppOOO0/OppOOp0$e;->l:LOppOOO0/OppOOp0;

    invoke-virtual {p1}, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, LOppOOO0/OppOOp0$e;->l:LOppOOO0/OppOOp0;

    invoke-virtual {p1}, LOppOOO0/OppOOp0;->f()Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;

    move-result-object p1

    invoke-static {p1}, Lxj;->U(Landroid/content/Context;)Lxj;

    move-result-object p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Lxj;->u0(ILjava/lang/String;)V

    iget-object p1, p0, LOppOOO0/OppOOp0$e;->l:LOppOOO0/OppOOp0;

    invoke-virtual {p1}, LOppOOO0/OppOOp0;->f()Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->A0()V

    iget-object p1, p0, LOppOOO0/OppOOp0$e;->l:LOppOOO0/OppOOp0;

    iget-object p0, p0, LOppOOO0/OppOOp0$e;->k:Ljava/lang/String;

    iget-object p2, p1, LOppOOO0/OppOOp0;->c:Lcom/transsion/xuanniao/account/model/data/AccountRes;

    if-eqz p2, :cond_1

    iput-object p0, p2, Lcom/transsion/xuanniao/account/model/data/AccountRes;->signature:Ljava/lang/String;

    iget-object p0, p1, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a:Ljk7;

    check-cast p0, Ljq7;

    invoke-interface {p0, p2}, Ljq7;->f0(Lcom/transsion/xuanniao/account/model/data/AccountRes;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public d(Lcom/transsion/xuanniao/account/comm/mvpbase/BaseData;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, LOppOOO0/OppOOp0$e;->l:LOppOOO0/OppOOp0;

    invoke-virtual {v0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, LOppOOO0/OppOOp0$e;->l:LOppOOO0/OppOOp0;

    invoke-virtual {v0}, LOppOOO0/OppOOp0;->f()Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;

    move-result-object v0

    invoke-static {v0}, Lxj;->U(Landroid/content/Context;)Lxj;

    move-result-object v0

    iget v1, p1, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseData;->code:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lxj;->u0(ILjava/lang/String;)V

    invoke-super {p0, p1, p2}, LOppOOp0/OppO0O0;->d(Lcom/transsion/xuanniao/account/comm/mvpbase/BaseData;Ljava/lang/String;)V

    return-void
.end method

.method public g()V
    .locals 1

    iget-object v0, p0, LOppOOO0/OppOOp0$e;->l:LOppOOO0/OppOOp0;

    iget-object p0, p0, LOppOOO0/OppOOp0$e;->k:Ljava/lang/String;

    invoke-virtual {v0, p0}, LOppOOO0/OppOOp0;->k(Ljava/lang/String;)V

    return-void
.end method
