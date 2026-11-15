.class public Lym7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput$e;


# instance fields
.field public final synthetic a:Lcom/transsion/xuanniao/account/verify/view/VerifyAccountActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/xuanniao/account/verify/view/VerifyAccountActivity;)V
    .locals 0

    iput-object p1, p0, Lym7;->a:Lcom/transsion/xuanniao/account/verify/view/VerifyAccountActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    iget-object p0, p0, Lym7;->a:Lcom/transsion/xuanniao/account/verify/view/VerifyAccountActivity;

    invoke-static {p0}, Lcom/transsion/xuanniao/account/verify/view/VerifyAccountActivity;->D0(Lcom/transsion/xuanniao/account/verify/view/VerifyAccountActivity;)V

    return-void
.end method

.method public b()V
    .locals 3

    iget-object v0, p0, Lym7;->a:Lcom/transsion/xuanniao/account/verify/view/VerifyAccountActivity;

    invoke-static {v0}, Lcom/transsion/xuanniao/account/verify/view/VerifyAccountActivity;->B0(Lcom/transsion/xuanniao/account/verify/view/VerifyAccountActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lym7;->a:Lcom/transsion/xuanniao/account/verify/view/VerifyAccountActivity;

    iget-object v0, v0, Lcom/transsion/xuanniao/account/verify/view/VerifyAccountActivity;->f:Lcom/transsion/xuanniao/account/comm/widget/AccountInput;

    invoke-virtual {v0}, Lcom/transsion/xuanniao/account/comm/widget/AccountInput;->getType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lym7;->a:Lcom/transsion/xuanniao/account/verify/view/VerifyAccountActivity;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Leq9;->a(Landroid/app/Activity;)Lfq9;

    move-result-object v1

    invoke-virtual {v1}, Lfq9;->v()Lxda;

    move-result-object v1

    new-instance v2, Lsn7;

    invoke-direct {v2, v0}, Lsn7;-><init>(Lcom/transsion/xuanniao/account/verify/view/VerifyAccountActivity;)V

    invoke-virtual {v1, v2}, Lxda;->f(Llf7;)Lxda;

    new-instance v2, Loo7;

    invoke-direct {v2, v0}, Loo7;-><init>(Lcom/transsion/xuanniao/account/verify/view/VerifyAccountActivity;)V

    invoke-virtual {v1, v2}, Lxda;->d(Lre7;)Lxda;

    :cond_0
    iget-object p0, p0, Lym7;->a:Lcom/transsion/xuanniao/account/verify/view/VerifyAccountActivity;

    iget-object p0, p0, Lcom/transsion/xuanniao/account/verify/view/VerifyAccountActivity;->i:Lio7;

    invoke-virtual {p0}, Lio7;->d()V

    :cond_1
    return-void
.end method
