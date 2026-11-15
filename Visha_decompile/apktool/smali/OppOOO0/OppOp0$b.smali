.class public LOppOOO0/OppOp0$b;
.super LOppOOp0/OppO0O0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LOppOOO0/OppOp0;->d(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic k:LOppOOO0/OppOp0;


# direct methods
.method public constructor <init>(LOppOOO0/OppOp0;Landroid/content/Context;Ljava/lang/Class;)V
    .locals 0

    iput-object p1, p0, LOppOOO0/OppOp0$b;->k:LOppOOO0/OppOp0;

    invoke-direct {p0, p2, p3}, LOppOOp0/OppO0O0;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public b(ILjava/lang/Object;Ljava/lang/String;)V
    .locals 0

    check-cast p2, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseData;

    iget-object p1, p0, LOppOOO0/OppOp0$b;->k:LOppOOO0/OppOp0;

    invoke-virtual {p1}, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, LOppOOO0/OppOp0$b;->k:LOppOOO0/OppOp0;

    invoke-virtual {p1}, LOppOOO0/OppOp0;->e()Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->A0()V

    iget-object p0, p0, LOppOOO0/OppOp0$b;->k:LOppOOO0/OppOp0;

    iget-object p0, p0, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a:Ljk7;

    check-cast p0, Lqq7;

    invoke-interface {p0}, Lqq7;->B()V

    :goto_0
    return-void
.end method

.method public g()V
    .locals 1

    iget-object v0, p0, LOppOOO0/OppOp0$b;->k:LOppOOO0/OppOp0;

    invoke-virtual {v0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, LOppOOO0/OppOp0$b;->k:LOppOOO0/OppOp0;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, LOppOOO0/OppOp0;->d(Z)V

    return-void
.end method
