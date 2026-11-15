.class public Ldo7$c;
.super LOppOOp0/OppO0O0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldo7;->d(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic k:Ljava/lang/String;

.field public final synthetic l:I

.field public final synthetic m:Landroid/content/Context;

.field public final synthetic n:Ljava/lang/String;

.field public final synthetic o:Ldo7;


# direct methods
.method public constructor <init>(Ldo7;Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ldo7$c;->o:Ldo7;

    iput-object p4, p0, Ldo7$c;->k:Ljava/lang/String;

    iput p5, p0, Ldo7$c;->l:I

    iput-object p6, p0, Ldo7$c;->m:Landroid/content/Context;

    iput-object p7, p0, Ldo7$c;->n:Ljava/lang/String;

    invoke-direct {p0, p2, p3}, LOppOOp0/OppO0O0;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public b(ILjava/lang/Object;Ljava/lang/String;)V
    .locals 6

    check-cast p2, Lcom/transsion/xuanniao/account/model/data/LoginRes;

    iget-object p1, p0, Ldo7$c;->o:Ldo7;

    invoke-virtual {p1}, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Ldo7$c;->o:Ldo7;

    invoke-virtual {p1}, Ldo7;->k()Lcom/transsion/xuanniao/account/login/view/LoginActivity;

    move-result-object p1

    invoke-static {p1}, Lxj;->U(Landroid/content/Context;)Lxj;

    move-result-object v0

    iget-object v1, p0, Ldo7$c;->k:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object p1, p0, Ldo7$c;->o:Ldo7;

    iget-wide v4, p1, Ldo7;->s:J

    sub-long v4, v2, v4

    const/4 v2, 0x1

    const-string v3, ""

    invoke-virtual/range {v0 .. v5}, Lxj;->k0(Ljava/lang/String;ILjava/lang/String;J)V

    iget-object p1, p0, Ldo7$c;->o:Ldo7;

    invoke-virtual {p1}, Ldo7;->k()Lcom/transsion/xuanniao/account/login/view/LoginActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->A0()V

    if-eqz p2, :cond_1

    iget-object p1, p2, Lcom/transsion/xuanniao/account/model/data/LoginRes;->account:Lcom/transsion/xuanniao/account/model/data/AccountRes;

    if-eqz p1, :cond_1

    iget-object p1, p0, Ldo7$c;->o:Ldo7;

    iget p3, p0, Ldo7$c;->l:I

    const-string v0, ""

    const/4 v1, 0x0

    invoke-static {p1, p2, p3, v0, v1}, Ldo7;->f(Ldo7;Lcom/transsion/xuanniao/account/model/data/LoginRes;ILjava/lang/String;I)V

    iget-object p1, p0, Ldo7$c;->o:Ldo7;

    iget-object p1, p1, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a:Ljk7;

    check-cast p1, Lkn7;

    iget-object p3, p2, Lcom/transsion/xuanniao/account/model/data/LoginRes;->account:Lcom/transsion/xuanniao/account/model/data/AccountRes;

    invoke-interface {p1, p3}, Lkn7;->X(Lcom/transsion/xuanniao/account/model/data/AccountRes;)V

    iget-object p0, p0, Ldo7$c;->o:Ldo7;

    iget-object p0, p0, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a:Ljk7;

    check-cast p0, Lkn7;

    iget-object p1, p2, Lcom/transsion/xuanniao/account/model/data/LoginRes;->token:Lcom/transsion/xuanniao/account/model/data/LoginRes$SdkToken;

    iget-object p1, p1, Lcom/transsion/xuanniao/account/model/data/LoginRes$SdkToken;->eventType:Ljava/lang/String;

    invoke-interface {p0, p1, p2}, Lkn7;->K(Ljava/lang/String;Lcom/transsion/xuanniao/account/model/data/LoginRes;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Ldo7$c;->o:Ldo7;

    invoke-virtual {p1}, Ldo7;->k()Lcom/transsion/xuanniao/account/login/view/LoginActivity;

    move-result-object p1

    iget-object p0, p0, Ldo7$c;->m:Landroid/content/Context;

    sget p2, Lcom/transsion/xuanniao/account/R$string;->xn_net_unavailable:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->y0(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public d(Lcom/transsion/xuanniao/account/comm/mvpbase/BaseData;Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Ldo7$c;->o:Ldo7;

    invoke-virtual {v0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1, p2}, LOppOOp0/OppO0O0;->d(Lcom/transsion/xuanniao/account/comm/mvpbase/BaseData;Ljava/lang/String;)V

    iget-object p2, p0, Ldo7$c;->o:Ldo7;

    invoke-virtual {p2}, Ldo7;->k()Lcom/transsion/xuanniao/account/login/view/LoginActivity;

    move-result-object p2

    invoke-static {p2}, Lxj;->U(Landroid/content/Context;)Lxj;

    move-result-object v0

    iget-object v1, p0, Ldo7$c;->k:Ljava/lang/String;

    iget p1, p1, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseData;->code:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iget-object p0, p0, Ldo7$c;->o:Ldo7;

    iget-wide v4, p0, Ldo7;->s:J

    sub-long v4, p1, v4

    const/4 v2, 0x0

    invoke-virtual/range {v0 .. v5}, Lxj;->k0(Ljava/lang/String;ILjava/lang/String;J)V

    return-void
.end method

.method public g()V
    .locals 2

    iget-object v0, p0, Ldo7$c;->o:Ldo7;

    invoke-virtual {v0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Ldo7$c;->o:Ldo7;

    iget v1, p0, Ldo7$c;->l:I

    iget-object p0, p0, Ldo7$c;->n:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Ldo7;->d(ILjava/lang/String;)V

    return-void
.end method
