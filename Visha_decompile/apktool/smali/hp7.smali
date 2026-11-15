.class public Lhp7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/xuanniao/account/comm/widget/CaptchaCodeInput$c;


# instance fields
.field public final synthetic a:Lcom/transsion/xuanniao/account/login/view/LoginActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/xuanniao/account/login/view/LoginActivity;)V
    .locals 0

    iput-object p1, p0, Lhp7;->a:Lcom/transsion/xuanniao/account/login/view/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lhp7;->a:Lcom/transsion/xuanniao/account/login/view/LoginActivity;

    iget-object v1, v0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->j:Ldo7;

    iget-boolean v1, v1, Ldo7;->b:Z

    if-eqz v1, :cond_0

    invoke-static {v0}, Lxj;->U(Landroid/content/Context;)Lxj;

    move-result-object v0

    invoke-virtual {v0}, Lxj;->e1()V

    :cond_0
    iget-object v0, p0, Lhp7;->a:Lcom/transsion/xuanniao/account/login/view/LoginActivity;

    iget-object v0, v0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->j:Ldo7;

    invoke-virtual {v0}, Ldo7;->r()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lhp7;->a:Lcom/transsion/xuanniao/account/login/view/LoginActivity;

    sget v1, Lcom/transsion/xuanniao/account/R$string;->xn_loading:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->u0(Ljava/lang/String;)V

    iget-object p0, p0, Lhp7;->a:Lcom/transsion/xuanniao/account/login/view/LoginActivity;

    iget-object p0, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->j:Ldo7;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ldo7;->g(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
