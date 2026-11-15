.class public LOppOOO0/OppOOp0$b;
.super LOppOOp0/OppO0O0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LOppOOO0/OppOOp0;->c(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic k:Ljava/lang/String;

.field public final synthetic l:LOppOOO0/OppOOp0;


# direct methods
.method public constructor <init>(LOppOOO0/OppOOp0;Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LOppOOO0/OppOOp0$b;->l:LOppOOO0/OppOOp0;

    iput-object p5, p0, LOppOOO0/OppOOp0$b;->k:Ljava/lang/String;

    invoke-direct {p0, p2, p3, p4}, LOppOOp0/OppO0O0;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public b(ILjava/lang/Object;Ljava/lang/String;)V
    .locals 0

    check-cast p2, Lcom/transsion/xuanniao/account/model/data/AccountRes;

    iget-object p1, p0, LOppOOO0/OppOOp0$b;->l:LOppOOO0/OppOOp0;

    invoke-virtual {p1}, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, LOppOOO0/OppOOp0$b;->l:LOppOOO0/OppOOp0;

    invoke-virtual {p1}, LOppOOO0/OppOOp0;->f()Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->A0()V

    if-eqz p2, :cond_1

    iget-object p1, p0, LOppOOO0/OppOOp0$b;->l:LOppOOO0/OppOOp0;

    iput-object p2, p1, LOppOOO0/OppOOp0;->c:Lcom/transsion/xuanniao/account/model/data/AccountRes;

    :cond_1
    sget-object p1, Lao7$a;->a:Lao7;

    iget-object p2, p0, LOppOOO0/OppOOp0$b;->l:LOppOOO0/OppOOp0;

    invoke-virtual {p2}, LOppOOO0/OppOOp0;->f()Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;

    move-result-object p2

    iget-object p3, p0, LOppOOO0/OppOOp0$b;->l:LOppOOO0/OppOOp0;

    iget-object p3, p3, LOppOOO0/OppOOp0;->c:Lcom/transsion/xuanniao/account/model/data/AccountRes;

    invoke-virtual {p1, p2, p3}, Lao7;->c(Landroid/content/Context;Lcom/transsion/xuanniao/account/model/data/AccountRes;)V

    iget-object p0, p0, LOppOOO0/OppOOp0$b;->l:LOppOOO0/OppOOp0;

    iget-object p1, p0, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a:Ljk7;

    check-cast p1, Ljq7;

    iget-object p0, p0, LOppOOO0/OppOOp0;->c:Lcom/transsion/xuanniao/account/model/data/AccountRes;

    invoke-interface {p1, p0}, Ljq7;->f0(Lcom/transsion/xuanniao/account/model/data/AccountRes;)V

    :goto_0
    return-void
.end method

.method public g()V
    .locals 1

    iget-object v0, p0, LOppOOO0/OppOOp0$b;->l:LOppOOO0/OppOOp0;

    invoke-virtual {v0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, LOppOOO0/OppOOp0$b;->l:LOppOOO0/OppOOp0;

    iget-object p0, p0, LOppOOO0/OppOOp0$b;->k:Ljava/lang/String;

    invoke-virtual {v0, p0}, LOppOOO0/OppOOp0;->c(Ljava/lang/String;)V

    return-void
.end method
