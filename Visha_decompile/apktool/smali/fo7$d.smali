.class public Lfo7$d;
.super LOppOOp0/OppO0O0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfo7;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic k:Lfo7;


# direct methods
.method public constructor <init>(Lfo7;Landroid/content/Context;Ljava/lang/Class;)V
    .locals 0

    iput-object p1, p0, Lfo7$d;->k:Lfo7;

    invoke-direct {p0, p2, p3}, LOppOOp0/OppO0O0;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public b(ILjava/lang/Object;Ljava/lang/String;)V
    .locals 0

    check-cast p2, Lcom/transsion/xuanniao/account/model/data/VerifyCodeRes;

    iget-object p1, p0, Lfo7$d;->k:Lfo7;

    invoke-virtual {p1}, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lfo7$d;->k:Lfo7;

    iget-object p0, p0, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a:Ljk7;

    check-cast p0, Ldm7;

    invoke-interface {p0}, Ldm7;->j()V

    :goto_0
    return-void
.end method

.method public d(Lcom/transsion/xuanniao/account/comm/mvpbase/BaseData;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lfo7$d;->k:Lfo7;

    invoke-virtual {v0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lfo7$d;->k:Lfo7;

    invoke-virtual {v0}, Lfo7;->e()Lcom/transsion/xuanniao/account/verify/view/VerifyEmailActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->A0()V

    iget v0, p1, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseData;->code:I

    const v1, 0x61ae4

    if-ne v0, v1, :cond_1

    iget-object p0, p0, Lfo7$d;->k:Lfo7;

    iget-object p0, p0, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a:Ljk7;

    check-cast p0, Ldm7;

    invoke-interface {p0}, Ldm7;->d()V

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2}, LOppOOp0/OppO0O0;->d(Lcom/transsion/xuanniao/account/comm/mvpbase/BaseData;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public g()V
    .locals 1

    iget-object v0, p0, Lfo7$d;->k:Lfo7;

    invoke-virtual {v0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lfo7$d;->k:Lfo7;

    invoke-virtual {p0}, Lfo7;->f()V

    return-void
.end method
