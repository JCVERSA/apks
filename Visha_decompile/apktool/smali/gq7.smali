.class public Lgq7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/transsion/xuanniao/account/login/view/LoginActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/xuanniao/account/login/view/LoginActivity;)V
    .locals 0

    iput-object p1, p0, Lgq7;->b:Lcom/transsion/xuanniao/account/login/view/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p1, p0, Lgq7;->b:Lcom/transsion/xuanniao/account/login/view/LoginActivity;

    iget-object p1, p1, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->k:Lcom/transsion/xuanniao/account/comm/widget/AccountInput;

    invoke-virtual {p1}, Lcom/transsion/xuanniao/account/comm/widget/AccountInput;->getType()I

    move-result p1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lgq7;->b:Lcom/transsion/xuanniao/account/login/view/LoginActivity;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Leq9;->a(Landroid/app/Activity;)Lfq9;

    move-result-object p2

    invoke-virtual {p2}, Lfq9;->v()Lxda;

    move-result-object p2

    new-instance v0, Lkr7;

    invoke-direct {v0, p1}, Lkr7;-><init>(Lcom/transsion/xuanniao/account/login/view/LoginActivity;)V

    invoke-virtual {p2, v0}, Lxda;->f(Llf7;)Lxda;

    new-instance v0, Lor7;

    invoke-direct {v0, p1}, Lor7;-><init>(Lcom/transsion/xuanniao/account/login/view/LoginActivity;)V

    invoke-virtual {p2, v0}, Lxda;->d(Lre7;)Lxda;

    :cond_0
    iget-object p0, p0, Lgq7;->b:Lcom/transsion/xuanniao/account/login/view/LoginActivity;

    iget-object p0, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->j:Ldo7;

    invoke-virtual {p0}, Ldo7;->h()V

    return-void
.end method
